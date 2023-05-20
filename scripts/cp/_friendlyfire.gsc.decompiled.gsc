#using scripts\cp\_util;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\callbacks_shared;
#using scripts\shared\load_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_98df9150;

/*
	Name: function_2dc19561
	Namespace: namespace_98df9150
	Checksum: 0x8F431EA0
	Offset: 0x308
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("friendlyfire", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_98df9150
	Checksum: 0x5BCD9DAE
	Offset: 0x348
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_4d4e553d["min_participation"] = -1600;
	level.var_4d4e553d["max_participation"] = 1000;
	level.var_4d4e553d["enemy_kill_points"] = 250;
	level.var_4d4e553d["friend_kill_points"] = -600;
	level.var_4d4e553d["civ_kill_points"] = -900;
	level.var_4d4e553d["point_loss_interval"] = 0.75;
	level.var_8300d543 = 1;
	if(namespace_82b91a51::function_86b6d13c())
	{
		function_6c1294b8("friendlyfire_enabled", "0");
	}
	if(!isdefined(level.var_b8f294e8))
	{
		level.var_b8f294e8 = 0;
	}
	namespace_dabbe128::function_eb99da89(&function_d3f0f21);
}

/*
	Name: function_d3f0f21
	Namespace: namespace_98df9150
	Checksum: 0xB679EA8B
	Offset: 0x460
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d3f0f21()
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self), "Dev Block strings are not supported");
	#/
	self.var_47b28564 = 0;
	self thread function_f327b504();
	self thread function_bd017349();
}

/*
	Name: function_8e961e39
	Namespace: namespace_98df9150
	Checksum: 0x87F3E56
	Offset: 0x4C8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_8e961e39(var_813fc428)
{
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_2e4b8c78(var_813fc428);
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_895b00("Dev Block strings are not supported" + var_813fc428);
		}
	#/
}

/*
	Name: function_f327b504
	Namespace: namespace_98df9150
	Checksum: 0xE91B0691
	Offset: 0x568
	Size: 0xCE7
	Parameters: 0
	Flags: None
*/
function function_f327b504()
{
	self endon("hash_cca1b1b9");
	/#
		self endon("hash_643a7daf");
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		var_a4c398c5 = level.var_4d4e553d["Dev Block strings are not supported"] - level.var_4d4e553d["Dev Block strings are not supported"];
		var_db33b685 = 520;
		var_97e29ff = 620;
		var_64693808 = 130;
		var_b565b605 = var_97e29ff - var_db33b685;
		var_600add77 = function_84c0e150();
		var_600add77.var_2363da9c = 3;
		var_600add77.var_b5536acc = "Dev Block strings are not supported";
		var_600add77.var_db55e535 = "Dev Block strings are not supported";
		var_600add77.var_4f8217af = var_97e29ff - var_b565b605 * level.var_4d4e553d["Dev Block strings are not supported"] / var_a4c398c5 - function_60ad95cd(self.var_47b28564) * var_600add77.var_2363da9c;
		var_600add77.var_297f9d46 = 100;
		var_600add77.var_aabe9f43 = 1;
		var_9234aec3 = function_84c0e150();
		var_9234aec3.var_2363da9c = 1.5;
		var_9234aec3.var_b5536acc = "Dev Block strings are not supported";
		var_9234aec3.var_db55e535 = "Dev Block strings are not supported";
		var_9234aec3.var_4f8217af = var_db33b685 - function_49c4d072(function_aaeec8c5(function_60ad95cd(function_69c2f683(level.var_4d4e553d["Dev Block strings are not supported"])) / function_60ad95cd(10), 0)) - 2 + self.var_47b28564 < 0 * var_600add77.var_2363da9c;
		var_9234aec3.var_297f9d46 = var_64693808;
		var_9234aec3.var_aabe9f43 = 1;
		var_9234aec3 function_ee69b16e(level.var_4d4e553d["Dev Block strings are not supported"]);
		var_edb99954 = function_84c0e150();
		var_edb99954.var_2363da9c = 1.5;
		var_edb99954.var_b5536acc = "Dev Block strings are not supported";
		var_edb99954.var_db55e535 = "Dev Block strings are not supported";
		var_edb99954.var_4f8217af = var_97e29ff + 2 * function_49c4d072(function_aaeec8c5(function_60ad95cd(function_69c2f683(level.var_4d4e553d["Dev Block strings are not supported"])) / function_60ad95cd(10), 0)) + 2.5 + self.var_47b28564 < 0 * var_600add77.var_2363da9c;
		var_edb99954.var_297f9d46 = var_64693808;
		var_edb99954.var_aabe9f43 = 1;
		var_edb99954 function_ee69b16e(level.var_4d4e553d["Dev Block strings are not supported"]);
		var_4327ab81 = function_ad13099a(self);
		var_4327ab81.var_b5536acc = "Dev Block strings are not supported";
		var_4327ab81.var_db55e535 = "Dev Block strings are not supported";
		var_4327ab81.var_4f8217af = var_97e29ff;
		var_4327ab81.var_297f9d46 = var_64693808;
		var_4327ab81.var_4d19365 = 1;
		var_4327ab81.var_aabe9f43 = 1;
		var_4327ab81.var_79e0f792 = 1;
		var_4327ab81.var_d900369a = VectorScale((1, 1, 1), 0.4);
		var_4327ab81 function_9befb288("Dev Block strings are not supported", var_b565b605, 9);
		var_7c6a5565 = function_ad13099a(self);
		var_7c6a5565.var_b5536acc = "Dev Block strings are not supported";
		var_7c6a5565.var_db55e535 = "Dev Block strings are not supported";
		var_7c6a5565.var_4f8217af = 620;
		var_7c6a5565.var_297f9d46 = var_64693808;
		var_7c6a5565.var_4d19365 = 4;
		var_7c6a5565.var_aabe9f43 = 1;
		var_7c6a5565.var_79e0f792 = 1;
		var_7c6a5565.var_d900369a = VectorScale((0, 0, 1), 0.9);
		var_7c6a5565 function_9befb288("Dev Block strings are not supported", 4, 15);
		var_4c91c06 = function_ad13099a(self);
		var_4c91c06.var_b5536acc = "Dev Block strings are not supported";
		var_4c91c06.var_db55e535 = "Dev Block strings are not supported";
		var_4c91c06.var_4f8217af = var_db33b685;
		var_4c91c06.var_297f9d46 = var_64693808;
		var_4c91c06.var_4d19365 = 2;
		var_4c91c06.var_aabe9f43 = 1;
		var_4c91c06.var_79e0f792 = 1;
		var_4c91c06 function_9befb288("Dev Block strings are not supported", 4, 21);
		var_8ff245f7 = function_ad13099a(self);
		var_8ff245f7.var_b5536acc = "Dev Block strings are not supported";
		var_8ff245f7.var_db55e535 = "Dev Block strings are not supported";
		var_8ff245f7.var_4f8217af = var_97e29ff;
		var_8ff245f7.var_297f9d46 = var_64693808;
		var_8ff245f7.var_4d19365 = 2;
		var_8ff245f7.var_aabe9f43 = 1;
		var_8ff245f7.var_79e0f792 = 1;
		var_8ff245f7 function_9befb288("Dev Block strings are not supported", 4, 21);
		var_d2572fe4 = function_ad13099a(self);
		var_d2572fe4.var_b5536acc = "Dev Block strings are not supported";
		var_d2572fe4.var_db55e535 = "Dev Block strings are not supported";
		var_d2572fe4.var_4f8217af = var_db33b685 + level.var_4d4e553d["Dev Block strings are not supported"] * -1 / var_a4c398c5 * var_b565b605;
		var_d2572fe4.var_297f9d46 = var_64693808 + 9;
		var_d2572fe4.var_4d19365 = 2;
		var_d2572fe4.var_aabe9f43 = 1;
		var_d2572fe4.var_79e0f792 = 1;
		var_d2572fe4 function_9befb288("Dev Block strings are not supported", 4, 4);
		var_5c31876e = function_ad13099a(self);
		var_5c31876e.var_b5536acc = "Dev Block strings are not supported";
		var_5c31876e.var_db55e535 = "Dev Block strings are not supported";
		var_5c31876e.var_4f8217af = var_db33b685 + level.var_4d4e553d["Dev Block strings are not supported"] * -1 / var_a4c398c5 * var_b565b605;
		var_5c31876e.var_297f9d46 = var_64693808 - 9;
		var_5c31876e.var_4d19365 = 2;
		var_5c31876e.var_aabe9f43 = 1;
		var_5c31876e.var_79e0f792 = 1;
		var_5c31876e function_9befb288("Dev Block strings are not supported", 4, 4);
		while(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			var_600add77.var_aabe9f43 = 1;
			var_9234aec3.var_aabe9f43 = 1;
			var_edb99954.var_aabe9f43 = 1;
			var_4327ab81.var_aabe9f43 = 1;
			var_7c6a5565.var_aabe9f43 = 1;
			var_4c91c06.var_aabe9f43 = 1;
			var_8ff245f7.var_aabe9f43 = 1;
			var_d2572fe4.var_aabe9f43 = 1;
			var_5c31876e.var_aabe9f43 = 1;
			continue;
			var_600add77.var_aabe9f43 = 0;
			var_9234aec3.var_aabe9f43 = 0;
			var_edb99954.var_aabe9f43 = 0;
			var_4327ab81.var_aabe9f43 = 0;
			var_7c6a5565.var_aabe9f43 = 0;
			var_4c91c06.var_aabe9f43 = 0;
			var_8ff245f7.var_aabe9f43 = 0;
			var_d2572fe4.var_aabe9f43 = 0;
			var_5c31876e.var_aabe9f43 = 0;
			var_9dfd7b1b = level.var_4d4e553d["Dev Block strings are not supported"] - self.var_47b28564 / var_a4c398c5 * var_b565b605;
			var_7c6a5565.var_4f8217af = var_97e29ff - var_9dfd7b1b;
			var_600add77 function_ee69b16e(self.var_47b28564);
			var_600add77.var_4f8217af = var_97e29ff - var_b565b605 * level.var_4d4e553d["Dev Block strings are not supported"] / var_a4c398c5 + function_49c4d072(function_aaeec8c5(function_60ad95cd(function_69c2f683(self.var_47b28564)) / function_60ad95cd(10), 0)) + 1 + self.var_47b28564 < 0 * var_600add77.var_2363da9c * 2;
			wait(0.25);
		}
	#/
}

/*
	Name: function_b74e3e5b
	Namespace: namespace_98df9150
	Checksum: 0x6A1C25F3
	Offset: 0x1258
	Size: 0x3D
	Parameters: 1
	Flags: None
*/
function function_b74e3e5b(var_aa10fce8)
{
	if(var_aa10fce8.var_8fc0e50e == "warlord_soldier")
	{
		return var_aa10fce8.var_48aefe04 <= 0;
	}
	return 0;
}

/*
	Name: function_36510feb
	Namespace: namespace_98df9150
	Checksum: 0x3DD72D5A
	Offset: 0x12A0
	Size: 0x5A3
	Parameters: 4
	Flags: None
*/
function function_36510feb(var_aa10fce8, var_f9348fda, var_a0ad4f34, var_a7ced472)
{
	if(!isdefined(var_aa10fce8))
	{
		return;
	}
	if(!isdefined(var_aa10fce8.var_3e94206a))
	{
		var_aa10fce8.var_3e94206a = "allies";
	}
	if(!isdefined(var_aa10fce8))
	{
		return;
	}
	var_c288fcaa = function_b74e3e5b(var_aa10fce8);
	if(var_aa10fce8.var_3a90f16b <= 0)
	{
		if(!var_c288fcaa)
		{
			return;
		}
	}
	if(level.var_b8f294e8)
	{
		return;
	}
	if(isdefined(var_aa10fce8.var_4086175) && var_aa10fce8.var_4086175)
	{
		return;
	}
	if(!isdefined(var_a0ad4f34))
	{
		return;
	}
	var_95f4f36a = 0;
	if(function_65f192a6(var_a0ad4f34))
	{
		var_95f4f36a = 1;
	}
	else if(isdefined(var_a0ad4f34.var_e6e9b8de) && var_a0ad4f34.var_e6e9b8de == "script_vehicle")
	{
		var_5e36fd2e = var_a0ad4f34 function_d1b6fc6a();
		if(isdefined(var_5e36fd2e))
		{
			if(function_65f192a6(var_5e36fd2e))
			{
				if(!isdefined(var_5e36fd2e.var_3659fa11))
				{
					var_95f4f36a = 1;
					var_a0ad4f34 = var_5e36fd2e;
				}
			}
		}
	}
	if(!var_95f4f36a)
	{
		return;
	}
	var_7e102cd9 = var_aa10fce8.var_3e94206a == var_a0ad4f34.var_3e94206a;
	if(var_a0ad4f34.var_3e94206a == "allies")
	{
		if(var_aa10fce8.var_3e94206a == "neutral" && (!isdefined(level.var_5dcc7f9) && level.var_5dcc7f9))
		{
			var_7e102cd9 = 1;
		}
	}
	if(var_aa10fce8.var_3e94206a != "neutral" || (var_aa10fce8.var_3e94206a == "neutral" && (!isdefined(level.var_5dcc7f9) && level.var_5dcc7f9)))
	{
		var_a0ad4f34.var_93d35b85 = var_aa10fce8.var_3e94206a;
	}
	var_39d3d8ba = var_f9348fda >= var_aa10fce8.var_3a90f16b || var_c288fcaa;
	if(!var_aa10fce8.var_bab9655e)
	{
		var_39d3d8ba = 0;
	}
	if(!var_7e102cd9)
	{
		if(var_39d3d8ba)
		{
			var_a0ad4f34.var_47b28564 = var_a0ad4f34.var_47b28564 + level.var_4d4e553d["enemy_kill_points"];
			var_a0ad4f34 function_d3b6aec2();
			function_8e961e39("Enemy killed: +" + level.var_4d4e553d["enemy_kill_points"]);
		}
		return;
	}
	if(isdefined(var_aa10fce8.var_bb4f67f3))
	{
		return;
	}
	if(var_39d3d8ba)
	{
		if(var_aa10fce8.var_3e94206a == "neutral")
		{
			level notify("hash_b3760d31");
			var_a0ad4f34.var_47b28564 = var_a0ad4f34.var_47b28564 + level.var_4d4e553d["civ_kill_points"];
			function_8e961e39("Civilian killed: -" + 0 - level.var_4d4e553d["civ_kill_points"]);
		}
		else if(isdefined(var_aa10fce8) && isdefined(var_aa10fce8.var_64f2c3c2))
		{
			var_a0ad4f34.var_47b28564 = var_a0ad4f34.var_47b28564 + var_aa10fce8.var_64f2c3c2;
			function_8e961e39("Friendly killed with custom penalty: -" + 0 - var_aa10fce8.var_64f2c3c2);
		}
		else
		{
			var_a0ad4f34.var_47b28564 = var_a0ad4f34.var_47b28564 + level.var_4d4e553d["friend_kill_points"];
			function_8e961e39("Friendly killed: -" + 0 - level.var_4d4e553d["friend_kill_points"]);
		}
	}
	else
	{
		var_a0ad4f34.var_47b28564 = var_a0ad4f34.var_47b28564 - var_f9348fda;
		function_8e961e39("Friendly hurt: -" + var_f9348fda);
	}
	var_a0ad4f34 function_d3b6aec2();
	if(function_3a0893c0(var_aa10fce8, var_a7ced472) && function_e60e13b8())
	{
		return;
	}
	var_a0ad4f34 function_2de1b253();
}

/*
	Name: function_29ff364e
	Namespace: namespace_98df9150
	Checksum: 0x30087AFE
	Offset: 0x1850
	Size: 0x60F
	Parameters: 1
	Flags: None
*/
function function_29ff364e()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_2de1b253
	Namespace: namespace_98df9150
	Checksum: 0x3FCA0FB4
	Offset: 0x1E68
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_2de1b253()
{
	if(self.var_47b28564 <= level.var_4d4e553d["min_participation"])
	{
		self thread function_fab0cc81();
	}
}

/*
	Name: function_3a0893c0
	Namespace: namespace_98df9150
	Checksum: 0xCF582966
	Offset: 0x1EA8
	Size: 0x99
	Parameters: 2
	Flags: None
*/
function function_3a0893c0(var_aa10fce8, var_a7ced472)
{
	if(!isdefined(var_aa10fce8))
	{
		return 0;
	}
	var_99b0802 = 0;
	if(isdefined(var_aa10fce8.var_7bf3c52a) && var_aa10fce8.var_7bf3c52a.var_4be20d44 == "none")
	{
		var_99b0802 = 1;
	}
	if(isdefined(var_a7ced472) && var_a7ced472 == "MOD_GRENADE_SPLASH")
	{
		var_99b0802 = 1;
	}
	return var_99b0802;
}

/*
	Name: function_e60e13b8
	Namespace: namespace_98df9150
	Checksum: 0x707086BB
	Offset: 0x1F50
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_e60e13b8()
{
	var_79990bb = GetTime();
	if(var_79990bb < 4500)
	{
		/#
			function_895b00("Dev Block strings are not supported");
		#/
		return 1;
	}
	return 0;
}

/*
	Name: function_d3b6aec2
	Namespace: namespace_98df9150
	Checksum: 0x84E6F7E5
	Offset: 0x1FA0
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_d3b6aec2()
{
	if(!isdefined(self.var_47b28564))
	{
		/#
			namespace_33b293fd::function_94739542("Dev Block strings are not supported");
		#/
		return;
	}
	if(self.var_47b28564 > level.var_4d4e553d["max_participation"])
	{
		self.var_47b28564 = level.var_4d4e553d["max_participation"];
	}
	if(self.var_47b28564 < level.var_4d4e553d["min_participation"])
	{
		self.var_47b28564 = level.var_4d4e553d["min_participation"];
	}
}

/*
	Name: function_bd017349
	Namespace: namespace_98df9150
	Checksum: 0xBF157873
	Offset: 0x2048
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function function_bd017349()
{
	level endon("hash_99f182f3");
	self endon("hash_643a7daf");
	while(self.var_47b28564 > 0)
	{
		self.var_47b28564--;
		continue;
		if(self.var_47b28564 < 0)
		{
			self.var_47b28564++;
		}
		wait(level.var_4d4e553d["point_loss_interval"]);
	}
}

/*
	Name: function_ae58abe6
	Namespace: namespace_98df9150
	Checksum: 0x51D81F6D
	Offset: 0x20B8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_ae58abe6()
{
	level.var_b8f294e8 = 0;
}

/*
	Name: function_f676f983
	Namespace: namespace_98df9150
	Checksum: 0x1265AA88
	Offset: 0x20D0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_f676f983()
{
	level.var_b8f294e8 = 1;
}

/*
	Name: function_fab0cc81
	Namespace: namespace_98df9150
	Checksum: 0xC7FD51FF
	Offset: 0x20E8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_fab0cc81()
{
	self endon("hash_128f8789");
	level endon("hash_1078e68a");
	self.var_47b28564 = 0;
	self.var_dc4a16f6 = 0;
	if(self.var_93d35b85 === "neutral")
	{
		namespace_82b91a51::function_207f8667(&"SCRIPT_MISSIONFAIL_KILLTEAM_NEUTRAL", &"SCRIPT_MISSIONFAIL_WATCH_FIRE");
	}
	else
	{
		namespace_82b91a51::function_207f8667(&"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN", &"SCRIPT_MISSIONFAIL_WATCH_FIRE");
	}
}

/*
	Name: function_20e1fd85
	Namespace: namespace_98df9150
	Checksum: 0x58AD3D55
	Offset: 0x2180
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_20e1fd85()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_1c88568
	Namespace: namespace_98df9150
	Checksum: 0xD2F3D1C0
	Offset: 0x2208
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_1c88568()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_1c834dc8
	Namespace: namespace_98df9150
	Checksum: 0x37A32E72
	Offset: 0x2280
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_1c834dc8(var_aa10fce8)
{
	level endon("hash_77e184");
	var_aa10fce8 waittill("hash_128f8789", var_a0ad4f34, var_a7ced472);
	var_aa10fce8 notify("hash_f183b43c", -1, var_a0ad4f34, undefined, undefined, var_a7ced472);
}


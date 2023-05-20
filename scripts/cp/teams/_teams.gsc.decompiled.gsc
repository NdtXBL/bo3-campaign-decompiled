#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_spectating;
#using scripts\shared\callbacks_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_e7a38025;

/*
	Name: function_2dc19561
	Namespace: namespace_e7a38025
	Checksum: 0xD34417CA
	Offset: 0x2D8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("teams", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_e7a38025
	Checksum: 0xAFE4D79
	Offset: 0x318
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	level.var_c7762542 = &function_c7762542;
}

/*
	Name: function_c35e6aab
	Namespace: namespace_e7a38025
	Checksum: 0xF4D87849
	Offset: 0x360
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	game["strings"]["autobalance"] = &"MP_AUTOBALANCE_NOW";
	if(function_6f1ebe57("scr_teambalance") == "")
	{
		function_6c1294b8("scr_teambalance", "0");
	}
	level.var_d981cc66 = function_4bd0142f("scr_teambalance");
	level.var_1d00c6f9 = 0;
	if(function_6f1ebe57("scr_timeplayedcap") == "")
	{
		function_6c1294b8("scr_timeplayedcap", "1800");
	}
	level.var_a636e0ad = function_b6b79a0(function_4bd0142f("scr_timeplayedcap"));
	level.var_d31f9573 = [];
	if(level.var_de12b72f)
	{
		level.var_c7f086bb = [];
		level.var_a587e080 = [];
		namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
		namespace_dabbe128::function_f6076bfe(&function_f6076bfe);
		namespace_dabbe128::function_f10e0be0(&function_d2b6d98f);
		level thread function_88ad84a5();
		wait(0.15);
		level thread function_2eda566d();
	}
	else
	{
		namespace_dabbe128::function_eb99da89(&function_5cc8a462);
		wait(0.15);
		level thread function_2eda566d();
	}
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_e7a38025
	Checksum: 0xDC65AB83
	Offset: 0x590
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self thread function_e7a40e44();
}

/*
	Name: function_5cc8a462
	Namespace: namespace_e7a38025
	Checksum: 0x3CDDBD8E
	Offset: 0x5B8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_5cc8a462()
{
	self thread function_4e36223d();
}

/*
	Name: function_f6076bfe
	Namespace: namespace_e7a38025
	Checksum: 0xCA5BBFCB
	Offset: 0x5E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f6076bfe()
{
	/#
		function_895b00("Dev Block strings are not supported" + self.var_44fb8955["Dev Block strings are not supported"]);
	#/
	self function_2fc9381e();
}

/*
	Name: function_d2b6d98f
	Namespace: namespace_e7a38025
	Checksum: 0x3A6C880A
	Offset: 0x638
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d2b6d98f()
{
	self.var_44fb8955["teamTime"] = undefined;
}

/*
	Name: function_e7a40e44
	Namespace: namespace_e7a38025
	Checksum: 0x71F33AD3
	Offset: 0x658
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_e7a40e44()
{
	self endon("hash_643a7daf");
	self endon("hash_a9de32eb");
	foreach(var_3e94206a in level.var_e7a38025)
	{
		self.var_d066f1a3[var_3e94206a] = 0;
	}
	self.var_d066f1a3["free"] = 0;
	self.var_d066f1a3["other"] = 0;
	self.var_d066f1a3["alive"] = 0;
	if(!isdefined(self.var_d066f1a3["total"]) || (!level.var_76c6e677 == "twar" && 0 < game["roundsplayed"] && 0 < self.var_d066f1a3["total"]))
	{
		self.var_d066f1a3["total"] = 0;
	}
	while(level.var_35a23885)
	{
		wait(0.05);
	}
	while(game["state"] == "playing")
	{
		if(isdefined(level.var_e7a38025[self.var_b2e5a818]))
		{
			self.var_d066f1a3[self.var_b2e5a818]++;
			self.var_d066f1a3["total"]++;
			if(function_5b49d38c(self))
			{
				self.var_d066f1a3["alive"]++;
			}
		}
		else if(self.var_b2e5a818 == "spectator")
		{
			self.var_d066f1a3["other"]++;
		}
		wait(1);
	}
}

/*
	Name: function_2eda566d
	Namespace: namespace_e7a38025
	Checksum: 0x6D0C53C5
	Offset: 0x888
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_2eda566d()
{
	var_b3b708df = 10;
	var_ddae7c36 = 0;
	for(;;)
	{
		var_b3b708df = var_b3b708df - 1;
		var_ddae7c36++;
		if(var_ddae7c36 >= level.var_2395e945.size)
		{
			var_ddae7c36 = 0;
			if(var_b3b708df > 0)
			{
				wait(var_b3b708df);
			}
			var_b3b708df = 10;
		}
		if(isdefined(level.var_2395e945[var_ddae7c36]))
		{
			level.var_2395e945[var_ddae7c36] function_4f6c13e4();
			level.var_2395e945[var_ddae7c36] namespace_fe5e4926::function_b526d623();
		}
		wait(1);
	}
}

/*
	Name: function_4f6c13e4
	Namespace: namespace_e7a38025
	Checksum: 0xC3111A0D
	Offset: 0x978
	Size: 0x381
	Parameters: 0
	Flags: None
*/
function function_4f6c13e4()
{
	function_c22bfa61("updatePlayedTime");
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(self.var_d066f1a3[var_3e94206a])
		{
			self function_aa67c13b("time_played_" + var_3e94206a, function_b6b79a0(function_95d0212b(self.var_d066f1a3[var_3e94206a], level.var_a636e0ad)));
			self function_1ba616a5("time_played_total", function_b6b79a0(function_95d0212b(self.var_d066f1a3[var_3e94206a], level.var_a636e0ad)));
		}
	}
	if(self.var_d066f1a3["other"])
	{
		self function_aa67c13b("time_played_other", function_b6b79a0(function_95d0212b(self.var_d066f1a3["other"], level.var_a636e0ad)));
		self function_1ba616a5("time_played_total", function_b6b79a0(function_95d0212b(self.var_d066f1a3["other"], level.var_a636e0ad)));
	}
	if(self.var_d066f1a3["alive"])
	{
		var_eb711895 = function_b6b79a0(function_95d0212b(self.var_d066f1a3["alive"], level.var_a636e0ad));
		self namespace_fe5e4926::function_f81a1bca(var_eb711895);
		self function_aa67c13b("time_played_alive", var_eb711895);
	}
	function_7905cb51();
	if(game["state"] == "postgame")
	{
		return;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		self.var_d066f1a3[var_3e94206a] = 0;
	}
	self.var_d066f1a3["other"] = 0;
	self.var_d066f1a3["alive"] = 0;
}

/*
	Name: function_2fc9381e
	Namespace: namespace_e7a38025
	Checksum: 0xF88E0480
	Offset: 0xD08
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_2fc9381e()
{
	if(game["state"] != "playing")
	{
		return;
	}
	self.var_44fb8955["teamTime"] = GetTime();
}

/*
	Name: function_88ad84a5
	Namespace: namespace_e7a38025
	Checksum: 0x37726B91
	Offset: 0xD48
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_88ad84a5()
{
	for(;;)
	{
		var_d981cc66 = function_4bd0142f("scr_teambalance");
		if(level.var_d981cc66 != var_d981cc66)
		{
			level.var_d981cc66 = function_4bd0142f("scr_teambalance");
		}
		var_a636e0ad = function_4bd0142f("scr_timeplayedcap");
		if(level.var_a636e0ad != var_a636e0ad)
		{
			level.var_a636e0ad = function_b6b79a0(function_4bd0142f("scr_timeplayedcap"));
		}
		wait(1);
	}
}

/*
	Name: function_5f5f81d1
	Namespace: namespace_e7a38025
	Checksum: 0x1181ABF1
	Offset: 0xE20
	Size: 0x169
	Parameters: 1
	Flags: None
*/
function function_5f5f81d1(var_3e94206a)
{
	if(self.var_e0beb6ee != "dead")
	{
		self.var_320486a0 = 1;
		self.var_3224c440 = 1;
		self.var_4d315089 = var_3e94206a;
		self.var_dc37327d = self.var_44fb8955["team"];
		self function_584b97b7();
	}
	self.var_44fb8955["team"] = var_3e94206a;
	self.var_3e94206a = var_3e94206a;
	self.var_44fb8955["weapon"] = undefined;
	self.var_44fb8955["spawnweapon"] = undefined;
	self.var_44fb8955["savedmodel"] = undefined;
	self.var_44fb8955["teamTime"] = undefined;
	self.var_b2e5a818 = self.var_44fb8955["team"];
	self namespace_88a69b2f::function_5c7708d6();
	self namespace_54e5555d::function_c3d72c52();
	self function_d7812975(game["menu_start_menu"]);
	self function_4aa9caac(game["menu_start_menu"]);
	self notify("hash_d9c9cb29");
}

/*
	Name: function_193a1a91
	Namespace: namespace_e7a38025
	Checksum: 0xA4DE2AED
	Offset: 0xF98
	Size: 0x16F
	Parameters: 0
	Flags: None
*/
function function_193a1a91()
{
	var_2395e945 = level.var_2395e945;
	var_1c5eebee = [];
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_1c5eebee[var_3e94206a] = 0;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(var_5dc5e20a == self)
		{
			continue;
		}
		var_3e94206a = var_5dc5e20a.var_44fb8955["team"];
		if(isdefined(var_3e94206a) && isdefined(level.var_e7a38025[var_3e94206a]))
		{
			var_1c5eebee[var_3e94206a]++;
		}
	}
	return var_1c5eebee;
}

/*
	Name: function_4e36223d
	Namespace: namespace_e7a38025
	Checksum: 0x99BFA1BF
	Offset: 0x1110
	Size: 0x19F
	Parameters: 0
	Flags: None
*/
function function_4e36223d()
{
	self endon("hash_643a7daf");
	foreach(var_3e94206a in level.var_e7a38025)
	{
		self.var_d066f1a3[var_3e94206a] = 0;
	}
	self.var_d066f1a3["other"] = 0;
	self.var_d066f1a3["total"] = 0;
	self.var_d066f1a3["alive"] = 0;
	while(game["state"] == "playing")
	{
		var_3e94206a = self.var_44fb8955["team"];
		if(isdefined(var_3e94206a) && isdefined(level.var_e7a38025[var_3e94206a]) && self.var_b2e5a818 != "spectator")
		{
			self.var_d066f1a3[var_3e94206a]++;
			self.var_d066f1a3["total"]++;
			if(function_5b49d38c(self))
			{
				self.var_d066f1a3["alive"]++;
			}
		}
		else
		{
			self.var_d066f1a3["other"]++;
		}
		wait(1);
	}
}

/*
	Name: function_37fd0a0f
	Namespace: namespace_e7a38025
	Checksum: 0xCE01BF65
	Offset: 0x12B8
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_37fd0a0f(var_3e94206a, var_dfcc01fd)
{
	self function_e40db749();
	self function_5a7dd25d(1);
	self function_ba25e637(4);
	self function_e67885f8(0);
}

/*
	Name: function_536cc94a
	Namespace: namespace_e7a38025
	Checksum: 0x9B518BCF
	Offset: 0x1338
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_536cc94a(var_8e08b0cd)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(game["Dev Block strings are not supported"]));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(game["Dev Block strings are not supported"][var_8e08b0cd]));
	#/
	return game["flagmodels"][var_8e08b0cd];
}

/*
	Name: function_db0684da
	Namespace: namespace_e7a38025
	Checksum: 0x2E219FD
	Offset: 0x13B0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_db0684da(var_8e08b0cd)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(game["Dev Block strings are not supported"]));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(game["Dev Block strings are not supported"][var_8e08b0cd]));
	#/
	return game["carry_flagmodels"][var_8e08b0cd];
}

/*
	Name: function_3370313c
	Namespace: namespace_e7a38025
	Checksum: 0xD80F8B81
	Offset: 0x1428
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_3370313c(var_8e08b0cd)
{
	/#
		namespace_33b293fd::function_a7ee953(isdefined(game["Dev Block strings are not supported"]));
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(game["Dev Block strings are not supported"][var_8e08b0cd]));
	#/
	return game["carry_icon"][var_8e08b0cd];
}

/*
	Name: function_c7762542
	Namespace: namespace_e7a38025
	Checksum: 0x18C46D3F
	Offset: 0x14A0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_c7762542(var_2e708b3e)
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_3e94206a == var_2e708b3e)
		{
			continue;
		}
		if(var_3e94206a == "spectator")
		{
			continue;
		}
		return var_3e94206a;
	}
	return namespace_82b91a51::function_fad13578(var_2e708b3e);
}


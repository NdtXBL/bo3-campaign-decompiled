#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_defaults;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_ui;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\cp\gametypes\_spectating;
#using scripts\cp\gametypes\coop;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_7956eece;

/*
	Name: function_cabdc9f7
	Namespace: namespace_7956eece
	Checksum: 0xD5CABBD
	Offset: 0x5D0
	Size: 0x177
	Parameters: 1
	Flags: None
*/
function function_cabdc9f7(var_362052a9)
{
	if(level.var_266be277 && !self.var_b0c19313)
	{
		return 0;
	}
	var_784e5b88 = 0;
	if(self.var_b0c19313)
	{
		var_3c61bfc2 = self [[level.var_9fcabf9f]]();
		if(isdefined(var_3c61bfc2))
		{
			var_784e5b88 = var_3c61bfc2;
		}
		else
		{
			var_784e5b88 = level.var_2e53984b;
		}
		if(isdefined(self.var_584b97b7) && self.var_584b97b7 && level.var_fdf3981d > 0)
		{
			var_784e5b88 = var_784e5b88 + level.var_fdf3981d;
		}
		if(isdefined(self.var_4f57d739) && self.var_4f57d739 && level.var_ea20354b > 0)
		{
			var_784e5b88 = var_784e5b88 + level.var_ea20354b;
		}
		if(var_362052a9 && (isdefined(self.var_d9e008c5) && self.var_d9e008c5))
		{
			var_784e5b88 = var_784e5b88 + namespace_b976075a::function_bd37ccff();
		}
	}
	var_e2e9f647 = level.var_726dcf43 > 0;
	if(var_e2e9f647)
	{
		return self function_febae56(var_784e5b88);
	}
	return var_784e5b88;
}

/*
	Name: function_5881cfb8
	Namespace: namespace_7956eece
	Checksum: 0x99110292
	Offset: 0x750
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_5881cfb8()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(!level.var_1aa7ca25[var_3e94206a])
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_cc406c51
	Namespace: namespace_7956eece
	Checksum: 0xC5F7DFF9
	Offset: 0x7E8
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_cc406c51()
{
	if(isdefined(level.var_cd3e4f52) && !self [[level.var_cd3e4f52]]())
	{
		return 0;
	}
	if(level.var_8e73036d)
	{
		return 0;
	}
	if(level.var_38a6bf87 && !isdefined(self.var_bb033c66) && !level.var_266be277 && !level.var_a93e40a6)
	{
		return 0;
	}
	if(isdefined(self.var_d670c0a7) && self.var_d670c0a7)
	{
		return 0;
	}
	if(level.var_e782fb64)
	{
		if(level.var_de12b72f)
		{
			var_2afb638 = function_5881cfb8();
		}
		else
		{
			var_2afb638 = level.var_7af77b4f > 1 || (!namespace_82b91a51::function_5b94904d() && !namespace_82b91a51::function_d992ab0f());
		}
		if(!self.var_44fb8955["lives"])
		{
			return 0;
		}
		else if(var_2afb638)
		{
			if(!level.var_266be277 && !self.var_b0c19313)
			{
				return 0;
			}
		}
	}
	return 1;
}

/*
	Name: function_febae56
	Namespace: namespace_7956eece
	Checksum: 0xAFEF8E4D
	Offset: 0x938
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function function_febae56(var_143da134)
{
	var_37bdec1c = GetTime() + var_143da134 * 1000;
	var_8982436d = level.var_15016852[self.var_44fb8955["team"]];
	var_310b4cab = level.var_310b4cab[self.var_44fb8955["team"]] * 1000;
	if(var_310b4cab == 0)
	{
		return 0;
	}
	var_1cbad0da = var_37bdec1c - var_8982436d / var_310b4cab;
	var_2f3906e7 = function_49c4d072(var_1cbad0da);
	var_86219bae = var_8982436d + var_2f3906e7 * var_310b4cab;
	if(isdefined(self.var_1be15a91))
	{
		var_86219bae = var_86219bae + 50 * self.var_1be15a91;
	}
	return var_86219bae - GetTime() / 1000;
}

/*
	Name: function_dbb50216
	Namespace: namespace_7956eece
	Checksum: 0xD023CC41
	Offset: 0xA68
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_dbb50216()
{
	self endon("hash_643a7daf");
	self.var_10cec36f = 0;
	self.var_3463c938 = 0;
	self.var_47cfd3cb = 0;
	self.var_12a9e5da = 0;
}

/*
	Name: function_f868991e
	Namespace: namespace_7956eece
	Checksum: 0xAD1F51DC
	Offset: 0xAB0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_f868991e()
{
	self endon("hash_643a7daf");
	self endon("hash_d9c9cb29");
	self endon("hash_c8ab51de");
	self endon("hash_a948754f");
	self endon("hash_ab1f9ea1");
	while(1)
	{
		wait(0.5);
		self [[level.var_19bc9234]](1);
	}
}

/*
	Name: function_608568f5
	Namespace: namespace_7956eece
	Checksum: 0x585CC3C8
	Offset: 0xB20
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_608568f5()
{
	self endon("hash_643a7daf");
	if(isdefined(level.var_29d9f951) && level.var_29d9f951)
	{
		return;
	}
	var_3e94206a = self.var_44fb8955["team"];
	thread namespace_4d476a30::function_c0025cfc(var_3e94206a);
	while(level.var_35a23885)
	{
		wait(0.05);
	}
	var_80eacd67 = namespace_82b91a51::function_efe537ba(var_3e94206a);
	if(isdefined(var_80eacd67))
	{
		self thread namespace_4d476a30::function_80eacd67(var_80eacd67);
	}
}

/*
	Name: function_1fee8319
	Namespace: namespace_7956eece
	Checksum: 0x7EBC10A7
	Offset: 0xBE8
	Size: 0x9D3
	Parameters: 0
	Flags: None
*/
function function_1fee8319()
{
	function_c22bfa61("spawnPlayer_preUTS");
	self endon("hash_643a7daf");
	self endon("hash_a948754f");
	self notify("hash_ab1f9ea1");
	level notify("hash_719f4ee5");
	self notify("hash_d9c9cb29");
	self function_830143f3();
	self function_5b7e454a(&"player_spawned", 0);
	self namespace_82b91a51::function_d848704c(0);
	self.var_b2e5a818 = self.var_3e94206a;
	var_8f0c79f2 = self.var_b0c19313;
	self.var_e0beb6ee = "playing";
	self.var_9e110015 = -1;
	self.var_654f262a = 0;
	self.var_a5cf2304 = 0;
	self.var_8cf1797c = "";
	self.var_13fed2e4 = [];
	if(function_4bd0142f("scr_csmode") > 0)
	{
		self.var_47c252e3 = function_4bd0142f("scr_csmode");
	}
	else
	{
		self.var_47c252e3 = level.var_6da13ee2;
	}
	self.var_3a90f16b = self.var_47c252e3;
	self.var_e5f0cd07 = undefined;
	self.var_b0c19313 = 1;
	self.var_fe46de11 = GetTime();
	self.var_7637d7c7 = 0;
	if(self.var_44fb8955["lives"] && (!isdefined(level.var_e6613238) || level.var_e6613238 == 0))
	{
		self.var_44fb8955["lives"]--;
		if(self.var_44fb8955["lives"] == 0)
		{
			level notify("hash_51039135");
			self notify("hash_51039135");
		}
	}
	self.var_564407fb = undefined;
	self.var_d4d5c9bf = 0;
	self.var_31863fce = undefined;
	self.var_d8979d12 = undefined;
	self.var_1303e940 = 0;
	self.var_47db6562 = 0;
	self.var_84fbd6a5 = 0;
	self.var_9011dd3b = 0;
	self.var_2ed57b6d = 0;
	self namespace_82b91a51::function_103937ec();
	self namespace_b976075a::function_2b8bc4cb();
	self.var_e1700654 = undefined;
	if(!self.var_bc077625)
	{
		if(level.var_266be277 || namespace_c46f5728::function_3c9bd810() < 20000)
		{
			self.var_bc077625 = 1;
		}
	}
	self function_dc5518f(0, 0, 512, 512, 4, 0);
	self function_368f616b();
	function_c22bfa61("onSpawnPlayer");
	self [[level.var_19bc9234]](0);
	if(isdefined(level.var_6a46230f))
	{
		self [[level.var_6a46230f]]();
	}
	function_7905cb51();
	function_7905cb51();
	namespace_2282eece::function_cd14a993();
	function_c22bfa61("spawnPlayer_postUTS");
	self thread function_dbb50216();
	self.var_ab21ee7b = undefined;
	/#
		namespace_33b293fd::function_a7ee953(namespace_c46f5728::function_d0b6aba3(self.var_808c68ef) || namespace_82b91a51::function_de60610b());
	#/
	self namespace_a249d1db::function_93a49c9d(self.var_808c68ef);
	var_4fbe10c = self namespace_9f824288::function_36adbb9c("altPlayerID", undefined);
	var_5a13c491 = undefined;
	if(isdefined(var_4fbe10c))
	{
		foreach(var_388ffcfb in level.var_2395e945)
		{
			if(var_388ffcfb function_f49dd4fd() === var_4fbe10c)
			{
				var_5a13c491 = var_388ffcfb;
				break;
			}
		}
		if(!isdefined(var_5a13c491))
		{
			self namespace_9f824288::function_bee608f0("altPlayerID", undefined);
		}
	}
	self thread namespace_a249d1db::function_a61641c6(self.var_3e94206a, self.var_808c68ef, level.var_dc236bc8, var_5a13c491);
	if(isdefined(self.var_c8430b0a) && self.var_c8430b0a)
	{
		self.var_c8430b0a = undefined;
	}
	else
	{
		self namespace_ce7c3ed5::function_23157de();
	}
	if(level.var_35a23885)
	{
		self namespace_82b91a51::function_56cee95(1);
		var_3e94206a = self.var_44fb8955["team"];
		self thread function_608568f5();
	}
	else
	{
		self namespace_82b91a51::function_56cee95(0);
		self function_901e0817();
		if(!var_8f0c79f2 && game["state"] == "playing")
		{
			function_c22bfa61("sound");
			var_3e94206a = self.var_3e94206a;
			self thread function_608568f5();
			function_7905cb51();
		}
	}
	if(function_6f1ebe57("scr_showperksonspawn") == "")
	{
		function_6c1294b8("scr_showperksonspawn", "0");
	}
	if(level.var_50527ffe)
	{
		function_6c1294b8("scr_showperksonspawn", "0");
	}
	if(function_4bd0142f("scr_showperksonspawn") == 1 && game["state"] != "postgame")
	{
		function_c22bfa61("showperksonspawn");
		if(level.var_cf1be84f == 1)
		{
			self namespace_724a4794::function_1b1daa35();
		}
		function_7905cb51();
	}
	if(isdefined(self.var_44fb8955["momentum"]))
	{
		self.var_a072e07b = self.var_44fb8955["momentum"];
	}
	function_7905cb51();
	wait(0.05);
	self notify("hash_8d7b7db3");
	if(!function_4bd0142f("art_review", 0))
	{
		namespace_dabbe128::function_dabbe128("hash_bc12b61f");
	}
	/#
		function_3bc5b442("Dev Block strings are not supported" + self.var_722885f3[0] + "Dev Block strings are not supported" + self.var_722885f3[1] + "Dev Block strings are not supported" + self.var_722885f3[2] + "Dev Block strings are not supported");
	#/
	function_6c1294b8("scr_selecting_location", "");
	self thread function_f937c96d();
	/#
		if(function_4bd0142f("Dev Block strings are not supported") > 0)
		{
			self thread namespace_e32b5089::function_4e01d1c3();
		}
	#/
	if(game["state"] == "postgame")
	{
		/#
			namespace_33b293fd::function_a7ee953(!level.var_4b93af95);
		#/
		self namespace_b976075a::function_890f5017();
	}
	self namespace_82b91a51::function_b85473ac();
	self namespace_82b91a51::function_5d60e278();
	self namespace_82b91a51::function_11a89b44(undefined, 0, 5);
	self namespace_ad23e503::function_74d6b22f("initial_streamer_ready");
}

/*
	Name: function_f937c96d
	Namespace: namespace_7956eece
	Checksum: 0xFBF44B2D
	Offset: 0x15C8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f937c96d()
{
	self notify("hash_f937c96d");
	self endon("hash_f937c96d");
	self endon("hash_643a7daf");
	while(1)
	{
		self waittill("hash_8276f484", var_a9ff79c4);
		if(var_a9ff79c4)
		{
			self.var_e1700654 = 1;
		}
		else
		{
			self.var_76dfde9a = 1;
		}
	}
}

/*
	Name: function_dedbb7c9
	Namespace: namespace_7956eece
	Checksum: 0x878688CC
	Offset: 0x1648
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_dedbb7c9(var_722885f3, var_6ab6f4fd)
{
	self notify("hash_ab1f9ea1");
	self notify("hash_d9c9cb29");
	self notify("hash_7f738843");
	function_2e650f63(var_722885f3, var_6ab6f4fd);
}

/*
	Name: function_a1bf9b89
	Namespace: namespace_7956eece
	Checksum: 0x91571FB1
	Offset: 0x16A8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_a1bf9b89(var_722885f3, var_6ab6f4fd)
{
	function_2e650f63(var_722885f3, var_6ab6f4fd);
}

/*
	Name: function_2e650f63
	Namespace: namespace_7956eece
	Checksum: 0xE7D33722
	Offset: 0x16E0
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function function_2e650f63(var_722885f3, var_6ab6f4fd)
{
	function_97a88ab2("BEGIN: in_spawnSpectator");
	self function_830143f3();
	if(self.var_44fb8955["team"] == "spectator")
	{
		self namespace_82b91a51::function_d848704c();
	}
	self.var_e0beb6ee = "spectator";
	self.var_9e110015 = -1;
	self.var_654f262a = 0;
	self.var_a5cf2304 = 0;
	self.var_e5f0cd07 = undefined;
	if(self.var_44fb8955["team"] == "spectator")
	{
		self.var_8cf1797c = "";
	}
	else
	{
		self.var_8cf1797c = "hud_status_dead";
	}
	namespace_54e5555d::function_7275c170();
	[[level.var_62209e9a]](var_722885f3, var_6ab6f4fd);
	if(level.var_de12b72f && !level.var_2016892b)
	{
		self thread function_29cfb1d();
	}
	function_97a88ab2("END: in_spawnSpectator");
}

/*
	Name: function_29cfb1d
	Namespace: namespace_7956eece
	Checksum: 0x33E06797
	Offset: 0x1850
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_29cfb1d()
{
	self endon("hash_643a7daf");
	self endon("hash_ab1f9ea1");
	self notify("hash_5465efc4");
	self endon("hash_5465efc4");
	self.var_251ebcb7 = 0;
}

/*
	Name: function_7431d193
	Namespace: namespace_7956eece
	Checksum: 0x66230DFB
	Offset: 0x1898
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_7431d193(var_60db70fa)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_ab1f9ea1");
	if(!isdefined(var_60db70fa))
	{
		var_60db70fa = 60;
	}
	wait(var_60db70fa);
	if(self.var_b0c19313)
	{
		return;
	}
	if(self.var_44fb8955["team"] == "spectator")
	{
		return;
	}
	if(!namespace_c46f5728::function_d0b6aba3(self.var_44fb8955["class"]))
	{
		self.var_44fb8955["class"] = "CLASS_CUSTOM1";
		self.var_808c68ef = self.var_44fb8955["class"];
	}
	self namespace_88a69b2f::function_58a15001();
	self thread [[level.var_f3db290b]]();
}

/*
	Name: function_a418f7cc
	Namespace: namespace_7956eece
	Checksum: 0x937ECB7B
	Offset: 0x1998
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_a418f7cc()
{
	/#
		if(function_4bd0142f("Dev Block strings are not supported") == 1)
		{
			return;
		}
	#/
	if(self function_e025daa7())
	{
		return;
	}
	self function_e0811328();
}

/*
	Name: function_e0811328
	Namespace: namespace_7956eece
	Checksum: 0xA7DB9A16
	Offset: 0x1A00
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_e0811328()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_ab1f9ea1");
	var_77a7fe7d = 90;
	if(function_6f1ebe57("scr_kick_time") != "")
	{
		var_77a7fe7d = function_f3087faa("scr_kick_time");
	}
	var_ad8451e0 = 45;
	if(function_6f1ebe57("scr_kick_mintime") != "")
	{
		var_ad8451e0 = function_f3087faa("scr_kick_mintime");
	}
	var_a4ad846c = GetTime();
	function_58062728(var_77a7fe7d);
	var_aa61e82a = GetTime() - var_a4ad846c / 1000;
	if(var_aa61e82a < var_77a7fe7d - 0.1 && var_aa61e82a < var_ad8451e0)
	{
		return;
	}
	if(self.var_b0c19313)
	{
		return;
	}
	if(function_16f43f1b())
	{
		return;
	}
	if(self.var_44fb8955["team"] == "spectator")
	{
		return;
	}
	if(!function_cc406c51())
	{
		return;
	}
	namespace_2282eece::function_666632bb();
	function_1bafba97(self function_c7f3ce11());
}

/*
	Name: function_58062728
	Namespace: namespace_7956eece
	Checksum: 0x7D954656
	Offset: 0x1BE0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_58062728(var_77a7fe7d)
{
	level endon("hash_c8ab51de");
	namespace_6c1d04bd::function_ab19bd44(var_77a7fe7d);
}

/*
	Name: function_f4876f2c
	Namespace: namespace_7956eece
	Checksum: 0x11736237
	Offset: 0x1C18
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_f4876f2c()
{
	self notify("hash_ab1f9ea1");
	self notify("hash_d9c9cb29");
	self function_830143f3();
	self namespace_82b91a51::function_d848704c();
	self namespace_82b91a51::function_56cee95(0);
	self.var_e0beb6ee = "spectator";
	self.var_9e110015 = -1;
	self.var_654f262a = 0;
	self.var_a5cf2304 = 0;
	self.var_e5f0cd07 = undefined;
	self namespace_5deb553::function_91904565();
	self function_a30814d(self.var_722885f3);
	self function_eda2be50(self.var_6ab6f4fd);
	self function_dc5518f(0, 128, 512, 4000, 6, 1.8);
}

/*
	Name: function_8d9835ba
	Namespace: namespace_7956eece
	Checksum: 0xD704249
	Offset: 0x1D48
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_8d9835ba(var_2b5fd81c)
{
	self notify("hash_ab1f9ea1");
	self notify("hash_d9c9cb29");
	self endon("hash_643a7daf");
	self function_830143f3();
	self namespace_82b91a51::function_d848704c();
	self namespace_82b91a51::function_56cee95(0);
	self.var_e0beb6ee = "intermission";
	self.var_9e110015 = -1;
	self.var_654f262a = 0;
	self.var_a5cf2304 = 0;
	self.var_e5f0cd07 = undefined;
	if(isdefined(var_2b5fd81c) && var_2b5fd81c)
	{
		namespace_5deb553::function_91904565();
	}
	else
	{
		[[level.var_7b3fb2db]]();
	}
	self function_dc5518f(0, 128, 512, 4000, 6, 1.8);
}

/*
	Name: function_20ddc4c4
	Namespace: namespace_7956eece
	Checksum: 0xD5C8A72B
	Offset: 0x1E68
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_20ddc4c4(var_3e94206a)
{
	var_9f83ec12 = undefined;
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_27015faf[var_3e94206a].size; var_c957f6b6++)
	{
		var_5dc5e20a = level.var_27015faf[var_3e94206a][var_c957f6b6];
		if(var_5dc5e20a.var_9fa69eee)
		{
			continue;
		}
		var_9f83ec12 = var_5dc5e20a;
		break;
	}
	if(isdefined(var_9f83ec12))
	{
		var_9f83ec12.var_bb033c66 = 1;
		var_9f83ec12 namespace_88a69b2f::function_58a15001();
		var_9f83ec12 thread [[level.var_f3db290b]]();
	}
}

/*
	Name: function_dcb186d4
	Namespace: namespace_7956eece
	Checksum: 0x3129746B
	Offset: 0x1F48
	Size: 0x151
	Parameters: 2
	Flags: None
*/
function function_dcb186d4(var_a4f5d0b7, var_e600741c)
{
	if(!level.var_38a6bf87)
	{
		return;
	}
	namespace_82b91a51::function_7000c5f1();
	var_7d2ee7aa = undefined;
	if(isdefined(var_e600741c) && isdefined(var_e600741c.var_3e94206a) && isdefined(level.var_e7a38025[var_e600741c.var_3e94206a]))
	{
		var_7d2ee7aa = var_e600741c.var_3e94206a;
	}
	if(isdefined(var_7d2ee7aa))
	{
		function_20ddc4c4(var_7d2ee7aa);
		return;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(var_3e94206a == var_a4f5d0b7)
		{
			continue;
		}
		function_20ddc4c4(var_3e94206a);
	}
}

/*
	Name: function_a021ee79
	Namespace: namespace_7956eece
	Checksum: 0x7D719336
	Offset: 0x20A8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a021ee79()
{
	if(!level.var_de12b72f)
	{
		return 0;
	}
	if(level.var_e300e83a <= 1)
	{
		return 0;
	}
	foreach(var_3e94206a in level.var_e7a38025)
	{
		if(!game["teamScores"][var_3e94206a] >= level.var_e300e83a - 1)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_59cc7caa
	Namespace: namespace_7956eece
	Checksum: 0xD76D3B53
	Offset: 0x2178
	Size: 0x6D
	Parameters: 0
	Flags: None
*/
function function_59cc7caa()
{
	if(namespace_82b91a51::function_b8cd89f0())
	{
		return 0;
	}
	if(namespace_82b91a51::function_5b94904d())
	{
		return 0;
	}
	if(isdefined(level.var_226b2ae5) && level.var_226b2ae5)
	{
		return 0;
	}
	if(function_a021ee79())
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_f16225d
	Namespace: namespace_7956eece
	Checksum: 0x991D966C
	Offset: 0x21F0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_f16225d()
{
	namespace_82b91a51::function_ad66eb43(game["strings"]["spawn_next_round"]);
	self thread namespace_88a69b2f::function_89e70222(3);
}

/*
	Name: function_a559a720
	Namespace: namespace_7956eece
	Checksum: 0xEB76F3D2
	Offset: 0x2240
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_a559a720()
{
	if(function_59cc7caa())
	{
		self thread [[level.var_d4b32a23]]();
	}
}

/*
	Name: function_f3db290b
	Namespace: namespace_7956eece
	Checksum: 0xA32493BE
	Offset: 0x2270
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_f3db290b(var_fbb10a7e)
{
	function_c22bfa61("spawnClient");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(self.var_3e94206a));
	#/
	/#
		namespace_33b293fd::function_a7ee953(namespace_c46f5728::function_d0b6aba3(self.var_808c68ef));
	#/
	if(!self function_cc406c51())
	{
		var_61d0f1e6 = self.var_722885f3;
		var_ea4b32c0 = self.var_6ab6f4fd;
		self function_a559a720();
		self thread [[level.var_dedbb7c9]](var_61d0f1e6 + VectorScale((0, 0, 1), 60), var_ea4b32c0);
		function_7905cb51();
		return;
	}
	if(self.var_9fa69eee)
	{
		function_7905cb51();
		return;
	}
	self.var_9fa69eee = 1;
	self.var_bb033c66 = undefined;
	self function_8deb5b1b(var_fbb10a7e);
	if(isdefined(self))
	{
		self.var_9fa69eee = 0;
	}
	function_7905cb51();
}

/*
	Name: function_8deb5b1b
	Namespace: namespace_7956eece
	Checksum: 0x1D25E8A2
	Offset: 0x23F8
	Size: 0x79B
	Parameters: 1
	Flags: None
*/
function function_8deb5b1b(var_fbb10a7e)
{
	self endon("hash_643a7daf");
	self endon("hash_d9c9cb29");
	level endon("hash_c8ab51de");
	if(!isdefined(var_fbb10a7e))
	{
		var_fbb10a7e = 0;
	}
	var_e5226d10 = 0;
	if(isdefined(level.var_3a9f9a38) && level.var_3a9f9a38 && (isdefined(self.var_ebd83169) && self.var_ebd83169))
	{
		self thread namespace_c03736ba::function_44e35f1a();
	}
	if(isdefined(self.var_d9e008c5) && self.var_d9e008c5)
	{
		var_bd37ccff = namespace_b976075a::function_bd37ccff();
		if(var_bd37ccff > var_fbb10a7e)
		{
			var_bd37ccff = var_bd37ccff - var_fbb10a7e;
			var_fbb10a7e = 0;
		}
		else
		{
			var_fbb10a7e = var_fbb10a7e - var_bd37ccff;
			var_bd37ccff = 0;
		}
		if(var_bd37ccff > 0)
		{
			namespace_82b91a51::function_ad66eb43(&"MP_FRIENDLY_FIRE_WILL_NOT", var_bd37ccff);
			self thread function_a1bf9b89(self.var_722885f3 + VectorScale((0, 0, 1), 60), self.var_6ab6f4fd);
			var_e5226d10 = 1;
			wait(var_bd37ccff);
		}
		self.var_d9e008c5 = 0;
	}
	if(!isdefined(self.var_1be15a91) && isdefined(level.var_24ee2d5a[self.var_3e94206a]))
	{
		self.var_1be15a91 = level.var_24ee2d5a[self.var_3e94206a];
		level.var_24ee2d5a[self.var_3e94206a]++;
	}
	var_cabdc9f7 = function_cabdc9f7(0);
	if(var_cabdc9f7 > var_fbb10a7e)
	{
		var_cabdc9f7 = var_cabdc9f7 - var_fbb10a7e;
		var_fbb10a7e = 0;
	}
	else
	{
		var_fbb10a7e = var_fbb10a7e - var_cabdc9f7;
		var_cabdc9f7 = 0;
	}
	if(var_cabdc9f7 > 0)
	{
		if(level.var_38a6bf87)
		{
			namespace_82b91a51::function_ad66eb43(game["strings"]["you_will_spawn"], var_cabdc9f7);
		}
		else if(self function_33d0d4d7())
		{
			namespace_82b91a51::function_ad66eb43(game["strings"]["waiting_to_spawn_ss"], var_cabdc9f7, 1);
		}
		else
		{
			namespace_82b91a51::function_ad66eb43(game["strings"]["waiting_to_spawn"], var_cabdc9f7);
		}
		if(!var_e5226d10)
		{
			var_870c1324 = self.var_722885f3 + VectorScale((0, 0, 1), 60);
			var_d521fd4a = self.var_6ab6f4fd;
			if(isdefined(level.var_6b5e167c) && [[level.var_6b5e167c]]() == 1)
			{
				var_3f6206f4 = namespace_4a43ba8::function_3812b585();
				if(isdefined(var_3f6206f4))
				{
					var_870c1324 = var_3f6206f4.var_722885f3;
					var_d521fd4a = var_3f6206f4.var_6ab6f4fd;
				}
			}
			self thread function_a1bf9b89(var_870c1324, var_d521fd4a);
		}
		var_e5226d10 = 1;
		self namespace_c46f5728::function_16a37f28(var_cabdc9f7, "force_spawn");
		self notify("hash_15508d2c");
	}
	if(isdefined(level.var_2b829c4e))
	{
		if(isdefined(level.var_bdd4d5c2) && !var_e5226d10)
		{
			var_e5226d10 = self [[level.var_bdd4d5c2]]();
		}
		if(!var_e5226d10)
		{
			self thread function_a1bf9b89(self.var_722885f3 + VectorScale((0, 0, 1), 60), self.var_6ab6f4fd);
		}
		var_e5226d10 = 1;
		if(!self [[level.var_2b829c4e]]())
		{
			self.var_9fa69eee = 0;
			self namespace_82b91a51::function_d848704c();
			self.var_1be15a91 = undefined;
			self.var_fa504f21 = undefined;
			return;
		}
	}
	namespace_bea63b8a::function_1ab5ebec("all");
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	if(level.var_2395e945.size > 0)
	{
		if(namespace_cc27597::function_b63c409())
		{
			if(!var_e5226d10)
			{
				self thread function_a1bf9b89(self.var_722885f3 + VectorScale((0, 0, 1), 60), self.var_6ab6f4fd);
			}
			var_e5226d10 = 1;
			namespace_cc27597::function_e0990331();
		}
	}
	var_e2e9f647 = level.var_726dcf43 > 0;
	if(!level.var_d87e5cbd && self.var_b0c19313 && !var_e2e9f647 && !self.var_bb4b0e31 && !level.var_38a6bf87 && !var_e5226d10)
	{
		namespace_82b91a51::function_ad66eb43(game["strings"]["press_to_spawn"]);
		if(!var_e5226d10)
		{
			self thread function_a1bf9b89(self.var_722885f3 + VectorScale((0, 0, 1), 60), self.var_6ab6f4fd);
		}
		var_e5226d10 = 1;
		self function_8192db4b();
	}
	self.var_9fa69eee = 0;
	self namespace_82b91a51::function_d848704c();
	self.var_1be15a91 = undefined;
	self.var_fa504f21 = undefined;
	if(isdefined(self.var_acfedf1c) && self.var_acfedf1c)
	{
		self waittill("hash_ded47a5c");
	}
	self notify("hash_1528244e");
	if(isdefined(self.var_ee8c475a))
	{
		self.var_ee8c475a.var_aabe9f43 = 0;
	}
	self.var_ebd83169 = undefined;
	self.var_acfedf1c = undefined;
	self.var_1b7a74aa = undefined;
	self.var_ca78829f = undefined;
	self.var_d9dd0142 = function_c4d5ec1f("none");
	self.var_8c0347ee = undefined;
	self.var_2b1ad8b = undefined;
	if(isdefined(level.var_ee7cb602) && level.var_ee7cb602)
	{
		level waittill("hash_f567dc4e");
	}
	if(!isdefined(self.var_ac3f0a6a))
	{
		self.var_ac3f0a6a = 1;
		namespace_9f824288::function_5d2cdd99();
	}
	self thread [[level.var_1fee8319]]();
}

/*
	Name: function_8192db4b
	Namespace: namespace_7956eece
	Checksum: 0x9406A479
	Offset: 0x2BA0
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_8192db4b()
{
	self endon("hash_643a7daf");
	self endon("hash_d9c9cb29");
	while(1)
	{
		if(self function_d5ef124())
		{
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_a90f3701
	Namespace: namespace_7956eece
	Checksum: 0x82E3850C
	Offset: 0x2BF0
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_a90f3701()
{
	self endon("hash_643a7daf");
	self endon("hash_d9c9cb29");
	if(!level.var_266be277 && !level.var_a93e40a6)
	{
		var_61d0f1e6 = self.var_722885f3;
		var_ea4b32c0 = self.var_6ab6f4fd;
		self thread [[level.var_dedbb7c9]](var_61d0f1e6 + VectorScale((0, 0, 1), 60), var_ea4b32c0);
		self waittill("hash_9995c4c3");
	}
}

/*
	Name: function_dc6304e9
	Namespace: namespace_7956eece
	Checksum: 0x363A78E7
	Offset: 0x2C88
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_dc6304e9(var_9368ba0c)
{
	if(!level.var_e89a8a5c)
	{
		return;
	}
	if(!isdefined(self.var_251ebcb7) || var_9368ba0c != self.var_251ebcb7)
	{
		self.var_251ebcb7 = var_9368ba0c;
		if(var_9368ba0c)
		{
			self function_241d0eae(1);
			self function_dc5518f(0, 128, 512, 4000, 6, 1.8);
		}
		else
		{
			self function_241d0eae(0);
			self function_dc5518f(0, 0, 512, 4000, 4, 0);
		}
		self function_368f616b();
	}
}

/*
	Name: function_830143f3
	Namespace: namespace_7956eece
	Checksum: 0x2B418482
	Offset: 0x2D80
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_830143f3()
{
	function_5254e3eb();
	self function_531d5f99();
	self function_8a0ba272("damage_heavy");
}


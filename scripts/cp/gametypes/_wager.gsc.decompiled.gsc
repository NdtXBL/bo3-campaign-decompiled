#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\teams\_teams;
#using scripts\shared\callbacks_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\system_shared;

#namespace namespace_93432369;

/*
	Name: function_2dc19561
	Namespace: namespace_93432369
	Checksum: 0xE3837110
	Offset: 0x440
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("wager", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_93432369
	Checksum: 0xBCA3A589
	Offset: 0x480
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_93432369
	Checksum: 0xC7B1F1A8
	Offset: 0x4B0
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	if(function_53c31fe7(3))
	{
		level.var_1d0304c = 1;
		if(!isdefined(game["wager_pot"]))
		{
			game["wager_pot"] = 0;
			game["wager_initial_pot"] = 0;
		}
		game["dialog"]["wm_u2_online"] = "boost_gen_02";
		game["dialog"]["wm_in_the_money"] = "boost_gen_06";
		game["dialog"]["wm_oot_money"] = "boost_gen_07";
		level.var_dc85d20b = [];
		namespace_dabbe128::function_95670def(&function_95670def);
		namespace_dabbe128::function_356a4ee1(&function_d3f0f21);
		level thread function_7bda789b();
	}
	else
	{
		level.var_1d0304c = 0;
	}
	level.var_e6613238 = 1;
}

/*
	Name: function_d3f0f21
	Namespace: namespace_93432369
	Checksum: 0xCE2A1205
	Offset: 0x5F0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d3f0f21()
{
	self endon("hash_643a7daf");
	if(!isdefined(self.var_44fb8955["wager"]))
	{
		self.var_44fb8955["wager"] = 1;
		self.var_44fb8955["wager_sideBetWinnings"] = 0;
		self.var_44fb8955["wager_sideBetLosses"] = 0;
	}
	if(isdefined(level.var_1775f8bc) && level.var_1775f8bc || (isdefined(level.var_1a4f6147) && level.var_1a4f6147))
	{
		self.var_44fb8955["hasRadar"] = 1;
		self.var_dcba9cef = 1;
	}
	else
	{
		self.var_44fb8955["hasRadar"] = 0;
		self.var_dcba9cef = 0;
	}
	self thread function_b5aaa823();
}

/*
	Name: function_95670def
	Namespace: namespace_93432369
	Checksum: 0x98C517F9
	Offset: 0x6F0
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function function_95670def()
{
	level endon("hash_c8ab51de");
	self endon("hash_51039135");
	level notify("hash_51039135");
}

/*
	Name: function_b5aaa823
	Namespace: namespace_93432369
	Checksum: 0xA51DDBB3
	Offset: 0x720
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_b5aaa823()
{
	if(isdefined(self.var_44fb8955["hasPaidWagerAnte"]))
	{
		return;
	}
	waittillframeend;
	var_e04cdbf4 = self namespace_f3970517::function_266f74f4();
	var_e2282c76 = function_4bd0142f("scr_wagerBet");
	if(var_e2282c76 > var_e04cdbf4)
	{
		var_e2282c76 = var_e04cdbf4;
	}
	var_e04cdbf4 = var_e04cdbf4 - var_e2282c76;
	self namespace_f3970517::function_81238668(var_e04cdbf4);
	if(!self function_15caaab3())
	{
		self function_c539ac66(var_e2282c76);
	}
	game["wager_pot"] = game["wager_pot"] + var_e2282c76;
	game["wager_initial_pot"] = game["wager_initial_pot"] + var_e2282c76;
	self.var_44fb8955["hasPaidWagerAnte"] = 1;
	self function_aa67c13b("LIFETIME_BUYIN", var_e2282c76);
	self function_3128e1ef(0 - var_e2282c76);
	if(isdefined(level.var_92ff1caf))
	{
		[[level.var_92ff1caf]](self, var_e2282c76);
	}
	self thread namespace_fe5e4926::function_9392f054();
}

/*
	Name: function_c539ac66
	Namespace: namespace_93432369
	Checksum: 0xC791AF43
	Offset: 0x8D0
	Size: 0xE5
	Parameters: 1
	Flags: None
*/
function function_c539ac66(var_1e2af8c1)
{
	if(!isdefined(self) || !function_65f192a6(self))
	{
		return;
	}
	if(!isdefined(game["escrows"]))
	{
		game["escrows"] = [];
	}
	var_9fa270d0 = self function_f49dd4fd();
	if(!isdefined(var_9fa270d0))
	{
		return;
	}
	var_5160a183 = function_a8fb77bd();
	var_5160a183.var_eb07a0c7 = var_9fa270d0;
	var_5160a183.var_1e2af8c1 = var_1e2af8c1;
	game["escrows"][game["escrows"].size] = var_5160a183;
}

/*
	Name: function_786d0921
	Namespace: namespace_93432369
	Checksum: 0xBACE5110
	Offset: 0x9C0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_786d0921()
{
	if(!isdefined(game["escrows"]))
	{
		return;
	}
	var_c8090ae3 = game["escrows"];
	var_dbed6161 = var_c8090ae3.size;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_dbed6161; var_c957f6b6++)
	{
		var_5160a183 = var_c8090ae3[var_c957f6b6];
	}
	game["escrows"] = [];
}

/*
	Name: function_3128e1ef
	Namespace: namespace_93432369
	Checksum: 0xA1DC4869
	Offset: 0xA60
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_3128e1ef(var_ab08f1f9)
{
	var_37213530 = self namespace_fe5e4926::function_fe323248(1, 0, "score");
	self namespace_fe5e4926::function_ebe77e8c(1, 0, "score", var_37213530 + var_ab08f1f9);
}

/*
	Name: function_fdda44f9
	Namespace: namespace_93432369
	Checksum: 0xC3ABD9ED
	Offset: 0xAD0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_fdda44f9()
{
	if(!level.var_1d0304c)
	{
		return;
	}
}

/*
	Name: function_42c84bba
	Namespace: namespace_93432369
	Checksum: 0x2E3E21F7
	Offset: 0xAE8
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_42c84bba()
{
	if(level.var_1d0304c == 0)
	{
		return;
	}
	function_a33ac034();
	if(isdefined(level.var_e4f4bbb2))
	{
		[[level.var_e4f4bbb2]]();
	}
}

/*
	Name: function_a33ac034
	Namespace: namespace_93432369
	Checksum: 0xAD872A06
	Offset: 0xB30
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a33ac034()
{
	var_cb9e7f23 = !isdefined(level.var_7fb97d34) || !level.var_7fb97d34;
	if(!var_cb9e7f23)
	{
		return;
	}
	if(!level.var_de12b72f)
	{
		function_ca9d738();
	}
	else
	{
		function_d92072c1();
	}
}

/*
	Name: function_ca9d738
	Namespace: namespace_93432369
	Checksum: 0x8C8B83CC
	Offset: 0xBA8
	Size: 0x323
	Parameters: 0
	Flags: None
*/
function function_ca9d738()
{
	var_8e2656eb = level.var_1d893cda["all"];
	var_21b0bdfa = function_84970cc4(0.5, 0.3, 0.2);
	if(var_8e2656eb.size == 2)
	{
		var_21b0bdfa = function_84970cc4(0.7, 0.3);
	}
	else if(var_8e2656eb.size == 1)
	{
		var_21b0bdfa = function_84970cc4(1);
	}
	function_4ed59a0(level.var_2395e945, 0);
	if(isdefined(level.var_db7e784b) && level.var_db7e784b)
	{
		var_e2282c76 = function_4bd0142f("scr_wagerBet");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_8e2656eb.size; var_c957f6b6++)
		{
			if(!var_8e2656eb[var_c957f6b6] function_15caaab3())
			{
				var_8e2656eb[var_c957f6b6].var_2db92ec2 = var_e2282c76;
			}
		}
	}
	else if(level.var_2395e945.size == 1)
	{
		game["escrows"] = undefined;
		return;
	}
	else
	{
		var_347f1b86 = 0;
		var_542d8772 = var_21b0bdfa[0];
		var_60011013 = [];
		var_60011013[var_60011013.size] = var_8e2656eb[0];
		for(var_c957f6b6 = 1; var_c957f6b6 < var_8e2656eb.size; var_c957f6b6++)
		{
			if(var_8e2656eb[var_c957f6b6].var_44fb8955["score"] < var_60011013[0].var_44fb8955["score"])
			{
				function_4ed59a0(var_60011013, function_b6b79a0(game["wager_pot"] * var_542d8772 / var_60011013.size));
				var_60011013 = [];
				var_542d8772 = 0;
			}
			var_60011013[var_60011013.size] = var_8e2656eb[var_c957f6b6];
			var_347f1b86++;
			if(isdefined(var_21b0bdfa[var_347f1b86]))
			{
				var_542d8772 = var_542d8772 + var_21b0bdfa[var_347f1b86];
			}
		}
		function_4ed59a0(var_60011013, function_b6b79a0(game["wager_pot"] * var_542d8772 / var_60011013.size));
	}
}

/*
	Name: function_2f8dd175
	Namespace: namespace_93432369
	Checksum: 0xFDF2EB0A
	Offset: 0xED8
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_2f8dd175()
{
	level.var_6dca7c12 = function_84970cc4([], [], []);
	var_8e2656eb = level.var_1d893cda["all"];
	var_be087437 = function_84970cc4(var_8e2656eb[0].var_44fb8955["score"], -1, -1);
	var_f3664349 = 0;
	for(var_5e76f0af = 0; var_5e76f0af < var_8e2656eb.size && var_f3664349 < var_be087437.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_8e2656eb[var_5e76f0af];
		if(var_5dc5e20a.var_44fb8955["score"] < var_be087437[var_f3664349])
		{
			var_f3664349++;
			if(var_f3664349 >= level.var_6dca7c12.size)
			{
				break;
			}
			var_be087437[var_f3664349] = var_5dc5e20a.var_44fb8955["score"];
		}
		level.var_6dca7c12[var_f3664349][level.var_6dca7c12[var_f3664349].size] = var_5dc5e20a;
	}
}

/*
	Name: function_d92072c1
	Namespace: namespace_93432369
	Checksum: 0x15F44D12
	Offset: 0x1050
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_d92072c1()
{
	var_f49bab78 = namespace_2282eece::function_f2724c55("teamScores");
	if(var_f49bab78 == "tie")
	{
		function_ca9d738();
		return;
	}
	var_559540e9 = [];
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = level.var_2395e945[var_5e76f0af];
		var_5dc5e20a.var_2db92ec2 = 0;
		if(var_5dc5e20a.var_44fb8955["team"] == var_f49bab78)
		{
			var_559540e9[var_559540e9.size] = var_5dc5e20a;
		}
	}
	if(var_559540e9.size == 0)
	{
		function_4ed59a0(level.var_2395e945, function_4bd0142f("scr_wagerBet"));
		return;
	}
	var_c6ca6bde = function_b6b79a0(game["wager_pot"] / var_559540e9.size);
	function_4ed59a0(var_559540e9, var_c6ca6bde);
}

/*
	Name: function_4ed59a0
	Namespace: namespace_93432369
	Checksum: 0x10F37170
	Offset: 0x11D8
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_4ed59a0(var_2395e945, var_1e2af8c1)
{
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_2395e945[var_5e76f0af].var_2db92ec2 = var_1e2af8c1;
	}
}

/*
	Name: function_c3fe1dc4
	Namespace: namespace_93432369
	Checksum: 0x61E0F743
	Offset: 0x1238
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_c3fe1dc4()
{
	level.var_b4140db7 = 1;
	if(level.var_1d0304c == 0)
	{
		return;
	}
	function_a33ac034();
	function_725ab30f();
	var_2395e945 = level.var_2395e945;
	wait(0.5);
	var_8e2656eb = level.var_5a76e350;
	for(var_5e76f0af = 0; var_5e76f0af < var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = var_2395e945[var_5e76f0af];
		if(isdefined(var_5dc5e20a.var_44fb8955["wager_sideBetWinnings"]))
		{
			function_c8c7f67c(var_5dc5e20a, var_5dc5e20a.var_2db92ec2 + var_5dc5e20a.var_44fb8955["wager_sideBetWinnings"]);
		}
		else
		{
			function_c8c7f67c(var_5dc5e20a, var_5dc5e20a.var_2db92ec2);
		}
		if(var_5dc5e20a.var_2db92ec2 > 0)
		{
			namespace_e32b5089::function_17c49541(var_5dc5e20a);
		}
	}
	function_786d0921();
}

/*
	Name: function_c8c7f67c
	Namespace: namespace_93432369
	Checksum: 0x3AF68AD4
	Offset: 0x13C0
	Size: 0xA3
	Parameters: 2
	Flags: None
*/
function function_c8c7f67c(var_5dc5e20a, var_2194cace)
{
	if(var_2194cace == 0)
	{
		return;
	}
	var_e04cdbf4 = var_5dc5e20a namespace_f3970517::function_266f74f4();
	var_5dc5e20a namespace_f3970517::function_81238668(var_e04cdbf4 + var_2194cace);
	var_5dc5e20a function_aa67c13b("LIFETIME_EARNINGS", var_2194cace);
	var_5dc5e20a function_3128e1ef(var_2194cace);
}

/*
	Name: function_725ab30f
	Namespace: namespace_93432369
	Checksum: 0xB081C1C4
	Offset: 0x1470
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_725ab30f()
{
	var_20220e85 = function_84970cc4(-1, -1, -1);
	level.var_5a76e350 = [];
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = level.var_2395e945[var_5e76f0af];
		if(!isdefined(var_5dc5e20a.var_2db92ec2))
		{
			var_5dc5e20a.var_2db92ec2 = 0;
		}
		if(var_5dc5e20a.var_2db92ec2 > var_20220e85[0])
		{
			var_20220e85[2] = var_20220e85[1];
			var_20220e85[1] = var_20220e85[0];
			var_20220e85[0] = var_5dc5e20a.var_2db92ec2;
			level.var_5a76e350[2] = level.var_5a76e350[1];
			level.var_5a76e350[1] = level.var_5a76e350[0];
			level.var_5a76e350[0] = var_5dc5e20a;
			continue;
		}
		if(var_5dc5e20a.var_2db92ec2 > var_20220e85[1])
		{
			var_20220e85[2] = var_20220e85[1];
			var_20220e85[1] = var_5dc5e20a.var_2db92ec2;
			level.var_5a76e350[2] = level.var_5a76e350[1];
			level.var_5a76e350[1] = var_5dc5e20a;
			continue;
		}
		if(var_5dc5e20a.var_2db92ec2 > var_20220e85[2])
		{
			var_20220e85[2] = var_5dc5e20a.var_2db92ec2;
			level.var_5a76e350[2] = var_5dc5e20a;
		}
	}
}

/*
	Name: function_fdf4c650
	Namespace: namespace_93432369
	Checksum: 0xE1CE7833
	Offset: 0x1688
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_fdf4c650()
{
	if(isdefined(level.var_77929119) && level.var_77929119)
	{
		level notify("hash_6ae77d92");
		level waittill("hash_634b76a6");
	}
}

/*
	Name: function_8488655e
	Namespace: namespace_93432369
	Checksum: 0x414E9065
	Offset: 0x16C8
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_8488655e()
{
	level endon("hash_634b76a6");
	var_1306b7e0 = level.var_3531290b - GetTime() / 1000;
	if(var_1306b7e0 < 0)
	{
		var_1306b7e0 = 0;
	}
	wait(var_1306b7e0);
	level notify("hash_634b76a6");
}

/*
	Name: function_8545a8b9
	Namespace: namespace_93432369
	Checksum: 0x85AEDCD7
	Offset: 0x1730
	Size: 0x5D
	Parameters: 0
	Flags: None
*/
function function_8545a8b9()
{
	var_526f7a67 = level.var_3531290b - GetTime() / 1000;
	if(var_526f7a67 <= 3)
	{
		return;
	}
	level.var_3531290b = GetTime() + 3000;
	wait(3);
	level notify("hash_634b76a6");
}

/*
	Name: function_937040bd
	Namespace: namespace_93432369
	Checksum: 0x38DE2F16
	Offset: 0x1798
	Size: 0x1D3
	Parameters: 3
	Flags: None
*/
function function_937040bd(var_f5e295eb, var_a9b5caef, var_dfcc01fd)
{
	if(!isdefined(var_a9b5caef) || var_a9b5caef)
	{
		if(!isdefined(self.var_44fb8955["wagerBodyAssigned"]))
		{
			self function_726c447b();
			self.var_44fb8955["wagerBodyAssigned"] = 1;
		}
		self namespace_e7a38025::function_37fd0a0f(self.var_3e94206a, var_dfcc01fd);
	}
	self function_f7a2618f();
	self.var_463e2ebb = [];
	self.var_44fb8955["killstreaks"] = [];
	self.var_44fb8955["killstreak_has_been_used"] = [];
	self.var_44fb8955["killstreak_unique_id"] = [];
	if(!isdefined(var_f5e295eb) || var_f5e295eb)
	{
		self function_fe91f994();
	}
	if(isdefined(self.var_44fb8955["hasRadar"]) && self.var_44fb8955["hasRadar"])
	{
		self.var_dcba9cef = 1;
	}
	if(isdefined(self.var_e78803ee) && isdefined(self.var_e78803ee.size))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_e78803ee.size; var_c957f6b6++)
		{
			self function_61248dfa(self.var_e78803ee[var_c957f6b6]);
		}
	}
	self function_962f5e7d();
}

/*
	Name: function_726c447b
	Namespace: namespace_93432369
	Checksum: 0x99EC1590
	Offset: 0x1978
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_726c447b()
{
}

/*
	Name: function_972d1b69
	Namespace: namespace_93432369
	Checksum: 0xD39E8F5C
	Offset: 0x1988
	Size: 0xE9
	Parameters: 4
	Flags: None
*/
function function_972d1b69(var_63050b0a, var_d3a18b74, var_bdc1adde, var_b37c7904)
{
	self endon("hash_643a7daf");
	var_982bfcf2 = self.var_2611c2db.size;
	self.var_2611c2db[var_982bfcf2] = function_a8fb77bd();
	self.var_2611c2db[var_982bfcf2].var_63050b0a = var_63050b0a;
	self.var_2611c2db[var_982bfcf2].var_d3a18b74 = var_d3a18b74;
	self.var_2611c2db[var_982bfcf2].var_bdc1adde = var_bdc1adde;
	self.var_2611c2db[var_982bfcf2].var_b37c7904 = var_b37c7904;
	self notify("hash_2528173");
}

/*
	Name: function_7bda789b
	Namespace: namespace_93432369
	Checksum: 0x6374F4CD
	Offset: 0x1A80
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_7bda789b()
{
	level endon("hash_c8ab51de");
	for(;;)
	{
		level waittill("hash_51039135");
		if(!isdefined(level.var_e782fb64) || !level.var_e782fb64)
		{
			break;
		}
		wait(0.05);
		var_2395e945 = level.var_2395e945;
		var_c6f4b6a = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			if(isdefined(var_2395e945[var_c957f6b6].var_44fb8955["lives"]) && var_2395e945[var_c957f6b6].var_44fb8955["lives"] > 0)
			{
				var_c6f4b6a++;
			}
		}
		if(var_c6f4b6a == 2)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
			{
				var_2395e945[var_c957f6b6] function_972d1b69(&"MP_HEADS_UP", 0, &"MP_U2_ONLINE", "wm_u2_online");
				var_2395e945[var_c957f6b6].var_44fb8955["hasRadar"] = 1;
				var_2395e945[var_c957f6b6].var_dcba9cef = 1;
				level.var_1303e940[var_2395e945[var_c957f6b6] function_c7f3ce11()]++;
			}
		}
	}
}

/*
	Name: function_962f5e7d
	Namespace: namespace_93432369
	Checksum: 0xC38202C6
	Offset: 0x1C38
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_962f5e7d()
{
	var_f1fa8eb9 = self.var_f1fa8eb9;
	if(!isdefined(var_f1fa8eb9))
	{
		var_f1fa8eb9 = 1;
	}
	if(isdefined(level.var_1775f8bc) && level.var_1775f8bc)
	{
		if(var_f1fa8eb9 <= 3 && isdefined(self.var_f1242439) && self.var_f1242439 > 0)
		{
			self function_e52e855c("specialty_gpsjammer");
		}
		else
		{
			self function_5d8fa337("specialty_gpsjammer");
		}
	}
	else if(isdefined(level.var_1a4f6147) && level.var_1a4f6147)
	{
		if(var_f1fa8eb9 == 1 && isdefined(self.var_f1242439) && self.var_f1242439 > 0)
		{
			self function_e52e855c("specialty_gpsjammer");
		}
		else
		{
			self function_5d8fa337("specialty_gpsjammer");
		}
	}
}

/*
	Name: function_40cb89b3
	Namespace: namespace_93432369
	Checksum: 0xF51811B5
	Offset: 0x1D68
	Size: 0x24D
	Parameters: 0
	Flags: None
*/
function function_40cb89b3()
{
	self notify("hash_a8628cdc");
	self endon("hash_a8628cdc");
	wait(0.05);
	namespace_2282eece::function_8509b2ab();
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_1d893cda["all"].size; var_c957f6b6++)
	{
		var_f1fa8eb9 = level.var_1d893cda["all"][var_c957f6b6].var_f1fa8eb9;
		if(!isdefined(var_f1fa8eb9))
		{
			var_f1fa8eb9 = 1;
		}
		var_86531c07 = var_c957f6b6 + 1;
		for(var_a3557c4d = var_c957f6b6 - 1; var_a3557c4d >= 0; var_a3557c4d--)
		{
			if(level.var_1d893cda["all"][var_c957f6b6].var_f1242439 == level.var_1d893cda["all"][var_a3557c4d].var_f1242439)
			{
				var_86531c07--;
			}
		}
		var_af2795e = var_f1fa8eb9 <= 3;
		var_923c72fb = var_86531c07 <= 3;
		if(!var_af2795e && var_923c72fb)
		{
			level.var_1d893cda["all"][var_c957f6b6] function_9aa5701a("wm_in_the_money");
		}
		else if(var_af2795e && !var_923c72fb)
		{
			level.var_1d893cda["all"][var_c957f6b6] function_9aa5701a("wm_oot_money");
		}
		level.var_1d893cda["all"][var_c957f6b6].var_f1fa8eb9 = var_86531c07;
		level.var_1d893cda["all"][var_c957f6b6] function_962f5e7d();
	}
}

/*
	Name: function_9aa5701a
	Namespace: namespace_93432369
	Checksum: 0xF3704E18
	Offset: 0x1FC0
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_9aa5701a(var_71b8dba1, var_c5deafa2)
{
}

/*
	Name: function_90b8683c
	Namespace: namespace_93432369
	Checksum: 0xF75F187
	Offset: 0x1FE0
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_90b8683c(var_4be20d44, var_fe311e35, var_b82bbe1c, var_f7cb8199)
{
	var_a6db0b7 = function_a8fb77bd();
	var_a6db0b7.var_4be20d44 = [];
	var_a6db0b7.var_4be20d44[0] = var_4be20d44;
	var_a6db0b7.var_fe311e35 = var_fe311e35;
	var_a6db0b7.var_b82bbe1c = var_b82bbe1c;
	var_a6db0b7.var_f7cb8199 = var_f7cb8199;
	return var_a6db0b7;
}

/*
	Name: function_3a002997
	Namespace: namespace_93432369
	Checksum: 0x80E2FFD4
	Offset: 0x2090
	Size: 0x105
	Parameters: 4
	Flags: None
*/
function function_3a002997(var_4be20d44, var_fe311e35, var_b82bbe1c, var_f7cb8199)
{
	if(!isdefined(level.var_dc85d20b))
	{
		level.var_dc85d20b = [];
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_dc85d20b.size; var_c957f6b6++)
	{
		if(level.var_dc85d20b[var_c957f6b6].var_b82bbe1c == var_b82bbe1c)
		{
			level.var_dc85d20b[var_c957f6b6].var_4be20d44[level.var_dc85d20b[var_c957f6b6].var_4be20d44.size] = var_4be20d44;
			return;
		}
	}
	var_a6db0b7 = function_90b8683c(var_4be20d44, var_fe311e35, var_b82bbe1c, var_f7cb8199);
	level.var_dc85d20b[level.var_dc85d20b.size] = var_a6db0b7;
}

/*
	Name: function_fe739d8b
	Namespace: namespace_93432369
	Checksum: 0xC163A2F2
	Offset: 0x21A0
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function function_fe739d8b(var_a6db0b7)
{
	return function_90b8683c(var_a6db0b7.var_4be20d44[0], var_a6db0b7.var_fe311e35, var_a6db0b7.var_b82bbe1c, var_a6db0b7.var_f7cb8199);
}

/*
	Name: function_61248dfa
	Namespace: namespace_93432369
	Checksum: 0xDFF08766
	Offset: 0x2200
	Size: 0x2CD
	Parameters: 1
	Flags: None
*/
function function_61248dfa(var_a6db0b7)
{
	var_dfcc01fd = level.var_6c3e6703;
	switch(var_a6db0b7.var_fe311e35)
	{
		case "equipment":
		case "primary":
		case "primary_grenade":
		case "secondary":
		case "secondary_grenade":
		{
			var_dfcc01fd = function_c4d5ec1f(var_a6db0b7.var_4be20d44[0]);
			break;
		}
	}
	switch(var_a6db0b7.var_fe311e35)
	{
		case "primary":
		{
			self function_860a040a(var_dfcc01fd);
			self function_cb53a41e(var_dfcc01fd);
			break;
		}
		case "secondary":
		{
			self function_860a040a(var_dfcc01fd);
			break;
		}
		case "equipment":
		{
			self function_860a040a(var_dfcc01fd);
			self namespace_a249d1db::function_8de272c8(var_dfcc01fd, 1);
			self function_23e013b9(1, "weapon", var_dfcc01fd);
			break;
		}
		case "primary_grenade":
		{
			self function_f2aaa6b3(var_dfcc01fd);
			self function_860a040a(var_dfcc01fd);
			self function_67795b5f(var_dfcc01fd, 2);
			break;
		}
		case "secondary_grenade":
		{
			self function_f4552cd7(var_dfcc01fd);
			self function_860a040a(var_dfcc01fd);
			self function_67795b5f(var_dfcc01fd, 2);
			break;
		}
		case "perk":
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_a6db0b7.var_4be20d44.size; var_c957f6b6++)
			{
				self function_5d8fa337(var_a6db0b7.var_4be20d44[var_c957f6b6]);
			}
			break;
		}
		case "score_multiplier":
		{
			self.var_9ed66788 = var_a6db0b7.var_4be20d44[0];
			break;
		}
	}
}

/*
	Name: function_543cddab
	Namespace: namespace_93432369
	Checksum: 0xBF76E81A
	Offset: 0x24D8
	Size: 0x123
	Parameters: 2
	Flags: None
*/
function function_543cddab(var_a6db0b7, var_f5291508)
{
	if(!isdefined(self.var_e78803ee))
	{
		self.var_e78803ee = [];
	}
	var_553d1be9 = self.var_e78803ee.size;
	self.var_e78803ee[var_553d1be9] = function_fe739d8b(var_a6db0b7);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a6db0b7.var_4be20d44.size; var_c957f6b6++)
	{
		self.var_e78803ee[var_553d1be9].var_4be20d44[self.var_e78803ee[var_553d1be9].var_4be20d44.size] = var_a6db0b7.var_4be20d44[var_c957f6b6];
	}
	self function_61248dfa(self.var_e78803ee[var_553d1be9]);
	self thread function_41ce9a77(var_553d1be9, var_f5291508);
}

/*
	Name: function_b5a047c7
	Namespace: namespace_93432369
	Checksum: 0xAB27F0C1
	Offset: 0x2608
	Size: 0x2D3
	Parameters: 1
	Flags: None
*/
function function_b5a047c7(var_553d1be9)
{
	if(!isdefined(self) || !isdefined(self.var_e78803ee) || !isdefined(self.var_e78803ee[var_553d1be9]) || !isdefined(self.var_e78803ee[var_553d1be9].var_3015426))
	{
		return;
	}
	self endon("hash_643a7daf");
	self endon("hash_dc8c8404");
	self endon("hash_923798b8");
	var_245caf8b = 1.5;
	var_9003d223 = 0.5;
	var_beaeb5aa = self.var_e78803ee[var_553d1be9].var_3015426;
	if(isdefined(var_beaeb5aa.var_6ec8805f) && var_beaeb5aa.var_6ec8805f)
	{
		return;
	}
	var_e506e496 = var_beaeb5aa.var_4f8217af;
	var_b095eff = var_beaeb5aa.var_297f9d46;
	var_3b9a144e = var_beaeb5aa.var_d0bae973;
	var_75c15b8f = var_beaeb5aa.var_e363b850;
	var_8abb9cab = var_3b9a144e * var_245caf8b;
	var_1c9d9168 = var_75c15b8f * var_245caf8b;
	var_b0cbc08e = var_8abb9cab - var_3b9a144e / 2;
	var_15dde6ff = var_1c9d9168 - var_75c15b8f / 2;
	var_beaeb5aa function_ff9c38dc(0.05, function_b6b79a0(var_8abb9cab), function_b6b79a0(var_1c9d9168));
	var_beaeb5aa function_9b81e487(0.05);
	var_beaeb5aa.var_4f8217af = var_e506e496 - var_b0cbc08e;
	var_beaeb5aa.var_297f9d46 = var_b095eff - var_15dde6ff;
	wait(0.05);
	var_beaeb5aa function_ff9c38dc(var_9003d223, var_3b9a144e, var_75c15b8f);
	var_beaeb5aa function_9b81e487(var_9003d223);
	var_beaeb5aa.var_4f8217af = var_e506e496;
	var_beaeb5aa.var_297f9d46 = var_b095eff;
}

/*
	Name: function_41ce9a77
	Namespace: namespace_93432369
	Checksum: 0xBAE66D01
	Offset: 0x28E8
	Size: 0xA1F
	Parameters: 2
	Flags: None
*/
function function_41ce9a77(var_553d1be9, var_f5291508)
{
	self endon("hash_643a7daf");
	self endon("hash_dc8c8404");
	self endon("hash_923798b8");
	if(!isdefined(var_f5291508))
	{
		var_f5291508 = 1;
	}
	var_93ad7553 = level.var_35a23885;
	var_69d965de = 320;
	var_9c923982 = 40;
	if(self function_33d0d4d7())
	{
		var_69d965de = 120;
		var_9c923982 = 35;
	}
	if(isdefined(self.var_e78803ee[var_553d1be9].var_beaeb5aa))
	{
		self.var_e78803ee[var_553d1be9].var_beaeb5aa function_89cd542d();
	}
	self.var_e78803ee[var_553d1be9].var_beaeb5aa = function_ad13099a(self);
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_2363da9c = 1.5;
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_4f8217af = -125;
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_297f9d46 = var_69d965de - var_9c923982 * var_553d1be9;
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_b5536acc = "left";
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_db55e535 = "middle";
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_740218b1 = "user_right";
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_f9134763 = "user_top";
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_d900369a = (1, 1, 1);
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_79e0f792 = 1;
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_c6bccb7f = 0;
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_5773c805 = 1;
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_740f6833 = 0;
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_aabe9f43 = 0;
	self.var_e78803ee[var_553d1be9].var_beaeb5aa function_f6181aca(self.var_e78803ee[var_553d1be9].var_b82bbe1c);
	var_8325b365 = 40;
	var_8f7e944d = 32;
	if(isdefined(self.var_e78803ee[var_553d1be9].var_3015426))
	{
		self.var_e78803ee[var_553d1be9].var_3015426 function_89cd542d();
	}
	if(var_f5291508)
	{
		self.var_e78803ee[var_553d1be9].var_3015426 = self namespace_724a4794::function_7acf2f62(self.var_e78803ee[var_553d1be9].var_f7cb8199, var_8325b365, var_8325b365);
		self.var_e78803ee[var_553d1be9].var_3015426.var_6ec8805f = 1;
	}
	else
	{
		self.var_e78803ee[var_553d1be9].var_3015426 = self namespace_724a4794::function_7acf2f62(self.var_e78803ee[var_553d1be9].var_f7cb8199, var_8f7e944d, var_8f7e944d);
	}
	self.var_e78803ee[var_553d1be9].var_3015426.var_4f8217af = self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_4f8217af - 5 - var_8f7e944d / 2 - var_8325b365 / 2;
	self.var_e78803ee[var_553d1be9].var_3015426.var_297f9d46 = var_69d965de - var_9c923982 * var_553d1be9 - var_8325b365 / 2;
	self.var_e78803ee[var_553d1be9].var_3015426.var_740218b1 = "user_right";
	self.var_e78803ee[var_553d1be9].var_3015426.var_f9134763 = "user_top";
	self.var_e78803ee[var_553d1be9].var_3015426.var_d900369a = (1, 1, 1);
	self.var_e78803ee[var_553d1be9].var_3015426.var_79e0f792 = 1;
	self.var_e78803ee[var_553d1be9].var_3015426.var_c6bccb7f = 0;
	self.var_e78803ee[var_553d1be9].var_3015426.var_5773c805 = 1;
	self.var_e78803ee[var_553d1be9].var_3015426.var_740f6833 = 0;
	self.var_e78803ee[var_553d1be9].var_3015426.var_aabe9f43 = 1;
	if(!var_93ad7553 && var_f5291508)
	{
		self thread function_972d1b69(self.var_e78803ee[var_553d1be9].var_b82bbe1c, 0, &"MP_BONUS_ACQUIRED");
	}
	var_9003d223 = 0.5;
	if(var_f5291508)
	{
		self.var_e78803ee[var_553d1be9].var_beaeb5aa function_ba7f003e(var_9003d223);
		self.var_e78803ee[var_553d1be9].var_3015426 function_ff9c38dc(var_9003d223, var_8f7e944d, var_8f7e944d);
		self.var_e78803ee[var_553d1be9].var_3015426.var_d0bae973 = var_8f7e944d;
		self.var_e78803ee[var_553d1be9].var_3015426.var_e363b850 = var_8f7e944d;
		self.var_e78803ee[var_553d1be9].var_3015426 function_9b81e487(var_9003d223);
	}
	self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_aabe9f43 = 1;
	self.var_e78803ee[var_553d1be9].var_3015426.var_4f8217af = self.var_e78803ee[var_553d1be9].var_beaeb5aa.var_4f8217af - 5 - var_8f7e944d;
	self.var_e78803ee[var_553d1be9].var_3015426.var_297f9d46 = var_69d965de - var_9c923982 * var_553d1be9 - var_8f7e944d / 2;
	if(var_f5291508)
	{
		wait(var_9003d223);
	}
	if(level.var_35a23885)
	{
		level waittill("hash_5f6f3990");
	}
	else if(var_f5291508)
	{
		wait(var_9003d223);
	}
	if(var_93ad7553 && var_f5291508)
	{
		self thread function_972d1b69(self.var_e78803ee[var_553d1be9].var_b82bbe1c, 0, &"MP_BONUS_ACQUIRED");
	}
	wait(1.5);
	for(var_c957f6b6 = 0; var_c957f6b6 <= var_553d1be9; var_c957f6b6++)
	{
		self.var_e78803ee[var_c957f6b6].var_beaeb5aa function_ba7f003e(0.25);
		self.var_e78803ee[var_c957f6b6].var_beaeb5aa.var_aabe9f43 = 0;
	}
	wait(0.25);
	for(var_c957f6b6 = 0; var_c957f6b6 <= var_553d1be9; var_c957f6b6++)
	{
		self.var_e78803ee[var_c957f6b6].var_3015426 function_9b81e487(0.25);
		self.var_e78803ee[var_c957f6b6].var_3015426.var_4f8217af = 0 - var_8f7e944d;
		self.var_e78803ee[var_c957f6b6].var_3015426.var_740218b1 = "user_right";
	}
	self.var_e78803ee[var_553d1be9].var_3015426.var_6ec8805f = 0;
}

/*
	Name: function_903348b0
	Namespace: namespace_93432369
	Checksum: 0xFBA8B50C
	Offset: 0x3310
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_903348b0()
{
	self notify("hash_923798b8");
	if(isdefined(self.var_e78803ee) && isdefined(self.var_e78803ee.size))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_e78803ee.size; var_c957f6b6++)
		{
			if(isdefined(self.var_e78803ee[var_c957f6b6].var_beaeb5aa))
			{
				self.var_e78803ee[var_c957f6b6].var_beaeb5aa function_89cd542d();
			}
			if(isdefined(self.var_e78803ee[var_c957f6b6].var_3015426))
			{
				self.var_e78803ee[var_c957f6b6].var_3015426 function_89cd542d();
			}
		}
	}
	self.var_e78803ee = [];
}

/*
	Name: function_a58fccc1
	Namespace: namespace_93432369
	Checksum: 0xD728DC6F
	Offset: 0x3410
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_a58fccc1(var_4be20d44, var_d17071ce, var_4259ae32)
{
	if(!isdefined(self.var_9c5ebb26))
	{
		self.var_9c5ebb26 = [];
	}
	if(!isdefined(self.var_9c5ebb26[var_4be20d44]))
	{
		self.var_9c5ebb26[var_4be20d44] = [];
	}
	if(!isdefined(self.var_9c5ebb26[var_4be20d44][var_4259ae32]))
	{
		self.var_9c5ebb26[var_4be20d44][var_4259ae32] = 0;
	}
	self.var_9c5ebb26[var_4be20d44][var_4259ae32] = self.var_9c5ebb26[var_4be20d44][var_4259ae32] + var_d17071ce;
}

/*
	Name: function_5bd30bb5
	Namespace: namespace_93432369
	Checksum: 0xE5416FC3
	Offset: 0x34D0
	Size: 0x12D
	Parameters: 1
	Flags: None
*/
function function_5bd30bb5(var_4259ae32)
{
	if(!isdefined(self.var_9c5ebb26))
	{
		return undefined;
	}
	var_8bba51b7 = undefined;
	var_556f8e1e = 0;
	var_13f4a24f = function_391512da(self.var_9c5ebb26);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_13f4a24f.size; var_c957f6b6++)
	{
		var_b1e08d46 = self.var_9c5ebb26[var_13f4a24f[var_c957f6b6]];
		if(!isdefined(var_b1e08d46[var_4259ae32]) || !function_54d2de57(var_13f4a24f[var_c957f6b6]))
		{
			continue;
			continue;
		}
		if(!isdefined(var_8bba51b7) || var_b1e08d46[var_4259ae32] > var_556f8e1e)
		{
			var_8bba51b7 = var_13f4a24f[var_c957f6b6];
			var_556f8e1e = var_b1e08d46[var_4259ae32];
		}
	}
	return var_8bba51b7;
}

/*
	Name: function_f29de9c2
	Namespace: namespace_93432369
	Checksum: 0x85A53A2B
	Offset: 0x3608
	Size: 0x165
	Parameters: 0
	Flags: None
*/
function function_f29de9c2()
{
	var_975e497a = self function_5bd30bb5("kills");
	var_786532a9 = 0;
	if(isdefined(var_975e497a))
	{
		var_786532a9 = self.var_9c5ebb26[var_975e497a]["kills"];
	}
	else
	{
		var_975e497a = self function_5bd30bb5("timeUsed");
	}
	if(!isdefined(var_975e497a))
	{
		var_975e497a = "";
	}
	self namespace_fe5e4926::function_2eb5e93("topWeaponItemIndex", function_54d2de57(var_975e497a));
	self namespace_fe5e4926::function_2eb5e93("topWeaponKills", var_786532a9);
	if(isdefined(level.var_8619115e))
	{
		self [[level.var_8619115e]]();
		break;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		self namespace_fe5e4926::function_2eb5e93("wagerAwards", 0, var_c957f6b6);
	}
}


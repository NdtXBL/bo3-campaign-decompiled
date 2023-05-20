#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_scoreevents;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_wager;
#using scripts\shared\bb_shared;
#using scripts\shared\challenges_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\math_shared;
#using scripts\shared\persistence_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\util_shared;

#namespace namespace_e32b5089;

/*
	Name: function_ef6804eb
	Namespace: namespace_e32b5089
	Checksum: 0xAD191013
	Offset: 0x9B8
	Size: 0x7F1
	Parameters: 1
	Flags: None
*/
function function_ef6804eb(var_f49bab78)
{
	if(!game["timepassed"])
	{
		return;
	}
	if(!level.var_5d406297)
	{
		return;
	}
	if(level.var_de12b72f && isdefined(var_f49bab78))
	{
		if(var_f49bab78 == "endregulation")
		{
			return;
		}
	}
	if(!level.var_6d251637 || level.var_73353c45)
	{
		var_b0d9a04f = namespace_c46f5728::function_3c9bd810() / 1000;
		var_b0d9a04f = function_95d0212b(var_b0d9a04f, 1200);
		if(level.var_76c6e677 == "twar" && game["roundsplayed"] > 0)
		{
			var_b0d9a04f = var_b0d9a04f + level.var_6d251637 * 60;
		}
	}
	else
	{
		var_b0d9a04f = level.var_6d251637 * 60;
	}
	if(level.var_de12b72f)
	{
		var_bb0667ac = "tie";
		foreach(var_3e94206a in level.var_e7a38025)
		{
			if(var_f49bab78 == var_3e94206a)
			{
				var_bb0667ac = var_3e94206a;
				break;
			}
		}
		if(var_bb0667ac != "tie")
		{
			var_4b973e3e = 1;
			var_2ce3ac06 = 0.5;
		}
		else
		{
			var_4b973e3e = 0.75;
			var_2ce3ac06 = 0.75;
		}
		var_2395e945 = level.var_2395e945;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			var_5dc5e20a = var_2395e945[var_c957f6b6];
			if(var_5dc5e20a.var_d066f1a3["total"] < 1 || var_5dc5e20a.var_44fb8955["participation"] < 1)
			{
				var_5dc5e20a thread namespace_f3970517::function_cb9154cd();
				continue;
			}
			var_c3876d3b = var_5dc5e20a.var_d066f1a3["total"];
			if(var_c3876d3b > var_b0d9a04f)
			{
				var_c3876d3b = var_b0d9a04f;
			}
			if(level.var_db7e784b && var_5dc5e20a function_e025daa7())
			{
				continue;
			}
			if(var_5dc5e20a.var_44fb8955["score"] < 0)
			{
				continue;
			}
			var_a8d2c4a9 = var_5dc5e20a namespace_f3970517::function_c872ca8f();
			if(var_bb0667ac == "tie")
			{
				var_1eea6b54 = function_b6b79a0(var_4b973e3e * var_b0d9a04f / 60 * var_a8d2c4a9 * var_c3876d3b / var_b0d9a04f);
				var_5dc5e20a thread function_bef742ae("tie", var_1eea6b54);
				var_5dc5e20a.var_da8550d = var_1eea6b54;
				continue;
			}
			if(isdefined(var_5dc5e20a.var_44fb8955["team"]) && var_5dc5e20a.var_44fb8955["team"] == var_bb0667ac)
			{
				var_1eea6b54 = function_b6b79a0(var_4b973e3e * var_b0d9a04f / 60 * var_a8d2c4a9 * var_c3876d3b / var_b0d9a04f);
				var_5dc5e20a thread function_bef742ae("win", var_1eea6b54);
				var_5dc5e20a.var_da8550d = var_1eea6b54;
				continue;
			}
			if(isdefined(var_5dc5e20a.var_44fb8955["team"]) && var_5dc5e20a.var_44fb8955["team"] != "spectator")
			{
				var_1eea6b54 = function_b6b79a0(var_2ce3ac06 * var_b0d9a04f / 60 * var_a8d2c4a9 * var_c3876d3b / var_b0d9a04f);
				var_5dc5e20a thread function_bef742ae("loss", var_1eea6b54);
				var_5dc5e20a.var_da8550d = var_1eea6b54;
			}
		}
		break;
	}
	if(isdefined(var_f49bab78))
	{
		var_4b973e3e = 1;
		var_2ce3ac06 = 0.5;
	}
	else
	{
		var_4b973e3e = 0.75;
		var_2ce3ac06 = 0.75;
	}
	var_2395e945 = level.var_2395e945;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = var_2395e945[var_c957f6b6];
		if(var_5dc5e20a.var_d066f1a3["total"] < 1 || var_5dc5e20a.var_44fb8955["participation"] < 1)
		{
			var_5dc5e20a thread namespace_f3970517::function_cb9154cd();
			continue;
		}
		var_c3876d3b = var_5dc5e20a.var_d066f1a3["total"];
		if(var_c3876d3b > var_b0d9a04f)
		{
			var_c3876d3b = var_b0d9a04f;
		}
		var_a8d2c4a9 = var_5dc5e20a namespace_f3970517::function_c872ca8f();
		var_defb2c44 = 0;
		for(var_7dbe5e60 = 0; var_7dbe5e60 < function_95d0212b(level.var_1d893cda["all"][0].size, 3); var_7dbe5e60++)
		{
			if(level.var_1d893cda["all"][var_7dbe5e60] != var_5dc5e20a)
			{
				continue;
			}
			var_defb2c44 = 1;
		}
		if(var_defb2c44)
		{
			var_1eea6b54 = function_b6b79a0(var_4b973e3e * var_b0d9a04f / 60 * var_a8d2c4a9 * var_c3876d3b / var_b0d9a04f);
			var_5dc5e20a thread function_bef742ae("win", var_1eea6b54);
			var_5dc5e20a.var_da8550d = var_1eea6b54;
			continue;
		}
		var_1eea6b54 = function_b6b79a0(var_2ce3ac06 * var_b0d9a04f / 60 * var_a8d2c4a9 * var_c3876d3b / var_b0d9a04f);
		var_5dc5e20a thread function_bef742ae("loss", var_1eea6b54);
		var_5dc5e20a.var_da8550d = var_1eea6b54;
	}
}

/*
	Name: function_bef742ae
	Namespace: namespace_e32b5089
	Checksum: 0xB0D30588
	Offset: 0x11B8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_bef742ae(var_fe10e861, var_f1242439)
{
	self endon("hash_643a7daf");
	level waittill("hash_d6d39210");
	if(namespace_a1cb6b52::function_1bcf09cf(self))
	{
		self function_dde1ac37(var_fe10e861, var_f1242439);
	}
	self namespace_f3970517::function_cb9154cd();
}

/*
	Name: function_b2a6c667
	Namespace: namespace_e32b5089
	Checksum: 0xB7D5858C
	Offset: 0x1240
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_b2a6c667()
{
	var_2395e945 = level.var_2395e945;
	var_f49bab78 = undefined;
	var_5e4b1365 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		if(!isdefined(var_2395e945[var_c957f6b6].var_246bf1cb))
		{
			continue;
		}
		if(var_2395e945[var_c957f6b6].var_246bf1cb < 1)
		{
			continue;
		}
		if(!isdefined(var_f49bab78) || var_2395e945[var_c957f6b6].var_246bf1cb > var_f49bab78.var_246bf1cb)
		{
			var_f49bab78 = var_2395e945[var_c957f6b6];
			var_5e4b1365 = 0;
			continue;
		}
		if(var_2395e945[var_c957f6b6].var_246bf1cb == var_f49bab78.var_246bf1cb)
		{
			var_5e4b1365 = 1;
		}
	}
	if(var_5e4b1365 || !isdefined(var_f49bab78))
	{
		return undefined;
	}
	else
	{
		return var_f49bab78;
	}
}

/*
	Name: function_4ff2f46f
	Namespace: namespace_e32b5089
	Checksum: 0x8F60D7A3
	Offset: 0x1388
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_4ff2f46f()
{
	self notify("hash_fc215db");
	self.var_1f720738 = 0;
	self.var_709af5ca = 0;
}

/*
	Name: function_dbc2be8b
	Namespace: namespace_e32b5089
	Checksum: 0x57456112
	Offset: 0x13B8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_dbc2be8b()
{
	self notify("hash_290ab115");
	self endon("hash_fc215db");
	self endon("hash_290ab115");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	wait(20);
	self thread function_4ff2f46f();
}

/*
	Name: function_d92cc672
	Namespace: namespace_e32b5089
	Checksum: 0x23E16688
	Offset: 0x1420
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_d92cc672(var_f1242439)
{
	var_65a35ae9 = var_f1242439 % 5;
	if(var_65a35ae9 <= 2)
	{
		return var_f1242439 - var_65a35ae9;
	}
	else
	{
		return var_f1242439 + 5 - var_65a35ae9;
	}
}

/*
	Name: function_7e99fb41
	Namespace: namespace_e32b5089
	Checksum: 0xF94D9FFD
	Offset: 0x1480
	Size: 0x30B
	Parameters: 4
	Flags: None
*/
function function_7e99fb41(var_279e4e97, var_5dc5e20a, var_8bcb913d, var_7feb0b79)
{
	var_fc3e4f80 = 0;
	if(level.var_77299e4)
	{
		return 0;
	}
	function_c22bfa61("level.onPlayerScore");
	var_f1242439 = var_5dc5e20a.var_44fb8955["score"];
	[[level.var_b15f9d6d]](var_279e4e97, var_5dc5e20a, var_8bcb913d);
	var_8142c539 = var_5dc5e20a.var_44fb8955["score"];
	function_7905cb51();
	var_5dc5e20a namespace_d8129fdd::function_e8c4e69f("score", var_8142c539 - var_f1242439);
	if(var_f1242439 == var_8142c539)
	{
		return 0;
	}
	function_c22bfa61("givePlayerScore");
	function_6e910ee6(var_5dc5e20a, "score", var_8142c539);
	var_fc3e4f80 = var_8142c539 - var_f1242439;
	var_5c9e3b86 = !level.var_14f14269;
	var_5dc5e20a function_1ba616a5("score", var_fc3e4f80);
	if(var_5c9e3b86)
	{
		var_5dc5e20a function_aa67c13b("CAREER_SCORE", var_fc3e4f80);
	}
	if(level.var_50527ffe)
	{
		var_5dc5e20a function_aa67c13b("SCORE_HC", var_fc3e4f80);
		if(var_5c9e3b86)
		{
			var_5dc5e20a function_aa67c13b("CAREER_SCORE_HC", var_fc3e4f80);
		}
	}
	if(level.var_c906d2a3)
	{
		var_5dc5e20a function_aa67c13b("SCORE_MULTITEAM", var_fc3e4f80);
		if(var_5c9e3b86)
		{
			var_5dc5e20a function_aa67c13b("CAREER_SCORE_MULTITEAM", var_fc3e4f80);
		}
	}
	if(!level.var_b03ee83a && isdefined(var_5dc5e20a.var_44fb8955["lastHighestScore"]) && var_8142c539 > var_5dc5e20a.var_44fb8955["lastHighestScore"])
	{
		var_5dc5e20a function_8f67433b("HighestStats", "highest_score", var_8142c539);
	}
	var_5dc5e20a namespace_fe5e4926::function_fc306ea1(0, 0, "score", var_fc3e4f80);
	function_7905cb51();
	var_5dc5e20a notify("hash_13b2f144", var_fc3e4f80);
	return var_fc3e4f80;
}

/*
	Name: function_8450550f
	Namespace: namespace_e32b5089
	Checksum: 0x9BCEDA13
	Offset: 0x1798
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_8450550f(var_279e4e97, var_5dc5e20a, var_8bcb913d)
{
	var_f1242439 = namespace_f3970517::function_57fb3da2(var_279e4e97);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_f1242439));
	#/
	if(level.var_1d0304c)
	{
		var_5dc5e20a thread namespace_f3970517::function_9c4690f5(var_f1242439);
	}
	function_fffda5bf(var_5dc5e20a, var_5dc5e20a.var_44fb8955["score"] + var_f1242439);
}

/*
	Name: function_fffda5bf
	Namespace: namespace_e32b5089
	Checksum: 0xE0162BDB
	Offset: 0x1858
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_fffda5bf(var_5dc5e20a, var_f1242439)
{
	if(var_f1242439 == var_5dc5e20a.var_44fb8955["score"])
	{
		return;
	}
	if(!level.var_5d406297)
	{
		var_5dc5e20a thread namespace_f3970517::function_9c4690f5(var_f1242439 - var_5dc5e20a.var_44fb8955["score"]);
	}
	var_5dc5e20a.var_44fb8955["score"] = var_f1242439;
	var_5dc5e20a.var_f1242439 = var_5dc5e20a.var_44fb8955["score"];
	function_6e910ee6(var_5dc5e20a, "score", var_5dc5e20a.var_44fb8955["score"]);
	if(level.var_1d0304c)
	{
		var_5dc5e20a thread namespace_93432369::function_40cb89b3();
	}
}

/*
	Name: function_acc5da4b
	Namespace: namespace_e32b5089
	Checksum: 0x9FFDA43
	Offset: 0x1960
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_acc5da4b(var_5dc5e20a)
{
	return var_5dc5e20a.var_44fb8955["score"];
}

/*
	Name: function_2bbb7bbf
	Namespace: namespace_e32b5089
	Checksum: 0x92DCD2F4
	Offset: 0x1988
	Size: 0x175
	Parameters: 0
	Flags: None
*/
function function_2bbb7bbf()
{
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
		level.var_1d893cda["all"][var_c957f6b6].var_f1fa8eb9 = var_86531c07;
	}
}

/*
	Name: function_dbc91bb1
	Namespace: namespace_e32b5089
	Checksum: 0x3E8CAB36
	Offset: 0x1B08
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_dbc91bb1(var_d3a18b74)
{
	self.var_44fb8955["pointstowin"] = namespace_d73b9283::function_31931862(var_d3a18b74, 0, 65000);
	self.var_246bf1cb = self.var_44fb8955["pointstowin"];
	self thread namespace_2282eece::function_33392f48();
	self thread namespace_2282eece::function_58b5666();
	level thread function_2bbb7bbf();
}

/*
	Name: function_a79d7152
	Namespace: namespace_e32b5089
	Checksum: 0xA13C53D1
	Offset: 0x1BB0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_a79d7152(var_d3a18b74)
{
	self function_dbc91bb1(self.var_44fb8955["pointstowin"] + var_d3a18b74);
}

/*
	Name: function_806e3c51
	Namespace: namespace_e32b5089
	Checksum: 0x91BD1334
	Offset: 0x1BF8
	Size: 0x123
	Parameters: 4
	Flags: None
*/
function function_806e3c51(var_279e4e97, var_3e94206a, var_5dc5e20a, var_8bcb913d)
{
	if(level.var_edeba204)
	{
		return;
	}
	function_c22bfa61("level.onTeamScore");
	var_61f8b934 = game["teamScores"][var_3e94206a];
	[[level.var_9ed78565]](var_279e4e97, var_3e94206a);
	function_7905cb51();
	var_8142c539 = game["teamScores"][var_3e94206a];
	function_3aedd0a2("mpteamscores", "gametime %d event %s team %d diff %d score %d", GetTime(), var_279e4e97, var_3e94206a, var_8142c539 - var_61f8b934, var_8142c539);
	if(var_61f8b934 == var_8142c539)
	{
		return;
	}
	function_95e3ed98(var_3e94206a);
	thread namespace_2282eece::function_33392f48();
}

/*
	Name: function_794e30e4
	Namespace: namespace_e32b5089
	Checksum: 0x61A33D6F
	Offset: 0x1D28
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_794e30e4(var_3e94206a, var_f1242439)
{
	var_61f8b934 = game["teamScores"][var_3e94206a];
	function_bccf8abf(var_f1242439, var_3e94206a);
	var_8142c539 = game["teamScores"][var_3e94206a];
	if(var_61f8b934 == var_8142c539)
	{
		return;
	}
	function_95e3ed98(var_3e94206a);
}

/*
	Name: function_ad2655c8
	Namespace: namespace_e32b5089
	Checksum: 0xD4AA1010
	Offset: 0x1DC8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_ad2655c8(var_e7a38025)
{
	foreach(var_3e94206a in var_e7a38025)
	{
		function_e3b726fd(var_3e94206a);
	}
	thread namespace_2282eece::function_33392f48();
}

/*
	Name: function_595758a3
	Namespace: namespace_e32b5089
	Checksum: 0xCFB22F95
	Offset: 0x1E78
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_595758a3(var_3e94206a, var_f1242439)
{
	if(!isdefined(level.var_e7a38025[var_3e94206a]))
	{
		return;
	}
	var_61f8b934 = game["teamScores"][var_3e94206a];
	function_9ed78565(var_f1242439, var_3e94206a);
	var_8142c539 = game["teamScores"][var_3e94206a];
	if(var_61f8b934 == var_8142c539)
	{
		return;
	}
	function_95e3ed98(var_3e94206a);
	thread namespace_2282eece::function_33392f48();
}

/*
	Name: function_a5d0acb3
	Namespace: namespace_e32b5089
	Checksum: 0x897E89D4
	Offset: 0x1F40
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_a5d0acb3(var_3e94206a, var_61f8b934)
{
	if(var_61f8b934 == game["teamScores"][var_3e94206a])
	{
		return;
	}
	game["teamScores"][var_3e94206a] = namespace_d73b9283::function_31931862(var_61f8b934, 0, 1000000);
	function_95e3ed98(var_3e94206a);
	thread namespace_2282eece::function_33392f48();
}

/*
	Name: function_fcb59778
	Namespace: namespace_e32b5089
	Checksum: 0x7B63756D
	Offset: 0x1FD8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_fcb59778()
{
	if(level.var_f7711ebc || namespace_82b91a51::function_d992ab0f())
	{
		foreach(var_3e94206a in level.var_e7a38025)
		{
			game["teamScores"][var_3e94206a] = 0;
		}
	}
	function_16ca2e25();
}

/*
	Name: function_3ee9bd9e
	Namespace: namespace_e32b5089
	Checksum: 0xBADEEF00
	Offset: 0x20A0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3ee9bd9e()
{
	function_fcb59778();
	function_7d5864a8();
}

/*
	Name: function_7d5864a8
	Namespace: namespace_e32b5089
	Checksum: 0xED4FA3FD
	Offset: 0x20D0
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_7d5864a8()
{
	var_2395e945 = level.var_2395e945;
	var_f49bab78 = undefined;
	var_5e4b1365 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		if(isdefined(var_2395e945[var_c957f6b6].var_44fb8955["score"]))
		{
			function_fffda5bf(var_2395e945[var_c957f6b6], 0);
		}
	}
}

/*
	Name: function_95e3ed98
	Namespace: namespace_e32b5089
	Checksum: 0x2031AE4C
	Offset: 0x2180
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_95e3ed98(var_3e94206a)
{
	function_f9944ff2(var_3e94206a, game["teamScores"][var_3e94206a]);
	level thread namespace_2282eece::function_b0063f2(var_3e94206a);
}

/*
	Name: function_16ca2e25
	Namespace: namespace_e32b5089
	Checksum: 0x9714EFB6
	Offset: 0x21D8
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_16ca2e25()
{
	foreach(var_3e94206a in level.var_e7a38025)
	{
		function_95e3ed98(var_3e94206a);
	}
}

/*
	Name: function_1dcc90b7
	Namespace: namespace_e32b5089
	Checksum: 0x237FD4D1
	Offset: 0x2270
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_1dcc90b7(var_3e94206a)
{
	return game["teamScores"][var_3e94206a];
}

/*
	Name: function_ae8065ab
	Namespace: namespace_e32b5089
	Checksum: 0x51614EA2
	Offset: 0x2298
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_ae8065ab()
{
	var_f1242439 = 0;
	var_8d0787ec = [];
	foreach(var_3e94206a in level.var_e7a38025)
	{
		var_f34096ad = game["teamScores"][var_3e94206a];
		if(var_f34096ad > var_f1242439)
		{
			var_f1242439 = var_f34096ad;
			var_8d0787ec = [];
		}
		if(var_f34096ad == var_f1242439)
		{
			var_8d0787ec[var_3e94206a] = var_3e94206a;
		}
	}
	return var_8d0787ec;
}

/*
	Name: function_e525bda4
	Namespace: namespace_e32b5089
	Checksum: 0x48FB0629
	Offset: 0x2398
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function function_e525bda4(var_64725876, var_3e6fde0d)
{
	if(var_64725876.size != var_3e6fde0d.size)
	{
		return 0;
	}
	foreach(var_3e94206a in var_64725876)
	{
		if(!isdefined(var_3e6fde0d[var_3e94206a]))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_9ed78565
	Namespace: namespace_e32b5089
	Checksum: 0x3A9F0DD5
	Offset: 0x2450
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_9ed78565(var_f1242439, var_3e94206a)
{
	function_bccf8abf(var_f1242439, var_3e94206a);
	function_e3b726fd(var_3e94206a);
}

/*
	Name: function_bccf8abf
	Namespace: namespace_e32b5089
	Checksum: 0x272C69B8
	Offset: 0x24A0
	Size: 0xB1
	Parameters: 2
	Flags: None
*/
function function_bccf8abf(var_f1242439, var_3e94206a)
{
	game["teamScores"][var_3e94206a] = game["teamScores"][var_3e94206a] + var_f1242439;
	if(game["teamScores"][var_3e94206a] < 0)
	{
		game["teamScores"][var_3e94206a] = 0;
	}
	if(level.var_e300e83a && game["teamScores"][var_3e94206a] > level.var_e300e83a)
	{
		game["teamScores"][var_3e94206a] = level.var_e300e83a;
	}
}

/*
	Name: function_e3b726fd
	Namespace: namespace_e32b5089
	Checksum: 0x9A72E19D
	Offset: 0x2560
	Size: 0x207
	Parameters: 1
	Flags: None
*/
function function_e3b726fd(var_3e94206a)
{
	if(level.var_2016892b)
	{
		return;
	}
	if(level.var_e300e83a == 1)
	{
		return;
	}
	var_5243b0d3 = function_ae8065ab();
	if(var_5243b0d3.size == 0)
	{
		return;
	}
	if(GetTime() - level.var_89aa8af0 < 5000)
	{
		return;
	}
	if(function_e525bda4(var_5243b0d3, level.var_cd1833d0))
	{
		return;
	}
	if(var_5243b0d3.size == 1)
	{
		level.var_89aa8af0 = GetTime();
		foreach(var_3e94206a in var_5243b0d3)
		{
			if(isdefined(level.var_cd1833d0[var_3e94206a]))
			{
				if(level.var_cd1833d0.size == 1)
				{
					continue;
				}
			}
		}
	}
	else
	{
		return;
	}
	if(level.var_cd1833d0.size == 1)
	{
		foreach(var_3e94206a in level.var_cd1833d0)
		{
			if(isdefined(var_5243b0d3[var_3e94206a]))
			{
				if(var_5243b0d3.size == 1)
				{
					continue;
				}
				if(level.var_cd1833d0.size > 1)
				{
					continue;
				}
			}
		}
	}
	level.var_cd1833d0 = var_5243b0d3;
}

/*
	Name: function_aa0fe5c3
	Namespace: namespace_e32b5089
	Checksum: 0xBD492797
	Offset: 0x2770
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_aa0fe5c3(var_279e4e97, var_3e94206a)
{
	var_f1242439 = namespace_f3970517::function_57fb3da2(var_279e4e97);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_f1242439));
	#/
	function_9ed78565(var_f1242439, var_3e94206a);
}

/*
	Name: function_f4f342c9
	Namespace: namespace_e32b5089
	Checksum: 0x270C706C
	Offset: 0x27E8
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_f4f342c9(var_7541f39c, var_290f5712)
{
	if(!isdefined(self.var_44fb8955[var_7541f39c]))
	{
		self.var_44fb8955[var_7541f39c] = 0;
	}
	if(!isdefined(var_290f5712) || var_290f5712 == 1)
	{
		function_6e910ee6(self, var_7541f39c, function_b6b79a0(self.var_44fb8955[var_7541f39c]));
	}
}

/*
	Name: function_9142ee49
	Namespace: namespace_e32b5089
	Checksum: 0x5921CD07
	Offset: 0x2880
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_9142ee49(var_7541f39c)
{
	return self.var_44fb8955[var_7541f39c];
}

/*
	Name: function_ec3c08d5
	Namespace: namespace_e32b5089
	Checksum: 0x541FF97F
	Offset: 0x28A0
	Size: 0xEB
	Parameters: 4
	Flags: None
*/
function function_ec3c08d5(var_7541f39c, var_331efedc, var_290f5712, var_e73c8895)
{
	function_c22bfa61("incPersStat");
	self.var_44fb8955[var_7541f39c] = self.var_44fb8955[var_7541f39c] + var_331efedc;
	if(isdefined(var_e73c8895) && var_e73c8895)
	{
		self function_1ba616a5(var_7541f39c, var_331efedc);
	}
	else
	{
		self function_aa67c13b(var_7541f39c, var_331efedc);
	}
	if(!isdefined(var_290f5712) || var_290f5712 == 1)
	{
		self thread function_2d0985b(var_7541f39c);
	}
	function_7905cb51();
}

/*
	Name: function_2d0985b
	Namespace: namespace_e32b5089
	Checksum: 0x847B5AF8
	Offset: 0x2998
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2d0985b(var_7541f39c)
{
	self endon("hash_643a7daf");
	waittillframeend;
	function_6e910ee6(self, var_7541f39c, self.var_44fb8955[var_7541f39c]);
}

/*
	Name: function_17c49541
	Namespace: namespace_e32b5089
	Checksum: 0x8ED52756
	Offset: 0x29E0
	Size: 0x233
	Parameters: 1
	Flags: None
*/
function function_17c49541(var_f49bab78)
{
	var_f49bab78 function_1ba616a5("losses", -1);
	var_f49bab78 function_1ba616a5("wins", 1);
	if(level.var_50527ffe)
	{
		var_f49bab78 function_aa67c13b("wins_HC", 1);
	}
	if(level.var_c906d2a3)
	{
		var_f49bab78 function_aa67c13b("wins_MULTITEAM", 1);
	}
	var_f49bab78 function_9e74b5ad("wlratio", "wins", "losses");
	function_9665587a(var_f49bab78);
	var_f49bab78 function_1ba616a5("cur_win_streak", 1);
	var_f49bab78 notify("hash_2fcbc625");
	var_5eb89b9 = var_f49bab78 namespace_fe5e4926::function_2369852e("cur_win_streak");
	var_fa2ad736 = var_f49bab78 namespace_fe5e4926::function_2369852e("win_streak");
	var_4d07769b = var_f49bab78 function_84368297("playerstatslist", "cur_win_streak", "StatValue");
	if(!level.var_b03ee83a && var_4d07769b > var_f49bab78 function_84368297("HighestStats", "win_streak"))
	{
		var_f49bab78 function_8f67433b("HighestStats", "win_streak", var_4d07769b);
	}
	if(var_5eb89b9 > var_fa2ad736)
	{
		var_f49bab78 namespace_fe5e4926::function_e885624a("win_streak", var_5eb89b9);
	}
}

/*
	Name: function_214b6780
	Namespace: namespace_e32b5089
	Checksum: 0x786B76D3
	Offset: 0x2C20
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_214b6780(var_a43bb9e0)
{
	var_a43bb9e0 function_1ba616a5("losses", 1);
	var_a43bb9e0 function_9e74b5ad("wlratio", "wins", "losses");
	var_a43bb9e0 notify("hash_202157f0");
}

/*
	Name: function_89539239
	Namespace: namespace_e32b5089
	Checksum: 0x745F448A
	Offset: 0x2C98
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_89539239(var_a43bb9e0)
{
	var_a43bb9e0 function_1ba616a5("losses", -1);
	var_a43bb9e0 function_1ba616a5("ties", 1);
	var_a43bb9e0 function_9e74b5ad("wlratio", "wins", "losses");
	if(!level.var_b03ee83a)
	{
		var_a43bb9e0 function_8f67433b("playerstatslist", "cur_win_streak", "StatValue", 0);
	}
	var_a43bb9e0 notify("hash_5e4b1365");
}

/*
	Name: function_4096fefe
	Namespace: namespace_e32b5089
	Checksum: 0xE32AEBC0
	Offset: 0x2D68
	Size: 0x365
	Parameters: 1
	Flags: None
*/
function function_4096fefe(var_f49bab78)
{
	if(!namespace_82b91a51::function_b8cd89f0() && !level.var_db7e784b)
	{
		return;
	}
	var_2395e945 = level.var_2395e945;
	if(!isdefined(var_f49bab78) || (isdefined(var_f49bab78) && !function_65f192a6(var_f49bab78) && var_f49bab78 == "tie"))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			if(!isdefined(var_2395e945[var_c957f6b6].var_44fb8955["team"]))
			{
				continue;
			}
			if(level.var_db7e784b && var_2395e945[var_c957f6b6] function_e025daa7())
			{
				continue;
			}
			function_89539239(var_2395e945[var_c957f6b6]);
		}
		break;
	}
	if(function_65f192a6(var_f49bab78))
	{
		if(level.var_db7e784b && var_f49bab78 function_e025daa7())
		{
			return;
		}
		function_17c49541(var_f49bab78);
		if(!level.var_de12b72f)
		{
			var_1d893cda = level.var_1d893cda["all"];
			var_e09fc4e4 = function_95d0212b(3, var_1d893cda.size);
			for(var_5e76f0af = 1; var_5e76f0af < var_e09fc4e4; var_5e76f0af++)
			{
				var_df20504c = var_1d893cda[var_5e76f0af];
				function_17c49541(var_df20504c);
			}
		}
		break;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		if(!isdefined(var_2395e945[var_c957f6b6].var_44fb8955["team"]))
		{
			continue;
		}
		if(level.var_db7e784b && var_2395e945[var_c957f6b6] function_e025daa7())
		{
			continue;
		}
		if(var_f49bab78 == "tie")
		{
			function_89539239(var_2395e945[var_c957f6b6]);
			continue;
		}
		if(var_2395e945[var_c957f6b6].var_44fb8955["team"] == var_f49bab78)
		{
			function_17c49541(var_2395e945[var_c957f6b6]);
			continue;
		}
		if(!level.var_b03ee83a)
		{
			var_2395e945[var_c957f6b6] function_8f67433b("playerstatslist", "cur_win_streak", "StatValue", 0);
		}
	}
}

/*
	Name: function_af12c08a
	Namespace: namespace_e32b5089
	Checksum: 0x43637901
	Offset: 0x30D8
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_af12c08a()
{
	self.var_44fb8955["winStreak"] = self function_84368297("playerstatslist", "cur_win_streak", "StatValue");
	if(!level.var_b03ee83a)
	{
		self function_8f67433b("playerstatslist", "cur_win_streak", "StatValue", 0);
	}
	self.var_44fb8955["winStreakForGametype"] = namespace_fe5e4926::function_2369852e("cur_win_streak");
	self namespace_fe5e4926::function_e885624a("cur_win_streak", 0);
}

/*
	Name: function_9665587a
	Namespace: namespace_e32b5089
	Checksum: 0x8FF4054E
	Offset: 0x31B0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_9665587a(var_f49bab78)
{
	if(!level.var_b03ee83a)
	{
		var_f49bab78 function_8f67433b("playerstatslist", "cur_win_streak", "StatValue", var_f49bab78.var_44fb8955["winStreak"]);
	}
	var_f49bab78 namespace_fe5e4926::function_e885624a("cur_win_streak", var_f49bab78.var_44fb8955["winStreakForGametype"]);
}

/*
	Name: function_c66a74a3
	Namespace: namespace_e32b5089
	Checksum: 0xEB8F5327
	Offset: 0x3240
	Size: 0x71
	Parameters: 1
	Flags: None
*/
function function_c66a74a3(var_dfcc01fd)
{
	self endon("hash_643a7daf");
	waittillframeend;
	if(var_dfcc01fd.var_4be20d44 == "artillery")
	{
		self.var_44fb8955["artillery_kills"]++;
	}
	if(var_dfcc01fd.var_4be20d44 == "dog_bite")
	{
		self.var_44fb8955["dog_kills"]++;
	}
}

/*
	Name: function_d252c0d3
	Namespace: namespace_e32b5089
	Checksum: 0x216623F7
	Offset: 0x32C0
	Size: 0x42B
	Parameters: 5
	Flags: None
*/
function function_d252c0d3(var_4be20d44, var_f3970517, var_37b5ba8d, var_9693e22a, var_eb07a0c7)
{
	self endon("hash_643a7daf");
	var_a0ad4f34 = self;
	waittillframeend;
	function_c22bfa61("trackAttackerKill");
	if(!isdefined(var_a0ad4f34.var_44fb8955["killed_players"][var_4be20d44]))
	{
		var_a0ad4f34.var_44fb8955["killed_players"][var_4be20d44] = 0;
	}
	if(!isdefined(var_a0ad4f34.var_b75dfe9b[var_4be20d44]))
	{
		var_a0ad4f34.var_b75dfe9b[var_4be20d44] = 0;
	}
	if(!isdefined(var_a0ad4f34.var_44fb8955["nemesis_tracking"][var_4be20d44]))
	{
		var_a0ad4f34.var_44fb8955["nemesis_tracking"][var_4be20d44] = 0;
	}
	var_a0ad4f34.var_44fb8955["killed_players"][var_4be20d44]++;
	var_a0ad4f34.var_b75dfe9b[var_4be20d44]++;
	var_a0ad4f34.var_44fb8955["nemesis_tracking"][var_4be20d44] = var_a0ad4f34.var_44fb8955["nemesis_tracking"][var_4be20d44] + 1;
	if(var_a0ad4f34.var_44fb8955["nemesis_name"] == var_4be20d44)
	{
		var_a0ad4f34 namespace_f74b04eb::function_6d27a2f6();
	}
	if(var_a0ad4f34.var_44fb8955["nemesis_name"] == "" || var_a0ad4f34.var_44fb8955["nemesis_tracking"][var_4be20d44] > var_a0ad4f34.var_44fb8955["nemesis_tracking"][var_a0ad4f34.var_44fb8955["nemesis_name"]])
	{
		var_a0ad4f34.var_44fb8955["nemesis_name"] = var_4be20d44;
		var_a0ad4f34.var_44fb8955["nemesis_rank"] = var_f3970517;
		var_a0ad4f34.var_44fb8955["nemesis_rankIcon"] = var_9693e22a;
		var_a0ad4f34.var_44fb8955["nemesis_xp"] = var_37b5ba8d;
		var_a0ad4f34.var_44fb8955["nemesis_xuid"] = var_eb07a0c7;
	}
	else if(isdefined(var_a0ad4f34.var_44fb8955["nemesis_name"]) && var_a0ad4f34.var_44fb8955["nemesis_name"] == var_4be20d44)
	{
		var_a0ad4f34.var_44fb8955["nemesis_rank"] = var_f3970517;
		var_a0ad4f34.var_44fb8955["nemesis_xp"] = var_37b5ba8d;
	}
	if(!isdefined(var_a0ad4f34.var_6d121592) || !isdefined(var_a0ad4f34.var_5128f38f))
	{
		var_a0ad4f34.var_6d121592 = var_4be20d44;
		var_a0ad4f34.var_5128f38f = 0;
	}
	if(var_a0ad4f34.var_6d121592 == var_4be20d44)
	{
		var_a0ad4f34.var_5128f38f++;
		if(var_a0ad4f34.var_5128f38f >= 5)
		{
			var_a0ad4f34.var_5128f38f = 0;
			var_a0ad4f34 function_aa67c13b("streaker", 1);
		}
	}
	else
	{
		var_a0ad4f34.var_6d121592 = var_4be20d44;
		var_a0ad4f34.var_5128f38f = 1;
	}
	function_7905cb51();
}

/*
	Name: function_19bc0e4e
	Namespace: namespace_e32b5089
	Checksum: 0xB7C94182
	Offset: 0x36F8
	Size: 0x263
	Parameters: 5
	Flags: None
*/
function function_19bc0e4e(var_8a68755, var_f3970517, var_37b5ba8d, var_9693e22a, var_eb07a0c7)
{
	self endon("hash_643a7daf");
	waittillframeend;
	function_c22bfa61("trackAttackeeDeath");
	if(!isdefined(self.var_44fb8955["killed_by"][var_8a68755]))
	{
		self.var_44fb8955["killed_by"][var_8a68755] = 0;
	}
	self.var_44fb8955["killed_by"][var_8a68755]++;
	if(!isdefined(self.var_44fb8955["nemesis_tracking"][var_8a68755]))
	{
		self.var_44fb8955["nemesis_tracking"][var_8a68755] = 0;
	}
	self.var_44fb8955["nemesis_tracking"][var_8a68755] = self.var_44fb8955["nemesis_tracking"][var_8a68755] + 1.5;
	if(self.var_44fb8955["nemesis_name"] == "" || self.var_44fb8955["nemesis_tracking"][var_8a68755] > self.var_44fb8955["nemesis_tracking"][self.var_44fb8955["nemesis_name"]])
	{
		self.var_44fb8955["nemesis_name"] = var_8a68755;
		self.var_44fb8955["nemesis_rank"] = var_f3970517;
		self.var_44fb8955["nemesis_rankIcon"] = var_9693e22a;
		self.var_44fb8955["nemesis_xp"] = var_37b5ba8d;
		self.var_44fb8955["nemesis_xuid"] = var_eb07a0c7;
	}
	else if(isdefined(self.var_44fb8955["nemesis_name"]) && self.var_44fb8955["nemesis_name"] == var_8a68755)
	{
		self.var_44fb8955["nemesis_rank"] = var_f3970517;
		self.var_44fb8955["nemesis_xp"] = var_37b5ba8d;
	}
	function_7905cb51();
}

/*
	Name: function_4349658
	Namespace: namespace_e32b5089
	Checksum: 0xFE7FC4D0
	Offset: 0x3968
	Size: 0x5
	Parameters: 0
	Flags: None
*/
function function_4349658()
{
	return 0;
}

/*
	Name: function_f4f11e83
	Namespace: namespace_e32b5089
	Checksum: 0x516D742E
	Offset: 0x3978
	Size: 0xA0B
	Parameters: 3
	Flags: None
*/
function function_f4f11e83(var_ba36487d, var_dfcc01fd, var_89d5a592)
{
	self endon("hash_643a7daf");
	waittillframeend;
	if(level.var_5d406297 && self [[level.var_11064c6e]]())
	{
		/#
			self function_2e4b8c78("Dev Block strings are not supported");
		#/
		return;
	}
	function_c22bfa61("giveKillStats");
	self function_ec3c08d5("kills", 1, 1, 1);
	self.var_ec0b278c = self function_9142ee49("kills");
	self function_9e74b5ad("kdratio", "kills", "deaths");
	var_a0ad4f34 = self;
	if(var_ba36487d == "MOD_HEAD_SHOT")
	{
		var_a0ad4f34 thread function_ec3c08d5("headshots", 1, 1, 0);
		var_a0ad4f34.var_b79a4566 = var_a0ad4f34.var_44fb8955["headshots"];
		if(isdefined(var_89d5a592) && function_65f192a6(var_89d5a592))
		{
			var_89d5a592 function_2d465945("headshot");
		}
	}
	if(isdefined(var_89d5a592.var_b3b49b95))
	{
		if(var_89d5a592.var_b3b49b95 + 2000 >= GetTime())
		{
			self function_1f4288c0(function_c4d5ec1f("flash_grenade"), "CombatRecordStat", 1);
		}
	}
	if(isdefined(var_89d5a592.var_63fb6c7d))
	{
		if(var_89d5a592.var_63fb6c7d + 2000 >= GetTime())
		{
			self function_1f4288c0(function_c4d5ec1f("proximity_grenade"), "CombatRecordStat", 1);
		}
	}
	if(isdefined(var_89d5a592.var_4d6fef21))
	{
		if(var_89d5a592.var_4d6fef21 + 2000 >= GetTime())
		{
			self function_1f4288c0(function_c4d5ec1f("emp_grenade"), "CombatRecordStat", 1);
		}
	}
	if(isdefined(var_89d5a592.var_7097b5af))
	{
		if(var_89d5a592.var_7097b5af + 2000 >= GetTime())
		{
			function_28c6cf9e(function_e967a021("cybercom_ravagecore"));
		}
	}
	if(isdefined(var_dfcc01fd))
	{
		var_692742b2 = 0;
		if(isdefined(var_a0ad4f34.var_1743b68d) && isdefined(var_a0ad4f34.var_1743b68d[var_dfcc01fd]))
		{
			var_692742b2 = 1;
		}
		var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "kills", 1, var_a0ad4f34.var_b54d1a86, var_692742b2, undefined, var_a0ad4f34.var_5ab868c9, var_a0ad4f34.var_97deb6d);
		if(var_ba36487d == "MOD_HEAD_SHOT")
		{
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "headshots", 1, var_a0ad4f34.var_b54d1a86, var_692742b2, undefined, var_a0ad4f34.var_5ab868c9, var_a0ad4f34.var_97deb6d);
		}
		if(var_dfcc01fd.var_4be20d44 == "launcher_standard_df" || var_dfcc01fd.var_4be20d44 == "launcher_standard")
		{
			if(var_dfcc01fd.var_4be20d44 == "launcher_standard_df")
			{
				var_dfcc01fd = function_c4d5ec1f("launcher_standard");
			}
			else
			{
				var_dfcc01fd = function_c4d5ec1f("launcher_standard_df");
			}
			var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "kills", 1, var_a0ad4f34.var_b54d1a86, var_692742b2, undefined, var_a0ad4f34.var_5ab868c9, var_a0ad4f34.var_97deb6d);
			if(var_ba36487d == "MOD_HEAD_SHOT")
			{
				var_a0ad4f34 function_1f4288c0(var_dfcc01fd, "headshots", 1, var_a0ad4f34.var_b54d1a86, var_692742b2, undefined, var_a0ad4f34.var_5ab868c9, var_a0ad4f34.var_97deb6d);
			}
		}
	}
	if(function_65f192a6(var_a0ad4f34))
	{
		var_1630584c = undefined;
		if(var_dfcc01fd.var_4be20d44 == "gadget_firefly_swarm" || var_dfcc01fd.var_4be20d44 == "gadget_firefly_swarm_upgraded")
		{
			var_1630584c = function_e967a021("cybercom_fireflyswarm");
		}
		else if(var_dfcc01fd.var_4be20d44 == "hero_gravityspikes_cybercom" || var_dfcc01fd.var_4be20d44 == "hero_gravityspikes_cybercom_upgraded")
		{
			var_1630584c = function_e967a021("cybercom_concussive");
		}
		else if(var_dfcc01fd.var_4be20d44 == "gadget_unstoppable_force" || var_dfcc01fd.var_4be20d44 == "gadget_unstoppable_force_upgraded")
		{
			var_1630584c = function_e967a021("cybercom_unstoppableforce");
		}
		else if(var_dfcc01fd.var_4be20d44 == "gadget_es_strike")
		{
			var_1630584c = function_e967a021("cybercom_es_strike");
		}
		else if(var_dfcc01fd.var_4be20d44 == "amws_gun_turret_player" || var_dfcc01fd.var_4be20d44 == "hunter_main_turret_player" || var_dfcc01fd.var_4be20d44 == "hunter_side_turret_player" || var_dfcc01fd.var_4be20d44 == "pamws_gun_turret_player" || var_dfcc01fd.var_4be20d44 == "quadtank_side_turret_player" || var_dfcc01fd.var_4be20d44 == "siegebot_gun_turret_player" || var_dfcc01fd.var_4be20d44 == "wasp_main_turret_player" || var_dfcc01fd.var_4be20d44 == "amws_launcher_turret_player" || var_dfcc01fd.var_4be20d44 == "hunter_rocket_turret_player" || var_dfcc01fd.var_4be20d44 == "pamws_launcher_turret_player" || var_dfcc01fd.var_4be20d44 == "quadtank_main_turret_player" || var_dfcc01fd.var_4be20d44 == "rocket_wasp_launcher_turret_player" || var_dfcc01fd.var_4be20d44 == "siegebot_launcher_turret_player")
		{
			var_1630584c = function_e967a021("cybercom_hijack");
		}
		function_28c6cf9e(var_1630584c);
		if(isdefined(var_a0ad4f34.var_1611b636) && var_a0ad4f34.var_1611b636)
		{
			function_28c6cf9e(function_e967a021("cybercom_camo"));
		}
		if(isdefined(var_89d5a592.var_6050ab17) && isdefined(var_89d5a592.var_6050ab17.var_e42818a3) && var_89d5a592.var_6050ab17.var_e42818a3)
		{
			function_28c6cf9e(function_e967a021("cybercom_misdirection"));
		}
		if(var_a0ad4f34 namespace_957e94ce::function_7922262b("gadget_overdrive_on"))
		{
			function_28c6cf9e(function_e967a021("cybercom_overdrive"));
		}
		if(isdefined(var_89d5a592.var_d90f9ddb) && var_89d5a592.var_d90f9ddb)
		{
			function_28c6cf9e(function_e967a021("cybercom_smokescreen"));
		}
	}
	function_7905cb51();
}

/*
	Name: function_28c6cf9e
	Namespace: namespace_e32b5089
	Checksum: 0x837E9E53
	Offset: 0x4390
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_28c6cf9e(var_1630584c)
{
	if(isdefined(var_1630584c))
	{
		self function_ab8716a0("ItemStats", var_1630584c, "stats", "kills", "statValue", 1);
	}
}

/*
	Name: function_7bf7d322
	Namespace: namespace_e32b5089
	Checksum: 0x6F84E06C
	Offset: 0x43F0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_7bf7d322(var_3e94206a)
{
	if(level.var_de12b72f && isdefined(level.var_e7a38025[var_3e94206a]))
	{
		game["totalKillsTeam"][var_3e94206a]++;
	}
	game["totalKills"]++;
}

/*
	Name: function_50ec476d
	Namespace: namespace_e32b5089
	Checksum: 0x2EDD3C55
	Offset: 0x4448
	Size: 0x193
	Parameters: 3
	Flags: None
*/
function function_50ec476d(var_51e6a548, var_3a212fd7, var_dfcc01fd)
{
	if(!isdefined(var_3a212fd7))
	{
		return;
	}
	if(!isdefined(var_51e6a548))
	{
		var_3a212fd7 function_1f4288c0(var_dfcc01fd, "hits", 1);
		return;
	}
	if(!isdefined(var_51e6a548.var_23d42b4d))
	{
		var_51e6a548.var_23d42b4d = [];
	}
	var_4d459e88 = 1;
	for(var_c957f6b6 = 0; var_c957f6b6 < var_51e6a548.var_23d42b4d.size; var_c957f6b6++)
	{
		if(var_51e6a548.var_23d42b4d[var_c957f6b6] == self)
		{
			var_4d459e88 = 0;
			break;
		}
	}
	if(var_4d459e88)
	{
		var_51e6a548.var_23d42b4d[var_51e6a548.var_23d42b4d.size] = self;
		if(var_dfcc01fd.var_4be20d44 == "concussion_grenade" || var_dfcc01fd.var_4be20d44 == "tabun_gas")
		{
			var_3a212fd7 function_1f4288c0(var_dfcc01fd, "used", 1);
		}
		var_3a212fd7 function_1f4288c0(var_dfcc01fd, "hits", 1);
	}
}

/*
	Name: function_1e129e72
	Namespace: namespace_e32b5089
	Checksum: 0x61651588
	Offset: 0x45E8
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_1e129e72(var_f25c29c5)
{
	self endon("hash_643a7daf");
	var_f25c29c5 endon("hash_643a7daf");
	wait(0.05);
	namespace_82b91a51::function_7000c5f1();
	if(!isdefined(level.var_e7a38025[self.var_44fb8955["team"]]))
	{
		return;
	}
	if(self.var_44fb8955["team"] == var_f25c29c5.var_44fb8955["team"])
	{
		return;
	}
	if(!level.var_de12b72f)
	{
		return;
	}
	self function_ec3c08d5("assists", 1, 1, 1);
	self.var_e69b4157 = self function_9142ee49("assists");
	namespace_a1cb6b52::function_ea11cfd6("shield_assist", self, var_f25c29c5, "riotshield");
}

/*
	Name: function_43256951
	Namespace: namespace_e32b5089
	Checksum: 0x3FC4CDDA
	Offset: 0x4700
	Size: 0x20B
	Parameters: 4
	Flags: None
*/
function function_43256951(var_bd0f13b, var_2657dcf2, var_dfcc01fd, var_e69863d3)
{
	self endon("hash_643a7daf");
	var_bd0f13b endon("hash_643a7daf");
	wait(0.05);
	namespace_82b91a51::function_7000c5f1();
	if(!isdefined(level.var_e7a38025[self.var_3e94206a]))
	{
		return;
	}
	if(isdefined(var_bd0f13b) && isdefined(var_bd0f13b.var_3e94206a) && self.var_3e94206a == var_bd0f13b.var_3e94206a)
	{
		return;
	}
	if(!level.var_de12b72f)
	{
		return;
	}
	if(!isdefined(var_e69863d3))
	{
		var_e69863d3 = "assist";
	}
	var_bbf7c0b9 = function_b6b79a0(function_49c4d072(var_2657dcf2 / 25));
	if(var_bbf7c0b9 < 1)
	{
		var_bbf7c0b9 = 1;
	}
	else if(var_bbf7c0b9 > 3)
	{
		var_bbf7c0b9 = 3;
	}
	var_e69863d3 = var_e69863d3 + "_" + var_bbf7c0b9 * 25;
	self function_ec3c08d5("assists", 1, 1, 1);
	self.var_e69b4157 = self function_9142ee49("assists");
	if(isdefined(var_dfcc01fd))
	{
		self function_1f4288c0(var_dfcc01fd, "assists", 1);
	}
	self namespace_f74b04eb::function_ce8c4487();
	namespace_a1cb6b52::function_ea11cfd6(var_e69863d3, self, var_bd0f13b, var_dfcc01fd);
}

/*
	Name: function_4e01d1c3
	Namespace: namespace_e32b5089
	Checksum: 0x574E664D
	Offset: 0x4918
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_4e01d1c3()
{
	/#
		self endon("hash_128f8789");
		self endon("hash_643a7daf");
		level endon("hash_c8ab51de");
		while(level.var_35a23885)
		{
			wait(0.05);
		}
		for(;;)
		{
			wait(5);
			if(isdefined(level.var_e7a38025[level.var_2395e945[0].var_44fb8955["Dev Block strings are not supported"]]))
			{
				self namespace_f3970517::function_2589caf0("Dev Block strings are not supported", function_b6b79a0(function_95d0212b(function_4bd0142f("Dev Block strings are not supported"), 50)));
			}
		}
	#/
}


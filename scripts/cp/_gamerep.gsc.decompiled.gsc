#using scripts\shared\rank_shared;

#namespace namespace_29301e60;

/*
	Name: function_c35e6aab
	Namespace: namespace_29301e60
	Checksum: 0x4B2B4D9B
	Offset: 0x1D0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	if(!function_f1537717())
	{
		return;
	}
	if(function_bad1086())
	{
		return;
	}
	game["gameRepInitialized"] = 1;
	game["gameRep"]["players"] = [];
	game["gameRep"]["playerNames"] = [];
	game["gameRep"]["max"] = [];
	game["gameRep"]["playerCount"] = 0;
	function_9262b574();
}

/*
	Name: function_bad1086
	Namespace: namespace_29301e60
	Checksum: 0x4B1A9B20
	Offset: 0x290
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function function_bad1086()
{
	if(!isdefined(game["gameRepInitialized"]) || !game["gameRepInitialized"])
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_f1537717
	Namespace: namespace_29301e60
	Checksum: 0xA2229568
	Offset: 0x2C8
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_f1537717()
{
	if(function_75e46361())
	{
		return 0;
	}
	if(!level.var_5d406297)
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_9262b574
	Namespace: namespace_29301e60
	Checksum: 0x69D31229
	Offset: 0x300
	Size: 0xDD9
	Parameters: 0
	Flags: None
*/
function function_9262b574()
{
	var_2f8d9cc1 = 0;
	var_a1baf6d8 = 1;
	var_be5c6c24 = 2;
	var_6b266f98 = 3;
	var_6dd352f4 = 4;
	var_d69a3295 = 5;
	var_31dc1987 = 6;
	var_feb31b22 = 7;
	var_23aec49c = 8;
	var_bffafca0 = 9;
	var_eadcfd77 = 10;
	var_426910d0 = 11;
	var_303c1972 = 12;
	var_38b6c9a5 = 13;
	var_da0bf373 = 14;
	game["gameRep"]["params"] = [];
	game["gameRep"]["params"][0] = "score";
	game["gameRep"]["params"][1] = "scorePerMin";
	game["gameRep"]["params"][2] = "kills";
	game["gameRep"]["params"][3] = "deaths";
	game["gameRep"]["params"][4] = "killDeathRatio";
	game["gameRep"]["params"][5] = "killsPerMin";
	game["gameRep"]["params"][6] = "plants";
	game["gameRep"]["params"][7] = "defuses";
	game["gameRep"]["params"][8] = "captures";
	game["gameRep"]["params"][9] = "defends";
	game["gameRep"]["params"][10] = "totalTimePlayed";
	game["gameRep"]["params"][11] = "tacticalInsertions";
	game["gameRep"]["params"][12] = "joinAttempts";
	game["gameRep"]["params"][13] = "xp";
	game["gameRep"]["ignoreParams"] = [];
	game["gameRep"]["ignoreParams"][0] = "totalTimePlayed";
	game["gameRep"]["gameLimit"] = [];
	game["gameRep"]["gameLimit"]["default"] = [];
	game["gameRep"]["gameLimit"]["tdm"] = [];
	game["gameRep"]["gameLimit"]["dm"] = [];
	game["gameRep"]["gameLimit"]["dom"] = [];
	game["gameRep"]["gameLimit"]["hq"] = [];
	game["gameRep"]["gameLimit"]["sd"] = [];
	game["gameRep"]["gameLimit"]["dem"] = [];
	game["gameRep"]["gameLimit"]["ctf"] = [];
	game["gameRep"]["gameLimit"]["koth"] = [];
	game["gameRep"]["gameLimit"]["conf"] = [];
	game["gameRep"]["gameLimit"]["id"]["score"] = var_2f8d9cc1;
	game["gameRep"]["gameLimit"]["default"]["score"] = 20000;
	game["gameRep"]["gameLimit"]["id"]["scorePerMin"] = var_a1baf6d8;
	game["gameRep"]["gameLimit"]["default"]["scorePerMin"] = 250;
	game["gameRep"]["gameLimit"]["dem"]["scorePerMin"] = 1000;
	game["gameRep"]["gameLimit"]["tdm"]["scorePerMin"] = 700;
	game["gameRep"]["gameLimit"]["dm"]["scorePerMin"] = 950;
	game["gameRep"]["gameLimit"]["dom"]["scorePerMin"] = 1000;
	game["gameRep"]["gameLimit"]["sd"]["scorePerMin"] = 200;
	game["gameRep"]["gameLimit"]["ctf"]["scorePerMin"] = 600;
	game["gameRep"]["gameLimit"]["hq"]["scorePerMin"] = 1000;
	game["gameRep"]["gameLimit"]["koth"]["scorePerMin"] = 1000;
	game["gameRep"]["gameLimit"]["conf"]["scorePerMin"] = 1000;
	game["gameRep"]["gameLimit"]["id"]["kills"] = var_be5c6c24;
	game["gameRep"]["gameLimit"]["default"]["kills"] = 75;
	game["gameRep"]["gameLimit"]["tdm"]["kills"] = 40;
	game["gameRep"]["gameLimit"]["sd"]["kills"] = 15;
	game["gameRep"]["gameLimit"]["dm"]["kills"] = 31;
	game["gameRep"]["gameLimit"]["id"]["deaths"] = var_6b266f98;
	game["gameRep"]["gameLimit"]["default"]["deaths"] = 50;
	game["gameRep"]["gameLimit"]["dm"]["deaths"] = 15;
	game["gameRep"]["gameLimit"]["tdm"]["deaths"] = 40;
	game["gameRep"]["gameLimit"]["id"]["killDeathRatio"] = var_6dd352f4;
	game["gameRep"]["gameLimit"]["default"]["killDeathRatio"] = 30;
	game["gameRep"]["gameLimit"]["tdm"]["killDeathRatio"] = 50;
	game["gameRep"]["gameLimit"]["sd"]["killDeathRatio"] = 20;
	game["gameRep"]["gameLimit"]["id"]["killsPerMin"] = var_d69a3295;
	game["gameRep"]["gameLimit"]["default"]["killsPerMin"] = 15;
	game["gameRep"]["gameLimit"]["id"]["plants"] = var_31dc1987;
	game["gameRep"]["gameLimit"]["default"]["plants"] = 10;
	game["gameRep"]["gameLimit"]["id"]["defuses"] = var_feb31b22;
	game["gameRep"]["gameLimit"]["default"]["defuses"] = 10;
	game["gameRep"]["gameLimit"]["id"]["captures"] = var_23aec49c;
	game["gameRep"]["gameLimit"]["default"]["captures"] = 30;
	game["gameRep"]["gameLimit"]["id"]["defends"] = var_bffafca0;
	game["gameRep"]["gameLimit"]["default"]["defends"] = 50;
	game["gameRep"]["gameLimit"]["id"]["totalTimePlayed"] = var_eadcfd77;
	game["gameRep"]["gameLimit"]["default"]["totalTimePlayed"] = 600;
	game["gameRep"]["gameLimit"]["dom"]["totalTimePlayed"] = 600;
	game["gameRep"]["gameLimit"]["dem"]["totalTimePlayed"] = 1140;
	game["gameRep"]["gameLimit"]["id"]["tacticalInsertions"] = var_426910d0;
	game["gameRep"]["gameLimit"]["default"]["tacticalInsertions"] = 20;
	game["gameRep"]["gameLimit"]["id"]["joinAttempts"] = var_303c1972;
	game["gameRep"]["gameLimit"]["default"]["joinAttempts"] = 3;
	game["gameRep"]["gameLimit"]["id"]["xp"] = var_38b6c9a5;
	game["gameRep"]["gameLimit"]["default"]["xp"] = 25000;
	game["gameRep"]["gameLimit"]["id"]["splitscreen"] = var_da0bf373;
	game["gameRep"]["gameLimit"]["default"]["splitscreen"] = 8;
}

/*
	Name: function_8a39c0e0
	Namespace: namespace_29301e60
	Checksum: 0x1A2329DB
	Offset: 0x10E8
	Size: 0x2C1
	Parameters: 0
	Flags: None
*/
function function_8a39c0e0()
{
	if(!function_f1537717())
	{
		return;
	}
	var_4be20d44 = self.var_4be20d44;
	/#
	#/
	if(!isdefined(game["gameRep"]["players"][var_4be20d44]))
	{
		game["gameRep"]["players"][var_4be20d44] = [];
		for(var_a3557c4d = 0; var_a3557c4d < game["gameRep"]["params"].size; var_a3557c4d++)
		{
			var_b6fc4fb5 = game["gameRep"]["params"][var_a3557c4d];
			game["gameRep"]["players"][var_4be20d44][var_b6fc4fb5] = 0;
		}
		game["gameRep"]["players"][var_4be20d44]["splitscreen"] = self function_33d0d4d7();
		game["gameRep"]["players"][var_4be20d44]["joinAttempts"] = 1;
		game["gameRep"]["players"][var_4be20d44]["connected"] = 1;
		game["gameRep"]["players"][var_4be20d44]["xpStart"] = self namespace_f3970517::function_a76b42cb();
		game["gameRep"]["playerNames"][game["gameRep"]["playerCount"]] = var_4be20d44;
		game["gameRep"]["playerCount"]++;
	}
	else if(!game["gameRep"]["players"][var_4be20d44]["connected"])
	{
		game["gameRep"]["players"][var_4be20d44]["joinAttempts"]++;
		game["gameRep"]["players"][var_4be20d44]["connected"] = 1;
		game["gameRep"]["players"][var_4be20d44]["xpStart"] = self namespace_f3970517::function_a76b42cb();
	}
}

/*
	Name: function_fd7b00ce
	Namespace: namespace_29301e60
	Checksum: 0x70A715F8
	Offset: 0x13B8
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_fd7b00ce()
{
	if(!function_f1537717())
	{
		return;
	}
	var_4be20d44 = self.var_4be20d44;
	if(!isdefined(game["gameRep"]["players"][var_4be20d44]) || !isdefined(self.var_44fb8955["summary"]))
	{
		return;
	}
	/#
	#/
	self function_496aa952();
	self function_1281701b();
	game["gameRep"]["players"][var_4be20d44]["connected"] = 0;
}

/*
	Name: function_496aa952
	Namespace: namespace_29301e60
	Checksum: 0xDD5F139C
	Offset: 0x1488
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function function_496aa952()
{
	var_4be20d44 = self.var_4be20d44;
	if(!isdefined(game["gameRep"]["players"][var_4be20d44]))
	{
		return;
	}
	game["gameRep"]["players"][var_4be20d44]["totalTimePlayed"] = game["gameRep"]["players"][var_4be20d44]["totalTimePlayed"] + self.var_d066f1a3["total"];
	if(isdefined(self.var_286c9816))
	{
		game["gameRep"]["players"][var_4be20d44]["tacticalInsertions"] = game["gameRep"]["players"][var_4be20d44]["tacticalInsertions"] + self.var_286c9816;
	}
}

/*
	Name: function_1281701b
	Namespace: namespace_29301e60
	Checksum: 0xDA523747
	Offset: 0x1590
	Size: 0x471
	Parameters: 0
	Flags: None
*/
function function_1281701b()
{
	var_4be20d44 = self.var_4be20d44;
	if(!isdefined(game["gameRep"]["players"][var_4be20d44]))
	{
		return;
	}
	if(game["gameRep"]["players"][var_4be20d44]["totalTimePlayed"] != 0)
	{
		var_d066f1a3 = game["gameRep"]["players"][var_4be20d44]["totalTimePlayed"];
	}
	else
	{
		var_d066f1a3 = 1;
	}
	game["gameRep"]["players"][var_4be20d44]["score"] = self.var_f1242439;
	game["gameRep"]["players"][var_4be20d44]["scorePerMin"] = function_b6b79a0(game["gameRep"]["players"][var_4be20d44]["score"] / var_d066f1a3 / 60);
	game["gameRep"]["players"][var_4be20d44]["kills"] = self.var_ec0b278c;
	game["gameRep"]["players"][var_4be20d44]["deaths"] = self.var_add55f80;
	if(game["gameRep"]["players"][var_4be20d44]["deaths"] != 0)
	{
		game["gameRep"]["players"][var_4be20d44]["killDeathRatio"] = function_b6b79a0(game["gameRep"]["players"][var_4be20d44]["kills"] / game["gameRep"]["players"][var_4be20d44]["deaths"] * 100);
	}
	else
	{
		game["gameRep"]["players"][var_4be20d44]["killDeathRatio"] = game["gameRep"]["players"][var_4be20d44]["kills"] * 100;
	}
	game["gameRep"]["players"][var_4be20d44]["killsPerMin"] = function_b6b79a0(game["gameRep"]["players"][var_4be20d44]["kills"] / var_d066f1a3 / 60);
	game["gameRep"]["players"][var_4be20d44]["plants"] = self.var_463523bf;
	game["gameRep"]["players"][var_4be20d44]["defuses"] = self.var_8e1a3a0a;
	game["gameRep"]["players"][var_4be20d44]["captures"] = self.var_9720d694;
	game["gameRep"]["players"][var_4be20d44]["defends"] = self.var_d2b735b8;
	game["gameRep"]["players"][var_4be20d44]["xp"] = self namespace_f3970517::function_a76b42cb() - game["gameRep"]["players"][var_4be20d44]["xpStart"];
	game["gameRep"]["players"][var_4be20d44]["xpStart"] = self namespace_f3970517::function_a76b42cb();
}

/*
	Name: function_50f4cb91
	Namespace: namespace_29301e60
	Checksum: 0x764F7141
	Offset: 0x1A10
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_50f4cb91(var_b3d32c97, var_b6fc4fb5)
{
	if(isdefined(game["gameRep"]["players"][var_b3d32c97][var_b6fc4fb5]))
	{
		return game["gameRep"]["players"][var_b3d32c97][var_b6fc4fb5];
	}
	/#
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_b6fc4fb5 + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_e558867b
	Namespace: namespace_29301e60
	Checksum: 0x44C6B45D
	Offset: 0x1AA8
	Size: 0xFF
	Parameters: 1
	Flags: None
*/
function function_e558867b(var_b6fc4fb5)
{
	var_76c6e677 = level.var_76c6e677;
	if(!isdefined(game["gameRep"]))
	{
		return 0;
	}
	if(!isdefined(game["gameRep"]["gameLimit"]))
	{
		return 0;
	}
	if(!isdefined(game["gameRep"]["gameLimit"][var_76c6e677]))
	{
		return 0;
	}
	if(!isdefined(game["gameRep"]["gameLimit"][var_76c6e677][var_b6fc4fb5]))
	{
		return 0;
	}
	if(!isdefined(game["gameRep"]["gameLimit"][var_76c6e677][var_b6fc4fb5]) && !isdefined(game["gameRep"]["gameLimit"]["default"][var_b6fc4fb5]))
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_e1f1d00a
	Namespace: namespace_29301e60
	Checksum: 0x63A8764
	Offset: 0x1BB0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_e1f1d00a(var_b6fc4fb5)
{
	if(isdefined(game["gameRep"]["ignoreParams"][var_b6fc4fb5]))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_af659a06
	Namespace: namespace_29301e60
	Checksum: 0x20DC4892
	Offset: 0x1BF0
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_af659a06(var_b6fc4fb5)
{
	var_76c6e677 = level.var_76c6e677;
	if(isdefined(game["gameRep"]["gameLimit"][var_76c6e677]))
	{
		if(isdefined(game["gameRep"]["gameLimit"][var_76c6e677][var_b6fc4fb5]))
		{
			return game["gameRep"]["gameLimit"][var_76c6e677][var_b6fc4fb5];
		}
	}
	if(isdefined(game["gameRep"]["gameLimit"]["default"][var_b6fc4fb5]))
	{
		return game["gameRep"]["gameLimit"]["default"][var_b6fc4fb5];
	}
	/#
		namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_b6fc4fb5 + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_6ee6a1fb
	Namespace: namespace_29301e60
	Checksum: 0xB8B2D30F
	Offset: 0x1D08
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_6ee6a1fb(var_b6fc4fb5, var_9368ba0c)
{
	if(!isdefined(game["gameRep"]["max"][var_b6fc4fb5]))
	{
		game["gameRep"]["max"][var_b6fc4fb5] = var_9368ba0c;
		return;
	}
	if(game["gameRep"]["max"][var_b6fc4fb5] < var_9368ba0c)
	{
		game["gameRep"]["max"][var_b6fc4fb5] = var_9368ba0c;
	}
}

/*
	Name: function_b1e1fd9c
	Namespace: namespace_29301e60
	Checksum: 0x4D039CD7
	Offset: 0x1DB0
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_b1e1fd9c()
{
	if(!function_f1537717())
	{
		return;
	}
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = var_2395e945[var_c957f6b6];
		var_5dc5e20a function_496aa952();
	}
}

/*
	Name: function_437ea181
	Namespace: namespace_29301e60
	Checksum: 0xD9F5AF7A
	Offset: 0x1E48
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function function_437ea181()
{
	if(!function_f1537717())
	{
		return;
	}
	var_2395e945 = function_3f10449f();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
	{
		var_5dc5e20a = var_2395e945[var_c957f6b6];
		var_5dc5e20a function_1281701b();
	}
	var_cb8c2271 = 0;
	for(var_c957f6b6 = 0; var_c957f6b6 < game["gameRep"]["playerNames"].size; var_c957f6b6++)
	{
		var_b3d32c97 = game["gameRep"]["playerNames"][var_c957f6b6];
		for(var_a3557c4d = 0; var_a3557c4d < game["gameRep"]["params"].size; var_a3557c4d++)
		{
			var_b6fc4fb5 = game["gameRep"]["params"][var_a3557c4d];
			if(function_e558867b(var_b6fc4fb5))
			{
				function_6ee6a1fb(var_b6fc4fb5, function_50f4cb91(var_b3d32c97, var_b6fc4fb5));
			}
		}
		var_b6fc4fb5 = "splitscreen";
		var_cb8c2271 = var_cb8c2271 + function_50f4cb91(var_b3d32c97, var_b6fc4fb5);
	}
	function_6ee6a1fb(var_b6fc4fb5, var_cb8c2271);
	for(var_a3557c4d = 0; var_a3557c4d < game["gameRep"]["params"].size; var_a3557c4d++)
	{
		var_b6fc4fb5 = game["gameRep"]["params"][var_a3557c4d];
		if(function_e558867b(var_b6fc4fb5) && game["gameRep"]["max"][var_b6fc4fb5] >= function_af659a06(var_b6fc4fb5))
		{
			function_c2a49c72(var_b6fc4fb5);
		}
	}
	var_b6fc4fb5 = "splitscreen";
	if(game["gameRep"]["max"][var_b6fc4fb5] >= function_af659a06(var_b6fc4fb5))
	{
		function_c2a49c72(var_b6fc4fb5);
	}
}

/*
	Name: function_c2a49c72
	Namespace: namespace_29301e60
	Checksum: 0xBD950AC7
	Offset: 0x2150
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_c2a49c72(var_b6fc4fb5)
{
	if(!isdefined(game["gameRep"]["gameLimit"]["id"][var_b6fc4fb5]))
	{
		return;
	}
	if(function_e1f1d00a(var_b6fc4fb5))
	{
		return;
	}
	function_f7b23602(game["gameRep"]["gameLimit"]["id"][var_b6fc4fb5]);
}


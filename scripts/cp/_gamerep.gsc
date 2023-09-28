#using scripts\shared\rank_shared;

#namespace gamerep;

/*
	Name: init
	Namespace: gamerep
	Checksum: 0x4B2B4D9B
	Offset: 0x1D0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function init()
{
	if(!isGameRepEnabled())
	{
		return;
	}
	if(isGameRepInitialized())
	{
		return;
	}
	game["gameRepInitialized"] = 1;
	game["gameRep"]["players"] = [];
	game["gameRep"]["playerNames"] = [];
	game["gameRep"]["max"] = [];
	game["gameRep"]["playerCount"] = 0;
	gameRepInitializeParams();
}

/*
	Name: isGameRepInitialized
	Namespace: gamerep
	Checksum: 0x4B1A9B20
	Offset: 0x290
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function isGameRepInitialized()
{
	if(!isdefined(game["gameRepInitialized"]) || !game["gameRepInitialized"])
	{
		return 0;
	}
	return 1;
}

/*
	Name: isGameRepEnabled
	Namespace: gamerep
	Checksum: 0xA2229568
	Offset: 0x2C8
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function isGameRepEnabled()
{
	if(SessionModeIsZombiesGame())
	{
		return 0;
	}
	if(!level.rankedMatch)
	{
		return 0;
	}
	return 1;
}

/*
	Name: gameRepInitializeParams
	Namespace: gamerep
	Checksum: 0x69D31229
	Offset: 0x300
	Size: 0xDD9
	Parameters: 0
	Flags: None
*/
function gameRepInitializeParams()
{
	THRESHOLD_EXCEEDED_SCORE = 0;
	THRESHOLD_EXCEEDED_SCORE_PER_MIN = 1;
	THRESHOLD_EXCEEDED_KILLS = 2;
	THRESHOLD_EXCEEDED_DEATHS = 3;
	THRESHOLD_EXCEEDED_KD_RATIO = 4;
	THRESHOLD_EXCEEDED_KILLS_PER_MIN = 5;
	THRESHOLD_EXCEEDED_PLANTS = 6;
	THRESHOLD_EXCEEDED_DEFUSES = 7;
	THRESHOLD_EXCEEDED_CAPTURES = 8;
	THRESHOLD_EXCEEDED_DEFENDS = 9;
	THRESHOLD_EXCEEDED_TOTAL_TIME_PLAYED = 10;
	THRESHOLD_EXCEEDED_TACTICAL_INSERTION_USE = 11;
	THRESHOLD_EXCEEDED_JOIN_ATTEMPTS = 12;
	THRESHOLD_EXCEEDED_XP = 13;
	THRESHOLD_EXCEEDED_SPLITSCREEN = 14;
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
	game["gameRep"]["gameLimit"]["id"]["score"] = THRESHOLD_EXCEEDED_SCORE;
	game["gameRep"]["gameLimit"]["default"]["score"] = 20000;
	game["gameRep"]["gameLimit"]["id"]["scorePerMin"] = THRESHOLD_EXCEEDED_SCORE_PER_MIN;
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
	game["gameRep"]["gameLimit"]["id"]["kills"] = THRESHOLD_EXCEEDED_KILLS;
	game["gameRep"]["gameLimit"]["default"]["kills"] = 75;
	game["gameRep"]["gameLimit"]["tdm"]["kills"] = 40;
	game["gameRep"]["gameLimit"]["sd"]["kills"] = 15;
	game["gameRep"]["gameLimit"]["dm"]["kills"] = 31;
	game["gameRep"]["gameLimit"]["id"]["deaths"] = THRESHOLD_EXCEEDED_DEATHS;
	game["gameRep"]["gameLimit"]["default"]["deaths"] = 50;
	game["gameRep"]["gameLimit"]["dm"]["deaths"] = 15;
	game["gameRep"]["gameLimit"]["tdm"]["deaths"] = 40;
	game["gameRep"]["gameLimit"]["id"]["killDeathRatio"] = THRESHOLD_EXCEEDED_KD_RATIO;
	game["gameRep"]["gameLimit"]["default"]["killDeathRatio"] = 30;
	game["gameRep"]["gameLimit"]["tdm"]["killDeathRatio"] = 50;
	game["gameRep"]["gameLimit"]["sd"]["killDeathRatio"] = 20;
	game["gameRep"]["gameLimit"]["id"]["killsPerMin"] = THRESHOLD_EXCEEDED_KILLS_PER_MIN;
	game["gameRep"]["gameLimit"]["default"]["killsPerMin"] = 15;
	game["gameRep"]["gameLimit"]["id"]["plants"] = THRESHOLD_EXCEEDED_PLANTS;
	game["gameRep"]["gameLimit"]["default"]["plants"] = 10;
	game["gameRep"]["gameLimit"]["id"]["defuses"] = THRESHOLD_EXCEEDED_DEFUSES;
	game["gameRep"]["gameLimit"]["default"]["defuses"] = 10;
	game["gameRep"]["gameLimit"]["id"]["captures"] = THRESHOLD_EXCEEDED_CAPTURES;
	game["gameRep"]["gameLimit"]["default"]["captures"] = 30;
	game["gameRep"]["gameLimit"]["id"]["defends"] = THRESHOLD_EXCEEDED_DEFENDS;
	game["gameRep"]["gameLimit"]["default"]["defends"] = 50;
	game["gameRep"]["gameLimit"]["id"]["totalTimePlayed"] = THRESHOLD_EXCEEDED_TOTAL_TIME_PLAYED;
	game["gameRep"]["gameLimit"]["default"]["totalTimePlayed"] = 600;
	game["gameRep"]["gameLimit"]["dom"]["totalTimePlayed"] = 600;
	game["gameRep"]["gameLimit"]["dem"]["totalTimePlayed"] = 1140;
	game["gameRep"]["gameLimit"]["id"]["tacticalInsertions"] = THRESHOLD_EXCEEDED_TACTICAL_INSERTION_USE;
	game["gameRep"]["gameLimit"]["default"]["tacticalInsertions"] = 20;
	game["gameRep"]["gameLimit"]["id"]["joinAttempts"] = THRESHOLD_EXCEEDED_JOIN_ATTEMPTS;
	game["gameRep"]["gameLimit"]["default"]["joinAttempts"] = 3;
	game["gameRep"]["gameLimit"]["id"]["xp"] = THRESHOLD_EXCEEDED_XP;
	game["gameRep"]["gameLimit"]["default"]["xp"] = 25000;
	game["gameRep"]["gameLimit"]["id"]["splitscreen"] = THRESHOLD_EXCEEDED_SPLITSCREEN;
	game["gameRep"]["gameLimit"]["default"]["splitscreen"] = 8;
}

/*
	Name: gameRepPlayerConnected
	Namespace: gamerep
	Checksum: 0x1A2329DB
	Offset: 0x10E8
	Size: 0x2C1
	Parameters: 0
	Flags: None
*/
function gameRepPlayerConnected()
{
	if(!isGameRepEnabled())
	{
		return;
	}
	name = self.name;
	/#
	#/
	if(!isdefined(game["gameRep"]["players"][name]))
	{
		game["gameRep"]["players"][name] = [];
		for(j = 0; j < game["gameRep"]["params"].size; j++)
		{
			paramName = game["gameRep"]["params"][j];
			game["gameRep"]["players"][name][paramName] = 0;
		}
		game["gameRep"]["players"][name]["splitscreen"] = self IsSplitscreen();
		game["gameRep"]["players"][name]["joinAttempts"] = 1;
		game["gameRep"]["players"][name]["connected"] = 1;
		game["gameRep"]["players"][name]["xpStart"] = self rank::getRankXpStat();
		game["gameRep"]["playerNames"][game["gameRep"]["playerCount"]] = name;
		game["gameRep"]["playerCount"]++;
	}
	else if(!game["gameRep"]["players"][name]["connected"])
	{
		game["gameRep"]["players"][name]["joinAttempts"]++;
		game["gameRep"]["players"][name]["connected"] = 1;
		game["gameRep"]["players"][name]["xpStart"] = self rank::getRankXpStat();
	}
}

/*
	Name: gameRepPlayerDisconnected
	Namespace: gamerep
	Checksum: 0x70A715F8
	Offset: 0x13B8
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function gameRepPlayerDisconnected()
{
	if(!isGameRepEnabled())
	{
		return;
	}
	name = self.name;
	if(!isdefined(game["gameRep"]["players"][name]) || !isdefined(self.pers["summary"]))
	{
		return;
	}
	/#
	#/
	self gameRepUpdateNonPersistentPlayerInformation();
	self gameRepUpdatePersistentPlayerInformation();
	game["gameRep"]["players"][name]["connected"] = 0;
}

/*
	Name: gameRepUpdateNonPersistentPlayerInformation
	Namespace: gamerep
	Checksum: 0xDD5F139C
	Offset: 0x1488
	Size: 0xF9
	Parameters: 0
	Flags: None
*/
function gameRepUpdateNonPersistentPlayerInformation()
{
	name = self.name;
	if(!isdefined(game["gameRep"]["players"][name]))
	{
		return;
	}
	game["gameRep"]["players"][name]["totalTimePlayed"] = game["gameRep"]["players"][name]["totalTimePlayed"] + self.timePlayed["total"];
	if(isdefined(self.tacticalInsertionCount))
	{
		game["gameRep"]["players"][name]["tacticalInsertions"] = game["gameRep"]["players"][name]["tacticalInsertions"] + self.tacticalInsertionCount;
	}
}

/*
	Name: gameRepUpdatePersistentPlayerInformation
	Namespace: gamerep
	Checksum: 0xDA523747
	Offset: 0x1590
	Size: 0x471
	Parameters: 0
	Flags: None
*/
function gameRepUpdatePersistentPlayerInformation()
{
	name = self.name;
	if(!isdefined(game["gameRep"]["players"][name]))
	{
		return;
	}
	if(game["gameRep"]["players"][name]["totalTimePlayed"] != 0)
	{
		timePlayed = game["gameRep"]["players"][name]["totalTimePlayed"];
	}
	else
	{
		timePlayed = 1;
	}
	game["gameRep"]["players"][name]["score"] = self.score;
	game["gameRep"]["players"][name]["scorePerMin"] = Int(game["gameRep"]["players"][name]["score"] / timePlayed / 60);
	game["gameRep"]["players"][name]["kills"] = self.kills;
	game["gameRep"]["players"][name]["deaths"] = self.deaths;
	if(game["gameRep"]["players"][name]["deaths"] != 0)
	{
		game["gameRep"]["players"][name]["killDeathRatio"] = Int(game["gameRep"]["players"][name]["kills"] / game["gameRep"]["players"][name]["deaths"] * 100);
	}
	else
	{
		game["gameRep"]["players"][name]["killDeathRatio"] = game["gameRep"]["players"][name]["kills"] * 100;
	}
	game["gameRep"]["players"][name]["killsPerMin"] = Int(game["gameRep"]["players"][name]["kills"] / timePlayed / 60);
	game["gameRep"]["players"][name]["plants"] = self.Plants;
	game["gameRep"]["players"][name]["defuses"] = self.Defuses;
	game["gameRep"]["players"][name]["captures"] = self.Captures;
	game["gameRep"]["players"][name]["defends"] = self.Defends;
	game["gameRep"]["players"][name]["xp"] = self rank::getRankXpStat() - game["gameRep"]["players"][name]["xpStart"];
	game["gameRep"]["players"][name]["xpStart"] = self rank::getRankXpStat();
}

/*
	Name: getParamValueForPlayer
	Namespace: gamerep
	Checksum: 0x764F7141
	Offset: 0x1A10
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function getParamValueForPlayer(playerName, paramName)
{
	if(isdefined(game["gameRep"]["players"][playerName][paramName]))
	{
		return game["gameRep"]["players"][playerName][paramName];
	}
	/#
		ASSERTMSG("Dev Block strings are not supported" + paramName + "Dev Block strings are not supported");
	#/
}

/*
	Name: isGameRepParamValid
	Namespace: gamerep
	Checksum: 0x44C6B45D
	Offset: 0x1AA8
	Size: 0xFF
	Parameters: 1
	Flags: None
*/
function isGameRepParamValid(paramName)
{
	gametype = level.gametype;
	if(!isdefined(game["gameRep"]))
	{
		return 0;
	}
	if(!isdefined(game["gameRep"]["gameLimit"]))
	{
		return 0;
	}
	if(!isdefined(game["gameRep"]["gameLimit"][gametype]))
	{
		return 0;
	}
	if(!isdefined(game["gameRep"]["gameLimit"][gametype][paramName]))
	{
		return 0;
	}
	if(!isdefined(game["gameRep"]["gameLimit"][gametype][paramName]) && !isdefined(game["gameRep"]["gameLimit"]["default"][paramName]))
	{
		return 0;
	}
	return 1;
}

/*
	Name: isGameRepParamIgnoredForReporting
	Namespace: gamerep
	Checksum: 0x63A8764
	Offset: 0x1BB0
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function isGameRepParamIgnoredForReporting(paramName)
{
	if(isdefined(game["gameRep"]["ignoreParams"][paramName]))
	{
		return 1;
	}
	return 0;
}

/*
	Name: getGameRepParamLimit
	Namespace: gamerep
	Checksum: 0x20DC4892
	Offset: 0x1BF0
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function getGameRepParamLimit(paramName)
{
	gametype = level.gametype;
	if(isdefined(game["gameRep"]["gameLimit"][gametype]))
	{
		if(isdefined(game["gameRep"]["gameLimit"][gametype][paramName]))
		{
			return game["gameRep"]["gameLimit"][gametype][paramName];
		}
	}
	if(isdefined(game["gameRep"]["gameLimit"]["default"][paramName]))
	{
		return game["gameRep"]["gameLimit"]["default"][paramName];
	}
	/#
		ASSERTMSG("Dev Block strings are not supported" + paramName + "Dev Block strings are not supported");
	#/
}

/*
	Name: setMaximumParamValueForCurrentGame
	Namespace: gamerep
	Checksum: 0xB8B2D30F
	Offset: 0x1D08
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function setMaximumParamValueForCurrentGame(paramName, value)
{
	if(!isdefined(game["gameRep"]["max"][paramName]))
	{
		game["gameRep"]["max"][paramName] = value;
		return;
	}
	if(game["gameRep"]["max"][paramName] < value)
	{
		game["gameRep"]["max"][paramName] = value;
	}
}

/*
	Name: gameRepUpdateInformationForRound
	Namespace: gamerep
	Checksum: 0x4D039CD7
	Offset: 0x1DB0
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function gameRepUpdateInformationForRound()
{
	if(!isGameRepEnabled())
	{
		return;
	}
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		player = players[i];
		player gameRepUpdateNonPersistentPlayerInformation();
	}
}

/*
	Name: gameRepAnalyzeAndReport
	Namespace: gamerep
	Checksum: 0xD9F5AF7A
	Offset: 0x1E48
	Size: 0x2FB
	Parameters: 0
	Flags: None
*/
function gameRepAnalyzeAndReport()
{
	if(!isGameRepEnabled())
	{
		return;
	}
	players = GetPlayers();
	for(i = 0; i < players.size; i++)
	{
		player = players[i];
		player gameRepUpdatePersistentPlayerInformation();
	}
	splitscreenPlayerCount = 0;
	for(i = 0; i < game["gameRep"]["playerNames"].size; i++)
	{
		playerName = game["gameRep"]["playerNames"][i];
		for(j = 0; j < game["gameRep"]["params"].size; j++)
		{
			paramName = game["gameRep"]["params"][j];
			if(isGameRepParamValid(paramName))
			{
				setMaximumParamValueForCurrentGame(paramName, getParamValueForPlayer(playerName, paramName));
			}
		}
		paramName = "splitscreen";
		splitscreenPlayerCount = splitscreenPlayerCount + getParamValueForPlayer(playerName, paramName);
	}
	setMaximumParamValueForCurrentGame(paramName, splitscreenPlayerCount);
	for(j = 0; j < game["gameRep"]["params"].size; j++)
	{
		paramName = game["gameRep"]["params"][j];
		if(isGameRepParamValid(paramName) && game["gameRep"]["max"][paramName] >= getGameRepParamLimit(paramName))
		{
			gameRepPrepareAndReport(paramName);
		}
	}
	paramName = "splitscreen";
	if(game["gameRep"]["max"][paramName] >= getGameRepParamLimit(paramName))
	{
		gameRepPrepareAndReport(paramName);
	}
}

/*
	Name: gameRepPrepareAndReport
	Namespace: gamerep
	Checksum: 0xBD950AC7
	Offset: 0x2150
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function gameRepPrepareAndReport(paramName)
{
	if(!isdefined(game["gameRep"]["gameLimit"]["id"][paramName]))
	{
		return;
	}
	if(isGameRepParamIgnoredForReporting(paramName))
	{
		return;
	}
	gameRepThresholdExceeded(game["gameRep"]["gameLimit"]["id"][paramName]);
}


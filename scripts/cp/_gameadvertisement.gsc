#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_dev;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\shared\util_shared;

#namespace gameadvertisement;

/*
	Name: init
	Namespace: gameadvertisement
	Checksum: 0x10CD248E
	Offset: 0x178
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		level.sessionAdvertStatus = 1;
		thread sessionAdvertismentUpdateDebugHud();
	#/
	thread sessionAdvertisementCheck();
}

/*
	Name: setAdvertisedStatus
	Namespace: gameadvertisement
	Checksum: 0xD437BC47
	Offset: 0x1B8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function setAdvertisedStatus(onOff)
{
	/#
		level.sessionAdvertStatus = onOff;
	#/
	changeAdvertisedStatus(onOff);
}

/*
	Name: sessionAdvertisementCheck
	Namespace: gameadvertisement
	Checksum: 0x511B9B37
	Offset: 0x1F8
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function sessionAdvertisementCheck()
{
	if(SessionModeIsPrivate())
	{
		return;
	}
	if(SessionModeIsZombiesGame())
	{
		setAdvertisedStatus(0);
		return;
	}
	runRules = getGameTypeRules();
	if(!isdefined(runRules))
	{
		return;
	}
	level endon("game_end");
	level waittill("prematch_over");
	while(1)
	{
		sessionAdvertCheckwait = GetDvarInt("sessionAdvertCheckwait", 1);
		wait(sessionAdvertCheckwait);
		advertise = [[runRules]]();
		setAdvertisedStatus(advertise);
	}
}

/*
	Name: getGameTypeRules
	Namespace: gameadvertisement
	Checksum: 0x1253BD6B
	Offset: 0x2F8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function getGameTypeRules()
{
	gametype = level.gametype;
	switch(gametype)
	{
		case "dm":
		{
			return &dm_rules;
		}
		case "tdm":
		{
			return &tdm_rules;
		}
		case "dom":
		{
			return &dom_rules;
		}
		case "hq":
		{
			return &hq_rules;
		}
		case "sd":
		{
			return &sd_rules;
		}
		case "dem":
		{
			return &dem_rules;
		}
		case "ctf":
		{
			return &ctf_rules;
		}
		case "koth":
		{
			return &koth_rules;
		}
		case "conf":
		{
			return &conf_rules;
		}
		case "oic":
		{
			return &oic_rules;
		}
		case "sas":
		{
			return &sas_rules;
		}
		case "gun":
		{
			return &gun_rules;
		}
		case "shrp":
		{
			return &shrp_rules;
		}
	}
	return;
}

/*
	Name: teamScoreLimitCheck
	Namespace: gameadvertisement
	Checksum: 0x6D798000
	Offset: 0x468
	Size: 0x167
	Parameters: 1
	Flags: None
*/
function teamScoreLimitCheck(ruleScorePercent)
{
	if(level.scoreLimit)
	{
		minScorePercentageLeft = 100;
		foreach(team in level.teams)
		{
			scorePercentageLeft = 100 - game["teamScores"][team] / level.scoreLimit * 100;
			if(minScorePercentageLeft > scorePercentageLeft)
			{
				minScorePercentageLeft = scorePercentageLeft;
			}
			if(ruleScorePercent >= scorePercentageLeft)
			{
				/#
					updatedebughud(3, "Dev Block strings are not supported", Int(scorePercentageLeft));
				#/
				return 0;
			}
		}
		/#
			updatedebughud(3, "Dev Block strings are not supported", Int(minScorePercentageLeft));
		#/
	}
	return 1;
}

/*
	Name: timeLimitCheck
	Namespace: gameadvertisement
	Checksum: 0xE2CE745E
	Offset: 0x5D8
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function timeLimitCheck(ruleTimeLeft)
{
	maxTime = level.timelimit;
	if(maxTime != 0)
	{
		timeLeft = globallogic_utils::getTimeRemaining();
		if(ruleTimeLeft >= timeLeft)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: dm_rules
	Namespace: gameadvertisement
	Checksum: 0x31ED4833
	Offset: 0x640
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function dm_rules()
{
	ruleScorePercent = 35;
	ruleTimeLeft = 60000 * 1.5;
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleScorePercent);
		updatedebughud(2, "Dev Block strings are not supported", ruleTimeLeft / 60000);
	#/
	if(level.scoreLimit)
	{
		highestScore = 0;
		players = GetPlayers();
		for(i = 0; i < players.size; i++)
		{
			if(players[i].pointstowin > highestScore)
			{
				highestScore = players[i].pointstowin;
			}
		}
		scorePercentageLeft = 100 - highestScore / level.scoreLimit * 100;
		/#
			updatedebughud(3, "Dev Block strings are not supported", Int(scorePercentageLeft));
		#/
		if(ruleScorePercent >= scorePercentageLeft)
		{
			return 0;
		}
	}
	if(timeLimitCheck(ruleTimeLeft) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: tdm_rules
	Namespace: gameadvertisement
	Checksum: 0x1F5B7BC1
	Offset: 0x800
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function tdm_rules()
{
	ruleScorePercent = 15;
	ruleTimeLeft = 60000 * 1.5;
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleScorePercent);
		updatedebughud(2, "Dev Block strings are not supported", ruleTimeLeft / 60000);
	#/
	if(teamScoreLimitCheck(ruleScorePercent) == 0)
	{
		return 0;
	}
	if(timeLimitCheck(ruleTimeLeft) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: dom_rules
	Namespace: gameadvertisement
	Checksum: 0x57D0E197
	Offset: 0x8D8
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function dom_rules()
{
	ruleScorePercent = 15;
	ruleTimeLeft = 60000 * 1.5;
	ruleround = 3;
	currentRound = game["roundsplayed"] + 1;
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleScorePercent);
		updatedebughud(2, "Dev Block strings are not supported", ruleround);
		updatedebughud(4, "Dev Block strings are not supported", currentRound);
	#/
	if(currentRound >= 2)
	{
		if(teamScoreLimitCheck(ruleScorePercent) == 0)
		{
			return 0;
		}
	}
	if(timeLimitCheck(ruleTimeLeft) == 0)
	{
		return 0;
	}
	if(ruleround <= currentRound)
	{
		return 0;
	}
	return 1;
}

/*
	Name: hq_rules
	Namespace: gameadvertisement
	Checksum: 0x3F7E9865
	Offset: 0xA18
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function hq_rules()
{
	return koth_rules();
}

/*
	Name: sd_rules
	Namespace: gameadvertisement
	Checksum: 0xE66FCC81
	Offset: 0xA38
	Size: 0x157
	Parameters: 0
	Flags: None
*/
function sd_rules()
{
	ruleround = 3;
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleround);
	#/
	maxRoundsWon = 0;
	foreach(team in level.teams)
	{
		roundsWon = game["teamScores"][team];
		if(maxRoundsWon < roundsWon)
		{
			maxRoundsWon = roundsWon;
		}
		if(ruleround <= roundsWon)
		{
			/#
				updatedebughud(3, "Dev Block strings are not supported", maxRoundsWon);
			#/
			return 0;
		}
	}
	/#
		updatedebughud(3, "Dev Block strings are not supported", maxRoundsWon);
	#/
	return 1;
}

/*
	Name: dem_rules
	Namespace: gameadvertisement
	Checksum: 0xD5EDEBA1
	Offset: 0xB98
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function dem_rules()
{
	return ctf_rules();
}

/*
	Name: ctf_rules
	Namespace: gameadvertisement
	Checksum: 0x9C0DFB6C
	Offset: 0xBB8
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function ctf_rules()
{
	ruleround = 3;
	roundsPlayed = game["roundsplayed"];
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleround);
		updatedebughud(3, "Dev Block strings are not supported", roundsPlayed);
	#/
	if(ruleround <= roundsPlayed)
	{
		return 0;
	}
	return 1;
}

/*
	Name: koth_rules
	Namespace: gameadvertisement
	Checksum: 0x9BE80234
	Offset: 0xC50
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function koth_rules()
{
	ruleScorePercent = 20;
	ruleTimeLeft = 60000 * 1.5;
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleScorePercent);
		updatedebughud(2, "Dev Block strings are not supported", ruleTimeLeft / 60000);
	#/
	if(teamScoreLimitCheck(ruleScorePercent) == 0)
	{
		return 0;
	}
	if(timeLimitCheck(ruleTimeLeft) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: conf_rules
	Namespace: gameadvertisement
	Checksum: 0x4F1C1DE3
	Offset: 0xD28
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function conf_rules()
{
	return tdm_rules();
}

/*
	Name: oic_rules
	Namespace: gameadvertisement
	Checksum: 0xD5D19330
	Offset: 0xD48
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function oic_rules()
{
	/#
		updatedebughud(1, "Dev Block strings are not supported", 0);
	#/
	return 0;
}

/*
	Name: sas_rules
	Namespace: gameadvertisement
	Checksum: 0x80A22622
	Offset: 0xD78
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function sas_rules()
{
	ruleScorePercent = 35;
	ruleTimeLeft = 60000 * 1.5;
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleScorePercent);
		updatedebughud(2, "Dev Block strings are not supported", ruleTimeLeft / 60000);
	#/
	if(teamScoreLimitCheck(ruleScorePercent) == 0)
	{
		return 0;
	}
	if(timeLimitCheck(ruleTimeLeft) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: gun_rules
	Namespace: gameadvertisement
	Checksum: 0x5EBF94E
	Offset: 0xE50
	Size: 0x167
	Parameters: 0
	Flags: None
*/
function gun_rules()
{
	ruleWeaponsLeft = 3;
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleWeaponsLeft);
	#/
	minWeaponsLeft = level.gunProgression.size;
	foreach(player in level.players)
	{
		weaponsLeft = level.gunProgression.size - player.gunProgress;
		if(minWeaponsLeft > weaponsLeft)
		{
			minWeaponsLeft = weaponsLeft;
		}
		if(ruleWeaponsLeft >= minWeaponsLeft)
		{
			/#
				updatedebughud(3, "Dev Block strings are not supported", minWeaponsLeft);
			#/
			return 0;
		}
	}
	/#
		updatedebughud(3, "Dev Block strings are not supported", minWeaponsLeft);
	#/
	return 1;
}

/*
	Name: shrp_rules
	Namespace: gameadvertisement
	Checksum: 0x92F00178
	Offset: 0xFC0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function shrp_rules()
{
	ruleScorePercent = 35;
	ruleTimeLeft = 60000 * 1.5;
	/#
		updatedebughud(1, "Dev Block strings are not supported", ruleScorePercent);
		updatedebughud(2, "Dev Block strings are not supported", ruleTimeLeft / 60000);
	#/
	if(teamScoreLimitCheck(ruleScorePercent) == 0)
	{
		return 0;
	}
	if(timeLimitCheck(ruleTimeLeft) == 0)
	{
		return 0;
	}
	return 1;
}

/*
	Name: sessionadvertismentcreatedebughud
	Namespace: gameadvertisement
	Checksum: 0xD019C707
	Offset: 0x1098
	Size: 0x171
	Parameters: 2
	Flags: None
*/
function sessionadvertismentcreatedebughud(linenum, alignX)
{
	/#
		debug_hud = dev::new_hud("Dev Block strings are not supported", "Dev Block strings are not supported", 0, 0, 1);
		debug_hud.hidewheninmenu = 1;
		debug_hud.horzAlign = "Dev Block strings are not supported";
		debug_hud.vertAlign = "Dev Block strings are not supported";
		debug_hud.alignX = "Dev Block strings are not supported";
		debug_hud.alignY = "Dev Block strings are not supported";
		debug_hud.x = alignX;
		debug_hud.y = -50 + linenum * 15;
		debug_hud.foreground = 1;
		debug_hud.font = "Dev Block strings are not supported";
		debug_hud.fontscale = 1.5;
		debug_hud.color = (1, 1, 1);
		debug_hud.alpha = 1;
		debug_hud setText("Dev Block strings are not supported");
		return debug_hud;
	#/
}

/*
	Name: updatedebughud
	Namespace: gameadvertisement
	Checksum: 0x97EFE6BE
	Offset: 0x1218
	Size: 0xC1
	Parameters: 3
	Flags: None
*/
function updatedebughud(hudindex, text, value)
{
	/#
		switch(hudindex)
		{
			case 1:
			{
				level.sessionadverthud_1a_text = text;
				level.sessionadverthud_1b_text = value;
				break;
			}
			case 2:
			{
				level.sessionadverthud_2a_text = text;
				level.sessionadverthud_2b_text = value;
				break;
			}
			case 3:
			{
				level.sessionadverthud_3a_text = text;
				level.sessionadverthud_3b_text = value;
				break;
			}
			case 4:
			{
				level.sessionadverthud_4a_text = text;
				level.sessionadverthud_4b_text = value;
				break;
			}
		}
	#/
}

/*
	Name: sessionAdvertismentUpdateDebugHud
	Namespace: gameadvertisement
	Checksum: 0xAE708AE0
	Offset: 0x12E8
	Size: 0x64F
	Parameters: 0
	Flags: None
*/
function sessionAdvertismentUpdateDebugHud()
{
	/#
		level endon("game_end");
		sessionadverthud_0 = undefined;
		sessionadverthud_1a = undefined;
		sessionadverthud_1b = undefined;
		sessionadverthud_2a = undefined;
		sessionadverthud_2b = undefined;
		sessionadverthud_3a = undefined;
		sessionadverthud_3b = undefined;
		sessionadverthud_4a = undefined;
		sessionadverthud_4b = undefined;
		level.sessionadverthud_0_text = "Dev Block strings are not supported";
		level.sessionadverthud_1a_text = "Dev Block strings are not supported";
		level.sessionadverthud_1b_text = "Dev Block strings are not supported";
		level.sessionadverthud_2a_text = "Dev Block strings are not supported";
		level.sessionadverthud_2b_text = "Dev Block strings are not supported";
		level.sessionadverthud_3a_text = "Dev Block strings are not supported";
		level.sessionadverthud_3b_text = "Dev Block strings are not supported";
		level.sessionadverthud_4a_text = "Dev Block strings are not supported";
		level.sessionadverthud_4b_text = "Dev Block strings are not supported";
		while(1)
		{
			wait(1);
			showDebugHud = GetDvarInt("Dev Block strings are not supported", 0);
			level.sessionadverthud_0_text = "Dev Block strings are not supported";
			if(level.sessionAdvertStatus == 0)
			{
				level.sessionadverthud_0_text = "Dev Block strings are not supported";
			}
			if(!isdefined(sessionadverthud_0) && showDebugHud != 0)
			{
				host = util::getHostPlayer();
				if(!isdefined(host))
				{
					continue;
				}
				sessionadverthud_0 = host sessionadvertismentcreatedebughud(0, 0);
				sessionadverthud_1a = host sessionadvertismentcreatedebughud(1, -20);
				sessionadverthud_1b = host sessionadvertismentcreatedebughud(1, 0);
				sessionadverthud_2a = host sessionadvertismentcreatedebughud(2, -20);
				sessionadverthud_2b = host sessionadvertismentcreatedebughud(2, 0);
				sessionadverthud_3a = host sessionadvertismentcreatedebughud(3, -20);
				sessionadverthud_3b = host sessionadvertismentcreatedebughud(3, 0);
				sessionadverthud_4a = host sessionadvertismentcreatedebughud(4, -20);
				sessionadverthud_4b = host sessionadvertismentcreatedebughud(4, 0);
				sessionadverthud_1a.color = VectorScale((0, 1, 0), 0.5);
				sessionadverthud_1b.color = VectorScale((0, 1, 0), 0.5);
				sessionadverthud_2a.color = VectorScale((0, 1, 0), 0.5);
				sessionadverthud_2b.color = VectorScale((0, 1, 0), 0.5);
			}
			if(isdefined(sessionadverthud_0))
			{
				if(showDebugHud == 0)
				{
					sessionadverthud_0 destroy();
					sessionadverthud_1a destroy();
					sessionadverthud_1b destroy();
					sessionadverthud_2a destroy();
					sessionadverthud_2b destroy();
					sessionadverthud_3a destroy();
					sessionadverthud_3b destroy();
					sessionadverthud_4a destroy();
					sessionadverthud_4b destroy();
					sessionadverthud_0 = undefined;
					sessionadverthud_1a = undefined;
					sessionadverthud_1b = undefined;
					sessionadverthud_2a = undefined;
					sessionadverthud_2b = undefined;
					sessionadverthud_3a = undefined;
					sessionadverthud_3b = undefined;
					sessionadverthud_4a = undefined;
					sessionadverthud_4b = undefined;
				}
				else if(level.sessionAdvertStatus == 1)
				{
					sessionadverthud_0.color = (1, 1, 1);
				}
				else
				{
					sessionadverthud_0.color = VectorScale((1, 0, 0), 0.9);
				}
				sessionadverthud_0 setText(level.sessionadverthud_0_text);
				if(level.sessionadverthud_1a_text != "Dev Block strings are not supported")
				{
					sessionadverthud_1a setText(level.sessionadverthud_1a_text);
					sessionadverthud_1b setValue(level.sessionadverthud_1b_text);
				}
				if(level.sessionadverthud_2a_text != "Dev Block strings are not supported")
				{
					sessionadverthud_2a setText(level.sessionadverthud_2a_text);
					sessionadverthud_2b setValue(level.sessionadverthud_2b_text);
				}
				if(level.sessionadverthud_3a_text != "Dev Block strings are not supported")
				{
					sessionadverthud_3a setText(level.sessionadverthud_3a_text);
					sessionadverthud_3b setValue(level.sessionadverthud_3b_text);
				}
				if(level.sessionadverthud_4a_text != "Dev Block strings are not supported")
				{
					sessionadverthud_4a setText(level.sessionadverthud_4a_text);
					sessionadverthud_4b setValue(level.sessionadverthud_4b_text);
				}
			}
		}
	#/
}


#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_message_shared;

#namespace globallogic_utils;

/*
	Name: testMenu
	Namespace: globallogic_utils
	Checksum: 0xBFFAEEF0
	Offset: 0x2E0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function testMenu()
{
	self endon("death");
	self endon("disconnect");
	for(;;)
	{
		wait(10);
		notifyData = spawnstruct();
		notifyData.titleText = &"MP_CHALLENGE_COMPLETED";
		notifyData.notifyText = "wheee";
		notifyData.sound = "mp_challenge_complete";
		self thread hud_message::notifyMessage(notifyData);
	}
}

/*
	Name: testShock
	Namespace: globallogic_utils
	Checksum: 0xF6CB316B
	Offset: 0x380
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function testShock()
{
	self endon("death");
	self endon("disconnect");
	for(;;)
	{
		wait(3);
		numShots = RandomInt(6);
		for(i = 0; i < numShots; i++)
		{
			IPrintLnBold(numShots);
			self shellshock("frag_grenade_mp", 0.2);
			wait(0.1);
		}
	}
}

/*
	Name: timeUntilRoundEnd
	Namespace: globallogic_utils
	Checksum: 0x80EE2051
	Offset: 0x448
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function timeUntilRoundEnd()
{
	if(level.gameEnded)
	{
		timePassed = GetTime() - level.gameEndTime / 1000;
		timeRemaining = level.postRoundTime - timePassed;
		if(timeRemaining < 0)
		{
			return 0;
		}
		return timeRemaining;
	}
	if(level.inOvertime)
	{
		return undefined;
	}
	if(level.timelimit <= 0)
	{
		return undefined;
	}
	if(!isdefined(level.startTime))
	{
		return undefined;
	}
	timePassed = getTimePassed() - level.startTime / 1000;
	timeRemaining = level.timelimit * 60 - timePassed;
	return timeRemaining + level.postRoundTime;
}

/*
	Name: getTimeRemaining
	Namespace: globallogic_utils
	Checksum: 0x2BA9A328
	Offset: 0x530
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function getTimeRemaining()
{
	if(level.timelimit == 0)
	{
		return undefined;
	}
	return level.timelimit * 60 * 1000 - getTimePassed();
}

/*
	Name: registerPostRoundEvent
	Namespace: globallogic_utils
	Checksum: 0xE3563218
	Offset: 0x578
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function registerPostRoundEvent(eventFunc)
{
	if(!isdefined(level.postRoundEvents))
	{
		level.postRoundEvents = [];
	}
	level.postRoundEvents[level.postRoundEvents.size] = eventFunc;
}

/*
	Name: executePostRoundEvents
	Namespace: globallogic_utils
	Checksum: 0xD24CAE61
	Offset: 0x5C0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function executePostRoundEvents()
{
	if(!isdefined(level.postRoundEvents))
	{
		return;
	}
	for(i = 0; i < level.postRoundEvents.size; i++)
	{
		[[level.postRoundEvents[i]]]();
	}
}

/*
	Name: getValueInRange
	Namespace: globallogic_utils
	Checksum: 0xCA094853
	Offset: 0x620
	Size: 0x51
	Parameters: 3
	Flags: None
*/
function getValueInRange(value, minValue, maxValue)
{
	if(value > maxValue)
	{
		return maxValue;
	}
	else if(value < minValue)
	{
		return minValue;
	}
	else
	{
		return value;
	}
}

/*
	Name: assertProperPlacement
	Namespace: globallogic_utils
	Checksum: 0xA739726B
	Offset: 0x680
	Size: 0x2C1
	Parameters: 0
	Flags: None
*/
function assertProperPlacement()
{
	/#
		numPlayers = level.placement["Dev Block strings are not supported"].size;
		if(level.teambased)
		{
			for(i = 0; i < numPlayers - 1; i++)
			{
				if(level.placement["Dev Block strings are not supported"][i].score < level.placement["Dev Block strings are not supported"][i + 1].score)
				{
					println("Dev Block strings are not supported");
					for(i = 0; i < numPlayers; i++)
					{
						player = level.placement["Dev Block strings are not supported"][i];
						println("Dev Block strings are not supported" + i + "Dev Block strings are not supported" + player.name + "Dev Block strings are not supported" + player.score);
					}
					/#
						ASSERTMSG("Dev Block strings are not supported");
					#/
					break;
				}
			}
			break;
		}
		for(i = 0; i < numPlayers - 1; i++)
		{
			if(level.placement["Dev Block strings are not supported"][i].pointstowin < level.placement["Dev Block strings are not supported"][i + 1].pointstowin)
			{
				println("Dev Block strings are not supported");
				for(i = 0; i < numPlayers; i++)
				{
					player = level.placement["Dev Block strings are not supported"][i];
					println("Dev Block strings are not supported" + i + "Dev Block strings are not supported" + player.name + "Dev Block strings are not supported" + player.pointstowin);
				}
				/#
					ASSERTMSG("Dev Block strings are not supported");
				#/
				break;
			}
		}
	#/
}

/*
	Name: isValidClass
	Namespace: globallogic_utils
	Checksum: 0xBC8ADE09
	Offset: 0x950
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function isValidClass(c)
{
	if(level.oldschool || SessionModeIsZombiesGame())
	{
		/#
			Assert(!isdefined(c));
		#/
		return 1;
	}
	return isdefined(c) && c != "";
}

/*
	Name: playTickingSound
	Namespace: globallogic_utils
	Checksum: 0x2F5AFE56
	Offset: 0x9C0
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function playTickingSound(gametype_tick_sound)
{
	self endon("death");
	self endon("stop_ticking");
	level endon("game_ended");
	time = level.bombTimer;
	while(1)
	{
		self playsound(gametype_tick_sound);
		if(time > 10)
		{
			time = time - 1;
			wait(1);
		}
		else if(time > 4)
		{
			time = time - 0.5;
			wait(0.5);
		}
		else if(time > 1)
		{
			time = time - 0.4;
			wait(0.4);
		}
		else
		{
			time = time - 0.3;
			wait(0.3);
		}
		hostmigration::waitTillHostMigrationDone();
	}
}

/*
	Name: stopTickingSound
	Namespace: globallogic_utils
	Checksum: 0xF50CAE25
	Offset: 0xAE8
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function stopTickingSound()
{
	self notify("stop_ticking");
}

/*
	Name: gameTimer
	Namespace: globallogic_utils
	Checksum: 0xB7EC2CA0
	Offset: 0xB08
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function gameTimer()
{
	level endon("game_ended");
	level waittill("prematch_over");
	level.startTime = GetTime();
	level.discardTime = 0;
	if(isdefined(game["roundMillisecondsAlreadyPassed"]))
	{
		level.startTime = level.startTime - game["roundMillisecondsAlreadyPassed"];
		game["roundMillisecondsAlreadyPassed"] = undefined;
	}
	prevtime = GetTime();
	while(game["state"] == "playing")
	{
		if(!level.timerStopped)
		{
			game["timepassed"] = game["timepassed"] + GetTime() - prevtime;
		}
		prevtime = GetTime();
		wait(1);
	}
}

/*
	Name: getTimePassed
	Namespace: globallogic_utils
	Checksum: 0xA6A05CAB
	Offset: 0xBE8
	Size: 0x51
	Parameters: 0
	Flags: None
*/
function getTimePassed()
{
	if(!isdefined(level.startTime))
	{
		return 0;
	}
	if(level.timerStopped)
	{
		return level.timerPauseTime - level.startTime - level.discardTime;
	}
	else
	{
		return GetTime() - level.startTime - level.discardTime;
	}
}

/*
	Name: pauseTimer
	Namespace: globallogic_utils
	Checksum: 0xA6D0CED4
	Offset: 0xC48
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function pauseTimer()
{
	if(level.timerStopped)
	{
		return;
	}
	level.timerStopped = 1;
	level.timerPauseTime = GetTime();
}

/*
	Name: resumeTimer
	Namespace: globallogic_utils
	Checksum: 0xEC9776EF
	Offset: 0xC78
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function resumeTimer()
{
	if(!level.timerStopped)
	{
		return;
	}
	level.timerStopped = 0;
	level.discardTime = level.discardTime + GetTime() - level.timerPauseTime;
}

/*
	Name: getScoreRemaining
	Namespace: globallogic_utils
	Checksum: 0x457E681B
	Offset: 0xCB8
	Size: 0x9D
	Parameters: 1
	Flags: None
*/
function getScoreRemaining(team)
{
	/#
		Assert(isPlayer(self) || isdefined(team));
	#/
	scoreLimit = level.scoreLimit;
	if(isPlayer(self))
	{
		return scoreLimit - globallogic_score::_getPlayerScore(self);
	}
	else
	{
		return scoreLimit - getTeamScore(team);
	}
}

/*
	Name: GetTeamScoreForRound
	Namespace: globallogic_utils
	Checksum: 0xEBE4D54D
	Offset: 0xD60
	Size: 0x69
	Parameters: 1
	Flags: None
*/
function GetTeamScoreForRound(team)
{
	if(level.cumulativeRoundScores && isdefined(game["lastroundscore"][team]))
	{
		return getTeamScore(team) - game["lastroundscore"][team];
	}
	return getTeamScore(team);
}

/*
	Name: getScorePerMinute
	Namespace: globallogic_utils
	Checksum: 0x7BC6649B
	Offset: 0xDD8
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function getScorePerMinute(team)
{
	/#
		Assert(isPlayer(self) || isdefined(team));
	#/
	scoreLimit = level.scoreLimit;
	timelimit = level.timelimit;
	minutesPassed = getTimePassed() / 60000 + 0.0001;
	if(isPlayer(self))
	{
		return globallogic_score::_getPlayerScore(self) / minutesPassed;
	}
	else
	{
		return GetTeamScoreForRound(team) / minutesPassed;
	}
}

/*
	Name: getEstimatedTimeUntilScoreLimit
	Namespace: globallogic_utils
	Checksum: 0x9013EC7
	Offset: 0xEC8
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function getEstimatedTimeUntilScoreLimit(team)
{
	/#
		Assert(isPlayer(self) || isdefined(team));
	#/
	scorePerMinute = self getScorePerMinute(team);
	scoreRemaining = self getScoreRemaining(team);
	if(!scorePerMinute)
	{
		return 999999;
	}
	return scoreRemaining / scorePerMinute;
}

/*
	Name: rumbler
	Namespace: globallogic_utils
	Checksum: 0x84ECB8A4
	Offset: 0xF78
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function rumbler()
{
	self endon("disconnect");
	while(1)
	{
		wait(0.1);
		self PlayRumbleOnEntity("damage_heavy");
	}
}

/*
	Name: waitForTimeOrNotify
	Namespace: globallogic_utils
	Checksum: 0x7CC6DD55
	Offset: 0xFC0
	Size: 0x21
	Parameters: 2
	Flags: None
*/
function waitForTimeOrNotify(time, notifyname)
{
	self endon(notifyname);
	wait(time);
}

/*
	Name: waitForTimeOrNotifyNoArtillery
	Namespace: globallogic_utils
	Checksum: 0x7012A40F
	Offset: 0xFF0
	Size: 0x57
	Parameters: 2
	Flags: None
*/
function waitForTimeOrNotifyNoArtillery(time, notifyname)
{
	self endon(notifyname);
	wait(time);
	while(isdefined(level.artilleryInProgress))
	{
		/#
			Assert(level.artilleryInProgress);
		#/
		wait(0.25);
	}
}

/*
	Name: isHeadShot
	Namespace: globallogic_utils
	Checksum: 0xB2365B75
	Offset: 0x1050
	Size: 0x95
	Parameters: 4
	Flags: None
*/
function isHeadShot(weapon, sHitLoc, sMeansOfDeath, eInflictor)
{
	if(sHitLoc != "head" && sHitLoc != "helmet")
	{
		return 0;
	}
	switch(sMeansOfDeath)
	{
		case "MOD_MELEE":
		case "MOD_MELEE_ASSASSINATE":
		case "MOD_MELEE_WEAPON_BUTT":
		{
			return 0;
		}
		case "MOD_IMPACT":
		{
			if(weapon != level.weaponBallisticKnife)
			{
				return 0;
			}
		}
	}
	return 1;
}

/*
	Name: getHitLocHeight
	Namespace: globallogic_utils
	Checksum: 0x7C895ED6
	Offset: 0x10F0
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function getHitLocHeight(sHitLoc)
{
	switch(sHitLoc)
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
	Name: debugLine
	Namespace: globallogic_utils
	Checksum: 0x8DEAE826
	Offset: 0x11D0
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function debugLine(start, end)
{
	/#
		for(i = 0; i < 50; i++)
		{
			line(start, end);
			wait(0.05);
		}
	#/
}

/*
	Name: isExcluded
	Namespace: globallogic_utils
	Checksum: 0x68AB2C73
	Offset: 0x1240
	Size: 0x59
	Parameters: 2
	Flags: None
*/
function isExcluded(entity, entityList)
{
	for(index = 0; index < entityList.size; index++)
	{
		if(entity == entityList[index])
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: waitForTimeOrNotifies
	Namespace: globallogic_utils
	Checksum: 0x32D3919
	Offset: 0x12A8
	Size: 0x61
	Parameters: 1
	Flags: None
*/
function waitForTimeOrNotifies(desiredDelay)
{
	startedWaiting = GetTime();
	waitedTime = GetTime() - startedWaiting / 1000;
	if(waitedTime < desiredDelay)
	{
		wait(desiredDelay - waitedTime);
		return desiredDelay;
	}
	else
	{
		return waitedTime;
	}
}

/*
	Name: logTeamWinString
	Namespace: globallogic_utils
	Checksum: 0x4B2E0EC1
	Offset: 0x1318
	Size: 0x10B
	Parameters: 2
	Flags: None
*/
function logTeamWinString(wintype, winner)
{
	log_string = wintype;
	if(isdefined(winner))
	{
		log_string = log_string + ", win: " + winner;
	}
	foreach(team in level.teams)
	{
		log_string = log_string + ", " + team + ": " + game["teamScores"][team];
	}
	/#
		print(log_string);
	#/
}


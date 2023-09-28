#using scripts\cp\_debug_menu;
#using scripts\cp\_util;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai\systems\init;
#using scripts\shared\ai\systems\weaponlist;
#using scripts\shared\ai_puppeteer_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace debug;

/*
	Name: __init__sytem__
	Namespace: debug
	Checksum: 0x48227B8
	Offset: 0x220
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	/#
		system::register("Dev Block strings are not supported", &__init__, undefined, undefined);
	#/
}

/*
	Name: __init__
	Namespace: debug
	Checksum: 0x6A97CE95
	Offset: 0x260
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function __init__()
{
	/#
		level.animsound_hudlimit = 14;
		level.debugTeamColors = [];
		level.debugTeamColors["Dev Block strings are not supported"] = (1, 0, 0);
		level.debugTeamColors["Dev Block strings are not supported"] = (0, 1, 0);
		level.debugTeamColors["Dev Block strings are not supported"] = (1, 1, 0);
		level.debugTeamColors["Dev Block strings are not supported"] = (1, 1, 1);
		thread debugDvars();
		thread engagement_distance_debug_toggle();
		thread function_6e62d3e3();
	#/
}

/*
	Name: drawEntTag
	Namespace: debug
	Checksum: 0xBCDFA15D
	Offset: 0x320
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function drawEntTag(num)
{
	/#
		ai = GetAIArray();
		for(i = 0; i < ai.size; i++)
		{
			if(ai[i] GetEntNum() != num)
			{
				continue;
			}
			ai[i] thread dragTagUntilDeath(GetDvarString("Dev Block strings are not supported"));
		}
		/#
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		#/
	#/
}

/*
	Name: drawTag
	Namespace: debug
	Checksum: 0x59EC0D79
	Offset: 0x408
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function drawTag(tag, opcolor)
{
	/#
		org = self GetTagOrigin(tag);
		ang = self GetTagAngles(tag);
		drawArrow(org, ang, opcolor);
	#/
}

/*
	Name: drawOrgForever
	Namespace: debug
	Checksum: 0x3A943FFF
	Offset: 0x498
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function drawOrgForever(opcolor)
{
	/#
		for(;;)
		{
			drawArrow(self.origin, self.angles, opcolor);
			wait(0.05);
		}
	#/
}

/*
	Name: drawArrowForever
	Namespace: debug
	Checksum: 0x3793B79C
	Offset: 0x4E0
	Size: 0x3F
	Parameters: 2
	Flags: None
*/
function drawArrowForever(org, ang)
{
	/#
		for(;;)
		{
			drawArrow(org, ang);
			wait(0.05);
		}
	#/
}

/*
	Name: drawOriginForever
	Namespace: debug
	Checksum: 0x93399B64
	Offset: 0x528
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function drawOriginForever()
{
	/#
		for(;;)
		{
			drawArrow(self.origin, self.angles);
			wait(0.05);
		}
	#/
}

/*
	Name: drawArrow
	Namespace: debug
	Checksum: 0xC0B4A71A
	Offset: 0x568
	Size: 0x2BB
	Parameters: 3
	Flags: None
*/
function drawArrow(org, ang, opcolor)
{
	/#
		FORWARD = AnglesToForward(ang);
		forwardFar = VectorScale(FORWARD, 50);
		forwardClose = VectorScale(FORWARD, 50 * 0.8);
		right = AnglesToRight(ang);
		leftdraw = VectorScale(right, 50 * -0.2);
		rightdraw = VectorScale(right, 50 * 0.2);
		up = anglesToUp(ang);
		right = VectorScale(right, 50);
		up = VectorScale(up, 50);
		red = (0.9, 0.2, 0.2);
		green = (0.2, 0.9, 0.2);
		blue = (0.2, 0.2, 0.9);
		if(isdefined(opcolor))
		{
			red = opcolor;
			green = opcolor;
			blue = opcolor;
		}
		line(org, org + forwardFar, red, 0.9);
		line(org + forwardFar, org + forwardClose + rightdraw, red, 0.9);
		line(org + forwardFar, org + forwardClose + leftdraw, red, 0.9);
		line(org, org + right, blue, 0.9);
		line(org, org + up, green, 0.9);
	#/
}

/*
	Name: drawPlayerViewForever
	Namespace: debug
	Checksum: 0x81E515F0
	Offset: 0x830
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function drawPlayerViewForever()
{
	/#
		for(;;)
		{
			drawArrow(level.player.origin, level.player getPlayerAngles(), (1, 1, 1));
			wait(0.05);
		}
	#/
}

/*
	Name: drawTagForever
	Namespace: debug
	Checksum: 0xFF551FF8
	Offset: 0x888
	Size: 0x47
	Parameters: 2
	Flags: None
*/
function drawTagForever(tag, opcolor)
{
	/#
		self endon("death");
		for(;;)
		{
			drawTag(tag, opcolor);
			wait(0.05);
		}
	#/
}

/*
	Name: dragTagUntilDeath
	Namespace: debug
	Checksum: 0xF5055DBA
	Offset: 0x8D8
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function dragTagUntilDeath(tag)
{
	/#
		while(!isdefined(self.origin))
		{
			break;
			drawTag(tag);
			wait(0.05);
		}
	#/
}

/*
	Name: viewTag
	Namespace: debug
	Checksum: 0xAE1589C0
	Offset: 0x920
	Size: 0x10D
	Parameters: 2
	Flags: None
*/
function viewTag(type, tag)
{
	/#
		if(type == "Dev Block strings are not supported")
		{
			ai = GetAIArray();
			for(i = 0; i < ai.size; i++)
			{
				ai[i] drawTag(tag);
			}
			break;
		}
		vehicle = GetEntArray("Dev Block strings are not supported", "Dev Block strings are not supported");
		for(i = 0; i < vehicle.size; i++)
		{
			vehicle[i] drawTag(tag);
		}
	#/
}

/*
	Name: removeActiveSpawner
	Namespace: debug
	Checksum: 0xFE7DB7D3
	Offset: 0xA38
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function removeActiveSpawner(spawner)
{
	/#
		newSpawners = [];
		for(p = 0; p < level.activeNodes.size; p++)
		{
			if(level.activeNodes[p] == spawner)
			{
				continue;
			}
			newSpawners[newSpawners.size] = level.activeNodes[p];
		}
		level.activeNodes = newSpawners;
	#/
}

/*
	Name: createLine
	Namespace: debug
	Checksum: 0xEBD5B11B
	Offset: 0xAD0
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function createLine(org)
{
	/#
		for(;;)
		{
			line(org + VectorScale((0, 0, 1), 35), org, (0.2, 0.5, 0.8), 0.5);
			wait(0.05);
		}
	#/
}

/*
	Name: createLineConstantly
	Namespace: debug
	Checksum: 0xA2078325
	Offset: 0xB40
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function createLineConstantly(ent)
{
	/#
		org = undefined;
		while(isalive(ent))
		{
			org = ent.origin;
			wait(0.05);
		}
		for(;;)
		{
			line(org + VectorScale((0, 0, 1), 35), org, (1, 0.2, 0.1), 0.5);
			wait(0.05);
		}
	#/
}

/*
	Name: debugMisstime
	Namespace: debug
	Checksum: 0x988EE688
	Offset: 0xBF0
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function debugMisstime()
{
	/#
		self notify("stopdebugmisstime");
		self endon("stopdebugmisstime");
		self endon("death");
		while(self.a.missTime <= 0)
		{
			print3d(self GetTagOrigin("Dev Block strings are not supported") + VectorScale((0, 0, 1), 15), "Dev Block strings are not supported", (0.3, 1, 1), 1);
			continue;
			print3d(self GetTagOrigin("Dev Block strings are not supported") + VectorScale((0, 0, 1), 15), self.a.missTime / 20, (0.3, 1, 1), 1);
			wait(0.05);
		}
	#/
}

/*
	Name: debugMisstimeOff
	Namespace: debug
	Checksum: 0x6B45A073
	Offset: 0xD10
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function debugMisstimeOff()
{
	/#
		self notify("stopdebugmisstime");
	#/
}

/*
	Name: setEmptyDvar
	Namespace: debug
	Checksum: 0xE3C73AC7
	Offset: 0xD30
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function setEmptyDvar(dvar, setting)
{
	/#
		/#
			if(GetDvarString(dvar) == "Dev Block strings are not supported")
			{
				SetDvar(dvar, setting);
			}
		#/
	#/
}

/*
	Name: debugJump
	Namespace: debug
	Checksum: 0x6F6D57C1
	Offset: 0xD98
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function debugJump(num)
{
	/#
		ai = GetAIArray();
		for(i = 0; i < ai.size; i++)
		{
			if(ai[i] GetEntNum() != num)
			{
				continue;
			}
			players = GetPlayers();
			line(players[0].origin, ai[i].origin, (0.2, 0.3, 1));
			return;
		}
	#/
}

/*
	Name: debugDvars
	Namespace: debug
	Checksum: 0x63A43B57
	Offset: 0xE90
	Size: 0x1327
	Parameters: 0
	Flags: None
*/
function debugDvars()
{
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		setEmptyDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		level.debug_badpath = 0;
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		for(i = 1; i <= level.animsound_hudlimit; i++)
		{
			if(GetDvarString("Dev Block strings are not supported" + i) == "Dev Block strings are not supported")
			{
				SetDvar("Dev Block strings are not supported" + i, "Dev Block strings are not supported");
			}
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		level.last_threat_debug = -23430;
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		waittillframeend;
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		noAnimscripts = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
		while(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			debugJump(GetDvarString("Dev Block strings are not supported"));
			if(GetDvarInt("Dev Block strings are not supported") == 1)
			{
				level thread function_2ceda325();
			}
			if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread viewTag("Dev Block strings are not supported", GetDvarString("Dev Block strings are not supported"));
				if(GetDvarString("Dev Block strings are not supported") > 0)
				{
					thread drawEntTag(GetDvarString("Dev Block strings are not supported"));
				}
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				level thread debug_goalradius();
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				level thread debug_maxvisibledist();
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				level thread debug_health();
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				level thread debug_engagedist();
			}
			if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread viewTag("Dev Block strings are not supported", GetDvarString("Dev Block strings are not supported"));
			}
			thread debug_animSound();
			if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread debug_animSoundTagSelected();
			}
			for(i = 1; i <= level.animsound_hudlimit; i++)
			{
				if(GetDvarString("Dev Block strings are not supported" + i) != "Dev Block strings are not supported")
				{
					thread debug_animSoundTag(i);
				}
			}
			if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread debug_animSoundSave();
			}
			if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread debug_nuke();
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				Array::thread_all(GetAIArray(), &debugMisstime);
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				Array::thread_all(GetAIArray(), &debugMisstimeOff);
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				thread deathspawnerPreview();
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				players = GetPlayers();
				for(i = 0; i < players.size; i++)
				{
					players[i] DoDamage(50, (324234, 3423423, 2323));
				}
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				players = GetPlayers();
				for(i = 0; i < players.size; i++)
				{
					players[i] DoDamage(50, (324234, 3423423, 2323));
				}
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				thread fogcheck();
			}
			if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported" && GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				debugThreat();
			}
			level.debug_badpath = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
			if(!noAnimscripts && GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				noAnimscripts = 1;
			}
			if(noAnimscripts && GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				anim.defaultException = &util::empty;
				anim notify("new exceptions");
				noAnimscripts = 0;
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				if(!isdefined(level.traceStart))
				{
					thread showDebugTrace();
				}
				players = GetPlayers();
				level.traceStart = players[0] GetEye();
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported" && (!isdefined(level.spawn_anywhere_active) || level.spawn_anywhere_active == 0))
			{
				level.spawn_anywhere_active = 1;
				thread dynamic_ai_spawner();
			}
			else if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported" && isdefined(level.spawn_anywhere_active) && level.spawn_anywhere_active == 1)
			{
				level.spawn_anywhere_active = 0;
				level notify("kill dynamic spawning");
			}
			function_922b5110();
			wait(0.05);
		}
	#/
}

/*
	Name: function_922b5110
	Namespace: debug
	Checksum: 0xF64BC17F
	Offset: 0x21C0
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_922b5110()
{
	/#
		var_117f1d5a = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
		if(!var_117f1d5a)
		{
			return;
		}
		var_140e9c8f = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
		var_4aa508b3 = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
		ais = GetActorArray();
		foreach(ai in ais)
		{
			if(var_140e9c8f)
			{
				ai.var_52229333 = 1;
			}
			else
			{
				ai.var_52229333 = 0;
			}
			if(var_4aa508b3)
			{
				ai LookAtEntity(level.players[0]);
				continue;
			}
			ai LookAtEntity();
		}
	#/
}

/*
	Name: showDebugTrace
	Namespace: debug
	Checksum: 0xE4E1AA1A
	Offset: 0x2370
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function showDebugTrace()
{
	/#
		startOverride = undefined;
		endOverride = undefined;
		startOverride = (15.1859, -12.2822, 4.071);
		endOverride = (947.2, -10918, 64.9514);
		/#
			Assert(!isdefined(level.traceEnd));
		#/
		for(;;)
		{
			players = GetPlayers();
			wait(0.05);
			start = startOverride;
			end = endOverride;
			if(!isdefined(startOverride))
			{
				start = level.traceStart;
			}
			if(!isdefined(endOverride))
			{
				end = players[0] GetEye();
			}
			trace = bullettrace(start, end, 0, undefined);
			line(start, trace["Dev Block strings are not supported"], (0.9, 0.5, 0.8), 0.5);
		}
	#/
}

/*
	Name: hatModel
	Namespace: debug
	Checksum: 0x1E358FF9
	Offset: 0x24F8
	Size: 0x1DD
	Parameters: 0
	Flags: None
*/
function hatModel()
{
	/#
		while(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			return;
			noHat = [];
			ai = GetAIArray();
			for(i = 0; i < ai.size; i++)
			{
				if(isdefined(ai[i].hatModel))
				{
					continue;
				}
				alreadyKnown = 0;
				for(p = 0; p < noHat.size; p++)
				{
					if(noHat[p] != ai[i].classname)
					{
						continue;
					}
					alreadyKnown = 1;
					break;
				}
				if(!alreadyKnown)
				{
					noHat[noHat.size] = ai[i].classname;
				}
			}
			if(noHat.size)
			{
				println("Dev Block strings are not supported");
				println("Dev Block strings are not supported");
				for(i = 0; i < noHat.size; i++)
				{
					println("Dev Block strings are not supported", noHat[i]);
				}
				println("Dev Block strings are not supported");
			}
			wait(15);
		}
	#/
}

/*
	Name: debug_nuke
	Namespace: debug
	Checksum: 0x5D08F0E2
	Offset: 0x26E0
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function debug_nuke()
{
	/#
		players = GetPlayers();
		player = players[0];
		dvar = GetDvarString("Dev Block strings are not supported");
		if(dvar == "Dev Block strings are not supported")
		{
			ai = GetAITeamArray("Dev Block strings are not supported", "Dev Block strings are not supported");
			for(i = 0; i < ai.size; i++)
			{
				Ignore = 0;
				classname = ai[i].classname;
				if(isdefined(classname) && (IsSubStr(classname, "Dev Block strings are not supported") || IsSubStr(classname, "Dev Block strings are not supported") || IsSubStr(classname, "Dev Block strings are not supported")))
				{
					Ignore = 1;
				}
				if(!Ignore)
				{
					ai[i] DoDamage(ai[i].health, (0, 0, 0), player);
				}
			}
			break;
		}
		if(dvar == "Dev Block strings are not supported")
		{
			ai = GetAITeamArray("Dev Block strings are not supported");
			for(i = 0; i < ai.size; i++)
			{
				ai[i] DoDamage(ai[i].health, (0, 0, 0), player);
			}
			break;
		}
		if(dvar == "Dev Block strings are not supported")
		{
			ai = GetAISpeciesArray("Dev Block strings are not supported", "Dev Block strings are not supported");
			for(i = 0; i < ai.size; i++)
			{
				ai[i] DoDamage(ai[i].health, (0, 0, 0), player);
			}
		}
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: debug_missTime
	Namespace: debug
	Checksum: 0x39FFB43E
	Offset: 0x29E0
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function debug_missTime()
{
	/#
	#/
}

/*
	Name: freePlayer
	Namespace: debug
	Checksum: 0xD558006
	Offset: 0x29F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function freePlayer()
{
	/#
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: deathspawnerPreview
	Namespace: debug
	Checksum: 0xFBDAF281
	Offset: 0x2A28
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function deathspawnerPreview()
{
	/#
		waittillframeend;
		for(i = 0; i < 50; i++)
		{
			if(!isdefined(level.deathspawnerents[i]))
			{
				break;
			}
			Array = level.deathspawnerents[i];
			for(p = 0; p < Array.size; p++)
			{
				ent = Array[p];
				if(isdefined(ent.truecount))
				{
					print3d(ent.origin, i + "Dev Block strings are not supported" + ent.truecount, (0, 0.8, 0.6), 5);
					continue;
				}
				print3d(ent.origin, i + "Dev Block strings are not supported" + "Dev Block strings are not supported", (0, 0.8, 0.6), 5);
			}
		}
	#/
}

/*
	Name: getchains
	Namespace: debug
	Checksum: 0xDACD9543
	Offset: 0x2B90
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function getchains()
{
	/#
		chainarray = [];
		chainarray = GetEntArray("Dev Block strings are not supported", "Dev Block strings are not supported");
		Array = [];
		for(i = 0; i < chainarray.size; i++)
		{
			Array[i] = chainarray[i] getchain();
		}
		return Array;
	#/
}

/*
	Name: getchain
	Namespace: debug
	Checksum: 0xB640BE75
	Offset: 0x2C40
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function getchain()
{
	/#
		Array = [];
		ent = self;
		while(isdefined(ent))
		{
			Array[Array.size] = ent;
			if(!isdefined(ent) || !isdefined(ent.target))
			{
				break;
			}
			ent = GetEnt(ent.target, "Dev Block strings are not supported");
			if(isdefined(ent) && ent == Array[0])
			{
				Array[Array.size] = ent;
				break;
			}
		}
		originarray = [];
		for(i = 0; i < Array.size; i++)
		{
			originarray[i] = Array[i].origin;
		}
		return originarray;
	#/
}

/*
	Name: vecscale
	Namespace: debug
	Checksum: 0x63961390
	Offset: 0x2D70
	Size: 0x49
	Parameters: 2
	Flags: None
*/
function vecscale(vec, scalar)
{
	/#
		return (vec[0] * scalar, vec[1] * scalar, vec[2] * scalar);
	#/
}

/*
	Name: islookingatorigin
	Namespace: debug
	Checksum: 0x9BCC0140
	Offset: 0x2DC8
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function islookingatorigin(origin)
{
	/#
		normalvec = VectorNormalize(origin - self GetShootAtPos());
		veccomp = VectorNormalize(origin - VectorScale((0, 0, 1), 24) - self GetShootAtPos());
		insidedot = VectorDot(normalvec, veccomp);
		anglevec = AnglesToForward(self getPlayerAngles());
		VectorDot = VectorDot(anglevec, normalvec);
		if(VectorDot > insidedot)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	#/
}

/*
	Name: fogcheck
	Namespace: debug
	Checksum: 0xF53F8B38
	Offset: 0x2F00
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function fogcheck()
{
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		close = GetDvarInt("Dev Block strings are not supported");
		far = GetDvarInt("Dev Block strings are not supported");
		setExpFog(close, far, 1, 1, 1, 0);
	#/
}

/*
	Name: debugThreat
	Namespace: debug
	Checksum: 0xE53222EC
	Offset: 0x3020
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function debugThreat()
{
	/#
		level.last_threat_debug = GetTime();
		thread debugThreatCalc();
	#/
}

/*
	Name: debugThreatCalc
	Namespace: debug
	Checksum: 0x2411F664
	Offset: 0x3050
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function debugThreatCalc()
{
	/#
		ai = GetAIArray();
		entnum = GetDvarString("Dev Block strings are not supported");
		entity = undefined;
		players = GetPlayers();
		if(entnum == 0)
		{
			entity = players[0];
			break;
		}
		for(i = 0; i < ai.size; i++)
		{
			if(entnum != ai[i] GetEntNum())
			{
				continue;
			}
			entity = ai[i];
			break;
		}
		if(!isalive(entity))
		{
			return;
		}
		entityGroup = entity GetThreatBiasGroup();
		Array::thread_all(ai, &displayThreat, entity, entityGroup);
		players[0] thread displayThreat(entity, entityGroup);
	#/
}

/*
	Name: displayThreat
	Namespace: debug
	Checksum: 0x4B06F516
	Offset: 0x31E8
	Size: 0x3CD
	Parameters: 2
	Flags: None
*/
function displayThreat(entity, entityGroup)
{
	/#
		self endon("death");
		if(self.team == entity.team)
		{
			return;
		}
		selfthreat = 0;
		selfthreat = selfthreat + self.threatbias;
		threat = 0;
		threat = threat + entity.threatbias;
		myGroup = undefined;
		if(isdefined(entityGroup))
		{
			myGroup = self GetThreatBiasGroup();
			if(isdefined(myGroup))
			{
				threat = threat + GetThreatBias(entityGroup, myGroup);
				selfthreat = selfthreat + GetThreatBias(myGroup, entityGroup);
			}
		}
		if(entity.ignoreme || threat < -900000)
		{
			threat = "Dev Block strings are not supported";
		}
		if(self.ignoreme || selfthreat < -900000)
		{
			selfthreat = "Dev Block strings are not supported";
		}
		players = GetPlayers();
		col = (1, 0.5, 0.2);
		col2 = (0.2, 0.5, 1);
		pacifist = self != players[0] && self.pacifist;
		for(i = 0; i <= 20; i++)
		{
			print3d(self.origin + VectorScale((0, 0, 1), 65), "Dev Block strings are not supported", col, 3);
			print3d(self.origin + VectorScale((0, 0, 1), 50), threat, col, 5);
			if(isdefined(entityGroup))
			{
				print3d(self.origin + VectorScale((0, 0, 1), 35), entityGroup, col, 2);
			}
			print3d(self.origin + VectorScale((0, 0, 1), 15), "Dev Block strings are not supported", col2, 3);
			print3d(self.origin + (0, 0, 0), selfthreat, col2, 5);
			if(isdefined(myGroup))
			{
				print3d(self.origin + VectorScale((0, 0, -1), 15), myGroup, col2, 2);
			}
			if(pacifist)
			{
				print3d(self.origin + VectorScale((0, 0, 1), 25), "Dev Block strings are not supported", col2, 5);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: init_animSounds
	Namespace: debug
	Checksum: 0x311D95C7
	Offset: 0x35C0
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function init_animSounds()
{
	/#
		level.animsounds = [];
		level.animSound_aliases = [];
		waittillframeend;
		waittillframeend;
		animnames = getArrayKeys(level.scr_notetrack);
		for(i = 0; i < animnames.size; i++)
		{
			init_notetracks_for_animname(animnames[i]);
		}
		animnames = getArrayKeys(level.scr_animSound);
		for(i = 0; i < animnames.size; i++)
		{
			init_animSounds_for_animname(animnames[i]);
		}
	#/
}

/*
	Name: init_notetracks_for_animname
	Namespace: debug
	Checksum: 0x1F1A8413
	Offset: 0x36B0
	Size: 0x16D
	Parameters: 1
	Flags: None
*/
function init_notetracks_for_animname(animName)
{
	/#
		notetracks = getArrayKeys(level.scr_notetrack[animName]);
		for(i = 0; i < notetracks.size; i++)
		{
			soundAlias = level.scr_notetrack[animName][i]["Dev Block strings are not supported"];
			if(!isdefined(soundAlias))
			{
				continue;
			}
			anime = level.scr_notetrack[animName][i]["Dev Block strings are not supported"];
			Notetrack = level.scr_notetrack[animName][i]["Dev Block strings are not supported"];
			level.animSound_aliases[animName][anime][Notetrack]["Dev Block strings are not supported"] = soundAlias;
			if(isdefined(level.scr_notetrack[animName][i]["Dev Block strings are not supported"]))
			{
				level.animSound_aliases[animName][anime][Notetrack]["Dev Block strings are not supported"] = 1;
			}
		}
	#/
}

/*
	Name: init_animSounds_for_animname
	Namespace: debug
	Checksum: 0x741F5161
	Offset: 0x3828
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function init_animSounds_for_animname(animName)
{
	/#
		animes = getArrayKeys(level.scr_animSound[animName]);
		for(i = 0; i < animes.size; i++)
		{
			anime = animes[i];
			soundAlias = level.scr_animSound[animName][anime];
			level.animSound_aliases[animName][anime]["Dev Block strings are not supported" + anime]["Dev Block strings are not supported"] = soundAlias;
			level.animSound_aliases[animName][anime]["Dev Block strings are not supported" + anime]["Dev Block strings are not supported"] = 1;
		}
	#/
}

/*
	Name: add_hud_line
	Namespace: debug
	Checksum: 0x33A0EFE9
	Offset: 0x3938
	Size: 0xE7
	Parameters: 3
	Flags: None
*/
function add_hud_line(x, y, msg)
{
	/#
		hudelm = NewHudElem();
		hudelm.alignX = "Dev Block strings are not supported";
		hudelm.alignY = "Dev Block strings are not supported";
		hudelm.x = x;
		hudelm.y = y;
		hudelm.alpha = 1;
		hudelm.fontscale = 1;
		hudelm.label = msg;
		level.animsound_hud_extralines[level.animsound_hud_extralines.size] = hudelm;
		return hudelm;
	#/
}

/*
	Name: debug_animSound
	Namespace: debug
	Checksum: 0x9A542A82
	Offset: 0x3A28
	Size: 0x96B
	Parameters: 0
	Flags: None
*/
function debug_animSound()
{
	/#
		enabled = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
		if(!isdefined(level.animsound_hud))
		{
			if(!enabled)
			{
				return;
			}
			level.animsound_selected = 0;
			level.animsound_input = "Dev Block strings are not supported";
			level.animsound_hud = [];
			level.animsound_hud_timer = [];
			level.animsound_hud_alias = [];
			level.animsound_hud_extralines = [];
			level.animsound_locked = 0;
			level.animsound_locked_pressed = 0;
			level.animsound_hud_animname = add_hud_line(-30, 180, "Dev Block strings are not supported");
			level.animsound_hud_anime = add_hud_line(100, 180, "Dev Block strings are not supported");
			add_hud_line(10, 190, "Dev Block strings are not supported");
			add_hud_line(-30, 190, "Dev Block strings are not supported");
			add_hud_line(-30, 160, "Dev Block strings are not supported");
			add_hud_line(-30, 150, "Dev Block strings are not supported");
			add_hud_line(-30, 140, "Dev Block strings are not supported");
			level.animsound_hud_locked = add_hud_line(-30, 170, "Dev Block strings are not supported");
			level.animsound_hud_locked.alpha = 0;
			for(i = 0; i < level.animsound_hudlimit; i++)
			{
				hudelm = NewHudElem();
				hudelm.alignX = "Dev Block strings are not supported";
				hudelm.alignY = "Dev Block strings are not supported";
				hudelm.x = 10;
				hudelm.y = 200 + i * 10;
				hudelm.alpha = 1;
				hudelm.fontscale = 1;
				hudelm.label = "Dev Block strings are not supported";
				level.animsound_hud[level.animsound_hud.size] = hudelm;
				hudelm = NewHudElem();
				hudelm.alignX = "Dev Block strings are not supported";
				hudelm.alignY = "Dev Block strings are not supported";
				hudelm.x = -10;
				hudelm.y = 200 + i * 10;
				hudelm.alpha = 1;
				hudelm.fontscale = 1;
				hudelm.label = "Dev Block strings are not supported";
				level.animsound_hud_timer[level.animsound_hud_timer.size] = hudelm;
				hudelm = NewHudElem();
				hudelm.alignX = "Dev Block strings are not supported";
				hudelm.alignY = "Dev Block strings are not supported";
				hudelm.x = 210;
				hudelm.y = 200 + i * 10;
				hudelm.alpha = 1;
				hudelm.fontscale = 1;
				hudelm.label = "Dev Block strings are not supported";
				level.animsound_hud_alias[level.animsound_hud_alias.size] = hudelm;
			}
			level.animsound_hud[0].color = (1, 1, 0);
			level.animsound_hud_timer[0].color = (1, 1, 0);
		}
		else if(!enabled)
		{
			for(i = 0; i < level.animsound_hudlimit; i++)
			{
				level.animsound_hud[i] destroy();
				level.animsound_hud_timer[i] destroy();
				level.animsound_hud_alias[i] destroy();
			}
			for(i = 0; i < level.animsound_hud_extralines.size; i++)
			{
				level.animsound_hud_extralines[i] destroy();
			}
			level.animsound_hud = undefined;
			level.animsound_hud_timer = undefined;
			level.animsound_hud_alias = undefined;
			level.animsound_hud_extralines = undefined;
			level.animsounds = undefined;
			return;
		}
		if(!isdefined(level.animsound_tagged))
		{
			level.animsound_locked = 0;
		}
		if(level.animsound_locked)
		{
			level.animsound_hud_locked.alpha = 1;
		}
		else
		{
			level.animsound_hud_locked.alpha = 0;
		}
		if(!isdefined(level.animsounds))
		{
			init_animSounds();
		}
		level.animSounds_thisframe = [];
		ArrayRemoveValue(level.animsounds, undefined);
		Array::thread_all(level.animsounds, &display_animSound);
		players = GetPlayers();
		if(level.animsound_locked)
		{
			for(i = 0; i < level.animSounds_thisframe.size; i++)
			{
				animSound = level.animSounds_thisframe[i];
				animSound.animsound_color = VectorScale((1, 1, 1), 0.5);
			}
			break;
		}
		if(players.size > 0)
		{
			dot = 0.85;
			FORWARD = AnglesToForward(players[0] getPlayerAngles());
			for(i = 0; i < level.animSounds_thisframe.size; i++)
			{
				animSound = level.animSounds_thisframe[i];
				animSound.animsound_color = (0.25, 1, 0.5);
				difference = VectorNormalize(animSound.origin + VectorScale((0, 0, 1), 40) - players[0].origin + VectorScale((0, 0, 1), 55));
				newdot = VectorDot(FORWARD, difference);
				if(newdot < dot)
				{
					continue;
				}
				dot = newdot;
				level.animsound_tagged = animSound;
			}
		}
		else if(isdefined(level.animsound_tagged))
		{
			level.animsound_tagged.animsound_color = (1, 1, 0);
		}
		is_tagged = isdefined(level.animsound_tagged);
		for(i = 0; i < level.animSounds_thisframe.size; i++)
		{
			animSound = level.animSounds_thisframe[i];
			msg = "Dev Block strings are not supported";
			if(level.animsound_locked)
			{
				msg = "Dev Block strings are not supported";
			}
			print3d(animSound.origin + VectorScale((0, 0, 1), 40), msg + animSound.animsounds.size, animSound.animsound_color, 1, 1);
		}
		if(is_tagged)
		{
			draw_animsounds_in_hud();
		}
	#/
}

/*
	Name: draw_animsounds_in_hud
	Namespace: debug
	Checksum: 0x62FFED0B
	Offset: 0x43A0
	Size: 0x6EB
	Parameters: 0
	Flags: None
*/
function draw_animsounds_in_hud()
{
	/#
		guy = level.animsound_tagged;
		animsounds = guy.animsounds;
		animName = "Dev Block strings are not supported";
		if(isdefined(guy.animName))
		{
			animName = guy.animName;
		}
		level.animsound_hud_animname.label = "Dev Block strings are not supported" + animName;
		players = GetPlayers();
		if(players[0] buttonpressed("Dev Block strings are not supported"))
		{
			if(!level.animsound_locked_pressed)
			{
				level.animsound_locked = !level.animsound_locked;
				level.animsound_locked_pressed = 1;
			}
		}
		else
		{
			level.animsound_locked_pressed = 0;
		}
		if(players[0] buttonpressed("Dev Block strings are not supported"))
		{
			if(level.animsound_input != "Dev Block strings are not supported")
			{
				level.animsound_selected--;
			}
			level.animsound_input = "Dev Block strings are not supported";
		}
		else if(players[0] buttonpressed("Dev Block strings are not supported"))
		{
			if(level.animsound_input != "Dev Block strings are not supported")
			{
				level.animsound_selected++;
			}
			level.animsound_input = "Dev Block strings are not supported";
		}
		else
		{
			level.animsound_input = "Dev Block strings are not supported";
		}
		for(i = 0; i < level.animsound_hudlimit; i++)
		{
			hudelm = level.animsound_hud[i];
			hudelm.label = "Dev Block strings are not supported";
			hudelm.color = (1, 1, 1);
			hudelm = level.animsound_hud_timer[i];
			hudelm.label = "Dev Block strings are not supported";
			hudelm.color = (1, 1, 1);
			hudelm = level.animsound_hud_alias[i];
			hudelm.label = "Dev Block strings are not supported";
			hudelm.color = (1, 1, 1);
		}
		keys = getArrayKeys(animsounds);
		highest = -1;
		for(i = 0; i < keys.size; i++)
		{
			if(keys[i] > highest)
			{
				highest = keys[i];
			}
		}
		if(highest == -1)
		{
			return;
		}
		if(level.animsound_selected > highest)
		{
			level.animsound_selected = highest;
		}
		if(level.animsound_selected < 0)
		{
			level.animsound_selected = 0;
		}
		while(isdefined(animsounds[level.animsound_selected]))
		{
			break;
			level.animsound_selected--;
			if(level.animsound_selected < 0)
			{
				level.animsound_selected = highest;
			}
		}
		level.animsound_hud_anime.label = "Dev Block strings are not supported" + animsounds[level.animsound_selected].anime;
		level.animsound_hud[level.animsound_selected].color = (1, 1, 0);
		level.animsound_hud_timer[level.animsound_selected].color = (1, 1, 0);
		level.animsound_hud_alias[level.animsound_selected].color = (1, 1, 0);
		time = GetTime();
		for(i = 0; i < keys.size; i++)
		{
			key = keys[i];
			animSound = animsounds[key];
			hudelm = level.animsound_hud[key];
			soundAlias = get_alias_from_stored(animSound);
			hudelm.label = key + 1 + "Dev Block strings are not supported" + animSound.Notetrack;
			hudelm = level.animsound_hud_timer[key];
			hudelm.label = Int(time - animSound.end_time - 60000 * 0.001);
			if(isdefined(soundAlias))
			{
				hudelm = level.animsound_hud_alias[key];
				hudelm.label = soundAlias;
				if(!is_from_animsound(animSound.animName, animSound.anime, animSound.Notetrack))
				{
					hudelm.color = VectorScale((1, 1, 1), 0.7);
				}
			}
		}
		players = GetPlayers();
		if(players[0] buttonpressed("Dev Block strings are not supported"))
		{
			animSound = animsounds[level.animsound_selected];
			soundAlias = get_alias_from_stored(animSound);
			if(!isdefined(soundAlias))
			{
				return;
			}
			if(!is_from_animsound(animSound.animName, animSound.anime, animSound.Notetrack))
			{
				return;
			}
			level.animSound_aliases[animSound.animName][animSound.anime][animSound.Notetrack] = undefined;
			debug_animSoundSave();
		}
	#/
}

/*
	Name: get_alias_from_stored
	Namespace: debug
	Checksum: 0xE89DA0A4
	Offset: 0x4A98
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function get_alias_from_stored(animSound)
{
	/#
		if(!isdefined(level.animSound_aliases[animSound.animName]))
		{
			return;
		}
		if(!isdefined(level.animSound_aliases[animSound.animName][animSound.anime]))
		{
			return;
		}
		if(!isdefined(level.animSound_aliases[animSound.animName][animSound.anime][animSound.Notetrack]))
		{
			return;
		}
		return level.animSound_aliases[animSound.animName][animSound.anime][animSound.Notetrack]["Dev Block strings are not supported"];
	#/
}

/*
	Name: is_from_animsound
	Namespace: debug
	Checksum: 0x64BF1628
	Offset: 0x4B78
	Size: 0x45
	Parameters: 3
	Flags: None
*/
function is_from_animsound(animName, anime, Notetrack)
{
	/#
		return isdefined(level.animSound_aliases[animName][anime][Notetrack]["Dev Block strings are not supported"]);
	#/
}

/*
	Name: display_animSound
	Namespace: debug
	Checksum: 0x200114FD
	Offset: 0x4BC8
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function display_animSound()
{
	/#
		players = GetPlayers();
		if(Distance(players[0].origin, self.origin) > 1500)
		{
			return;
		}
		level.animSounds_thisframe[level.animSounds_thisframe.size] = self;
	#/
}

/*
	Name: debug_animSoundTag
	Namespace: debug
	Checksum: 0x50D81A90
	Offset: 0x4C48
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function debug_animSoundTag(tagnum)
{
	/#
		tag = GetDvarString("Dev Block strings are not supported" + tagnum);
		if(tag == "Dev Block strings are not supported")
		{
			IPrintLnBold("Dev Block strings are not supported");
			return;
		}
		tag_sound(tag, tagnum - 1);
		SetDvar("Dev Block strings are not supported" + tagnum, "Dev Block strings are not supported");
	#/
}

/*
	Name: debug_animSoundTagSelected
	Namespace: debug
	Checksum: 0x711905BE
	Offset: 0x4D08
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function debug_animSoundTagSelected()
{
	/#
		tag = GetDvarString("Dev Block strings are not supported");
		if(tag == "Dev Block strings are not supported")
		{
			IPrintLnBold("Dev Block strings are not supported");
			return;
		}
		tag_sound(tag, level.animsound_selected);
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: tag_sound
	Namespace: debug
	Checksum: 0x71EC5DA1
	Offset: 0x4DB0
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function tag_sound(tag, tagnum)
{
	/#
		if(!isdefined(level.animsound_tagged))
		{
			return;
		}
		if(!isdefined(level.animsound_tagged.animsounds[tagnum]))
		{
			return;
		}
		animSound = level.animsound_tagged.animsounds[tagnum];
		soundAlias = get_alias_from_stored(animSound);
		if(!isdefined(soundAlias) || is_from_animsound(animSound.animName, animSound.anime, animSound.Notetrack))
		{
			level.animSound_aliases[animSound.animName][animSound.anime][animSound.Notetrack]["Dev Block strings are not supported"] = tag;
			level.animSound_aliases[animSound.animName][animSound.anime][animSound.Notetrack]["Dev Block strings are not supported"] = 1;
			debug_animSoundSave();
		}
	#/
}

/*
	Name: debug_animSoundSave
	Namespace: debug
	Checksum: 0x591A8F25
	Offset: 0x4F20
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function debug_animSoundSave()
{
	/#
		filename = "Dev Block strings are not supported" + level.script + "Dev Block strings are not supported";
		file = openfile(filename, "Dev Block strings are not supported");
		if(file == -1)
		{
			IPrintLnBold("Dev Block strings are not supported" + filename + "Dev Block strings are not supported");
			return;
		}
		IPrintLnBold("Dev Block strings are not supported" + filename);
		print_aliases_to_file(file);
		saved = closefile(file);
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: print_aliases_to_file
	Namespace: debug
	Checksum: 0x43768076
	Offset: 0x5038
	Size: 0x4B3
	Parameters: 1
	Flags: None
*/
function print_aliases_to_file(file)
{
	/#
		tab = "Dev Block strings are not supported";
		fprintln(file, "Dev Block strings are not supported");
		fprintln(file, "Dev Block strings are not supported");
		fprintln(file, "Dev Block strings are not supported");
		fprintln(file, tab + "Dev Block strings are not supported");
		fprintln(file, tab + "Dev Block strings are not supported");
		fprintln(file, "Dev Block strings are not supported");
		fprintln(file, "Dev Block strings are not supported");
		fprintln(file, "Dev Block strings are not supported");
		fprintln(file, "Dev Block strings are not supported");
		fprintln(file, tab + "Dev Block strings are not supported");
		animnames = getArrayKeys(level.animSound_aliases);
		for(i = 0; i < animnames.size; i++)
		{
			animes = getArrayKeys(level.animSound_aliases[animnames[i]]);
			for(p = 0; p < animes.size; p++)
			{
				anime = animes[p];
				notetracks = getArrayKeys(level.animSound_aliases[animnames[i]][anime]);
				for(z = 0; z < notetracks.size; z++)
				{
					Notetrack = notetracks[z];
					if(!is_from_animsound(animnames[i], anime, Notetrack))
					{
						continue;
					}
					alias = level.animSound_aliases[animnames[i]][anime][Notetrack]["Dev Block strings are not supported"];
					if(Notetrack == "Dev Block strings are not supported" + anime)
					{
						fprintln(file, tab + "Dev Block strings are not supported" + tostr(animnames[i]) + "Dev Block strings are not supported" + tostr(anime) + "Dev Block strings are not supported" + tostr(alias) + "Dev Block strings are not supported");
					}
					else
					{
						fprintln(file, tab + "Dev Block strings are not supported" + tostr(animnames[i]) + "Dev Block strings are not supported" + tostr(anime) + "Dev Block strings are not supported" + tostr(Notetrack) + "Dev Block strings are not supported" + tostr(alias) + "Dev Block strings are not supported");
					}
					println("Dev Block strings are not supported" + alias + "Dev Block strings are not supported" + Notetrack);
				}
			}
		}
		fprintln(file, "Dev Block strings are not supported");
	#/
}

/*
	Name: function_2ceda325
	Namespace: debug
	Checksum: 0xBA2242B3
	Offset: 0x54F8
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_2ceda325()
{
	/#
		SetDvar("Dev Block strings are not supported", 0);
		if(!isdefined(level.var_d4b93527) || GetDvarInt("Dev Block strings are not supported") != 1)
		{
			return;
		}
		players = GetPlayers();
		filename = "Dev Block strings are not supported" + level.savename + "Dev Block strings are not supported" + players[0].playerName + "Dev Block strings are not supported";
		/#
			file = openfile(filename, "Dev Block strings are not supported");
			if(file == -1)
			{
				IPrintLnBold("Dev Block strings are not supported" + filename + "Dev Block strings are not supported");
				return;
			}
			if(isdefined(level.var_c0e97bd))
			{
				fprintln(file, "Dev Block strings are not supported" + level.var_c0e97bd + "Dev Block strings are not supported");
			}
			else
			{
				fprintln(file, "Dev Block strings are not supported");
			}
			if(level.var_d4b93527.size <= 0)
			{
				fprintln(file, "Dev Block strings are not supported");
			}
			foreach(var_2b2af279 in level.var_d4b93527)
			{
				fprintln(file, var_2b2af279.var_af46d184 + "Dev Block strings are not supported" + var_2b2af279.var_c964043b + "Dev Block strings are not supported" + var_2b2af279.var_50b2a78e + "Dev Block strings are not supported" + var_2b2af279.var_1f8e7452);
			}
			fprintln(file, "Dev Block strings are not supported");
			IPrintLnBold("Dev Block strings are not supported" + filename);
			saved = closefile(file);
		#/
		level.var_d4b93527 = [];
	#/
}

/*
	Name: tostr
	Namespace: debug
	Checksum: 0x94437A62
	Offset: 0x57F8
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function tostr(STR)
{
	/#
		newstr = "Dev Block strings are not supported";
		for(i = 0; i < STR.size; i++)
		{
			if(STR[i] == "Dev Block strings are not supported")
			{
				newstr = newstr + "Dev Block strings are not supported";
				newstr = newstr + "Dev Block strings are not supported";
				continue;
			}
			newstr = newstr + STR[i];
		}
		newstr = newstr + "Dev Block strings are not supported";
		return newstr;
	#/
}

/*
	Name: drawDebugLineInternal
	Namespace: debug
	Checksum: 0x7EDD907C
	Offset: 0x58C0
	Size: 0x75
	Parameters: 4
	Flags: None
*/
function drawDebugLineInternal(fromPoint, toPoint, color, durationFrames)
{
	/#
		for(i = 0; i < durationFrames; i++)
		{
			line(fromPoint, toPoint, color);
			wait(0.05);
		}
	#/
}

/*
	Name: drawDebugLine
	Namespace: debug
	Checksum: 0x8C49236A
	Offset: 0x5940
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function drawDebugLine(fromPoint, toPoint, color, durationFrames)
{
	/#
		thread drawDebugLineInternal(fromPoint, toPoint, color, durationFrames);
	#/
}

/*
	Name: drawDebugEntToEntInternal
	Namespace: debug
	Checksum: 0xDAFA6D3A
	Offset: 0x5998
	Size: 0x9D
	Parameters: 4
	Flags: None
*/
function drawDebugEntToEntInternal(ent1, ent2, color, durationFrames)
{
	/#
		for(i = 0; i < durationFrames; i++)
		{
			if(!isdefined(ent1) || !isdefined(ent2))
			{
				return;
			}
			line(ent1.origin, ent2.origin, color);
			wait(0.05);
		}
	#/
}

/*
	Name: drawDebugLineEntToEnt
	Namespace: debug
	Checksum: 0x2AAA9B33
	Offset: 0x5A40
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function drawDebugLineEntToEnt(ent1, ent2, color, durationFrames)
{
	/#
		thread drawDebugEntToEntInternal(ent1, ent2, color, durationFrames);
	#/
}

/*
	Name: new_hud
	Namespace: debug
	Checksum: 0x68479A06
	Offset: 0x5A98
	Size: 0xC1
	Parameters: 5
	Flags: None
*/
function new_hud(hud_name, msg, x, y, scale)
{
	/#
		if(!isdefined(level.hud_array))
		{
			level.hud_array = [];
		}
		if(!isdefined(level.hud_array[hud_name]))
		{
			level.hud_array[hud_name] = [];
		}
		hud = debug_menu::set_hudelem(msg, x, y, scale);
		level.hud_array[hud_name][level.hud_array[hud_name].size] = hud;
		return hud;
	#/
}

/*
	Name: debug_show_viewpos
	Namespace: debug
	Checksum: 0x4D031F93
	Offset: 0x5B68
	Size: 0x533
	Parameters: 0
	Flags: None
*/
function debug_show_viewpos()
{
	/#
		hud_title = NewDebugHudElem();
		hud_title.x = 10;
		hud_title.y = 300;
		hud_title.alpha = 0;
		hud_title.alignX = "Dev Block strings are not supported";
		hud_title.fontscale = 1.2;
		hud_title setText(&"Dev Block strings are not supported");
		x_pos = hud_title.x + 50;
		hud_x = NewDebugHudElem();
		hud_x.x = x_pos;
		hud_x.y = 300;
		hud_x.alpha = 0;
		hud_x.alignX = "Dev Block strings are not supported";
		hud_x.fontscale = 1.2;
		hud_x setValue(0);
		hud_y = NewDebugHudElem();
		hud_y.x = 10;
		hud_y.y = 300;
		hud_y.alpha = 0;
		hud_y.alignX = "Dev Block strings are not supported";
		hud_y.fontscale = 1.2;
		hud_y setValue(0);
		hud_z = NewDebugHudElem();
		hud_z.x = 10;
		hud_z.y = 300;
		hud_z.alpha = 0;
		hud_z.alignX = "Dev Block strings are not supported";
		hud_z.fontscale = 1.2;
		hud_z setValue(0);
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		players = GetPlayers();
		while(1)
		{
			if(GetDvarInt("Dev Block strings are not supported") > 0)
			{
				hud_title.alpha = 1;
				hud_x.alpha = 1;
				hud_y.alpha = 1;
				hud_z.alpha = 1;
				x = players[0].origin[0];
				y = players[0].origin[1];
				z = players[0].origin[2];
				spacing1 = 2 + number_before_decimal(x) * 8 + 10;
				spacing2 = 2 + number_before_decimal(y) * 8 + 10;
				hud_y.x = x_pos + spacing1;
				hud_z.x = x_pos + spacing1 + spacing2;
				hud_x setValue(round_to(x, 100));
				hud_y setValue(round_to(y, 100));
				hud_z setValue(round_to(z, 100));
			}
			else
			{
				hud_title.alpha = 0;
				hud_x.alpha = 0;
				hud_y.alpha = 0;
				hud_z.alpha = 0;
			}
			wait(0.5);
		}
	#/
}

/*
	Name: number_before_decimal
	Namespace: debug
	Checksum: 0x83971EDF
	Offset: 0x60A8
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function number_before_decimal(num)
{
	/#
		abs_num = Abs(num);
		count = 0;
		while(1)
		{
			abs_num = abs_num * 0.1;
			count = count + 1;
			if(abs_num < 1)
			{
				return count;
			}
		}
	#/
}

/*
	Name: round_to
	Namespace: debug
	Checksum: 0x30A54370
	Offset: 0x6138
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function round_to(VAL, num)
{
	/#
		return Int(VAL * num) / num;
	#/
}

/*
	Name: set_event_printname_thread
	Namespace: debug
	Checksum: 0xA31BDEBB
	Offset: 0x6180
	Size: 0x31F
	Parameters: 2
	Flags: None
*/
function set_event_printname_thread(text, focus)
{
	/#
		level notify("stop_event_name_thread");
		level endon("stop_event_name_thread");
		if(GetDvarInt("Dev Block strings are not supported") > 0)
		{
			return;
		}
		if(!isdefined(focus))
		{
			focus = 0;
		}
		suffix = "Dev Block strings are not supported";
		if(focus)
		{
			suffix = "Dev Block strings are not supported";
		}
		SetDvar("Dev Block strings are not supported", text);
		text = "Dev Block strings are not supported" + text + suffix;
		if(!isdefined(level.event_hudelem))
		{
			hud = NewHudElem();
			hud.horzAlign = "Dev Block strings are not supported";
			hud.alignX = "Dev Block strings are not supported";
			hud.alignY = "Dev Block strings are not supported";
			hud.foreground = 1;
			hud.fontscale = 1.5;
			hud.sort = 50;
			hud.alpha = 1;
			hud.y = 15;
			level.event_hudelem = hud;
		}
		if(focus)
		{
			level.event_hudelem.color = (1, 1, 0);
		}
		else
		{
			level.event_hudelem.color = (1, 1, 1);
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		level.event_hudelem setText(text);
		enabled = 1;
		while(1)
		{
			toggle = 0;
			if(GetDvarInt("Dev Block strings are not supported") < 1)
			{
				toggle = 1;
				enabled = 0;
			}
			else if(GetDvarInt("Dev Block strings are not supported") > 0)
			{
				toggle = 1;
				enabled = 1;
			}
			if(toggle && enabled)
			{
				level.event_hudelem.alpha = 1;
			}
			else if(toggle)
			{
				level.event_hudelem.alpha = 0;
			}
			wait(0.5);
		}
	#/
}

/*
	Name: get_playerone
	Namespace: debug
	Checksum: 0xE60D16C2
	Offset: 0x64A8
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function get_playerone()
{
	/#
		return level.players[0];
	#/
}

/*
	Name: engagement_distance_debug_toggle
	Namespace: debug
	Checksum: 0xE9B3D32D
	Offset: 0x64C8
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function engagement_distance_debug_toggle()
{
	/#
		level endon("kill_engage_dist_debug_toggle_watcher");
		laststate = GetDvarInt("Dev Block strings are not supported");
		while(1)
		{
			currentState = GetDvarInt("Dev Block strings are not supported");
			if(dvar_turned_on(currentState) && !dvar_turned_on(laststate))
			{
				weapon_engage_dists_init();
				thread debug_realtime_engage_dist();
				thread debug_ai_engage_dist();
				laststate = currentState;
			}
			else if(!dvar_turned_on(currentState) && dvar_turned_on(laststate))
			{
				level notify("kill_all_engage_dist_debug");
				laststate = currentState;
			}
			wait(0.3);
		}
	#/
}

/*
	Name: dvar_turned_on
	Namespace: debug
	Checksum: 0x8DF10036
	Offset: 0x6600
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function dvar_turned_on(VAL)
{
	/#
		if(VAL <= 0)
		{
			return 0;
		}
		else
		{
			return 1;
		}
	#/
}

/*
	Name: engagement_distance_debug_init
	Namespace: debug
	Checksum: 0xD87D2C89
	Offset: 0x6638
	Size: 0x34B
	Parameters: 1
	Flags: None
*/
function engagement_distance_debug_init(player)
{
	/#
		level.realtimeEngageDist = newClientHudElem(player);
		level.realtimeEngageDist.alignX = "Dev Block strings are not supported";
		level.realtimeEngageDist.fontscale = 1.5;
		level.realtimeEngageDist.x = -50;
		level.realtimeEngageDist.y = 250;
		level.realtimeEngageDist.color = (1, 1, 1);
		level.realtimeEngageDist setText("Dev Block strings are not supported");
		xpos = 157;
		level.realtimeEngageDist_value = newClientHudElem(player);
		level.realtimeEngageDist_value.alignX = "Dev Block strings are not supported";
		level.realtimeEngageDist_value.fontscale = 1.5;
		level.realtimeEngageDist_value.x = xpos;
		level.realtimeEngageDist_value.y = 250;
		level.realtimeEngageDist_value.color = (1, 1, 1);
		level.realtimeEngageDist_value setValue(0);
		xpos = xpos + 37;
		level.realtimeEngageDist_middle = newClientHudElem(player);
		level.realtimeEngageDist_middle.alignX = "Dev Block strings are not supported";
		level.realtimeEngageDist_middle.fontscale = 1.5;
		level.realtimeEngageDist_middle.x = xpos;
		level.realtimeEngageDist_middle.y = 250;
		level.realtimeEngageDist_middle.color = (1, 1, 1);
		level.realtimeEngageDist_middle setText("Dev Block strings are not supported");
		xpos = xpos + 105;
		level.realtimeEngageDist_offvalue = newClientHudElem(player);
		level.realtimeEngageDist_offvalue.alignX = "Dev Block strings are not supported";
		level.realtimeEngageDist_offvalue.fontscale = 1.5;
		level.realtimeEngageDist_offvalue.x = xpos;
		level.realtimeEngageDist_offvalue.y = 250;
		level.realtimeEngageDist_offvalue.color = (1, 1, 1);
		level.realtimeEngageDist_offvalue setValue(0);
		hudObjArray = [];
		hudObjArray[0] = level.realtimeEngageDist;
		hudObjArray[1] = level.realtimeEngageDist_value;
		hudObjArray[2] = level.realtimeEngageDist_middle;
		hudObjArray[3] = level.realtimeEngageDist_offvalue;
		return hudObjArray;
	#/
}

/*
	Name: engage_dist_debug_hud_destroy
	Namespace: debug
	Checksum: 0x64CE37D8
	Offset: 0x6990
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function engage_dist_debug_hud_destroy(hudArray, killNotify)
{
	/#
		level waittill(killNotify);
		for(i = 0; i < hudArray.size; i++)
		{
			hudArray[i] destroy();
		}
	#/
}

/*
	Name: weapon_engage_dists_init
	Namespace: debug
	Checksum: 0x1532F400
	Offset: 0x6A00
	Size: 0x35B
	Parameters: 0
	Flags: None
*/
function weapon_engage_dists_init()
{
	/#
		level.engageDists = [];
		genericPistol = spawnstruct();
		genericPistol.engageDistMin = 125;
		genericPistol.engageDistOptimal = 400;
		genericPistol.engageDistMulligan = 100;
		genericPistol.engageDistMax = 600;
		shotty = spawnstruct();
		shotty.engageDistMin = 0;
		shotty.engageDistOptimal = 300;
		shotty.engageDistMulligan = 100;
		shotty.engageDistMax = 600;
		genericSMG = spawnstruct();
		genericSMG.engageDistMin = 100;
		genericSMG.engageDistOptimal = 500;
		genericSMG.engageDistMulligan = 150;
		genericSMG.engageDistMax = 1000;
		genericRifleSA = spawnstruct();
		genericRifleSA.engageDistMin = 325;
		genericRifleSA.engageDistOptimal = 800;
		genericRifleSA.engageDistMulligan = 300;
		genericRifleSA.engageDistMax = 1600;
		genericHMG = spawnstruct();
		genericHMG.engageDistMin = 500;
		genericHMG.engageDistOptimal = 700;
		genericHMG.engageDistMulligan = 300;
		genericHMG.engageDistMax = 1400;
		genericSniper = spawnstruct();
		genericSniper.engageDistMin = 950;
		genericSniper.engageDistOptimal = 2000;
		genericSniper.engageDistMulligan = 500;
		genericSniper.engageDistMax = 3000;
		engage_dists_add("Dev Block strings are not supported", genericPistol);
		engage_dists_add("Dev Block strings are not supported", genericSMG);
		engage_dists_add("Dev Block strings are not supported", shotty);
		engage_dists_add("Dev Block strings are not supported", genericHMG);
		engage_dists_add("Dev Block strings are not supported", genericRifleSA);
		level thread engage_dists_watcher();
	#/
}

/*
	Name: engage_dists_add
	Namespace: debug
	Checksum: 0x7B928B11
	Offset: 0x6D68
	Size: 0x29
	Parameters: 2
	Flags: None
*/
function engage_dists_add(weaponName, values)
{
	/#
		level.engageDists[weaponName] = values;
	#/
}

/*
	Name: get_engage_dists
	Namespace: debug
	Checksum: 0x56C43DE2
	Offset: 0x6DA0
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function get_engage_dists(weapon)
{
	/#
		if(isdefined(level.engageDists[weapon]))
		{
			return level.engageDists[weapon];
		}
		else
		{
			return undefined;
		}
	#/
}

/*
	Name: engage_dists_watcher
	Namespace: debug
	Checksum: 0xEB02A8AD
	Offset: 0x6DE8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function engage_dists_watcher()
{
	/#
		level endon("kill_all_engage_dist_debug");
		level endon("kill_engage_dists_watcher");
		while(1)
		{
			player = get_playerone();
			playerWeapon = player GetCurrentWeapon();
			if(!isdefined(player.lastWeapon))
			{
				player.lastWeapon = playerWeapon;
			}
			else if(player.lastWeapon == playerWeapon)
			{
				wait(0.05);
				continue;
			}
			values = get_engage_dists(playerWeapon.weapClass);
			if(isdefined(values))
			{
				level.weaponEngageDistValues = values;
			}
			else
			{
				level.weaponEngageDistValues = undefined;
			}
			player.lastWeapon = playerWeapon;
			wait(0.05);
		}
	#/
}

/*
	Name: debug_realtime_engage_dist
	Namespace: debug
	Checksum: 0x9D0F0847
	Offset: 0x6F18
	Size: 0x44F
	Parameters: 0
	Flags: None
*/
function debug_realtime_engage_dist()
{
	/#
		level endon("kill_all_engage_dist_debug");
		level endon("kill_realtime_engagement_distance_debug");
		player = get_playerone();
		hudObjArray = engagement_distance_debug_init(player);
		level thread engage_dist_debug_hud_destroy(hudObjArray, "Dev Block strings are not supported");
		level.debugRTEngageDistColor = (0, 1, 0);
		while(1)
		{
			lastTracePos = (0, 0, 0);
			direction = player getPlayerAngles();
			direction_vec = AnglesToForward(direction);
			eye = player GetEye();
			trace = bullettrace(eye, eye + VectorScale(direction_vec, 10000), 1, player);
			tracepoint = trace["Dev Block strings are not supported"];
			traceNormal = trace["Dev Block strings are not supported"];
			traceDist = Int(Distance(eye, tracepoint));
			if(tracepoint != lastTracePos)
			{
				lastTracePos = tracepoint;
				if(!isdefined(level.weaponEngageDistValues))
				{
					hudobj_changecolor(hudObjArray, (1, 1, 1));
					hudObjArray engagedist_hud_changetext("Dev Block strings are not supported", traceDist);
				}
				else
				{
					engageDistMin = level.weaponEngageDistValues.engageDistMin;
					engageDistOptimal = level.weaponEngageDistValues.engageDistOptimal;
					engageDistMulligan = level.weaponEngageDistValues.engageDistMulligan;
					engageDistMax = level.weaponEngageDistValues.engageDistMax;
					if(traceDist >= engageDistMin && traceDist <= engageDistMax)
					{
						if(traceDist >= engageDistOptimal - engageDistMulligan && traceDist <= engageDistOptimal + engageDistMulligan)
						{
							hudObjArray engagedist_hud_changetext("Dev Block strings are not supported", traceDist);
							hudobj_changecolor(hudObjArray, (0, 1, 0));
						}
						else
						{
							hudObjArray engagedist_hud_changetext("Dev Block strings are not supported", traceDist);
							hudobj_changecolor(hudObjArray, (1, 1, 0));
						}
					}
					else if(traceDist < engageDistMin)
					{
						hudobj_changecolor(hudObjArray, (1, 0, 0));
						hudObjArray engagedist_hud_changetext("Dev Block strings are not supported", traceDist);
					}
					else if(traceDist > engageDistMax)
					{
						hudobj_changecolor(hudObjArray, (1, 0, 0));
						hudObjArray engagedist_hud_changetext("Dev Block strings are not supported", traceDist);
					}
				}
			}
			thread plot_circle_fortime(1, 5, 0.05, level.debugRTEngageDistColor, tracepoint, traceNormal);
			thread plot_circle_fortime(1, 1, 0.05, level.debugRTEngageDistColor, tracepoint, traceNormal);
			wait(0.05);
		}
	#/
}

/*
	Name: hudobj_changecolor
	Namespace: debug
	Checksum: 0x2B95FE36
	Offset: 0x7370
	Size: 0x91
	Parameters: 2
	Flags: None
*/
function hudobj_changecolor(hudObjArray, newcolor)
{
	/#
		for(i = 0; i < hudObjArray.size; i++)
		{
			hudObj = hudObjArray[i];
			if(hudObj.color != newcolor)
			{
				hudObj.color = newcolor;
				level.debugRTEngageDistColor = newcolor;
			}
		}
	#/
}

/*
	Name: engagedist_hud_changetext
	Namespace: debug
	Checksum: 0xE1B5E4E9
	Offset: 0x7410
	Size: 0x2EB
	Parameters: 2
	Flags: None
*/
function engagedist_hud_changetext(engageDistType, units)
{
	/#
		if(!isdefined(level.lastDistType))
		{
			level.lastDistType = "Dev Block strings are not supported";
		}
		if(engageDistType == "Dev Block strings are not supported")
		{
			self[1] setValue(units);
			self[2] setText("Dev Block strings are not supported");
			self[3].alpha = 0;
		}
		else if(engageDistType == "Dev Block strings are not supported")
		{
			self[1] setValue(units);
			self[2] setText("Dev Block strings are not supported");
			self[3].alpha = 0;
		}
		else if(engageDistType == "Dev Block strings are not supported")
		{
			amountUnder = level.weaponEngageDistValues.engageDistMin - units;
			self[1] setValue(units);
			self[3] setValue(amountUnder);
			self[3].alpha = 1;
			if(level.lastDistType != engageDistType)
			{
				self[2] setText("Dev Block strings are not supported");
			}
		}
		else if(engageDistType == "Dev Block strings are not supported")
		{
			amountOver = units - level.weaponEngageDistValues.engageDistMax;
			self[1] setValue(units);
			self[3] setValue(amountOver);
			self[3].alpha = 1;
			if(level.lastDistType != engageDistType)
			{
				self[2] setText("Dev Block strings are not supported");
			}
		}
		else if(engageDistType == "Dev Block strings are not supported")
		{
			self[1] setValue(units);
			self[2] setText("Dev Block strings are not supported");
			self[3].alpha = 0;
		}
		level.lastDistType = engageDistType;
	#/
}

/*
	Name: debug_ai_engage_dist
	Namespace: debug
	Checksum: 0xEFD0CE04
	Offset: 0x7708
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function debug_ai_engage_dist()
{
	/#
		level endon("kill_all_engage_dist_debug");
		level endon("kill_ai_engagement_distance_debug");
		player = get_playerone();
		while(1)
		{
			axis = GetAITeamArray("Dev Block strings are not supported");
			if(isdefined(axis) && axis.size > 0)
			{
				playerEye = player GetEye();
				for(i = 0; i < axis.size; i++)
				{
					ai = axis[i];
					aiEye = ai GetEye();
					if(SightTracePassed(playerEye, aiEye, 0, player) && !isVehicle(ai))
					{
						dist = Distance(playerEye, aiEye);
						drawColor = (1, 1, 1);
						drawString = "Dev Block strings are not supported";
						engageDistMin = ai.engageMinDist;
						var_35b17bf2 = ai.engageminfalloffdist;
						var_b89cbdfc = ai.engagemaxfalloffdist;
						engageDistMax = ai.engageMaxDist;
						if(dist >= engageDistMin && dist <= engageDistMax)
						{
							drawColor = (0, 1, 0);
							drawString = "Dev Block strings are not supported";
						}
						else if(dist < engageDistMin && dist >= var_35b17bf2)
						{
							drawColor = (1, 1, 0);
							drawString = "Dev Block strings are not supported";
						}
						else if(dist > engageDistMax && dist <= var_b89cbdfc)
						{
							drawColor = (1, 1, 0);
							drawString = "Dev Block strings are not supported";
						}
						else if(dist > var_b89cbdfc)
						{
							drawColor = (1, 0, 0);
							drawString = "Dev Block strings are not supported";
						}
						else if(dist < var_35b17bf2)
						{
							drawColor = (1, 0, 0);
							drawString = "Dev Block strings are not supported";
						}
						scale = dist / 1000;
						print3d(ai.origin + VectorScale((0, 0, 1), 67), drawString + "Dev Block strings are not supported" + dist, drawColor, 1, scale);
					}
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_f7047618
	Namespace: debug
	Checksum: 0x46DAE5D1
	Offset: 0x7A88
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_f7047618()
{
	/#
		count = 0;
		foreach(player in level.players)
		{
			if(player IsTestClient())
			{
				count++;
			}
		}
		return count;
	#/
}

/*
	Name: function_6a200458
	Namespace: debug
	Checksum: 0x1F218DC0
	Offset: 0x7B40
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_6a200458()
{
	/#
		count = 0;
		foreach(player in level.players)
		{
			if(!player IsTestClient())
			{
				count++;
			}
		}
		return count;
	#/
}

/*
	Name: function_6e62d3e3
	Namespace: debug
	Checksum: 0xD85D2E23
	Offset: 0x7BF8
	Size: 0x299
	Parameters: 0
	Flags: None
*/
function function_6e62d3e3()
{
	/#
		AddDebugCommand("Dev Block strings are not supported");
		while(!isdefined(level.players))
		{
			wait(0.5);
		}
		var_d49b0ff = 0;
		while(1)
		{
			if(GetDvarInt("Dev Block strings are not supported") > 0)
			{
				while(GetDvarInt("Dev Block strings are not supported") > 0)
				{
					var_7e4baf07 = 4 - function_6a200458();
					botCount = function_f7047618();
					if(botCount > 0 && RandomInt(100) > 60)
					{
						util::function_316771cc("Dev Block strings are not supported");
						wait(2);
						function_aacf4c41("Dev Block strings are not supported" + function_f7047618());
					}
					else if(botCount < var_7e4baf07)
					{
						if(botCount < GetDvarInt("Dev Block strings are not supported") && RandomInt(100) > 50)
						{
							var_d49b0ff = 1;
							util::function_316771cc("Dev Block strings are not supported");
							wait(2);
							function_aacf4c41("Dev Block strings are not supported" + function_f7047618());
						}
					}
					wait(randomIntRange(1, 3));
				}
			}
			else if(var_d49b0ff)
			{
				while(function_f7047618() > 0)
				{
					util::function_316771cc("Dev Block strings are not supported");
					wait(2);
					function_aacf4c41("Dev Block strings are not supported" + function_f7047618());
				}
				var_d49b0ff = 0;
			}
			wait(1);
		}
	#/
}

/*
	Name: function_aacf4c41
	Namespace: debug
	Checksum: 0x10EC1113
	Offset: 0x7EA0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_aacf4c41(var_69ae6753)
{
	/#
		/#
			IPrintLnBold(var_69ae6753);
			if(isdefined(level.name))
			{
				println("Dev Block strings are not supported" + level.name + "Dev Block strings are not supported" + var_69ae6753);
			}
		#/
	#/
}

/*
	Name: plot_circle_fortime
	Namespace: debug
	Checksum: 0x9E05FF1F
	Offset: 0x7F18
	Size: 0x183
	Parameters: 6
	Flags: None
*/
function plot_circle_fortime(radius1, radius2, time, color, origin, normal)
{
	/#
		if(!isdefined(color))
		{
			color = (0, 1, 0);
		}
		circleres = 6;
		circleinc = 360 / circleres;
		circleres++;
		plotpoints = [];
		rad = 0;
		radius = radius2;
		angletoplayer = VectorToAngles(normal);
		for(i = 0; i < circleres; i++)
		{
			plotpoints[plotpoints.size] = origin + VectorScale(AnglesToForward(angletoplayer + (rad, 90, 0)), radius);
			rad = rad + circleinc;
		}
		plot_points(plotpoints, color[0], color[1], color[2], time);
	#/
}

/*
	Name: dynamic_ai_spawner
	Namespace: debug
	Checksum: 0x5849E1F1
	Offset: 0x80A8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function dynamic_ai_spawner()
{
	/#
		if(!isdefined(level.debug_dynamic_ai_spawner))
		{
			dynamic_ai_spawner_find_spawners();
			level.debug_dynamic_ai_spawner = 1;
		}
		GetPlayers()[0] thread spawn_guy_placement();
		level waittill("kill dynamic spawning");
		if(isdefined(level.dynamic_spawn_hud))
		{
			level.dynamic_spawn_hud destroy();
		}
		if(isdefined(level.dynamic_spawn_dummy_model))
		{
			level.dynamic_spawn_dummy_model delete();
		}
	#/
}

/*
	Name: dynamic_ai_spawner_find_spawners
	Namespace: debug
	Checksum: 0x6710431C
	Offset: 0x8160
	Size: 0x1D7
	Parameters: 0
	Flags: None
*/
function dynamic_ai_spawner_find_spawners()
{
	/#
		spawners = GetSpawnerArray();
		level.AITypes = [];
		level.var_6277cd5a = 0;
		var_7b3173a8 = [];
		foreach(spawner in spawners)
		{
			if(!isdefined(var_7b3173a8[spawner.classname]))
			{
				var_7b3173a8[spawner.classname] = 1;
				struct = spawnstruct();
				classname = spawner.classname;
				vehicleType = spawner.vehicleType;
				if(IsSubStr(classname, "Dev Block strings are not supported"))
				{
					struct.radius = 64;
					struct.isVehicle = 0;
					classname = GetSubStr(classname, 6);
				}
				else
				{
					continue;
				}
				struct.classname = classname;
				level.AITypes[level.AITypes.size] = struct;
			}
		}
	#/
}

/*
	Name: spawn_guy_placement
	Namespace: debug
	Checksum: 0x91AE4D9F
	Offset: 0x8340
	Size: 0x63F
	Parameters: 0
	Flags: None
*/
function spawn_guy_placement()
{
	/#
		level endon("kill dynamic spawning");
		/#
			Assert(isdefined(level.AITypes) && level.AITypes.size > 0, "Dev Block strings are not supported");
		#/
		level.dynamic_spawn_hud = newClientHudElem(GetPlayers()[0]);
		level.dynamic_spawn_hud.alignX = "Dev Block strings are not supported";
		level.dynamic_spawn_hud.x = 0;
		level.dynamic_spawn_hud.y = 245;
		level.dynamic_spawn_hud.fontscale = 1.5;
		level.dynamic_spawn_hud setText("Dev Block strings are not supported");
		level.dynamic_spawn_dummy_model = spawn("Dev Block strings are not supported", (0, 0, 0));
		wait(0.1);
		while(1)
		{
			direction = self getPlayerAngles();
			direction_vec = AnglesToForward(direction);
			eye = self GetEye();
			trace_dist = 4000;
			trace = bullettrace(eye, eye + VectorScale(direction_vec, trace_dist), 0, level.dynamic_spawn_dummy_model);
			dist = Distance(eye, trace["Dev Block strings are not supported"]);
			position = eye + VectorScale(direction_vec, dist - level.AITypes[level.var_6277cd5a].radius);
			origin = position;
			angles = self.angles + VectorScale((0, 1, 0), 180);
			level.dynamic_spawn_dummy_model.origin = position;
			level.dynamic_spawn_dummy_model.angles = angles;
			level.dynamic_spawn_hud setText("Dev Block strings are not supported" + level.var_6277cd5a + "Dev Block strings are not supported" + level.AITypes.size + "Dev Block strings are not supported" + level.AITypes[level.var_6277cd5a].classname);
			level.dynamic_spawn_dummy_model DetachAll();
			level.dynamic_spawn_dummy_model SetModel(level.AITypes[level.var_6277cd5a].classname);
			level.dynamic_spawn_dummy_model show();
			level.dynamic_spawn_dummy_model notsolid();
			if(self useButtonPressed())
			{
				level.dynamic_spawn_dummy_model Hide();
				if(level.AITypes[level.var_6277cd5a].isVehicle)
				{
					spawn = SpawnVehicle(level.AITypes[level.var_6277cd5a].classname, origin, angles, "Dev Block strings are not supported");
				}
				else
				{
					spawn = SpawnActor(level.AITypes[level.var_6277cd5a].classname, origin, angles, "Dev Block strings are not supported", 1);
				}
				spawn.ignoreme = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
				spawn.ignoreall = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
				spawn.pacifist = GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported";
				spawn.fixedNode = 0;
				wait(0.3);
			}
			else if(self buttonpressed("Dev Block strings are not supported"))
			{
				level.dynamic_spawn_dummy_model Hide();
				level.var_6277cd5a++;
				if(level.var_6277cd5a >= level.AITypes.size)
				{
					level.var_6277cd5a = 0;
				}
				wait(0.3);
			}
			else if(self buttonpressed("Dev Block strings are not supported"))
			{
				level.dynamic_spawn_dummy_model Hide();
				level.var_6277cd5a--;
				if(level.var_6277cd5a < 0)
				{
					level.var_6277cd5a = level.AITypes.size - 1;
				}
				wait(0.3);
			}
			else if(self buttonpressed("Dev Block strings are not supported"))
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			wait(0.05);
		}
	#/
}

/*
	Name: display_module_text
	Namespace: debug
	Checksum: 0x535E3DB2
	Offset: 0x8988
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function display_module_text()
{
	/#
		wait(1);
		IPrintLnBold("Dev Block strings are not supported" + level.script + "Dev Block strings are not supported");
	#/
}

/*
	Name: debug_goalradius
	Namespace: debug
	Checksum: 0x6AF5BFD4
	Offset: 0x89D0
	Size: 0x23D
	Parameters: 0
	Flags: None
*/
function debug_goalradius()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: debug_maxvisibledist
	Namespace: debug
	Checksum: 0x54771798
	Offset: 0x8C18
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function debug_maxvisibledist()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: debug_health
	Namespace: debug
	Checksum: 0x7CA263FB
	Offset: 0x8D60
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function debug_health()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: debug_engagedist
	Namespace: debug
	Checksum: 0x883F4570
	Offset: 0x90A0
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function debug_engagedist()
{
	/#
		guys = GetAIArray();
		for(i = 0; i < guys.size; i++)
		{
			distString = guys[i].engageminfalloffdist + "Dev Block strings are not supported" + guys[i].engageMinDist + "Dev Block strings are not supported" + guys[i].engageMaxDist + "Dev Block strings are not supported" + guys[i].engagemaxfalloffdist;
			recordEntText(distString, guys[i], level.debugTeamColors[guys[i].team], "Dev Block strings are not supported");
		}
	#/
}

/*
	Name: debug_sphere
	Namespace: debug
	Checksum: 0x28EE4120
	Offset: 0x91B8
	Size: 0xCB
	Parameters: 5
	Flags: None
*/
function debug_sphere(origin, radius, color, alpha, time)
{
	/#
		if(!isdefined(time))
		{
			time = 1000;
		}
		if(!isdefined(color))
		{
			color = (1, 1, 1);
		}
		sides = Int(10 * 1 + Int(radius) % 100);
		sphere(origin, radius, color, alpha, 1, sides, time);
	#/
}

/*
	Name: draw_arrow_time
	Namespace: debug
	Checksum: 0x51464E28
	Offset: 0x9290
	Size: 0x2B3
	Parameters: 4
	Flags: None
*/
function draw_arrow_time(start, end, color, frames)
{
	/#
		level endon("newpath");
		pts = [];
		angles = VectorToAngles(start - end);
		right = AnglesToRight(angles);
		FORWARD = AnglesToForward(angles);
		up = anglesToUp(angles);
		dist = Distance(start, end);
		arrow = [];
		arrow[0] = start;
		arrow[1] = start + VectorScale(right, dist * 0.1) + VectorScale(FORWARD, dist * -0.1);
		arrow[2] = end;
		arrow[3] = start + VectorScale(right, dist * -1 * 0.1) + VectorScale(FORWARD, dist * -0.1);
		arrow[4] = start;
		arrow[5] = start + VectorScale(up, dist * 0.1) + VectorScale(FORWARD, dist * -0.1);
		arrow[6] = end;
		arrow[7] = start + VectorScale(up, dist * -1 * 0.1) + VectorScale(FORWARD, dist * -0.1);
		arrow[8] = start;
		r = color[0];
		g = color[1];
		b = color[2];
		plot_points(arrow, r, g, b, frames);
	#/
}

/*
	Name: draw_arrow
	Namespace: debug
	Checksum: 0x3D3EA8EB
	Offset: 0x9550
	Size: 0x1FD
	Parameters: 3
	Flags: None
*/
function draw_arrow(start, end, color)
{
	/#
		level endon("newpath");
		pts = [];
		angles = VectorToAngles(start - end);
		right = AnglesToRight(angles);
		FORWARD = AnglesToForward(angles);
		dist = Distance(start, end);
		arrow = [];
		arrow[0] = start;
		arrow[1] = start + VectorScale(right, dist * 0.05) + VectorScale(FORWARD, dist * -0.2);
		arrow[2] = end;
		arrow[3] = start + VectorScale(right, dist * -1 * 0.05) + VectorScale(FORWARD, dist * -0.2);
		for(p = 0; p < 4; p++)
		{
			nextPoint = p + 1;
			if(nextPoint >= 4)
			{
				nextPoint = 0;
			}
			line(arrow[p], arrow[nextPoint], color, 1);
		}
	#/
}

/*
	Name: debugorigin
	Namespace: debug
	Checksum: 0xEFD0D5C4
	Offset: 0x9758
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function debugorigin()
{
	/#
		self notify("Debug origin");
		self endon("Debug origin");
		self endon("death");
		for(;;)
		{
			FORWARD = AnglesToForward(self.angles);
			forwardFar = VectorScale(FORWARD, 30);
			forwardClose = VectorScale(FORWARD, 20);
			right = AnglesToRight(self.angles);
			left = VectorScale(right, -10);
			right = VectorScale(right, 10);
			line(self.origin, self.origin + forwardFar, (0.9, 0.7, 0.6), 0.9);
			line(self.origin + forwardFar, self.origin + forwardClose + right, (0.9, 0.7, 0.6), 0.9);
			line(self.origin + forwardFar, self.origin + forwardClose + left, (0.9, 0.7, 0.6), 0.9);
			wait(0.05);
		}
	#/
}

/*
	Name: plot_points
	Namespace: debug
	Checksum: 0x7D643086
	Offset: 0x9930
	Size: 0x105
	Parameters: 5
	Flags: None
*/
function plot_points(plotpoints, r, g, b, timer)
{
	/#
		lastpoint = plotpoints[0];
		if(!isdefined(r))
		{
			r = 1;
		}
		if(!isdefined(g))
		{
			g = 1;
		}
		if(!isdefined(b))
		{
			b = 1;
		}
		if(!isdefined(timer))
		{
			timer = 0.05;
		}
		for(i = 1; i < plotpoints.size; i++)
		{
			thread draw_line_for_time(lastpoint, plotpoints[i], r, g, b, timer);
			lastpoint = plotpoints[i];
		}
	#/
}

/*
	Name: draw_line_for_time
	Namespace: debug
	Checksum: 0x3ED2C25B
	Offset: 0x9A40
	Size: 0xB7
	Parameters: 6
	Flags: None
*/
function draw_line_for_time(org1, org2, r, g, b, timer)
{
	/#
		timer = GetTime() + timer * 1000;
		while(GetTime() < timer)
		{
			line(org1, org2, (r, g, b), 1);
			recordLine(org1, org2, (1, 1, 1), "Dev Block strings are not supported");
			wait(0.05);
		}
	#/
}

/*
	Name: function_310be1cc
	Namespace: debug
	Checksum: 0xD41D2234
	Offset: 0x9B00
	Size: 0x11D
	Parameters: 1
	Flags: None
*/
function function_310be1cc(str_color)
{
	/#
		switch(str_color)
		{
			case "Dev Block strings are not supported":
			{
				return (1, 0, 0);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (0, 1, 0);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (0, 0, 1);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (1, 1, 0);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (1, 0.5, 0);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (0, 1, 1);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (1, 1, 1);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return VectorScale((1, 1, 1), 0.75);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (0, 0, 0);
				break;
			}
			case default:
			{
				println("Dev Block strings are not supported" + str_color + "Dev Block strings are not supported");
				return (0, 0, 0);
				break;
			}
		}
	#/
}

/*
	Name: function_8e158224
	Namespace: debug
	Checksum: 0x72B39D49
	Offset: 0x9C28
	Size: 0x799
	Parameters: 8
	Flags: None
*/
function function_8e158224(text_array, time, var_c0cd1c79, var_9970b520, var_2b8033ad, var_aa0d77d8, font_size, var_3988cc1d)
{
	/#
		if(!isdefined(time))
		{
			time = 3;
		}
		if(!isdefined(var_c0cd1c79))
		{
			var_c0cd1c79 = 0;
		}
		if(!isdefined(var_9970b520))
		{
			var_9970b520 = 2;
		}
		if(!isdefined(var_2b8033ad))
		{
			var_2b8033ad = 2;
		}
		if(!isdefined(var_aa0d77d8))
		{
			var_aa0d77d8 = 2;
		}
		if(!isdefined(font_size))
		{
			font_size = 2;
		}
		if(!isdefined(var_3988cc1d))
		{
			var_3988cc1d = 1;
		}
		if(var_3988cc1d)
		{
			if(isPlayer(self))
			{
				background = hud::createIcon("Dev Block strings are not supported", 640, 480);
			}
			else
			{
				background = hud::createServerIcon("Dev Block strings are not supported", 640, 480);
			}
			background.horzAlign = "Dev Block strings are not supported";
			background.vertAlign = "Dev Block strings are not supported";
			background.foreground = 1;
			background.sort = 0;
			background.x = 320;
			background.y = 0;
			if(var_c0cd1c79 > 0)
			{
				background.alpha = 0;
				background fadeOverTime(var_c0cd1c79);
				background.alpha = 1;
				wait(var_c0cd1c79);
			}
			else
			{
				background.alpha = 1;
			}
		}
		var_58f0cd91 = [];
		spacing = Int(level.fontHeight * font_size) + 2;
		start_y = 0;
		if(IsArray(text_array))
		{
			start_y = 0 - text_array.size * spacing / 2;
			foreach(text in text_array)
			{
				if(isPlayer(self))
				{
					var_58f0cd91[var_58f0cd91.size] = hud::createFontString("Dev Block strings are not supported", font_size);
				}
				else
				{
					var_58f0cd91[var_58f0cd91.size] = hud::createServerFontString("Dev Block strings are not supported", font_size);
				}
				var_58f0cd91[var_58f0cd91.size - 1] setText(text);
			}
		}
		else if(isPlayer(self))
		{
			var_58f0cd91[var_58f0cd91.size] = hud::createFontString("Dev Block strings are not supported", font_size);
		}
		else
		{
			var_58f0cd91[var_58f0cd91.size] = hud::createServerFontString("Dev Block strings are not supported", font_size);
		}
		var_58f0cd91[var_58f0cd91.size - 1] setText(text);
		var_7cb30609 = 0;
		foreach(var_cac27e6e in var_58f0cd91)
		{
			var_cac27e6e.horzAlign = "Dev Block strings are not supported";
			var_cac27e6e.vertAlign = "Dev Block strings are not supported";
			var_cac27e6e.x = 0;
			var_cac27e6e.y = start_y + spacing * var_7cb30609;
			var_cac27e6e.color = (1, 1, 1);
			var_cac27e6e.foreground = 1;
			var_cac27e6e.sort = 1;
			if(var_2b8033ad > 0)
			{
				var_cac27e6e.alpha = 0;
				var_cac27e6e fadeOverTime(var_2b8033ad);
				var_cac27e6e.alpha = 1;
			}
			else
			{
				var_cac27e6e.alpha = 1;
			}
			var_7cb30609++;
		}
		if(var_2b8033ad > 0)
		{
			wait(var_2b8033ad);
		}
		wait(time);
		if(var_aa0d77d8 > 0)
		{
			foreach(var_cac27e6e in var_58f0cd91)
			{
				var_cac27e6e fadeOverTime(var_aa0d77d8);
				var_cac27e6e.alpha = 0;
			}
			wait(var_aa0d77d8);
		}
		if(var_3988cc1d)
		{
			if(var_9970b520 > 0)
			{
				background fadeOverTime(var_9970b520);
				background.alpha = 0;
				wait(var_9970b520);
			}
			background destroy();
		}
		foreach(var_cac27e6e in var_58f0cd91)
		{
			var_cac27e6e destroy();
		}
	#/
}


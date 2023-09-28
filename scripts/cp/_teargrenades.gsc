#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_perplayer;
#using scripts\shared\util_shared;

#namespace _teargrenades;

/*
	Name: main
	Namespace: _teargrenades
	Checksum: 0x5499B84F
	Offset: 0x138
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function main()
{
	level.tearradius = 170;
	level.tearheight = 128;
	level.teargasfillduration = 7;
	level.teargasduration = 23;
	level.tearsufferingduration = 3;
	level.teargrenadetimer = 4;
	fgmonitor = perplayer::init("tear_grenade_monitor", &startMonitoringTearUsage, &stopMonitoringTearUsage);
	perplayer::enable(fgmonitor);
}

/*
	Name: startMonitoringTearUsage
	Namespace: _teargrenades
	Checksum: 0x503985BF
	Offset: 0x1E8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function startMonitoringTearUsage()
{
	self thread monitorTearUsage();
}

/*
	Name: stopMonitoringTearUsage
	Namespace: _teargrenades
	Checksum: 0xAEE3C42C
	Offset: 0x210
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function stopMonitoringTearUsage(disconnected)
{
	self notify("stop_monitoring_tear_usage");
}

/*
	Name: monitorTearUsage
	Namespace: _teargrenades
	Checksum: 0xD2559B5E
	Offset: 0x238
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function monitorTearUsage()
{
	self endon("stop_monitoring_tear_usage");
	wait(0.05);
	weapon = GetWeapon("tear_grenade");
	if(!self HasWeapon(weapon))
	{
		return;
	}
	prevammo = self getammocount(weapon);
	while(1)
	{
		ammo = self getammocount(weapon);
		if(ammo < prevammo)
		{
			num = prevammo - ammo;
			/#
			#/
			for(i = 0; i < num; i++)
			{
				grenades = GetEntArray("grenade", "classname");
				bestdist = undefined;
				bestg = undefined;
				for(g = 0; g < grenades.size; g++)
				{
					if(!isdefined(grenades[g].teargrenade))
					{
						dist = Distance(grenades[g].origin, self.origin + VectorScale((0, 0, 1), 48));
						if(!isdefined(bestdist) || dist < bestdist)
						{
							bestdist = dist;
							bestg = g;
						}
					}
				}
				if(isdefined(bestdist))
				{
					grenades[bestg].teargrenade = 1;
					grenades[bestg] thread tearGrenade_think(self.team);
				}
			}
		}
		prevammo = ammo;
		wait(0.05);
	}
}

/*
	Name: tearGrenade_think
	Namespace: _teargrenades
	Checksum: 0xABA8AB64
	Offset: 0x4B8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function tearGrenade_think(team)
{
	wait(level.teargrenadetimer);
	ent = spawnstruct();
	ent thread tear(self.origin);
}

/*
	Name: tear
	Namespace: _teargrenades
	Checksum: 0x160B98FA
	Offset: 0x510
	Size: 0x227
	Parameters: 1
	Flags: None
*/
function tear(pos)
{
	trig = spawn("trigger_radius", pos, 0, level.tearradius, level.tearheight);
	startTime = GetTime();
	self thread teartimer();
	self endon("tear_timeout");
	while(1)
	{
		trig waittill("trigger", player);
		if(player.sessionstate != "playing")
		{
			continue;
		}
		time = GetTime() - startTime / 1000;
		currad = level.tearradius;
		curheight = level.tearheight;
		if(time < level.teargasfillduration)
		{
			currad = currad * time / level.teargasfillduration;
			curheight = curheight * time / level.teargasfillduration;
		}
		offset = player.origin + VectorScale((0, 0, 1), 32) - pos;
		offset2d = (offset[0], offset[1], 0);
		if(LengthSquared(offset2d) > currad * currad)
		{
			continue;
		}
		if(player.origin[2] - pos[2] > curheight)
		{
			continue;
		}
		player.teargasstarttime = GetTime();
		if(!isdefined(player.teargassuffering))
		{
			player thread teargassuffering();
		}
	}
}

/*
	Name: teartimer
	Namespace: _teargrenades
	Checksum: 0x419F689A
	Offset: 0x740
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function teartimer()
{
	wait(level.teargasduration);
	self notify("tear_timeout");
}

/*
	Name: teargassuffering
	Namespace: _teargrenades
	Checksum: 0x60985C87
	Offset: 0x768
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function teargassuffering()
{
	self endon("death");
	self endon("disconnect");
	self.teargassuffering = 1;
	if(self util::mayApplyScreenEffect())
	{
		self shellshock("teargas", 60);
	}
	while(1)
	{
		if(GetTime() - self.teargasstarttime > level.tearsufferingduration * 1000)
		{
			break;
		}
		wait(1);
	}
	self shellshock("teargas", 1);
	if(self util::mayApplyScreenEffect())
	{
		self.teargassuffering = undefined;
	}
}

/*
	Name: drawcylinder
	Namespace: _teargrenades
	Checksum: 0xEC7D4004
	Offset: 0x848
	Size: 0x2EB
	Parameters: 3
	Flags: None
*/
function drawcylinder(pos, rad, height)
{
	/#
		time = 0;
		while(1)
		{
			currad = rad;
			curheight = height;
			if(time < level.teargasfillduration)
			{
				currad = currad * time / level.teargasfillduration;
				curheight = curheight * time / level.teargasfillduration;
			}
			for(r = 0; r < 20; r++)
			{
				theta = r / 20 * 360;
				theta2 = r + 1 / 20 * 360;
				line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta2) * currad, sin(theta2) * currad, 0));
				line(pos + (cos(theta) * currad, sin(theta) * currad, curheight), pos + (cos(theta2) * currad, sin(theta2) * currad, curheight));
				line(pos + (cos(theta) * currad, sin(theta) * currad, 0), pos + (cos(theta) * currad, sin(theta) * currad, curheight));
			}
			time = time + 0.05;
			if(time > level.teargasduration)
			{
				break;
			}
			wait(0.05);
		}
	#/
}


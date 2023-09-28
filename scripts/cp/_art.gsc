#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace art;

/*
	Name: __init__sytem__
	Namespace: art
	Checksum: 0x3C15D7AD
	Offset: 0xE0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("art", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: art
	Checksum: 0x1DD76BB5
	Offset: 0x120
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function __init__()
{
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported" || GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", 0);
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported" && isdefined(level.script))
		{
			SetDvar("Dev Block strings are not supported", level.script);
		}
	#/
	if(!isdefined(level.dofDefault))
	{
		level.dofDefault["nearStart"] = 0;
		level.dofDefault["nearEnd"] = 1;
		level.dofDefault["farStart"] = 8000;
		level.dofDefault["farEnd"] = 10000;
		level.dofDefault["nearBlur"] = 6;
		level.dofDefault["farBlur"] = 0;
	}
	level.curDoF = level.dofDefault["farStart"] - level.dofDefault["nearEnd"] / 2;
	/#
		thread tweakart();
	#/
}

/*
	Name: artfxprintln
	Namespace: art
	Checksum: 0x3E51D20E
	Offset: 0x360
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function artfxprintln(file, string)
{
	/#
		if(file == -1)
		{
			return;
		}
		fprintln(file, string);
	#/
}

/*
	Name: strtok_loc
	Namespace: art
	Checksum: 0xD3E0C415
	Offset: 0x3B0
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function strtok_loc(string, par1)
{
	stringlist = [];
	indexstring = "";
	for(i = 0; i < string.size; i++)
	{
		if(string[i] == " ")
		{
			stringlist[stringlist.size] = indexstring;
			indexstring = "";
			continue;
		}
		indexstring = indexstring + string[i];
	}
	if(indexstring.size)
	{
		stringlist[stringlist.size] = indexstring;
	}
	return stringlist;
}

/*
	Name: setfogsliders
	Namespace: art
	Checksum: 0x44A9F1DF
	Offset: 0x490
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function setfogsliders()
{
	/#
		fogall = strtok_loc(GetDvarString("Dev Block strings are not supported"), "Dev Block strings are not supported");
		red = fogall[0];
		green = fogall[1];
		blue = fogall[2];
		halfplane = GetDvarString("Dev Block strings are not supported");
		nearplane = GetDvarString("Dev Block strings are not supported");
		if(!isdefined(red) || !isdefined(green) || !isdefined(blue) || !isdefined(halfplane))
		{
			red = 1;
			green = 1;
			blue = 1;
			halfplane = 10000001;
			nearplane = 10000000;
		}
		SetDvar("Dev Block strings are not supported", halfplane);
		SetDvar("Dev Block strings are not supported", nearplane);
		SetDvar("Dev Block strings are not supported", red + "Dev Block strings are not supported" + green + "Dev Block strings are not supported" + blue);
	#/
}

/*
	Name: tweakart
	Namespace: art
	Checksum: 0xAD62DDC
	Offset: 0x658
	Size: 0x95F
	Parameters: 0
	Flags: None
*/
function tweakart()
{
	/#
		if(!isdefined(level.tweakfile))
		{
			level.tweakfile = 0;
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		file = undefined;
		filename = undefined;
		tweak_toggle = 1;
		while(GetDvarInt("Dev Block strings are not supported") == 0)
		{
			tweak_toggle = 1;
			wait(0.05);
			continue;
			if(tweak_toggle)
			{
				tweak_toggle = 0;
				fogsettings = getfogsettings();
				SetDvar("Dev Block strings are not supported", fogsettings[0]);
				SetDvar("Dev Block strings are not supported", fogsettings[1]);
				SetDvar("Dev Block strings are not supported", fogsettings[3]);
				SetDvar("Dev Block strings are not supported", fogsettings[2]);
				SetDvar("Dev Block strings are not supported", fogsettings[4] + "Dev Block strings are not supported" + fogsettings[5] + "Dev Block strings are not supported" + fogsettings[6]);
				SetDvar("Dev Block strings are not supported", fogsettings[7]);
				SetDvar("Dev Block strings are not supported", fogsettings[8] + "Dev Block strings are not supported" + fogsettings[9] + "Dev Block strings are not supported" + fogsettings[10]);
				level.fogsundir = [];
				level.fogsundir[0] = fogsettings[11];
				level.fogsundir[1] = fogsettings[12];
				level.fogsundir[2] = fogsettings[13];
				SetDvar("Dev Block strings are not supported", fogsettings[14]);
				SetDvar("Dev Block strings are not supported", fogsettings[15]);
				SetDvar("Dev Block strings are not supported", fogsettings[16]);
			}
			level.fogexphalfplane = GetDvarFloat("Dev Block strings are not supported");
			level.fogexphalfheight = GetDvarFloat("Dev Block strings are not supported");
			level.fognearplane = GetDvarFloat("Dev Block strings are not supported");
			level.fogbaseheight = GetDvarFloat("Dev Block strings are not supported");
			colors = StrTok(GetDvarString("Dev Block strings are not supported"), "Dev Block strings are not supported");
			level.fogcolorred = Int(colors[0]);
			level.fogcolorgreen = Int(colors[1]);
			level.fogcolorblue = Int(colors[2]);
			level.fogcolorscale = GetDvarFloat("Dev Block strings are not supported");
			colors = StrTok(GetDvarString("Dev Block strings are not supported"), "Dev Block strings are not supported");
			level.sunfogcolorred = Int(colors[0]);
			level.sunfogcolorgreen = Int(colors[1]);
			level.sunfogcolorblue = Int(colors[2]);
			level.sunstartangle = GetDvarFloat("Dev Block strings are not supported");
			level.sunendangle = GetDvarFloat("Dev Block strings are not supported");
			level.fogmaxopacity = GetDvarFloat("Dev Block strings are not supported");
			if(GetDvarInt("Dev Block strings are not supported"))
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				println("Dev Block strings are not supported");
				players = GetPlayers();
				dir = VectorNormalize(AnglesToForward(players[0] getPlayerAngles()));
				level.fogsundir = [];
				level.fogsundir[0] = dir[0];
				level.fogsundir[1] = dir[1];
				level.fogsundir[2] = dir[2];
			}
			fovslidercheck();
			dumpsettings();
			if(!GetDvarInt("Dev Block strings are not supported"))
			{
				if(!isdefined(level.fogsundir))
				{
					level.fogsundir = [];
					level.fogsundir[0] = 1;
					level.fogsundir[1] = 0;
					level.fogsundir[2] = 0;
				}
				SetVolFog(level.fognearplane, level.fogexphalfplane, level.fogexphalfheight, level.fogbaseheight, level.fogcolorred, level.fogcolorgreen, level.fogcolorblue, level.fogcolorscale, level.sunfogcolorred, level.sunfogcolorgreen, level.sunfogcolorblue, level.fogsundir[0], level.fogsundir[1], level.fogsundir[2], level.sunstartangle, level.sunendangle, 0, level.fogmaxopacity);
			}
			else
			{
				setExpFog(100000000, 100000001, 0, 0, 0, 0);
			}
			wait(0.1);
		}
	#/
}

/*
	Name: fovslidercheck
	Namespace: art
	Checksum: 0x8AA4DFDD
	Offset: 0xFC0
	Size: 0x2DB
	Parameters: 0
	Flags: None
*/
function fovslidercheck()
{
	/#
		if(level.dofDefault["Dev Block strings are not supported"] >= level.dofDefault["Dev Block strings are not supported"])
		{
			level.dofDefault["Dev Block strings are not supported"] = level.dofDefault["Dev Block strings are not supported"] - 1;
			SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		}
		if(level.dofDefault["Dev Block strings are not supported"] <= level.dofDefault["Dev Block strings are not supported"])
		{
			level.dofDefault["Dev Block strings are not supported"] = level.dofDefault["Dev Block strings are not supported"] + 1;
			SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		}
		if(level.dofDefault["Dev Block strings are not supported"] >= level.dofDefault["Dev Block strings are not supported"])
		{
			level.dofDefault["Dev Block strings are not supported"] = level.dofDefault["Dev Block strings are not supported"] - 1;
			SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		}
		if(level.dofDefault["Dev Block strings are not supported"] <= level.dofDefault["Dev Block strings are not supported"])
		{
			level.dofDefault["Dev Block strings are not supported"] = level.dofDefault["Dev Block strings are not supported"] + 1;
			SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		}
		if(level.dofDefault["Dev Block strings are not supported"] >= level.dofDefault["Dev Block strings are not supported"])
		{
			level.dofDefault["Dev Block strings are not supported"] = level.dofDefault["Dev Block strings are not supported"] - 0.1;
			SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		}
		if(level.dofDefault["Dev Block strings are not supported"] <= level.dofDefault["Dev Block strings are not supported"])
		{
			level.dofDefault["Dev Block strings are not supported"] = level.dofDefault["Dev Block strings are not supported"] + 1;
			SetDvar("Dev Block strings are not supported", level.dofDefault["Dev Block strings are not supported"]);
		}
	#/
}

/*
	Name: dumpsettings
	Namespace: art
	Checksum: 0xB77DD255
	Offset: 0x12A8
	Size: 0x403
	Parameters: 0
	Flags: None
*/
function dumpsettings()
{
	/#
		if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			println("Dev Block strings are not supported" + level.fognearplane + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogexphalfplane + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogexphalfheight + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogbaseheight + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogcolorred + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogcolorgreen + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogcolorblue + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogcolorscale + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.sunfogcolorred + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.sunfogcolorgreen + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.sunfogcolorblue + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogsundir[0] + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogsundir[1] + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogsundir[2] + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.sunstartangle + "Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.sunendangle + "Dev Block strings are not supported");
			println("Dev Block strings are not supported");
			println("Dev Block strings are not supported" + level.fogmaxopacity + "Dev Block strings are not supported");
			println("Dev Block strings are not supported");
			println("Dev Block strings are not supported");
			println("Dev Block strings are not supported");
			println("Dev Block strings are not supported");
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
	#/
}


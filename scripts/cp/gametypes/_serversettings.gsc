#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace serversettings;

/*
	Name: __init__sytem__
	Namespace: serversettings
	Checksum: 0xFB448956
	Offset: 0x1A8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("serversettings", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: serversettings
	Checksum: 0x7D8F0031
	Offset: 0x1E8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
}

/*
	Name: init
	Namespace: serversettings
	Checksum: 0x345327D4
	Offset: 0x218
	Size: 0x40D
	Parameters: 0
	Flags: None
*/
function init()
{
	level.hostname = GetDvarString("sv_hostname");
	if(level.hostname == "")
	{
		level.hostname = "CoDHost";
	}
	SetDvar("sv_hostname", level.hostname);
	SetDvar("ui_hostname", level.hostname);
	level.motd = GetDvarString("scr_motd");
	if(level.motd == "")
	{
		level.motd = "";
	}
	SetDvar("scr_motd", level.motd);
	SetDvar("ui_motd", level.motd);
	level.allowvote = GetDvarString("g_allowvote");
	if(level.allowvote == "")
	{
		level.allowvote = "1";
	}
	SetDvar("g_allowvote", level.allowvote);
	SetDvar("ui_allowvote", level.allowvote);
	level.allow_teamchange = "0";
	if(SessionModeIsPrivate() || !SessionModeIsOnlineGame())
	{
		level.allow_teamchange = "1";
	}
	SetDvar("ui_allow_teamchange", level.allow_teamchange);
	level.friendlyfire = GetGametypeSetting("friendlyfiretype");
	SetDvar("ui_friendlyfire", level.friendlyfire);
	if(GetDvarString("scr_mapsize") == "")
	{
		SetDvar("scr_mapsize", "64");
	}
	else if(GetDvarFloat("scr_mapsize") >= 64)
	{
		SetDvar("scr_mapsize", "64");
	}
	else if(GetDvarFloat("scr_mapsize") >= 32)
	{
		SetDvar("scr_mapsize", "32");
	}
	else if(GetDvarFloat("scr_mapsize") >= 16)
	{
		SetDvar("scr_mapsize", "16");
	}
	else
	{
		SetDvar("scr_mapsize", "8");
	}
	level.mapsize = GetDvarFloat("scr_mapsize");
	constrain_gametype(GetDvarString("g_gametype"));
	constrain_map_size(level.mapsize);
	for(;;)
	{
		update();
		wait(5);
	}
}

/*
	Name: update
	Namespace: serversettings
	Checksum: 0xBD4D7A4E
	Offset: 0x630
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function update()
{
	sv_hostname = GetDvarString("sv_hostname");
	if(level.hostname != sv_hostname)
	{
		level.hostname = sv_hostname;
		SetDvar("ui_hostname", level.hostname);
	}
	scr_motd = GetDvarString("scr_motd");
	if(level.motd != scr_motd)
	{
		level.motd = scr_motd;
		SetDvar("ui_motd", level.motd);
	}
	g_allowvote = GetDvarString("g_allowvote");
	if(level.allowvote != g_allowvote)
	{
		level.allowvote = g_allowvote;
		SetDvar("ui_allowvote", level.allowvote);
	}
	scr_friendlyfire = GetGametypeSetting("friendlyfiretype");
	if(level.friendlyfire != scr_friendlyfire)
	{
		level.friendlyfire = scr_friendlyfire;
		SetDvar("ui_friendlyfire", level.friendlyfire);
	}
}

/*
	Name: constrain_gametype
	Namespace: serversettings
	Checksum: 0x1DD8662
	Offset: 0x7C0
	Size: 0x275
	Parameters: 1
	Flags: None
*/
function constrain_gametype(gametype)
{
	entities = GetEntArray();
	for(i = 0; i < entities.size; i++)
	{
		entity = entities[i];
		if(gametype == "dm")
		{
			if(isdefined(entity.script_gametype_dm) && entity.script_gametype_dm != "1")
			{
				entity delete();
			}
			continue;
		}
		if(gametype == "tdm")
		{
			if(isdefined(entity.script_gametype_tdm) && entity.script_gametype_tdm != "1")
			{
				entity delete();
			}
			continue;
		}
		if(gametype == "ctf")
		{
			if(isdefined(entity.script_gametype_ctf) && entity.script_gametype_ctf != "1")
			{
				entity delete();
			}
			continue;
		}
		if(gametype == "hq")
		{
			if(isdefined(entity.script_gametype_hq) && entity.script_gametype_hq != "1")
			{
				entity delete();
			}
			continue;
		}
		if(gametype == "sd")
		{
			if(isdefined(entity.script_gametype_sd) && entity.script_gametype_sd != "1")
			{
				entity delete();
			}
			continue;
		}
		if(gametype == "koth")
		{
			if(isdefined(entity.script_gametype_koth) && entity.script_gametype_koth != "1")
			{
				entity delete();
			}
		}
	}
}

/*
	Name: constrain_map_size
	Namespace: serversettings
	Checksum: 0x4F218E89
	Offset: 0xA40
	Size: 0x205
	Parameters: 1
	Flags: None
*/
function constrain_map_size(mapsize)
{
	entities = GetEntArray();
	for(i = 0; i < entities.size; i++)
	{
		entity = entities[i];
		if(Int(mapsize) == 8)
		{
			if(isdefined(entity.script_mapsize_08) && entity.script_mapsize_08 != "1")
			{
				entity delete();
			}
			continue;
		}
		if(Int(mapsize) == 16)
		{
			if(isdefined(entity.script_mapsize_16) && entity.script_mapsize_16 != "1")
			{
				entity delete();
			}
			continue;
		}
		if(Int(mapsize) == 32)
		{
			if(isdefined(entity.script_mapsize_32) && entity.script_mapsize_32 != "1")
			{
				entity delete();
			}
			continue;
		}
		if(Int(mapsize) == 64)
		{
			if(isdefined(entity.script_mapsize_64) && entity.script_mapsize_64 != "1")
			{
				entity delete();
			}
		}
	}
}


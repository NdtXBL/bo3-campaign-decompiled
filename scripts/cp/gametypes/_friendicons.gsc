#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace friendicons;

/*
	Name: __init__sytem__
	Namespace: friendicons
	Checksum: 0xC131EAA6
	Offset: 0x120
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("friendicons", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: friendicons
	Checksum: 0xA43F9F55
	Offset: 0x160
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
	Namespace: friendicons
	Checksum: 0xBB8A5F8E
	Offset: 0x190
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function init()
{
	if(!level.teambased)
	{
		return;
	}
	if(GetDvarString("scr_drawfriend") == "")
	{
		SetDvar("scr_drawfriend", "0");
	}
	level.drawfriend = GetDvarInt("scr_drawfriend");
	callback::on_spawned(&on_player_spawned);
	callback::on_player_killed(&on_player_killed);
	for(;;)
	{
		updateFriendIconSettings();
		wait(5);
	}
}

/*
	Name: on_player_spawned
	Namespace: friendicons
	Checksum: 0x9EF6A818
	Offset: 0x270
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self endon("disconnect");
	self thread showFriendIcon();
}

/*
	Name: on_player_killed
	Namespace: friendicons
	Checksum: 0x9E1A4079
	Offset: 0x2A0
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function on_player_killed()
{
	self endon("disconnect");
	self.headicon = "";
}

/*
	Name: showFriendIcon
	Namespace: friendicons
	Checksum: 0x73585CC4
	Offset: 0x2C8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function showFriendIcon()
{
	if(level.drawfriend)
	{
		team = self.pers["team"];
		self.headicon = game["headicon_" + team];
		self.headiconteam = team;
	}
}

/*
	Name: updateFriendIconSettings
	Namespace: friendicons
	Checksum: 0xB4F71C2D
	Offset: 0x328
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function updateFriendIconSettings()
{
	drawfriend = GetDvarFloat("scr_drawfriend");
	if(level.drawfriend != drawfriend)
	{
		level.drawfriend = drawfriend;
		updateFriendIcons();
	}
}

/*
	Name: updateFriendIcons
	Namespace: friendicons
	Checksum: 0x4FBA326A
	Offset: 0x388
	Size: 0x1AF
	Parameters: 0
	Flags: None
*/
function updateFriendIcons()
{
	players = level.players;
	for(i = 0; i < players.size; i++)
	{
		player = players[i];
		if(isdefined(player.pers["team"]) && player.pers["team"] != "spectator" && player.sessionstate == "playing")
		{
			if(level.drawfriend)
			{
				team = self.pers["team"];
				self.headicon = game["headicon_" + team];
				self.headiconteam = team;
				break;
			}
			players = level.players;
			for(i = 0; i < players.size; i++)
			{
				player = players[i];
				if(isdefined(player.pers["team"]) && player.pers["team"] != "spectator" && player.sessionstate == "playing")
				{
					player.headicon = "";
				}
			}
		}
	}
}


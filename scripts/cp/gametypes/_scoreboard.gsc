#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace scoreboard;

/*
	Name: __init__sytem__
	Namespace: scoreboard
	Checksum: 0xFBF33D4C
	Offset: 0xE8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("scoreboard", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: scoreboard
	Checksum: 0x918C5E48
	Offset: 0x128
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
	Namespace: scoreboard
	Checksum: 0xDF909AF1
	Offset: 0x158
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function init()
{
	if(SessionModeIsZombiesGame())
	{
	}
}


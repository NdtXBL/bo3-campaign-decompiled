#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_riotshield;

#namespace riotshield;

/*
	Name: __init__sytem__
	Namespace: riotshield
	Checksum: 0xCB69A1B5
	Offset: 0x188
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("riotshield", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: riotshield
	Checksum: 0xA7AC3186
	Offset: 0x1C8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


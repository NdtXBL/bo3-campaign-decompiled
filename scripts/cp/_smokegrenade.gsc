#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_smokegrenade;

#namespace smokegrenade;

/*
	Name: __init__sytem__
	Namespace: smokegrenade
	Checksum: 0x44CDAAAD
	Offset: 0x160
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("smokegrenade", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: smokegrenade
	Checksum: 0x9504B6F3
	Offset: 0x1A0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


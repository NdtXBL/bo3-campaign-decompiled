#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_scrambler;

#namespace scrambler;

/*
	Name: __init__sytem__
	Namespace: scrambler
	Checksum: 0x429C06EC
	Offset: 0x138
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("scrambler", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: scrambler
	Checksum: 0x926914F9
	Offset: 0x178
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


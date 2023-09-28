#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\weapons\_proximity_grenade;

#namespace proximity_grenade;

/*
	Name: __init__sytem__
	Namespace: proximity_grenade
	Checksum: 0x5F78DA6
	Offset: 0x140
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("proximity_grenade", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: proximity_grenade
	Checksum: 0x5C689880
	Offset: 0x180
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


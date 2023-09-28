#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\weapons\_satchel_charge;

#namespace satchel_charge;

/*
	Name: __init__sytem__
	Namespace: satchel_charge
	Checksum: 0x9D672FD6
	Offset: 0x128
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("satchel_charge", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: satchel_charge
	Checksum: 0x5DA61BD0
	Offset: 0x168
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


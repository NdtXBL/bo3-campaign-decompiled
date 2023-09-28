#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\entityheadicons_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace entityheadicons;

/*
	Name: __init__sytem__
	Namespace: entityheadicons
	Checksum: 0x2608D2EA
	Offset: 0x130
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("entityheadicons", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: entityheadicons
	Checksum: 0x488C90D2
	Offset: 0x170
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


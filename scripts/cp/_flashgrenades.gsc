#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\weapons\_flashgrenades;

#namespace flashgrenades;

/*
	Name: __init__sytem__
	Namespace: flashgrenades
	Checksum: 0xB8BC3EBE
	Offset: 0x120
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("flashgrenades", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: flashgrenades
	Checksum: 0x109F6123
	Offset: 0x160
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


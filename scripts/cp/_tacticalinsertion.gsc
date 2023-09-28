#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_tacticalinsertion;

#namespace tacticalinsertion;

/*
	Name: __init__sytem__
	Namespace: tacticalinsertion
	Checksum: 0x4603914F
	Offset: 0x170
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("tacticalinsertion", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: tacticalinsertion
	Checksum: 0x4951B24E
	Offset: 0x1B0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


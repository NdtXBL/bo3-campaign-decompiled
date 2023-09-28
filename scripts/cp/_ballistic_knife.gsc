#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\weapons\_ballistic_knife;

#namespace ballistic_knife;

/*
	Name: __init__sytem__
	Namespace: ballistic_knife
	Checksum: 0x5394AADD
	Offset: 0x138
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("ballistic_knife", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: ballistic_knife
	Checksum: 0xFBFFD01E
	Offset: 0x178
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


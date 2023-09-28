#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_hacker_tool;

#namespace hacker_tool;

/*
	Name: __init__sytem__
	Namespace: hacker_tool
	Checksum: 0xF562D56
	Offset: 0x138
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("hacker_tool", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: hacker_tool
	Checksum: 0xE8C5EAF7
	Offset: 0x178
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons\_heatseekingmissile;

#namespace heatseekingmissile;

/*
	Name: __init__sytem__
	Namespace: heatseekingmissile
	Checksum: 0x7A851B59
	Offset: 0x178
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("heatseekingmissile", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: heatseekingmissile
	Checksum: 0x63714E04
	Offset: 0x1B8
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_shared();
}


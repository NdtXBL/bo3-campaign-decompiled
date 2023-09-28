#using scripts\cp\_util;
#using scripts\shared\rat_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace rat;

/*
	Name: __init__sytem__
	Namespace: rat
	Checksum: 0xC8065075
	Offset: 0xD8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	/#
		system::register("Dev Block strings are not supported", &__init__, undefined, undefined);
	#/
}

/*
	Name: __init__
	Namespace: rat
	Checksum: 0xAA37BD14
	Offset: 0x118
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function __init__()
{
	/#
		rat_shared::init();
		level.rat.common.getHostPlayer = &util::getHostPlayer;
	#/
}


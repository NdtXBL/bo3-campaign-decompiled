#using scripts\shared\flag_shared;
#using scripts\shared\system_shared;

#namespace cheat;

/*
	Name: __init__sytem__
	Namespace: cheat
	Checksum: 0x8598BA5D
	Offset: 0xE0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("cheat", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: cheat
	Checksum: 0x6B54A10
	Offset: 0x120
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.cheatStates = [];
	level.cheatFuncs = [];
	level.cheatDvars = [];
	level flag::init("has_cheated");
	level thread death_monitor();
}

/*
	Name: player_init
	Namespace: cheat
	Checksum: 0x31F2394
	Offset: 0x188
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function player_init()
{
	self thread specialFeaturesMenu();
}

/*
	Name: death_monitor
	Namespace: cheat
	Checksum: 0xF13D2A17
	Offset: 0x1B0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function death_monitor()
{
	setDvars_based_on_varibles();
}

/*
	Name: setDvars_based_on_varibles
	Namespace: cheat
	Checksum: 0xE3961AC8
	Offset: 0x1D0
	Size: 0x65
	Parameters: 0
	Flags: None
*/
function setDvars_based_on_varibles()
{
	/#
		for(index = 0; index < level.cheatDvars.size; index++)
		{
			SetDvar(level.cheatDvars[index], level.cheatStates[level.cheatDvars[index]]);
		}
	#/
}

/*
	Name: addCheat
	Namespace: cheat
	Checksum: 0x62F7C4CA
	Offset: 0x240
	Size: 0x99
	Parameters: 2
	Flags: None
*/
function addCheat(toggleDvar, cheatFunc)
{
	/#
		SetDvar(toggleDvar, 0);
	#/
	level.cheatStates[toggleDvar] = GetDvarInt(toggleDvar);
	level.cheatFuncs[toggleDvar] = cheatFunc;
	if(level.cheatStates[toggleDvar])
	{
		[[cheatFunc]](level.cheatStates[toggleDvar]);
	}
}

/*
	Name: checkCheatChanged
	Namespace: cheat
	Checksum: 0x77FFE534
	Offset: 0x2E8
	Size: 0x95
	Parameters: 1
	Flags: None
*/
function checkCheatChanged(toggleDvar)
{
	cheatValue = GetDvarInt(toggleDvar);
	if(level.cheatStates[toggleDvar] == cheatValue)
	{
		return;
	}
	if(cheatValue)
	{
		level flag::set("has_cheated");
	}
	level.cheatStates[toggleDvar] = cheatValue;
	[[level.cheatFuncs[toggleDvar]]](cheatValue);
}

/*
	Name: specialFeaturesMenu
	Namespace: cheat
	Checksum: 0xE0E3652B
	Offset: 0x388
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function specialFeaturesMenu()
{
	level endon("unloaded");
	addCheat("sf_use_ignoreammo", &ignore_ammoMode);
	level.cheatDvars = getArrayKeys(level.cheatStates);
	for(;;)
	{
		for(index = 0; index < level.cheatDvars.size; index++)
		{
			checkCheatChanged(level.cheatDvars[index]);
		}
		wait(0.5);
	}
}

/*
	Name: ignore_ammoMode
	Namespace: cheat
	Checksum: 0x558A341E
	Offset: 0x440
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function ignore_ammoMode(cheatValue)
{
	if(cheatValue)
	{
		SetSavedDvar("player_sustainAmmo", 1);
	}
	else
	{
		SetSavedDvar("player_sustainAmmo", 0);
	}
}

/*
	Name: is_cheating
	Namespace: cheat
	Checksum: 0x52BCEE02
	Offset: 0x4A0
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function is_cheating()
{
	return level flag::get("has_cheated");
}


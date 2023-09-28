#using scripts\codescripts\struct;
#using scripts\shared\hostmigration_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;

#namespace hostmigration;

/*
	Name: Callback_HostMigrationSave
	Namespace: hostmigration
	Checksum: 0x99EC1590
	Offset: 0x100
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Callback_HostMigrationSave()
{
}

/*
	Name: Callback_PreHostMigrationSave
	Namespace: hostmigration
	Checksum: 0x99EC1590
	Offset: 0x110
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Callback_PreHostMigrationSave()
{
}

/*
	Name: Callback_HostMigration
	Namespace: hostmigration
	Checksum: 0x715CBD54
	Offset: 0x120
	Size: 0x1C1
	Parameters: 0
	Flags: None
*/
function Callback_HostMigration()
{
	setSlowMotion(1, 1, 0);
	level.hostMigrationReturnedPlayerCount = 0;
	if(level.inPrematchPeriod)
	{
		level waittill("prematch_over");
	}
	if(level.gameEnded)
	{
		/#
			println("Dev Block strings are not supported" + GetTime() + "Dev Block strings are not supported");
		#/
		return;
	}
	/#
		println("Dev Block strings are not supported" + GetTime());
	#/
	level.hostMigrationTimer = 1;
	sethostmigrationstatus(1);
	level notify("host_migration_begin");
	thread lockTimer();
	players = level.players;
	for(i = 0; i < players.size; i++)
	{
		player = players[i];
		player thread hostMigrationTimerThink();
	}
	level endon("host_migration_begin");
	hostMigrationWait();
	level.hostMigrationTimer = undefined;
	sethostmigrationstatus(0);
	/#
		println("Dev Block strings are not supported" + GetTime());
	#/
	recordMatchBegin();
	level notify("host_migration_end");
}


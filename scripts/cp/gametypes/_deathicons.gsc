#using scripts\codescripts\struct;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace deathicons;

/*
	Name: __init__sytem__
	Namespace: deathicons
	Checksum: 0x7C31F568
	Offset: 0x168
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("deathicons", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: deathicons
	Checksum: 0xC44F2BC0
	Offset: 0x1A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function __init__()
{
	callback::on_start_gametype(&init);
	callback::on_connect(&on_player_connect);
}

/*
	Name: init
	Namespace: deathicons
	Checksum: 0x2DF4678D
	Offset: 0x1F8
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function init()
{
	if(!isdefined(level.ragdoll_override))
	{
		level.ragdoll_override = &ragdoll_override;
	}
	if(!level.teambased)
	{
		return;
	}
}

/*
	Name: on_player_connect
	Namespace: deathicons
	Checksum: 0x5A8FD029
	Offset: 0x230
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self.selfDeathIcons = [];
}

/*
	Name: update_enabled
	Namespace: deathicons
	Checksum: 0x99EC1590
	Offset: 0x248
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function update_enabled()
{
}

/*
	Name: add
	Namespace: deathicons
	Checksum: 0xF2244B14
	Offset: 0x258
	Size: 0x243
	Parameters: 4
	Flags: None
*/
function add(entity, dyingplayer, team, timeout)
{
	if(!level.teambased || (isdefined(level.is_safehouse) && level.is_safehouse))
	{
		return;
	}
	iconOrg = entity.origin;
	dyingplayer endon("spawned_player");
	dyingplayer endon("disconnect");
	wait(0.05);
	util::WaitTillSlowProcessAllowed();
	/#
		Assert(isdefined(level.teams[team]));
	#/
	if(GetDvarString("ui_hud_showdeathicons") == "0")
	{
		return;
	}
	if(level.hardcoreMode)
	{
		return;
	}
	if(isdefined(self.lastDeathIcon))
	{
		self.lastDeathIcon destroy();
	}
	newdeathicon = NewTeamHudElem(team);
	newdeathicon.x = iconOrg[0];
	newdeathicon.y = iconOrg[1];
	newdeathicon.z = iconOrg[2] + 54;
	newdeathicon.alpha = 0.61;
	newdeathicon.archived = 1;
	if(level.Splitscreen)
	{
		newdeathicon SetShader("headicon_dead", 14, 14);
	}
	else
	{
		newdeathicon SetShader("headicon_dead", 7, 7);
	}
	newdeathicon setWaypoint(1);
	self.lastDeathIcon = newdeathicon;
	newdeathicon thread destroy_slowly(timeout);
}

/*
	Name: destroy_slowly
	Namespace: deathicons
	Checksum: 0xF81CE849
	Offset: 0x4A8
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function destroy_slowly(timeout)
{
	self endon("death");
	wait(timeout);
	self fadeOverTime(1);
	self.alpha = 0;
	wait(1);
	self destroy();
}

/*
	Name: ragdoll_override
	Namespace: deathicons
	Checksum: 0xF1653F6C
	Offset: 0x518
	Size: 0xDB
	Parameters: 10
	Flags: None
*/
function ragdoll_override(iDamage, sMeansOfDeath, sWeapon, sHitLoc, vDir, vAttackerOrigin, deathAnimDuration, eInflictor, ragdoll_jib, body)
{
	if(sMeansOfDeath == "MOD_FALLING" && self IsOnGround() == 1)
	{
		body StartRagdoll();
		if(!isdefined(self.switching_teams))
		{
			thread add(body, self, self.team, 5);
		}
		return 1;
	}
	return 0;
}


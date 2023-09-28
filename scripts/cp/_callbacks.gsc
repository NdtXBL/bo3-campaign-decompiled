#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_actor;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_globallogic_vehicle;
#using scripts\cp\gametypes\_hostmigration;
#using scripts\shared\ai\systems\blackboard;
#using scripts\shared\audio_shared;
#using scripts\shared\bots\bot_traversals;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace callback;

/*
	Name: __init__sytem__
	Namespace: callback
	Checksum: 0xFC21A354
	Offset: 0x240
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("callback", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: callback
	Checksum: 0xFDD26222
	Offset: 0x280
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	set_default_callbacks();
}

/*
	Name: set_default_callbacks
	Namespace: callback
	Checksum: 0xB374937
	Offset: 0x2A0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function set_default_callbacks()
{
	level.callbackStartGameType = &globallogic::Callback_StartGameType;
	level.callbackPlayerConnect = &globallogic_player::Callback_PlayerConnect;
	level.callbackPlayerDisconnect = &globallogic_player::Callback_PlayerDisconnect;
	level.callbackPlayerDamage = &globallogic_player::Callback_PlayerDamage;
	level.callbackPlayerKilled = &globallogic_player::Callback_PlayerKilled;
	level.callbackPlayerMelee = &globallogic_player::Callback_PlayerMelee;
	level.callbackPlayerLastStand = &globallogic_player::Callback_PlayerLastStand;
	level.callbackActorSpawned = &globallogic_actor::Callback_ActorSpawned;
	level.callbackActorDamage = &globallogic_actor::Callback_ActorDamage;
	level.callbackActorKilled = &globallogic_actor::Callback_ActorKilled;
	level.callbackActorCloned = &globallogic_actor::Callback_ActorCloned;
	level.callbackVehicleSpawned = &globallogic_vehicle::Callback_VehicleSpawned;
	level.callbackVehicleDamage = &globallogic_vehicle::Callback_VehicleDamage;
	level.callbackVehicleKilled = &globallogic_vehicle::Callback_VehicleKilled;
	level.callbackVehicleRadiusDamage = &globallogic_vehicle::Callback_VehicleRadiusDamage;
	level.callbackPlayerMigrated = &globallogic_player::Callback_PlayerMigrated;
	level.callbackHostMigration = &hostmigration::Callback_HostMigration;
	level.callbackHostMigrationSave = &hostmigration::Callback_HostMigrationSave;
	level.callbackPreHostMigrationSave = &hostmigration::Callback_PreHostMigrationSave;
	level.callbackBotEnteredUserEdge = &bot::Callback_BotEnteredUserEdge;
	level.callbackDecorationAwarded = &challenges::callback_decoration_awarded;
	level._gametype_default = "coop";
}


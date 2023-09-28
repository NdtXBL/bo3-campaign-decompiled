#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_tactical_rig_proximitydeterrent;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_e3074452;

/*
	Name: init
	Namespace: namespace_e3074452
	Checksum: 0x99EC1590
	Offset: 0x3B0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_e3074452
	Checksum: 0x7CDE4F48
	Offset: 0x3C0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function main()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	SetDvar("scr_emergency_reserve_timer", 5);
	SetDvar("scr_emergency_reserve_timer_upgraded", 8);
	namespace_726a1ef0::function_8cb15f87("cybercom_emergencyreserve", 3);
	namespace_726a1ef0::function_8b4ef058("cybercom_emergencyreserve", &function_a7861293, &function_5f9e76f1);
	namespace_726a1ef0::function_37a33686("cybercom_emergencyreserve", &function_306198fb, &function_18e4af4a);
}

/*
	Name: on_player_connect
	Namespace: namespace_e3074452
	Checksum: 0x99EC1590
	Offset: 0x4E0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
}

/*
	Name: on_player_spawned
	Namespace: namespace_e3074452
	Checksum: 0x99EC1590
	Offset: 0x4F0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: function_a7861293
	Namespace: namespace_e3074452
	Checksum: 0xF0F22155
	Offset: 0x500
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_a7861293(type)
{
	self.lives = self savegame::function_36adbb9c("lives", 1);
	self clientfield::set_to_player("sndTacRig", 1);
}

/*
	Name: function_5f9e76f1
	Namespace: namespace_e3074452
	Checksum: 0x788928AB
	Offset: 0x560
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_5f9e76f1(type)
{
	self.lives = 0;
	self clientfield::set_to_player("sndTacRig", 0);
}

/*
	Name: function_306198fb
	Namespace: namespace_e3074452
	Checksum: 0x896EA942
	Offset: 0x5A0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_306198fb(type)
{
	if(self.lives < 1)
	{
		return;
	}
	if(self function_76f34311("cybercom_emergencyreserve") == 2)
	{
		level thread namespace_d1c4e441::function_c0ba5acc(self);
	}
	self namespace_726a1ef0::function_e7e75042("cybercom_emergencyreserve");
	self playlocalsound("gdt_cybercore_regen_godown");
	playFX("player/fx_plyr_ability_emergency_reserve_1p", self.origin);
}

/*
	Name: function_18e4af4a
	Namespace: namespace_e3074452
	Checksum: 0xE9EEE012
	Offset: 0x668
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_18e4af4a(type)
{
}

/*
	Name: function_9248cfb4
	Namespace: namespace_e3074452
	Checksum: 0xE549A3DA
	Offset: 0x680
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_9248cfb4(sMeansOfDeath)
{
	if(isdefined(sMeansOfDeath))
	{
		return IsSubStr(sMeansOfDeath, "_BULLET") || IsSubStr(sMeansOfDeath, "_GRENADE") || IsSubStr(sMeansOfDeath, "_MELEE") || sMeansOfDeath == "MOD_EXPLOSIVE" || sMeansOfDeath == "MOD_SUICIDE" || sMeansOfDeath == "MOD_HEAD_SHOT";
	}
	return 0;
}


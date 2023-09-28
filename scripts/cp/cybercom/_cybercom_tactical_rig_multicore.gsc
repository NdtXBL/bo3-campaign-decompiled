#using scripts\codescripts\struct;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_dev;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_52c052b7;

/*
	Name: init
	Namespace: namespace_52c052b7
	Checksum: 0x99EC1590
	Offset: 0x248
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_52c052b7
	Checksum: 0xAB333CE6
	Offset: 0x258
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function main()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	namespace_726a1ef0::function_8cb15f87("cybercom_multicore", 7);
	namespace_726a1ef0::function_8b4ef058("cybercom_multicore", &function_cb139492, &function_ef8692ac);
}

/*
	Name: on_player_connect
	Namespace: namespace_52c052b7
	Checksum: 0x99EC1590
	Offset: 0x300
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
}

/*
	Name: on_player_spawned
	Namespace: namespace_52c052b7
	Checksum: 0x99EC1590
	Offset: 0x310
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: function_cb139492
	Namespace: namespace_52c052b7
	Checksum: 0x278A6CC2
	Offset: 0x320
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_cb139492(type)
{
	self thread namespace_726a1ef0::function_de82b8b4(type);
}

/*
	Name: function_ef8692ac
	Namespace: namespace_52c052b7
	Checksum: 0xCD4DF2BA
	Offset: 0x350
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_ef8692ac(type)
{
	self thread namespace_726a1ef0::function_e7e75042(type);
}


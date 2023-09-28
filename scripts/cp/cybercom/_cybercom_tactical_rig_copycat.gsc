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
#using scripts\shared\weapons_shared;

#namespace namespace_b854c5d0;

/*
	Name: init
	Namespace: namespace_b854c5d0
	Checksum: 0x99EC1590
	Offset: 0x268
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init()
{
}

/*
	Name: main
	Namespace: namespace_b854c5d0
	Checksum: 0x82DFC26C
	Offset: 0x278
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function main()
{
	callback::on_connect(&on_player_connect);
	callback::on_spawned(&on_player_spawned);
	namespace_726a1ef0::function_8cb15f87("cybercom_copycat", 6);
	namespace_726a1ef0::function_8b4ef058("cybercom_copycat", &function_f32160f1, &function_6cdcecbb);
}

/*
	Name: on_player_connect
	Namespace: namespace_b854c5d0
	Checksum: 0x99EC1590
	Offset: 0x320
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
}

/*
	Name: on_player_spawned
	Namespace: namespace_b854c5d0
	Checksum: 0x99EC1590
	Offset: 0x330
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: function_f32160f1
	Namespace: namespace_b854c5d0
	Checksum: 0x2AA30E24
	Offset: 0x340
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_f32160f1(type)
{
	self thread namespace_726a1ef0::function_de82b8b4(type);
}

/*
	Name: function_6cdcecbb
	Namespace: namespace_b854c5d0
	Checksum: 0x6C97D0A7
	Offset: 0x370
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_6cdcecbb(type)
{
	self thread namespace_726a1ef0::function_e7e75042(type);
	self notify("hash_6cdcecbb");
}


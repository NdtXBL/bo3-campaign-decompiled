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

#namespace namespace_941cddd7;

/*
	Name: function_c35e6aab
	Namespace: namespace_941cddd7
	Checksum: 0x99EC1590
	Offset: 0x258
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_941cddd7
	Checksum: 0x47CFA095
	Offset: 0x268
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_726a1ef0::function_8cb15f87("cybercom_playermovement", 5);
	namespace_726a1ef0::function_8b4ef058("cybercom_playermovement", &function_dbad932a, &function_43c4eb6);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_941cddd7
	Checksum: 0x99EC1590
	Offset: 0x310
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
}

/*
	Name: function_aebcf025
	Namespace: namespace_941cddd7
	Checksum: 0x99EC1590
	Offset: 0x320
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_dbad932a
	Namespace: namespace_941cddd7
	Checksum: 0xC95200F3
	Offset: 0x330
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_dbad932a(var_fe311e35)
{
	self thread namespace_726a1ef0::function_de82b8b4(var_fe311e35);
}

/*
	Name: function_43c4eb6
	Namespace: namespace_941cddd7
	Checksum: 0x66625D90
	Offset: 0x360
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_43c4eb6(var_fe311e35)
{
	self thread namespace_726a1ef0::function_e7e75042(var_fe311e35);
}


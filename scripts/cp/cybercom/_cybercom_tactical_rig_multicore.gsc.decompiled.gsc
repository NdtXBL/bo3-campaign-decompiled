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
	Name: function_c35e6aab
	Namespace: namespace_52c052b7
	Checksum: 0x99EC1590
	Offset: 0x248
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_52c052b7
	Checksum: 0xAB333CE6
	Offset: 0x258
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_726a1ef0::function_8cb15f87("cybercom_multicore", 7);
	namespace_726a1ef0::function_8b4ef058("cybercom_multicore", &function_cb139492, &function_ef8692ac);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_52c052b7
	Checksum: 0x99EC1590
	Offset: 0x300
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
}

/*
	Name: function_aebcf025
	Namespace: namespace_52c052b7
	Checksum: 0x99EC1590
	Offset: 0x310
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
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
function function_cb139492(var_fe311e35)
{
	self thread namespace_726a1ef0::function_de82b8b4(var_fe311e35);
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
function function_ef8692ac(var_fe311e35)
{
	self thread namespace_726a1ef0::function_e7e75042(var_fe311e35);
}


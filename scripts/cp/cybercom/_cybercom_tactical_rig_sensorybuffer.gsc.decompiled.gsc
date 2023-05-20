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

#namespace namespace_fc601b38;

/*
	Name: function_c35e6aab
	Namespace: namespace_fc601b38
	Checksum: 0x99EC1590
	Offset: 0x298
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
}

/*
	Name: function_d290ebfa
	Namespace: namespace_fc601b38
	Checksum: 0x887217CD
	Offset: 0x2A8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_726a1ef0::function_8cb15f87("cybercom_sensorybuffer", 4);
	namespace_726a1ef0::function_8b4ef058("cybercom_sensorybuffer", &function_1efe17b1, &function_8841b07b);
	namespace_726a1ef0::function_37a33686("cybercom_sensorybuffer", &function_e941faf9, &function_b5467750);
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_fc601b38
	Checksum: 0x99EC1590
	Offset: 0x388
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
}

/*
	Name: function_aebcf025
	Namespace: namespace_fc601b38
	Checksum: 0x99EC1590
	Offset: 0x398
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
}

/*
	Name: function_1efe17b1
	Namespace: namespace_fc601b38
	Checksum: 0x46778232
	Offset: 0x3A8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_1efe17b1(var_fe311e35)
{
	self thread namespace_726a1ef0::function_de82b8b4(var_fe311e35);
}

/*
	Name: function_8841b07b
	Namespace: namespace_fc601b38
	Checksum: 0x7BD3152
	Offset: 0x3D8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_8841b07b(var_fe311e35)
{
	self thread namespace_726a1ef0::function_e7e75042(var_fe311e35);
}

/*
	Name: function_e941faf9
	Namespace: namespace_fc601b38
	Checksum: 0xEE152609
	Offset: 0x408
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_e941faf9(var_fe311e35)
{
	self function_5d8fa337("specialty_bulletflinch");
	self function_5d8fa337("specialty_flashprotection");
	if(self function_76f34311(var_fe311e35) == 2)
	{
		self function_5d8fa337("specialty_flakjacket");
	}
}

/*
	Name: function_b5467750
	Namespace: namespace_fc601b38
	Checksum: 0x2B53E040
	Offset: 0x4A0
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_b5467750(var_fe311e35)
{
	self function_e52e855c("specialty_bulletflinch");
	self function_e52e855c("specialty_flashprotection");
	if(self function_76f34311(var_fe311e35) == 2)
	{
		self function_e52e855c("specialty_flakjacket");
	}
}


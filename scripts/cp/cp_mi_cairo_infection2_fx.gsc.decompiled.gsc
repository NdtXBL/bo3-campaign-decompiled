#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;

#namespace namespace_e7e65d47;

/*
	Name: function_2dc19561
	Namespace: namespace_e7e65d47
	Checksum: 0xC017B43D
	Offset: 0x1A0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("infection2_fx", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_e7e65d47
	Checksum: 0xA4AD8BC0
	Offset: 0x1E0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_f53e79d4();
	function_2ea898a8();
}

/*
	Name: function_f53e79d4
	Namespace: namespace_e7e65d47
	Checksum: 0xC039EBFD
	Offset: 0x210
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_f53e79d4()
{
	level.var_c1aa5253["snow_body_impact"] = "weather/fx_snow_impact_body_reverse_infection";
	level.var_c1aa5253["reverse_mortar"] = "explosions/fx_exp_mortar_snow_reverse";
	level.var_c1aa5253["bullet_impact"] = "impacts/fx_bul_impact_blood_body_fatal_reverse";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_e7e65d47
	Checksum: 0x99EC1590
	Offset: 0x270
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
}


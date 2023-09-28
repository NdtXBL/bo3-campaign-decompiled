#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\system_shared;

#namespace namespace_e7e65d47;

/*
	Name: __init__sytem__
	Namespace: namespace_e7e65d47
	Checksum: 0xC017B43D
	Offset: 0x1A0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("infection2_fx", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_e7e65d47
	Checksum: 0xA4AD8BC0
	Offset: 0x1E0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_fx();
	init_clientfields();
}

/*
	Name: init_fx
	Namespace: namespace_e7e65d47
	Checksum: 0xC039EBFD
	Offset: 0x210
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function init_fx()
{
	level._effect["snow_body_impact"] = "weather/fx_snow_impact_body_reverse_infection";
	level._effect["reverse_mortar"] = "explosions/fx_exp_mortar_snow_reverse";
	level._effect["bullet_impact"] = "impacts/fx_bul_impact_blood_body_fatal_reverse";
}

/*
	Name: init_clientfields
	Namespace: namespace_e7e65d47
	Checksum: 0x99EC1590
	Offset: 0x270
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
}


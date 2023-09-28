#using scripts\codescripts\struct;

#namespace namespace_6f40bee7;

/*
	Name: main
	Namespace: namespace_6f40bee7
	Checksum: 0x9F007657
	Offset: 0x178
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function main()
{
	precache_scripted_fx();
}

/*
	Name: precache_scripted_fx
	Namespace: namespace_6f40bee7
	Checksum: 0x4A1CF0BD
	Offset: 0x198
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function precache_scripted_fx()
{
	level._effect["mobile_shop_fall_explosion"] = "explosions/fx_exp_lt_moving_shop_fall";
	level._effect["fx_snow_lotus"] = "weather/fx_snow_player_os_lotus";
	level._effect["fx_rogue_robot_explosion"] = "explosions/fx_exp_robot_stage3_evb";
	level._effect["raven_explosion"] = "explosions/fx_exp_dni_raven_reveal";
}


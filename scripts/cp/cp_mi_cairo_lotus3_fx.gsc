#using scripts\codescripts\struct;

#namespace namespace_f2fdb334;

/*
	Name: main
	Namespace: namespace_f2fdb334
	Checksum: 0xEF4526C5
	Offset: 0x328
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
	Namespace: namespace_f2fdb334
	Checksum: 0x22A0D1C8
	Offset: 0x348
	Size: 0x135
	Parameters: 0
	Flags: None
*/
function precache_scripted_fx()
{
	level._effect["mobile_shop_fall_explosion"] = "explosions/fx_exp_lt_moving_shop_fall";
	level._effect["burn_loop_human_head"] = "fire/fx_fire_ai_human_head_loop";
	level._effect["burn_loop_human_left_leg"] = "fire/fx_fire_ai_human_leg_left_loop";
	level._effect["burn_loop_human_right_leg"] = "fire/fx_fire_ai_human_leg_right_loop";
	level._effect["burn_loop_human_torso"] = "fire/fx_fire_ai_human_torso_loop";
	level._effect["burn_loop_robot_left_arm"] = "fire/fx_fire_ai_robot_arm_left_loop";
	level._effect["burn_loop_robot_right_arm"] = "fire/fx_fire_ai_robot_arm_right_loop";
	level._effect["burn_loop_robot_head"] = "fire/fx_fire_ai_robot_head_loop";
	level._effect["burn_loop_robot_left_leg"] = "fire/fx_fire_ai_robot_leg_left_loop";
	level._effect["burn_loop_robot_right_leg"] = "fire/fx_fire_ai_robot_leg_right_loop";
	level._effect["burn_loop_robot_torso"] = "fire/fx_fire_ai_robot_torso_loop";
}


#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_robot_reveal;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_835fda7e;

/*
	Name: function_5dcf4c9a
	Namespace: namespace_835fda7e
	Checksum: 0xEF7D3CE5
	Offset: 0x1110
	Size: 0x1F3
	Parameters: 1
	Flags: None
*/
function function_5dcf4c9a(var_74cd64bc)
{
	level flag::wait_till("apc_done");
	function_312356f();
	level thread function_a4e65a71();
	level thread function_d8ccdb23();
	level thread function_e92ad8ae();
	level thread function_cc4c4e16();
	level thread function_10b855b0();
	level thread function_2772c15e();
	level thread function_6ba94a8();
	level thread function_637fae36();
	level thread function_2e776cf4();
	level thread function_b5284617();
	level thread function_21c12b92();
	level.var_27b46342 = ArrayCombine(GetAITeamArray("allies"), level.activePlayers, 0, 0);
	level flag::wait_till("pod_go");
	if(isdefined(level.BZM_PROLOGUEDialogue6_2Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue6_2Callback]]();
	}
	level flag::wait_till("pod_gone");
	skipto::function_be8adfb8("skipto_robot_defend");
}

/*
	Name: function_21c12b92
	Namespace: namespace_835fda7e
	Checksum: 0xACDCDD15
	Offset: 0x1310
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_21c12b92()
{
	foreach(player in level.activePlayers)
	{
		player.var_c34702c6 = 0;
		player thread function_ae9ce6f0();
		player thread function_bfce7c2a();
	}
}

/*
	Name: function_ae9ce6f0
	Namespace: namespace_835fda7e
	Checksum: 0x48799C9F
	Offset: 0x13D0
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_ae9ce6f0()
{
	self endon("disconnect");
	self endon("hash_99343b5f");
	level endon("hash_9d83ef5");
	while(1)
	{
		self waittill("weapon_fired", var_913ae498);
		if(var_913ae498.weapClass !== "pistol")
		{
			self.var_c34702c6 = 1;
			self notify("hash_99343b5f");
		}
	}
}

/*
	Name: function_bfce7c2a
	Namespace: namespace_835fda7e
	Checksum: 0xA33FBD40
	Offset: 0x1460
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_bfce7c2a()
{
	self endon("disconnect");
	self endon("hash_99343b5f");
	level endon("hash_9d83ef5");
	self waittill("grenade_fire");
	self.var_c34702c6 = 1;
	self notify("hash_99343b5f");
}

/*
	Name: function_fe88fdb1
	Namespace: namespace_835fda7e
	Checksum: 0xEE5D0EE4
	Offset: 0x14B8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_fe88fdb1()
{
	foreach(player in level.activePlayers)
	{
		if(!(isdefined(player.var_c34702c6) && player.var_c34702c6))
		{
			namespace_61c634f2::function_51c49e5(player);
		}
	}
}

/*
	Name: function_2e776cf4
	Namespace: namespace_835fda7e
	Checksum: 0xC0ED92AC
	Offset: 0x1578
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_2e776cf4()
{
	level flag::wait_till("pod_go");
	var_fccc406f = struct::get_array("rpg_begin");
	var_15b740f0 = struct::get("pod_pos");
	var_90911853 = GetWeapon("launcher_standard_magic_bullet");
	foreach(s_rpg in var_fccc406f)
	{
		wait(1);
		MagicBullet(var_90911853, s_rpg.origin, var_15b740f0.origin);
	}
	wait(0.3);
	level thread function_9716eddb();
	foreach(player in level.activePlayers)
	{
		player EnableInvulnerability();
	}
	level flag::wait_till("pod_gone");
	level flag::set("rpg_done");
	level thread function_fe88fdb1();
}

/*
	Name: function_9716eddb
	Namespace: namespace_835fda7e
	Checksum: 0x2C99135E
	Offset: 0x17B8
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_9716eddb()
{
	level endon("hash_2e90f258");
	var_fccc406f = struct::get_array("rpg_begin");
	var_90911853 = GetWeapon("launcher_standard_magic_bullet");
	while(1)
	{
		foreach(s_rpg in var_fccc406f)
		{
			v_offset = (randomIntRange(-100, 100), randomIntRange(-100, 100), randomIntRange(-100, 100));
			MagicBullet(var_90911853, s_rpg.origin, struct::get(s_rpg.target).origin + v_offset);
			wait(0.75);
		}
		wait(1.5);
	}
}

/*
	Name: function_d8ccdb23
	Namespace: namespace_835fda7e
	Checksum: 0x6E2544FB
	Offset: 0x1950
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_d8ccdb23()
{
	level.var_4d5a4697.accuracy = 0.5;
	level.var_4d5a4697.grenadeAmmo = 0;
	level.var_4d5a4697 ai::set_ignoreall(1);
	level.var_9db406db ai::set_ignoreall(1);
	level.var_4d5a4697 ai::set_behavior_attribute("cqb", 1);
	level.var_9db406db ai::set_behavior_attribute("cqb", 1);
	level flag::wait_till("minister_pos");
	level.var_4d5a4697 ai::set_ignoreall(0);
	level.var_9db406db ai::set_ignoreall(0);
}

/*
	Name: function_637fae36
	Namespace: namespace_835fda7e
	Checksum: 0x4317A3F5
	Offset: 0x1A68
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_637fae36()
{
	var_27606155 = GetEntArray("trigger_ob_defend", "targetname");
	foreach(var_a57773f5 in var_27606155)
	{
		var_a57773f5 TriggerEnable(1);
	}
	var_b957e40 = GetEnt("trigger_apc_reinforce", "targetname");
	var_b957e40 TriggerEnable(0);
	var_f3fb06d8 = GetEnt("trigger_pod_lz", "targetname");
	var_f3fb06d8 TriggerEnable(0);
	level flag::wait_till("shift_defend");
	var_b957e40 TriggerEnable(1);
}

/*
	Name: function_a4e4e77d
	Namespace: namespace_835fda7e
	Checksum: 0xB3CA8AD1
	Offset: 0x1BF8
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_a4e4e77d()
{
	level waittill("hash_da66fd91");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_prologue_rumble_apc_offroad");
	}
	foreach(player in level.players)
	{
		player shellshock("default", 5);
		player.overridePlayerDamage = &function_947bfdac;
	}
}

/*
	Name: function_8e9f8d38
	Namespace: namespace_835fda7e
	Checksum: 0x35ABC398
	Offset: 0x1D40
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function function_8e9f8d38()
{
	level.var_2fd26037 ForceTeleport(struct::get("skipto_robot_defend_hendricks").origin);
	level namespace_2cb3876f::function_12ce22ee();
	foreach(ai_ally in level.a_ai_allies)
	{
		ai_ally.goalRadius = 16;
		ai_ally ForceTeleport(struct::get("skipto_robot_defend_" + ai_ally.targetname).origin);
	}
}

/*
	Name: function_a4e65a71
	Namespace: namespace_835fda7e
	Checksum: 0xD7C57C98
	Offset: 0x1E68
	Size: 0x2E9
	Parameters: 0
	Flags: None
*/
function function_a4e65a71()
{
	wait(1);
	vehicle::simple_spawn_single("defend_truck_3");
	vehicle::simple_spawn_single("defend_truck_4");
	level thread function_ff1a7b45();
	level flag::wait_till("shift_defend");
	level thread function_633f337();
	level flag::set("pod_waypoint");
	level thread function_b0cce50c();
	wait(5);
	spawner::simple_spawn_single("robot_defend_rpg");
	vehicle::simple_spawn_single("defend_truck_1");
	wait(1);
	vehicle::simple_spawn_single("defend_truck_2");
	level.var_d3659748 = vehicle::simple_spawn_single("defend_apc_3");
	level flag::wait_till("goto_pod");
	wait(3);
	level thread function_da3c5a9d();
	var_d3659748 = vehicle::simple_spawn_single("defend_apc_2");
	var_d3659748 thread function_2d1c6af3();
	wait(2);
	level flag::set("start_defend_countdown");
	if(level.players.size > 1)
	{
		foreach(player in level.players)
		{
			player.attackerAccuracy = 0.5;
		}
		break;
	}
	foreach(player in level.players)
	{
		player.attackerAccuracy = 0.4;
	}
}

/*
	Name: function_633f337
	Namespace: namespace_835fda7e
	Checksum: 0x30BDAA3E
	Offset: 0x2160
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function function_633f337()
{
	level flag::wait_till("minister_pos");
	spawn_manager::enable("sm_robot_defend_tower");
	util::delay(5, undefined, &spawn_manager::disable, "sm_robot_defend_tower");
	wait(5);
	spawn_manager::enable("sm_apc_reinforce");
	level flag::wait_till("start_defend_countdown");
	spawn_manager::enable("sm_robot_pod");
	wait(2);
	spawn_manager::enable("sm_hilltop_guard");
	spawn_manager::enable("sm_perimeter_guard");
	wait(3);
	spawn_manager::enable("sm_robot_defend_tower");
	spawn_manager::enable("sm_defend_rpg");
	level waittill("hash_2ac435dc");
	spawn_manager::disable("sm_robot_defend_tower");
	spawn_manager::disable("sm_robot_pod");
	spawn_manager::disable("sm_hilltop_guard");
	spawn_manager::disable("sm_perimeter_guard");
	spawn_manager::disable("sm_defend_rpg");
	level waittill("hash_935fbb41");
	savegame::function_5d2cdd99();
	wait(2);
	spawn_manager::enable("sm_robot_defend_tower");
	spawn_manager::enable("sm_robot_pod");
	wait(2);
	spawn_manager::enable("sm_hilltop_guard");
	spawn_manager::enable("sm_perimeter_guard");
	wait(2);
	spawn_manager::enable("sm_defend_rpg");
	wait(1);
	spawn_manager::kill("sm_robot_pod");
	spawn_manager::kill("sm_robot_defend_tower");
	spawn_manager::enable("sm_robot_swarm");
	level flag::wait_till("pod_go");
	level thread namespace_21b2c1f2::function_fcb67450();
	spawn_manager::kill("sm_hilltop_guard");
	spawn_manager::kill("sm_perimeter_guard");
	spawn_manager::kill("sm_defend_rpg");
}

/*
	Name: function_ff1a7b45
	Namespace: namespace_835fda7e
	Checksum: 0x25E17EE8
	Offset: 0x24A8
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_ff1a7b45()
{
	wait(0.1);
	vh_truck3 = GetEnt("defend_truck_3_vh", "targetname");
	var_413044a1 = GetEnt("defend_truck_4_vh", "targetname");
	var_977a939e = vh_truck3 vehicle::get_rider("gunner1");
	var_d96e2f91 = var_413044a1 vehicle::get_rider("gunner1");
	while(isalive(var_977a939e) || isalive(var_d96e2f91))
	{
		wait(1);
	}
	level flag::set("shift_defend");
}

/*
	Name: function_2d1c6af3
	Namespace: namespace_835fda7e
	Checksum: 0xD6F2367B
	Offset: 0x25C0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2d1c6af3()
{
	self SetCanDamage(0);
	self waittill("reached_end_node");
	wait(5);
	self SetCanDamage(1);
}

/*
	Name: function_40fd81b
	Namespace: namespace_835fda7e
	Checksum: 0x381E7C11
	Offset: 0x2610
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_40fd81b()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self.grenadeAmmo = 0;
	self.goalRadius = 16;
	wait(RandomFloatRange(2, 3.5));
	var_90911853 = GetWeapon("launcher_standard_magic_bullet");
	var_f8e04bb3 = self GetTagOrigin("tag_flash");
	while(1)
	{
		var_5aebca26 = level.var_27b46342[RandomInt(level.var_27b46342.size)];
		if(isdefined(var_5aebca26))
		{
			v_offset = (randomIntRange(-100, 100), randomIntRange(-100, 100), randomIntRange(90, 100));
			e_target = util::spawn_model("tag_origin", var_5aebca26.origin + v_offset);
			e_target.health = 100;
			self ai::shoot_at_target("normal", e_target, "tag_origin", undefined);
			e_target delete();
			wait(RandomFloatRange(4, 5.5));
		}
		wait(0.1);
	}
}

/*
	Name: function_54454538
	Namespace: namespace_835fda7e
	Checksum: 0xFBB9AF33
	Offset: 0x2810
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_54454538()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	self endon("death");
	self thread function_32c0959c();
	self thread function_3b49905c();
	self util::magic_bullet_shield();
	self ai::disable_pain();
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.grenadeAmmo = 0;
	self.goalRadius = 16;
	self waittill("goal");
	var_5aebca26 = GetEnt("rpg_target", "targetname");
	var_5aebca26.health = 1;
	var_90911853 = GetWeapon("launcher_standard_magic_bullet");
	var_f8e04bb3 = self GetTagOrigin("tag_flash");
	wait(1);
	if(!isdefined(var_f8e04bb3))
	{
		var_f8e04bb3 = self.origin;
	}
	e_projectile = MagicBullet(var_90911853, var_f8e04bb3, var_5aebca26.origin);
	e_projectile waittill("death");
	e_projectile thread FX::Play("rock_explosion", e_projectile.origin);
	wait(1);
	v_offset = (40, 0, 72);
	var_5aebca26 moveto(level.activePlayers[RandomInt(level.activePlayers.size)].origin + v_offset, 0.05);
	self thread ai::shoot_at_target("normal", var_5aebca26, undefined, undefined);
	self waittill("stop_shoot_at_target");
	self util::stop_magic_bullet_shield();
	self ai::enable_pain();
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	var_5aebca26 delete();
}

/*
	Name: function_3b49905c
	Namespace: namespace_835fda7e
	Checksum: 0x27B65275
	Offset: 0x2B28
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_3b49905c()
{
	self endon("death");
	level flag::wait_till("apc_arrive");
	self util::stop_magic_bullet_shield();
}

/*
	Name: function_32c0959c
	Namespace: namespace_835fda7e
	Checksum: 0x1EEB193
	Offset: 0x2B78
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_32c0959c()
{
	self waittill("death");
	if(level.players.size > 1)
	{
		spawner::simple_spawn_single("rpg_coop");
	}
}

/*
	Name: function_4b1fb716
	Namespace: namespace_835fda7e
	Checksum: 0x23B01732
	Offset: 0x2BC0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_4b1fb716()
{
	self endon("death");
	self.goalRadius = 4;
	self ai::set_behavior_attribute("sprint", 1);
	self waittill("goal");
	self ai::set_behavior_attribute("sprint", 0);
}

/*
	Name: function_64dd8530
	Namespace: namespace_835fda7e
	Checksum: 0xBE271FC3
	Offset: 0x2C30
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_64dd8530()
{
	self endon("death");
	self.grenadeAmmo = 0;
}

/*
	Name: function_96551790
	Namespace: namespace_835fda7e
	Checksum: 0x6941ACA9
	Offset: 0x2C50
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_96551790()
{
	self endon("death");
	self.grenadeAmmo = 0;
	spawner::waittill_ai_group_count("group_defend_1", 1);
	self kill();
}

/*
	Name: function_b9081af
	Namespace: namespace_835fda7e
	Checksum: 0xC6976A09
	Offset: 0x2CA8
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_b9081af()
{
	self endon("death");
	self colors::set_force_color("o");
	self.grenadeAmmo = 0;
}

/*
	Name: function_7f708ee
	Namespace: namespace_835fda7e
	Checksum: 0xCF087A8E
	Offset: 0x2CE8
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_7f708ee()
{
	self endon("death");
	self.grenadeAmmo = 0;
}

/*
	Name: function_bf932181
	Namespace: namespace_835fda7e
	Checksum: 0xE995D795
	Offset: 0x2D08
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_bf932181()
{
	self endon("death");
	self.goalRadius = 4;
	self ai::set_behavior_attribute("move_mode", "rambo");
	self waittill("goal");
	self ai::set_behavior_attribute("move_mode", "normal");
}

/*
	Name: function_c3228115
	Namespace: namespace_835fda7e
	Checksum: 0x93315D8C
	Offset: 0x2D88
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_c3228115(var_a917e7b9, var_cf1a6222)
{
	self endon("death");
	self thread turret::disable_ai_getoff(var_a917e7b9, 1);
	self thread turret::disable_ai_getoff(var_cf1a6222, 1);
	self turret::enable(var_a917e7b9, 1);
	self turret::enable(var_cf1a6222, 1);
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	self waittill("reached_end_node");
	wait(1);
	ai_driver = self vehicle::get_rider("driver");
	if(isalive(ai_driver))
	{
		ai_driver thread vehicle::get_out();
	}
}

/*
	Name: function_45c35350
	Namespace: namespace_835fda7e
	Checksum: 0x8A628A8E
	Offset: 0x2EC8
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_45c35350()
{
	self endon("death");
	self util::magic_bullet_shield();
	self thread turret::disable_ai_getoff(1, 1);
	self turret::enable(1, 1);
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	wait(1);
	self waittill("reached_end_node");
	self util::stop_magic_bullet_shield();
	foreach(ai_rider in self.riders)
	{
		if(isalive(ai_rider) && ai_rider.script_startingposition != "gunner1")
		{
			ai_rider thread namespace_2cb3876f::function_2f943869();
		}
	}
	n_wait_time = RandomFloatRange(20, 20 + RandomFloat(20));
	wait(n_wait_time);
	self kill();
}

/*
	Name: function_b2d7edae
	Namespace: namespace_835fda7e
	Checksum: 0xA5A8B991
	Offset: 0x30A8
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_b2d7edae()
{
	self endon("death");
	self util::magic_bullet_shield();
	self thread turret::disable_ai_getoff(1, 1);
	self turret::enable(1, 1);
	self thread vehicle::get_on_and_go_path(GetVehicleNode(self.target, "targetname"));
	wait(1);
	foreach(ai_rider in self.riders)
	{
		if(isalive(ai_rider) && ai_rider.script_startingposition == "gunner1")
		{
			self thread function_58b0f8d8(ai_rider);
		}
	}
	self waittill("reached_end_node");
	self util::stop_magic_bullet_shield();
	foreach(ai_rider in self.riders)
	{
		if(isalive(ai_rider) && ai_rider.script_startingposition != "gunner1")
		{
			ai_rider thread namespace_2cb3876f::function_2f943869();
		}
	}
}

/*
	Name: function_58b0f8d8
	Namespace: namespace_835fda7e
	Checksum: 0xE84390AF
	Offset: 0x32E0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_58b0f8d8(ai_gunner)
{
	self endon("death");
	self waittill("reached_end_node");
	if(isalive(ai_gunner))
	{
		ai_gunner waittill("death");
	}
	else
	{
		wait(2);
	}
	self DoDamage(self.health + 1, self.origin);
}

/*
	Name: function_98ae774
	Namespace: namespace_835fda7e
	Checksum: 0x40846AA0
	Offset: 0x3370
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_98ae774()
{
	self endon("death");
	if(RandomInt(6) < 2)
	{
		self namespace_2cb3876f::function_29c76f59();
	}
	else
	{
		self ai::set_behavior_attribute("move_mode", "marching");
	}
}

/*
	Name: function_9d374
	Namespace: namespace_835fda7e
	Checksum: 0x8AFBA2B6
	Offset: 0x33E8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_9d374()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self namespace_2cb3876f::function_29c76f59();
	s_goal = struct::get("pod_pos");
	var_72237359 = [];
	while(var_72237359.size == 0)
	{
		var_72237359 = util::PositionQuery_PointArray(s_goal.origin, 64, 400, 70, 40);
		wait(0.25);
	}
	self SetGoal(var_72237359[RandomInt(var_72237359.size)], 1);
}

/*
	Name: function_cc4c4e16
	Namespace: namespace_835fda7e
	Checksum: 0xA40AF0FE
	Offset: 0x34E8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_cc4c4e16()
{
	level flag::wait_till("shift_defend");
	level thread namespace_2cb3876f::function_47a62798(1);
	level flag::wait_till("pod_arrive");
	level thread namespace_2cb3876f::function_a5398264("rambo");
	level thread namespace_2cb3876f::function_db027040(1);
}

/*
	Name: function_e92ad8ae
	Namespace: namespace_835fda7e
	Checksum: 0x78D609CD
	Offset: 0x3588
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_e92ad8ae()
{
	wait(1);
	trigger::use("trig_defend_position_allies1");
	level flag::wait_till("shift_defend");
	level flag::wait_till("pod_arrive");
	savegame::function_5d2cdd99();
	level thread function_f76b808e();
	level.var_2fd26037 colors::disable();
	level.var_9db406db colors::disable();
	level.var_4d5a4697 colors::disable();
	trigger::use("trig_defend_position_allies2");
	wait(3);
	trigger::use("triggercolor_minister");
	wait(8);
	level thread function_9282c858();
}

/*
	Name: function_f76b808e
	Namespace: namespace_835fda7e
	Checksum: 0x99E7762B
	Offset: 0x36B8
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_f76b808e()
{
	level scene::add_scene_func("cin_pro_17_02_robotdefend_vign_hookup_minsterlloop", &function_4dc9c2f9, "play");
	level scene::add_scene_func("cin_pro_17_02_robotdefend_vign_hookup_khalilloop", &function_4e2b6779, "play");
	level scene::add_scene_func("cin_pro_17_02_robotdefend_vign_hookup_hendricksloop", &function_8600d87b, "play");
	level thread scene::Play("cin_pro_17_02_robotdefend_vign_hookup_minsterlloop");
	level thread scene::Play("cin_pro_17_02_robotdefend_vign_hookup_khalilloop");
	level thread scene::Play("cin_pro_17_02_robotdefend_vign_hookup_hendricksloop");
	level thread function_5443e6cb();
	level thread function_deb83f0d();
	level flag::wait_till("ready_load");
	level scene::Play("cin_pro_17_02_robotdefend_vign_hookup");
	level scene::Play("cin_pro_17_02_robotdefend_vign_hookup_loop");
}

/*
	Name: function_deb83f0d
	Namespace: namespace_835fda7e
	Checksum: 0xF51C396
	Offset: 0x3848
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_deb83f0d()
{
	level endon("hash_3b063ae9");
	wait(15);
	level flag::set("ready_load");
}

/*
	Name: function_5443e6cb
	Namespace: namespace_835fda7e
	Checksum: 0x7528CCE5
	Offset: 0x3888
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5443e6cb()
{
	level endon("hash_3b063ae9");
	level util::waittill_multiple("hendricks_ready", "khalil_ready", "minister_ready");
	level flag::set("ready_load");
}

/*
	Name: function_4dc9c2f9
	Namespace: namespace_835fda7e
	Checksum: 0x683A7506
	Offset: 0x38F0
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_4dc9c2f9(a_ents)
{
	level notify("hash_43c7040");
}

/*
	Name: function_4e2b6779
	Namespace: namespace_835fda7e
	Checksum: 0x699E9630
	Offset: 0x3918
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_4e2b6779(a_ents)
{
	level notify("hash_fecf35c0");
}

/*
	Name: function_8600d87b
	Namespace: namespace_835fda7e
	Checksum: 0x59658937
	Offset: 0x3940
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_8600d87b(a_ents)
{
	level notify("hash_a4aaeab6");
}

/*
	Name: function_10b855b0
	Namespace: namespace_835fda7e
	Checksum: 0x7D49EC6E
	Offset: 0x3968
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_10b855b0()
{
	level flag::wait_till("shift_defend");
	trigger::use("triggercolor_enemy_path");
	level flag::wait_till("apc_reinforce");
	trigger::use("triggercolor_enemy_pod");
	level flag::wait_till("goto_pod");
	trigger::use("triggercolor_enemy_end");
}

/*
	Name: function_b0cce50c
	Namespace: namespace_835fda7e
	Checksum: 0xAA3F84CE
	Offset: 0x3A20
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_b0cce50c()
{
	var_15b740f0 = struct::get("pod_pos");
	s_defend = struct::get("pod_defend");
	wait(2);
	objectives::set("cp_waypoint_breadcrumb", var_15b740f0);
	var_f3fb06d8 = GetEnt("trigger_pod_lz", "targetname");
	var_6848ea7f = GetEnt("trigger_apc_reinforce", "targetname");
	var_f3fb06d8 TriggerEnable(1);
	var_6848ea7f thread function_a950a3ec();
	level thread function_a3ac9ae0();
	level flag::wait_till("pod_arrive");
	var_f3fb06d8 waittill("trigger");
	objectives::complete("cp_waypoint_breadcrumb", var_15b740f0);
	objectives::Hide("cp_level_prologue_goto_exfil");
	objectives::set("cp_level_prologue_defend_pod", s_defend);
}

/*
	Name: function_a3ac9ae0
	Namespace: namespace_835fda7e
	Checksum: 0xEB012DA6
	Offset: 0x3BC8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_a3ac9ae0()
{
	level endon("hash_2ef4a1f0");
	spawn_manager::function_27bf2e8("sm_apc_reinforce", 2);
	wait(10);
	level flag::set("goto_pod");
}

/*
	Name: function_a950a3ec
	Namespace: namespace_835fda7e
	Checksum: 0xB0D2B7B0
	Offset: 0x3C20
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_a950a3ec()
{
	level endon("hash_2ef4a1f0");
	foreach(player in level.players)
	{
		self thread function_cd56c2cf(player);
	}
	level.var_fc71d8f = 0;
	while(level.var_fc71d8f < level.players.size)
	{
		wait(0.5);
	}
	level flag::set("goto_pod");
}

/*
	Name: function_cd56c2cf
	Namespace: namespace_835fda7e
	Checksum: 0xF53CB6A1
	Offset: 0x3D10
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_cd56c2cf(player)
{
	level endon("hash_2ef4a1f0");
	while(1)
	{
		self waittill("trigger", e_entity);
		if(e_entity == player)
		{
			level.var_fc71d8f++;
		}
	}
}

/*
	Name: function_b5284617
	Namespace: namespace_835fda7e
	Checksum: 0x21A6C4BA
	Offset: 0x3D70
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_b5284617()
{
	level.var_4c225fa1 = GetEnt("brush_pod", "targetname");
	vehicle::add_spawn_function("fxanim_vtol_pod", &function_de0720c1);
	vehicle::add_spawn_function("fxanim_pod", &function_52d9a509);
	level thread scene::Play("p7_fxanim_cp_prologue_vtol_pod_drop_off_bundle");
	level thread function_45756e82();
	level thread function_aba4324();
	level thread function_c0fa2edc();
	level thread function_2063548d();
	level waittill("hash_39aa5979");
	level flag::set("pod_on_ground");
	foreach(player in level.activePlayers)
	{
		player PlayRumbleOnEntity("cp_prologue_rumble_pod_land");
	}
	wait(3);
	level flag::set("pod_arrive");
	level flag::wait_till("ready_load");
	level thread function_6947ce3();
	level thread function_7a733ec7();
	level flag::set("dropship_return");
	ArrayRemoveValue(level.var_27b46342, level.var_4d5a4697);
	ArrayRemoveValue(level.var_27b46342, level.var_9db406db);
	ArrayRemoveValue(level.var_27b46342, level.var_2fd26037);
	level flag::wait_till("pod_go");
	level scene::Play("cin_pro_17_02_robotdefend_vign_hookup_explosion");
}

/*
	Name: function_4f43b0cc
	Namespace: namespace_835fda7e
	Checksum: 0x3A3CAE21
	Offset: 0x4060
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_4f43b0cc(a_ents)
{
	exploder::exploder_stop("light_exploder_defend_radio_tower");
}

/*
	Name: function_7a733ec7
	Namespace: namespace_835fda7e
	Checksum: 0xC3511F33
	Offset: 0x4090
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_7a733ec7()
{
	level waittill("hash_b9036ca8");
	exploder::exploder("fx_exploder_vtol_pod_rotorwash");
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("dropship_rumble_loop", 1);
	}
	level waittill("hash_958c9db6");
	exploder::stop_exploder("fx_exploder_vtol_pod_rotorwash");
	foreach(player in level.activePlayers)
	{
		player clientfield::set_to_player("dropship_rumble_loop", 0);
	}
}

/*
	Name: function_2063548d
	Namespace: namespace_835fda7e
	Checksum: 0x53E0B8DD
	Offset: 0x4208
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_2063548d()
{
	level flag::wait_till("pod_loaded");
	objectives::complete("cp_level_prologue_defend_pod");
	objectives::set("cp_level_prologue_get_out_alive");
	level.activePlayers[0] PlayLoopSound("evt_outro_tinnitus_lp", 4);
	level thread function_e7a97be1();
	Array::run_all(level.players, &util::function_16c71b8, 1);
	function_657fb683();
	level thread util::screen_fade_in(1, "black", "cinematic_fader");
	level flag::set("pod_go");
	level thread function_f7af5999();
	function_a43cf0f6();
	scene::add_scene_func("cin_pro_17_02_robotdefend_vign_hookup_player", &function_6e3b3bec, "play");
	level thread scene::Play("cin_pro_17_02_robotdefend_vign_hookup_player");
	level util::clientNotify("sndOS1");
	level waittill("hash_7176ec93");
	level util::clientNotify("sndOS2");
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("damage_heavy");
	}
	level thread util::screen_fade_out(0.75, "black", "cinematic_fader");
	level function_7098f5fa();
	level flag::set("pod_gone");
}

/*
	Name: function_e7a97be1
	Namespace: namespace_835fda7e
	Checksum: 0x2461BFBE
	Offset: 0x44E0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_e7a97be1()
{
	wait(10);
	level.activePlayers[0] StopLoopSound(5);
}

/*
	Name: function_657fb683
	Namespace: namespace_835fda7e
	Checksum: 0x145FA147
	Offset: 0x4518
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_657fb683()
{
	foreach(player in level.players)
	{
		if(isalive(player))
		{
			player thread function_c794d3c2();
			player thread scene::Play("cin_pro_17_02_robotdefend_vign_hookup_player_explosion");
		}
	}
	wait(0.75);
	util::screen_fade_out(0.5, "black", "cinematic_fader");
}

/*
	Name: function_a43cf0f6
	Namespace: namespace_835fda7e
	Checksum: 0xEFCDD2D
	Offset: 0x4618
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_a43cf0f6()
{
	foreach(player in level.players)
	{
		if(isalive(player))
		{
			player scene::stop("cin_pro_17_02_robotdefend_vign_hookup_player_explosion");
		}
	}
}

/*
	Name: function_c794d3c2
	Namespace: namespace_835fda7e
	Checksum: 0x71DAA60A
	Offset: 0x46D0
	Size: 0x203
	Parameters: 4
	Flags: None
*/
function function_c794d3c2(n_height, var_7ad049d6, b_do_rumble, var_688fa2d2)
{
	if(!isdefined(n_height))
	{
		n_height = 300;
	}
	if(!isdefined(var_7ad049d6))
	{
		var_7ad049d6 = 100;
	}
	if(!isdefined(b_do_rumble))
	{
		b_do_rumble = 1;
	}
	if(!isdefined(var_688fa2d2))
	{
		var_688fa2d2 = 1;
	}
	self endon("death");
	self EnableInvulnerability();
	v_player_fwd = AnglesToForward(self.angles);
	var_652493a5 = v_player_fwd * var_7ad049d6;
	var_f720f8d7 = self.origin + (0, 0, n_height) + var_652493a5;
	var_f9f8910c = self.origin + var_652493a5;
	var_90911853 = GetWeapon("launcher_standard_magic_bullet");
	MagicBullet(var_90911853, var_f720f8d7, var_f9f8910c);
	self playsoundtoplayer("evt_outro_explosion", self);
	wait(0.25);
	level thread FX::Play("rock_explosion", var_f9f8910c);
	if(b_do_rumble)
	{
		self PlayRumbleOnEntity("cp_prologue_rumble_pod_land");
	}
	if(var_688fa2d2)
	{
		self shellshock("default", 7);
	}
	self DisableInvulnerability();
}

/*
	Name: function_6e3b3bec
	Namespace: namespace_835fda7e
	Checksum: 0x22526F32
	Offset: 0x48E0
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_6e3b3bec(a_ents)
{
	var_a5eb4761 = struct::get("s_rocket_player_hookup", "targetname");
	var_2c7e0a5a = struct::get(var_a5eb4761.target, "targetname");
	level waittill("hash_37113ae1");
	var_90911853 = GetWeapon("launcher_standard_magic_bullet");
	MagicBullet(var_90911853, var_a5eb4761.origin, var_2c7e0a5a.origin);
}

/*
	Name: function_f7af5999
	Namespace: namespace_835fda7e
	Checksum: 0x80BEB560
	Offset: 0x49B0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_f7af5999()
{
	level.var_2fd26037 dialog::say("hend_wait_my_team_s_still_0", 0.5);
	level.apc dialog::say("dops_negative_airspace_i_0", 0.5, 1);
	level.var_2fd26037 dialog::say("hend_no_no_no_no_fu_0", 0.5);
}

/*
	Name: function_de0720c1
	Namespace: namespace_835fda7e
	Checksum: 0xFC5469DD
	Offset: 0x4A40
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_de0720c1()
{
	self endon("death");
	self util::magic_bullet_shield();
	if(level flag::get("start_defend_countdown"))
	{
		self thread FX::Play("dropship_spotlight", self.origin, self.angles, "notetrack_cease_fire", 1, "tag_fx_light_frontspot_ll");
	}
}

/*
	Name: function_52d9a509
	Namespace: namespace_835fda7e
	Checksum: 0x9894727A
	Offset: 0x4AD0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_52d9a509()
{
	self util::magic_bullet_shield();
	var_a3781dbd = GetEnt("pod_panel", "targetname");
	var_730a7fb0 = (-1.9, 53.5, 79.5);
	var_162bfcbf = VectorScale((-1, 0, 0), 180);
	var_17250c53 = VectorToAngles(var_162bfcbf);
	var_a3781dbd LinkTo(self, "tag_origin", var_730a7fb0, var_17250c53);
	level flag::wait_till("pod_on_ground");
	RadiusDamage(self.origin, 250, 150, 150, undefined, "MOD_EXPLOSIVE");
}

/*
	Name: function_aba4324
	Namespace: namespace_835fda7e
	Checksum: 0x660546F4
	Offset: 0x4C08
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_aba4324()
{
	wait(3.5);
	vh_vtol = GetEnt("fxanim_vtol_pod", "animname");
	var_dc6cf86c = struct::get_array("rpg_vtol");
	foreach(s_rpg in var_dc6cf86c)
	{
		vh_vtol thread function_3df1f906(s_rpg);
	}
}

/*
	Name: function_3df1f906
	Namespace: namespace_835fda7e
	Checksum: 0x82DADE53
	Offset: 0x4D00
	Size: 0x10D
	Parameters: 1
	Flags: None
*/
function function_3df1f906(s_rpg)
{
	self endon("death");
	var_90911853 = GetWeapon("launcher_standard");
	for(i = 0; i < 8; i++)
	{
		v_offset = (randomIntRange(-1500, -1300), randomIntRange(-100, 100), randomIntRange(-100, 100));
		MagicBullet(var_90911853, s_rpg.origin, self.origin + v_offset);
		wait(RandomFloatRange(1, 2));
	}
}

/*
	Name: function_6947ce3
	Namespace: namespace_835fda7e
	Checksum: 0xA2D231E2
	Offset: 0x4E18
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_6947ce3()
{
	wait(1);
	var_f5882947 = GetEnt("fxanim_vtol_pod", "animname");
	var_f5882947 thread function_34d9d6a7();
	level waittill("hash_27dfe41d");
	level thread function_94856821();
}

/*
	Name: function_94856821
	Namespace: namespace_835fda7e
	Checksum: 0x9A0427F9
	Offset: 0x4E90
	Size: 0x11D
	Parameters: 0
	Flags: None
*/
function function_94856821()
{
	n_dist_sq = 902500;
	s_pos = struct::get("pod_pos");
	a_e_targets = GetAIArchetypeArray("robot");
	for(i = 0; i < a_e_targets.size; i++)
	{
		if(Distance2DSquared(s_pos.origin, a_e_targets[i].origin) <= n_dist_sq)
		{
			if(isalive(a_e_targets[i]))
			{
				a_e_targets[i] ai::set_behavior_attribute("force_crawler", "gib_legs");
			}
		}
	}
}

/*
	Name: function_34d9d6a7
	Namespace: namespace_835fda7e
	Checksum: 0x3CE506B1
	Offset: 0x4FB8
	Size: 0x229
	Parameters: 0
	Flags: None
*/
function function_34d9d6a7()
{
	level waittill("hash_2ac435dc");
	level scene::add_scene_func("p7_fxanim_cp_prologue_tower_vtol_collapse_v2_bundle", &function_4f43b0cc);
	level thread scene::Play("p7_fxanim_cp_prologue_tower_vtol_collapse_v2_bundle");
	exploder::exploder_stop("light_exploder_defend_radio_tower");
	var_28ca079b = 360000;
	var_ace21635 = 1000000;
	s_pos = struct::get("pod_pos");
	a_e_targets = GetAITeamArray("axis");
	for(i = 0; i < a_e_targets.size; i++)
	{
		if(isalive(a_e_targets[i]))
		{
			n_dist = Distance2DSquared(s_pos.origin, a_e_targets[i].origin);
			if(a_e_targets[i].archetype === "human" && n_dist >= var_28ca079b && n_dist <= var_ace21635)
			{
				self function_114d2017(a_e_targets[i]);
			}
			else if(a_e_targets[i].archetype === "robot" && n_dist >= var_ace21635)
			{
				self function_114d2017(a_e_targets[i]);
			}
			wait(0.5);
		}
	}
	level notify("hash_27dfe41d");
}

/*
	Name: function_114d2017
	Namespace: namespace_835fda7e
	Checksum: 0x97C4967B
	Offset: 0x51F0
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_114d2017(e_target)
{
	var_8af78429 = GetWeapon("launcher_standard");
	var_9fab05ff = self GetTagOrigin("tag_fx_rocket_pod_l");
	v_target = e_target.origin;
	v_offset = (randomIntRange(-100, 100), randomIntRange(-100, 100), randomIntRange(-80, 80));
	e_missile = MagicBullet(var_8af78429, var_9fab05ff, v_target);
	e_missile thread function_1082845c(v_target + v_offset);
	wait(0.5);
	var_4bd7a161 = self GetTagOrigin("tag_fx_rocket_pod_r");
	e_missile = MagicBullet(var_8af78429, var_4bd7a161, v_target + v_offset);
	e_missile thread function_1082845c(v_target + v_offset);
}

/*
	Name: function_1082845c
	Namespace: namespace_835fda7e
	Checksum: 0x597F59D1
	Offset: 0x5398
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_1082845c(v_target)
{
	self waittill("death");
	RadiusDamage(v_target, 100, 1500, 500, undefined, "MOD_EXPLOSIVE");
}

/*
	Name: function_c0fa2edc
	Namespace: namespace_835fda7e
	Checksum: 0xA7D6EFD3
	Offset: 0x53E8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c0fa2edc()
{
	level waittill("hash_1a9aaaa8");
	level.var_4c225fa1 delete();
}

/*
	Name: function_312356f
	Namespace: namespace_835fda7e
	Checksum: 0xD1881655
	Offset: 0x5420
	Size: 0x433
	Parameters: 0
	Flags: None
*/
function function_312356f()
{
	vehicle::add_spawn_function("defend_truck_1", &function_45c35350);
	vehicle::add_spawn_function("defend_truck_2", &function_45c35350);
	vehicle::add_spawn_function("defend_truck_3", &function_b2d7edae);
	vehicle::add_spawn_function("defend_truck_4", &function_b2d7edae);
	vehicle::add_spawn_function("defend_apc_2", &function_c3228115, 1, 2);
	vehicle::add_spawn_function("defend_apc_3", &function_c3228115, 1, 2);
	spawner::add_spawn_function_group("ridge_guy", "targetname", &function_64dd8530);
	spawner::add_spawn_function_group("apc3_crew", "targetname", &function_4b1fb716);
	spawner::add_spawn_function_group("apc_reinforce", "targetname", &function_4b1fb716);
	spawner::add_spawn_function_group("group_defend_1", "script_aigroup", &function_96551790);
	spawner::add_spawn_function_group("rpg_intro", "script_aigroup", &function_54454538);
	spawner::add_spawn_function_group("group_apc", "script_aigroup", &function_b9081af);
	spawner::add_spawn_function_group("group_reinforce_1", "script_aigroup", &function_7f708ee);
	spawner::add_spawn_function_group("group_reinforce_2", "script_aigroup", &function_bf932181);
	spawner::add_spawn_function_group("group_reinforce_3", "script_aigroup", &function_7f708ee);
	spawner::add_spawn_function_group("group_defend_2", "script_aigroup", &function_b9081af);
	spawner::add_spawn_function_group("group_defend_3", "script_aigroup", &function_b9081af);
	spawner::add_spawn_function_group("group_pod_right", "script_aigroup", &function_b9081af);
	spawner::add_spawn_function_group("group_pod_left", "script_aigroup", &function_b9081af);
	spawner::add_spawn_function_group("group_pod_robot", "script_aigroup", &function_98ae774);
	spawner::add_spawn_function_group("defend_rpg", "targetname", &function_40fd81b);
	spawner::add_spawn_function_group("robot_swarm", "targetname", &function_9d374);
	spawner::add_spawn_function_group("group_tower_defender", "script_aigroup", &function_7f708ee);
}

/*
	Name: function_2772c15e
	Namespace: namespace_835fda7e
	Checksum: 0x54FC8776
	Offset: 0x5860
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_2772c15e()
{
	exploder::exploder("fx_exploder_background_exp_muz");
}

/*
	Name: function_6ba94a8
	Namespace: namespace_835fda7e
	Checksum: 0x59F83C54
	Offset: 0x5888
	Size: 0x3D3
	Parameters: 0
	Flags: None
*/
function function_6ba94a8()
{
	battlechatter::function_d9f49fba(0);
	level thread namespace_21b2c1f2::function_92382f5c();
	level.var_2fd26037 dialog::say("hend_there_s_our_ride_0");
	level.apc dialog::say("dops_exfil_pod_first_pass_0", 0.2, 1);
	level flag::wait_till("pod_on_ground");
	level.apc dialog::say("dops_exfil_pod_dropping_0", 0.5, 1);
	level.var_2fd26037 dialog::say("hend_nrc_reinforcements_c_0", 1);
	battlechatter::function_d9f49fba(1);
	level flag::wait_till("shift_defend");
	battlechatter::function_d9f49fba(0);
	level.var_9db406db dialog::say("khal_minister_are_you_al_0", 0.5);
	level.var_4d5a4697 dialog::say("said_i_m_fine_i_m_fine_0", 0.5);
	level flag::set("minister_pos");
	level.var_2fd26037 dialog::say("hend_we_gotta_get_the_hel_1");
	battlechatter::function_d9f49fba(1);
	level flag::wait_till("pod_waypoint");
	battlechatter::function_d9f49fba(0);
	level thread function_77fe86ff();
	var_49b32118 = GetEnt("pa_comm_tower", "targetname");
	var_49b32118 dialog::say("nrcp_infiltrators_cornere_0", 0.2, 1);
	battlechatter::function_d9f49fba(1);
	level flag::wait_till("dropship_return");
	battlechatter::function_d9f49fba(0);
	level dialog::remote("dops_drone_concentrating_0");
	level waittill("hash_2bc95ac2");
	level.apc dialog::say("dops_drone_is_in_position_0", 1, 1);
	level.var_2fd26037 dialog::say("hend_secure_get_your_ass_1", 0.25);
	level flag::set("pod_loaded");
	level.var_2fd26037 dialog::say("hend_get_your_ass_over_he_2", 1);
	level dialog::remote("dops_drone_ready_to_move_0");
}

/*
	Name: function_77fe86ff
	Namespace: namespace_835fda7e
	Checksum: 0x2B9AA891
	Offset: 0x5C68
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_77fe86ff()
{
	level endon("hash_ba5c153");
	level flag::wait_till("pod_loaded");
	wait(5);
	level.var_2fd26037 dialog::say("hend_get_your_ass_over_he_1");
	wait(6);
	level.var_2fd26037 dialog::say("hend_we_gotta_go_come_on_0");
	wait(6);
	level.var_2fd26037 dialog::say("hend_the_drone_can_t_take_0");
}

/*
	Name: function_da3c5a9d
	Namespace: namespace_835fda7e
	Checksum: 0x40972F8E
	Offset: 0x5D18
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_da3c5a9d()
{
	level.var_2fd26037 dialog::say("hend_apc_from_the_right_0", 3);
}

/*
	Name: function_9282c858
	Namespace: namespace_835fda7e
	Checksum: 0x7F8A4F90
	Offset: 0x5D50
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_9282c858()
{
	level endon("hash_7673dfe9");
	wait(3);
	if(!level.var_fc71d8f)
	{
		level.var_2fd26037 dialog::say("hend_move_move_move_0");
		wait(3);
		level.var_2fd26037 dialog::say("hend_get_over_here_come_0");
		wait(3);
		level.var_2fd26037 dialog::say("hend_i_need_you_on_my_pos_1");
		wait(3);
		level.var_2fd26037 dialog::say("hend_that_drone_ll_be_her_1");
	}
}

/*
	Name: function_7098f5fa
	Namespace: namespace_835fda7e
	Checksum: 0xB84CACB4
	Offset: 0x5E10
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_7098f5fa()
{
	level.var_2fd26037 dialog::say("tayr_inbound_two_minutes_0", 0.5);
}

/*
	Name: function_947bfdac
	Namespace: namespace_835fda7e
	Checksum: 0x18DD4C8
	Offset: 0x5E48
	Size: 0xD5
	Parameters: 13
	Flags: None
*/
function function_947bfdac(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, vDamageOrigin, modelIndex, psOffsetTime, vSurfaceNormal)
{
	if(isdefined(weapon) && isdefined(weapon.name))
	{
		if(weapon.name == "turret_bo3_mil_macv_gunner3" || weapon.name == "turret_bo3_mil_macv_gunner4")
		{
			iDamage = iDamage * 0.05;
		}
	}
	return iDamage;
}

/*
	Name: function_45756e82
	Namespace: namespace_835fda7e
	Checksum: 0x55AF813C
	Offset: 0x5F28
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_45756e82(var_1fd9b48b)
{
	if(!isdefined(var_1fd9b48b))
	{
		var_1fd9b48b = "chicken_zone";
	}
	level endon("hash_7d7d7481");
	var_e512db80 = GetEnt(var_1fd9b48b + "_trigger", "targetname");
	while(1)
	{
		var_e512db80 waittill("trigger", e_who);
		e_who function_d311c75a(var_1fd9b48b);
	}
}

/*
	Name: function_d311c75a
	Namespace: namespace_835fda7e
	Checksum: 0xAFF994D1
	Offset: 0x5FD0
	Size: 0x2BD
	Parameters: 1
	Flags: None
*/
function function_d311c75a(var_1fd9b48b)
{
	self endon("death");
	str_endon = "player_exited_" + var_1fd9b48b;
	level endon(str_endon);
	level thread function_4d64d2f6(var_1fd9b48b);
	wait(7);
	var_4e9a9978 = var_1fd9b48b + "_target";
	var_592faea1 = struct::get_array(var_1fd9b48b + "_src");
	var_9a93fef1 = struct::get_array(var_1fd9b48b + "_src2");
	a_s_targets = struct::get_array(var_4e9a9978, "targetname");
	var_60057f63 = GetWeapon("launcher_standard");
	while(1)
	{
		var_51b841d8 = Array::random(var_9a93fef1);
		MagicBullet(var_60057f63, var_51b841d8.origin, self.origin);
		for(i = 0; i < 3; i++)
		{
			function_e78f61a0(var_60057f63, var_592faea1, a_s_targets);
			wait(1);
		}
		wait(1);
		for(i = 0; i < 4; i++)
		{
			var_55ad5a1e = Array::random(var_592faea1);
			MagicBullet(var_60057f63, var_55ad5a1e.origin, self.origin);
			wait(1);
			var_51b841d8 = Array::random(var_9a93fef1);
			MagicBullet(var_60057f63, var_51b841d8.origin, self.origin);
			wait(1);
		}
		wait(3);
	}
}

/*
	Name: function_e78f61a0
	Namespace: namespace_835fda7e
	Checksum: 0x2399FB9F
	Offset: 0x6298
	Size: 0x8B
	Parameters: 3
	Flags: None
*/
function function_e78f61a0(w_weapon, var_a35aa0b0, a_s_targets)
{
	s_start = Array::random(var_a35aa0b0);
	s_target = Array::random(a_s_targets);
	MagicBullet(w_weapon, s_start.origin, s_target.origin);
}

/*
	Name: function_4d64d2f6
	Namespace: namespace_835fda7e
	Checksum: 0xE989972E
	Offset: 0x6330
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_4d64d2f6(var_1fd9b48b)
{
	level endon("death");
	level endon("hash_7d7d7481");
	var_fe2701d = "player_touching_" + var_1fd9b48b;
	level flag::wait_till_clear(var_fe2701d);
	str_endon = "player_exited_" + var_1fd9b48b;
	level notify(str_endon);
}


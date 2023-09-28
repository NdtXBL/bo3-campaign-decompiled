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
#using scripts\cp\cp_prologue_cyber_soldiers;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\doors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_ab720c84;

/*
	Name: function_7af85b91
	Namespace: namespace_ab720c84
	Checksum: 0x2E6DB1B7
	Offset: 0x2260
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_7af85b91(str_objective)
{
	function_8176e458();
	spawner::add_spawn_function_group("fuel_tunnel_ai", "script_noteworthy", &namespace_2cb3876f::function_35be2939, "fuel_tunnel_alerted", 1024);
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
		namespace_4dc8633b::function_bff1a867("skipto_hostage_1_hendricks");
		skipto::teleport_ai(str_objective);
	}
	level.var_2fd26037.ignoreme = 1;
	level thread function_dbff3ab4();
}

/*
	Name: function_8176e458
	Namespace: namespace_ab720c84
	Checksum: 0xA59F99FE
	Offset: 0x2350
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_8176e458()
{
	level thread scene::init("cin_pro_06_01_hostage_vign_rollgrenade");
	level thread scene::init("p7_fxanim_cp_prologue_underground_truck_explode_bundle");
}

/*
	Name: function_dbff3ab4
	Namespace: namespace_ab720c84
	Checksum: 0x69E2F064
	Offset: 0x23A0
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_dbff3ab4()
{
	level thread namespace_2cb3876f::function_950d1c3b(1);
	level thread function_ca7de8e8();
	objectives::set("cp_level_prologue_free_the_minister");
	battlechatter::function_d9f49fba(1);
	namespace_2cb3876f::function_47a62798(1);
	level.var_2fd26037 thread function_672c874();
	trigger::wait_till("hendricks_rollgrenade");
	Array::thread_all(level.players, &function_df74ca81);
	level.var_2fd26037 waittill("hash_ff2562ea");
	level thread function_88ddc4d5();
	level flag::set("fuel_tunnel_alerted");
	level thread function_5d78fd66();
	level thread function_f41e9505();
	level thread namespace_2cb3876f::function_8f7b1e06("t_fuel_tunnel_ai_fallback_controller", "info_fuel_tunnel_fallback_begin", "info_fuel_tunnel_fallback_end");
	level waittill("hash_5d08c61e");
	skipto::function_be8adfb8("skipto_hostage_1");
}

/*
	Name: function_5d78fd66
	Namespace: namespace_ab720c84
	Checksum: 0xDD03FE32
	Offset: 0x2550
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5d78fd66()
{
	wait(1.5);
	level thread namespace_2cb3876f::function_a7eac508("sp_fuel_tunnel_explosion_runners", undefined, 1024, undefined);
}

/*
	Name: function_ca7de8e8
	Namespace: namespace_ab720c84
	Checksum: 0x77D354A1
	Offset: 0x2590
	Size: 0x3A3
	Parameters: 0
	Flags: None
*/
function function_ca7de8e8()
{
	a_ai_enemies = GetAITeamArray("axis");
	foreach(ai_enemy in a_ai_enemies)
	{
		ai_enemy delete();
	}
	level thread function_b7afdf3a();
	level thread function_e14a508d();
	spawn_manager::enable("sm_fuel_tunnel");
	spawner::simple_spawn("sp_fuel_depot_staging");
	level thread function_c1e0b282();
	level thread function_ee3c7f46();
	level thread function_d9bab593("t_fuel_tunnel_left_door", "fueltunnel_spawnclosetdoor_2", "sp_fuel_tunnel_left_door", "info_fuel_tunnel_left_door", "info_fuel_tunnel_fallback_end", 0);
	level thread function_d9bab593("t_fuel_tunnel_right_door", "fueltunnel_spawnclosetdoor_3", "sp_fuel_tunnel_right_door", "info_fuel_tunnel_right_door", "info_fuel_tunnel_fallback_end");
	level thread namespace_2cb3876f::function_8f7b1e06("t_fueling_bridge_attacker", "info_fueling_bridge_attacker", "info_grenade_truck_guys_fallback");
	level thread function_12ac9114();
	level.var_2fd26037 waittill("hash_ff2562ea");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_0", 100, 15, 1, 1, 6, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_1", 100, 15, 1, 1, 6, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_2", 100, 15, 1, 1, 6, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_forklift", 180, 8, 1, 1, 8, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_4", 100, 5, 1, 1, 2, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread namespace_2cb3876f::function_e0fb6da9("s_enemy_moveup_point_5", 100, 5, 1, 1, 2, "info_fuel_tunnel_fallback_end", "info_grenade_truck_guys_fallback");
	level thread function_50d18609();
}

/*
	Name: function_b7afdf3a
	Namespace: namespace_ab720c84
	Checksum: 0x7666D252
	Offset: 0x2940
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b7afdf3a()
{
	trigger::wait_till("t_fueling_tunnel_alert_enemy");
	level flag::set("fuel_tunnel_alerted");
}

/*
	Name: function_e14a508d
	Namespace: namespace_ab720c84
	Checksum: 0xF63C9D09
	Offset: 0x2988
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_e14a508d()
{
	a_ents = GetEntArray("sp_fueling_stairwell_intro_guys", "targetname");
	for(i = 0; i < a_ents.size; i++)
	{
		e_ent = a_ents[i] spawner::spawn();
		e_ent.overrideActorDamage = &function_e93a75b6;
		e_ent.goalRadius = 32;
	}
	level notify("hash_db677f8c");
}

/*
	Name: function_e93a75b6
	Namespace: namespace_ab720c84
	Checksum: 0xC6C793A0
	Offset: 0x2A50
	Size: 0xA5
	Parameters: 13
	Flags: None
*/
function function_e93a75b6(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	if(isdefined(eAttacker) && !isPlayer(eAttacker))
	{
		iDamage = self.health + 1;
	}
	return iDamage;
}

/*
	Name: function_88ddc4d5
	Namespace: namespace_ab720c84
	Checksum: 0xFEF665F4
	Offset: 0x2B00
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_88ddc4d5()
{
	level scene::add_scene_func("p7_fxanim_cp_prologue_underground_truck_explode_bundle", &function_70b550de);
	level thread scene::Play("p7_fxanim_cp_prologue_underground_truck_explode_bundle");
	level clientfield::set("fuel_depot_truck_explosion", 1);
	var_4d2c50ee = GetEnt("orig_fuel_tunnel_explosion", "targetname");
	level.var_2fd26037 RadiusDamage(var_4d2c50ee.origin, 300, 2001, 2000, undefined, "MOD_EXPLOSIVE");
}

/*
	Name: function_70b550de
	Namespace: namespace_ab720c84
	Checksum: 0x5246F697
	Offset: 0x2BF8
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_70b550de(a_ents)
{
	a_ents["underground_truck_explode"] waittill("hash_5ec0d21e");
	a_ents["underground_truck_explode"] SetModel("veh_t7_civ_truck_med_cargo_egypt_dead");
	var_f33f812b = GetEnt("fuel_truck_faxnim_clip", "targetname");
	var_f33f812b solid();
}

/*
	Name: function_f41e9505
	Namespace: namespace_ab720c84
	Checksum: 0x56FC34CE
	Offset: 0x2C90
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_f41e9505()
{
	wait(0.5);
	level thread namespace_2cb3876f::function_8f7b1e06(undefined, "info_grenade_truck_guys", "info_grenade_truck_guys_fallback");
}

/*
	Name: function_ee3c7f46
	Namespace: namespace_ab720c84
	Checksum: 0x480C41F4
	Offset: 0x2CD0
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_ee3c7f46()
{
	trigger::wait_till("t_spawn_machine_gunner");
	var_9bc6eb0e = GetEnt("fueltunnel_spawnclosetdoor_1", "targetname");
	var_9bc6eb0e RotateTo(var_9bc6eb0e.angles + VectorScale((0, -1, 0), 150), 0.5);
	var_9bc6eb0e playsound("evt_spawner_door_open");
	var_8e7793a5 = GetEnt("info_fuel_tunnel_fallback_end", "targetname");
	a_ai = GetEntArray("sp_fuel_tunnel_upper_door", "targetname");
	a_players = GetPlayers();
	if(a_players.size == 1)
	{
		var_12649730 = 1;
	}
	else if(a_players.size == 2)
	{
		var_12649730 = 2;
	}
	else
	{
		var_12649730 = 5;
	}
	if(var_12649730 > a_ai.size)
	{
		var_12649730 = a_ai.size;
	}
	for(i = 0; i < var_12649730; i++)
	{
		e_ent = a_ai[i] spawner::spawn();
		e_ent thread namespace_2cb3876f::function_8e9f617f(1024, undefined);
		wait(0.5);
	}
	level thread function_3964d78d();
}

/*
	Name: function_3964d78d
	Namespace: namespace_ab720c84
	Checksum: 0xF1761E99
	Offset: 0x2EF0
	Size: 0x2AB
	Parameters: 0
	Flags: None
*/
function function_3964d78d()
{
	e_volume = GetEnt("info_final_tunnel_attackers", "targetname");
	ready = 0;
	while(!ready)
	{
		if(level.var_2fd26037 istouching(e_volume))
		{
			ready = 1;
		}
		a_players = GetPlayers();
		for(i = 0; i < a_players.size; i++)
		{
			if(a_players[i] istouching(e_volume))
			{
				ready = 1;
			}
		}
		wait(0.05);
	}
	a_sp = GetEntArray("sp_fuel_tunnel_stairs_attackers", "targetname");
	for(i = 0; i < a_sp.size; i++)
	{
		e_ent = a_sp[i] spawner::spawn();
		nd_target = GetNode(e_ent.target, "targetname");
		e_ent.goalRadius = 140;
		e_ent SetGoal(nd_target.origin);
	}
	while(1)
	{
		var_f04bd8f5 = namespace_2cb3876f::function_609c412a("info_fuel_tunnel_upper_door", 1);
		if(!var_f04bd8f5)
		{
			break;
		}
		wait(0.05);
	}
	var_9bc6eb0e = GetEnt("fueltunnel_spawnclosetdoor_1", "targetname");
	var_9bc6eb0e RotateTo(var_9bc6eb0e.angles - VectorScale((0, -1, 0), 150), 0.5);
	var_9bc6eb0e playsound("evt_spawner_door_close");
}

/*
	Name: function_672c874
	Namespace: namespace_ab720c84
	Checksum: 0x2B96221
	Offset: 0x31A8
	Size: 0x40B
	Parameters: 0
	Flags: None
*/
function function_672c874()
{
	self function_8b6e6abe();
	level flag::wait_till("start_grenade_roll");
	level thread scene::Play("cin_pro_06_01_hostage_vign_rollgrenade", level.var_2fd26037);
	level util::delay(0.5, undefined, &trigger::use, "t_script_color_allies_r510");
	level.var_2fd26037 waittill("hash_ff2562ea");
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.origin, 0.65, 1.2, 800, 4);
	level.var_2fd26037 ai::set_pacifist(0);
	level.var_2fd26037 ai::set_ignoreme(0);
	level.var_2fd26037 ai::set_ignoreall(0);
	s_struct = struct::get("s_truck_explosion_origin", "targetname");
	PhysicsExplosionSphere(s_struct.origin, 255, 254, 0.3, 25, 400);
	wait(0.1);
	var_ff31c6f9 = GetEntArray("truck_red_barrel", "script_noteworthy");
	foreach(piece in var_ff31c6f9)
	{
		if(isdefined(piece) && piece.targetname == "destructible")
		{
			piece DoDamage(5000, piece.origin, level.var_2fd26037);
		}
	}
	wait(0.3);
	var_7bb33476 = GetNode("nd_grenade_throw", "targetname");
	SetEnableNode(var_7bb33476, 0);
	trigger::use("t_script_color_allies_r520");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r530");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r540");
	scene::Play("cin_pro_06_01_hostage_vign_jumpdown");
	self colors::enable();
	self SetGoal(self.origin);
	wait(1);
	trigger::use("t_script_color_allies_r550");
	wait(1);
	self waittill("goal");
	self.goalRadius = 256;
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r560");
	function_7a05bbf();
	if(GetPlayers().size == 1)
	{
		level notify("hash_bf9ccb51");
	}
	self thread function_5dc67e92();
}

/*
	Name: function_5dc67e92
	Namespace: namespace_ab720c84
	Checksum: 0x2B08FDA
	Offset: 0x35C0
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_5dc67e92()
{
	self endon("hash_89827d0f");
	e_volume = GetEnt("info_fuel_tunnel_fallback_end", "targetname");
	while(1)
	{
		a_ai = namespace_2cb3876f::function_68b8f4af(e_volume);
		if(a_ai.size <= 3)
		{
			Array::thread_all(a_ai, &ai::bloody_death, randomIntRange(6, 8));
		}
		if(a_ai.size <= 1)
		{
			break;
		}
		wait(0.05);
	}
	e_trigger = GetEnt("t_script_color_allies_r580", "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger delete();
	}
	self thread function_386e6074();
	function_1ddfda41();
	nd_node = GetNode("nd_fueling_tunnel_exit", "targetname");
	self SetGoal(nd_node.origin);
	self.goalRadius = 64;
	self util::waittill_notify_or_timeout("goal", 15);
	self notify("hash_8882daa6");
	self thread function_c9d7d48a();
}

/*
	Name: function_386e6074
	Namespace: namespace_ab720c84
	Checksum: 0x142C6A1C
	Offset: 0x37B0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_386e6074()
{
	var_72634645 = spawnstruct();
	var_72634645.origin = (5742, -1122, -328);
	var_72634645.angles = VectorScale((0, 1, 0), 270);
	var_f3ec8a31 = spawn("trigger_box", (5728, -1308, -276), 0, 300, 300, 300);
	var_f3ec8a31 waittill("trigger");
	self colors::function_89827d0f(var_72634645, 350, 1, &function_bbaa282a);
}

/*
	Name: function_bbaa282a
	Namespace: namespace_ab720c84
	Checksum: 0xE7148E9B
	Offset: 0x3890
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_bbaa282a()
{
	wait(0.5);
	nd_node = GetNode("nd_fueling_tunnel_exit", "targetname");
	self SetGoal(nd_node.origin);
	self.goalRadius = 64;
	self util::waittill_notify_or_timeout("goal", 15);
	self thread function_c9d7d48a();
}

/*
	Name: function_7a05bbf
	Namespace: namespace_ab720c84
	Checksum: 0x55BEDAC1
	Offset: 0x3940
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_7a05bbf()
{
	while(1)
	{
		e_trigger = GetEnt("t_script_color_allies_r570", "targetname");
		if(!isdefined(e_trigger))
		{
			break;
		}
		var_f04bd8f5 = namespace_2cb3876f::function_609c412a("info_fuel_tunnel_fallback_end", 0);
		if(var_f04bd8f5 <= 3)
		{
			trigger::use("t_script_color_allies_r570");
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_1ddfda41
	Namespace: namespace_ab720c84
	Checksum: 0x9D3E02FE
	Offset: 0x39F0
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_1ddfda41()
{
	e_volume = GetEnt("info_fueling_tunnel_balcony", "targetname");
	a_enemy = namespace_2cb3876f::function_68b8f4af(e_volume);
	for(i = 0; i < a_enemy.size; i++)
	{
		self GetPerfectInfo(a_enemy[i], 1);
		a_enemy[i].overrideActorDamage = &function_e93a75b6;
	}
	nd_node = GetNode("nd_fueling_tunnel_top_stairs", "targetname");
	self SetGoal(nd_node.origin);
	self.goalRadius = 64;
	self waittill("goal");
	while(1)
	{
		a_enemy = namespace_2cb3876f::function_68b8f4af(e_volume);
		if(a_enemy.size == 0)
		{
			break;
		}
		wait(0.05);
	}
	for(a_ai_enemy = GetAITeamArray("axis"); a_ai_enemy.size > 0;  = GetAITeamArray("axis"))
	{
		a_ai_enemy[0] ai::bloody_death();
		wait(RandomFloatRange(0.6666666, 1.333333));
	}
}

/*
	Name: function_50d18609
	Namespace: namespace_ab720c84
	Checksum: 0x272BDFC6
	Offset: 0x3C00
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_50d18609()
{
	level waittill("hash_bf9ccb51");
	a_nodes = GetNodeArray("nd_fueling_end", "targetname");
	for(i = 0; i < a_nodes.size; i++)
	{
		nd_node = a_nodes[i];
		SetEnableNode(nd_node, 0);
	}
	wait(2);
	namespace_2cb3876f::function_8f7b1e06(undefined, "info_fuel_tunnel_fallback_end", "info_fueling_flush_out_volume");
}

/*
	Name: function_8b6e6abe
	Namespace: namespace_ab720c84
	Checksum: 0x74021E69
	Offset: 0x3CD8
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_8b6e6abe()
{
	level flag::wait_till("hendricks_exit_cam_room");
	wait(0.5);
	level thread function_1479714d();
	self ai::set_behavior_attribute("can_melee", 0);
	self colors::disable();
	nd_node = GetNode("nd_hendricks_attack_fueling_start_guys", "targetname");
	self.perfectaim = 1;
	self.goalRadius = 32;
	self ai::force_goal(nd_node);
	wait(1);
	a_enemy = spawner::get_ai_group_ai("tunnel_1st_contact_guys");
	foreach(enemy in a_enemy)
	{
		if(isdefined(enemy) && isalive(enemy))
		{
			self ai::shoot_at_target("shoot_until_target_dead", enemy);
		}
	}
	spawner::waittill_ai_group_cleared("tunnel_1st_contact_guys");
	self.perfectaim = 0;
	self.goalRadius = 512;
	self ai::set_behavior_attribute("can_melee", 1);
	self colors::enable();
}

/*
	Name: function_c9d7d48a
	Namespace: namespace_ab720c84
	Checksum: 0x870848CA
	Offset: 0x3F08
	Size: 0x263
	Parameters: 0
	Flags: None
*/
function function_c9d7d48a()
{
	e_volume = GetEnt("info_fueling_tunnel_exit_area", "targetname");
	while(1)
	{
		num_players = namespace_2cb3876f::num_players_touching_volume(e_volume);
		if(num_players > 0)
		{
			break;
		}
		wait(0.05);
	}
	level thread namespace_21b2c1f2::function_d4c52995();
	wait(0.15);
	level scene::add_scene_func("cin_pro_06_02_hostage_vign_getminister_hendricks_airlock", &function_5729b9e7, "play");
	level scene::Play("cin_pro_06_02_hostage_vign_getminister_hendricks_airlock");
	n_node = GetNode("nd_hendricks_jail_setup", "targetname");
	level.var_2fd26037 SetGoal(n_node, 1);
	wait(0.5);
	level notify("hash_5d08c61e");
	s_struct = struct::get("s_close_security_door", "targetname");
	while(1)
	{
		v_forward = AnglesToForward(s_struct.angles);
		v_dir = VectorNormalize(s_struct.origin - level.var_2fd26037.origin);
		dp = VectorDot(v_forward, v_dir);
		if(dp < 0)
		{
			break;
		}
		wait(0.1);
	}
	namespace_2cb3876f::function_9d611fab("s_close_security_door", undefined);
	level thread function_6ae70954(0);
}

/*
	Name: function_5729b9e7
	Namespace: namespace_ab720c84
	Checksum: 0x4F67794E
	Offset: 0x4178
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_5729b9e7(a_ents)
{
	level waittill("hash_5729b9e7");
	level function_6ae70954(1);
}

/*
	Name: function_6ae70954
	Namespace: namespace_ab720c84
	Checksum: 0x7E6F6AA2
	Offset: 0x41B8
	Size: 0x213
	Parameters: 1
	Flags: None
*/
function function_6ae70954(open_door)
{
	exploder::exploder("fx_exploder_door_vacuum");
	var_bcc5e65a = GetEnt("holdingcells_entrydoor_1", "targetname");
	var_96c36bf1 = GetEnt("holdingcells_entrydoor_2", "targetname");
	if(open_door)
	{
		exploder::exploder("light_exploder_prison_door");
		var_bcc5e65a MoveX(64, 1, 0.1, 0.2);
		var_bcc5e65a playsound("evt_fueldepot_door_open");
		wait(0.25);
		var_96c36bf1 MoveX(64, 1, 0.1, 0.2);
		var_96c36bf1 playsound("evt_fueldepot_door_open");
	}
	else
	{
		exploder::stop_exploder("light_exploder_prison_door");
		var_96c36bf1 MoveX(-64, 1, 0.1, 0.2);
		var_96c36bf1 playsound("evt_fueldepot_door_close");
		wait(0.25);
		var_bcc5e65a MoveX(-64, 1, 0.1, 0.2);
		var_bcc5e65a playsound("evt_fueldepot_door_close");
	}
}

/*
	Name: function_df74ca81
	Namespace: namespace_ab720c84
	Checksum: 0x426FCB2E
	Offset: 0x43D8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_df74ca81()
{
	self endon("death");
	self waittill("weapon_fired");
	level flag::set("fuel_tunnel_alerted");
}

/*
	Name: function_1479714d
	Namespace: namespace_ab720c84
	Checksum: 0xE9884A88
	Offset: 0x4420
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_1479714d()
{
	trigger::wait_till("t_spawn_machine_gunner");
	wait(1);
	level.var_2fd26037 dialog::say("hend_gunner_up_top_0");
	level waittill("hash_5d08c61e");
	level.var_2fd26037 dialog::say("hend_cell_block_ahead_on_0");
}

/*
	Name: function_c1e0b282
	Namespace: namespace_ab720c84
	Checksum: 0x7072E264
	Offset: 0x44A0
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_c1e0b282()
{
	trigger::wait_till("t_spawn_machine_gunner");
	var_cf0db380 = spawner::simple_spawn_single("fuel_tunnel_mg_guy");
}

/*
	Name: function_d9bab593
	Namespace: namespace_ab720c84
	Checksum: 0xE59D1A0F
	Offset: 0x44E8
	Size: 0x283
	Parameters: 6
	Flags: None
*/
function function_d9bab593(str_trigger, var_9b54f311, var_a9ea049a, var_137809d6, var_343b0267, var_bfba634f)
{
	if(!isdefined(var_bfba634f))
	{
		var_bfba634f = 1;
	}
	e_trigger = GetEnt(str_trigger, "targetname");
	e_trigger waittill("trigger");
	e_door = GetEnt(var_9b54f311, "targetname");
	e_door RotateTo(e_door.angles + VectorScale((0, -1, 0), 110), 0.5);
	e_door playsound("evt_spawner_door_open");
	e_goal_volume = GetEnt(var_343b0267, "targetname");
	a_ai = GetEntArray(var_a9ea049a, "targetname");
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i] spawner::spawn();
		e_ent SetGoal(e_goal_volume);
		wait(1.5);
	}
	if(!var_bfba634f)
	{
		return;
	}
	wait(1);
	while(1)
	{
		var_f04bd8f5 = namespace_2cb3876f::function_609c412a(var_137809d6, 1);
		if(!var_f04bd8f5)
		{
			break;
		}
		wait(0.05);
	}
	e_door RotateTo(e_door.angles + VectorScale((0, 1, 0), 110), 0.5);
	e_door playsound("evt_spawner_door_close");
}

/*
	Name: function_12ac9114
	Namespace: namespace_ab720c84
	Checksum: 0xF943C0B0
	Offset: 0x4778
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_12ac9114()
{
	sp_enemy = GetEnt("sp_stair_runners", "targetname");
	e_volume = GetEnt("info_fuel_tunnel_fallback_end", "targetname");
	level thread function_6ae70954(1);
	level flag::wait_till("fuel_tunnel_stair_runners_1");
	ai_enemy = sp_enemy spawner::spawn();
	ai_enemy SetGoal(e_volume);
	wait(1.5);
	ai_enemy = sp_enemy spawner::spawn();
	ai_enemy SetGoal(e_volume);
	level flag::wait_till("fuel_tunnel_stair_runners_2");
	ai_enemy = sp_enemy spawner::spawn();
	ai_enemy SetGoal(e_volume);
	wait(3);
	level thread function_6ae70954(0);
}

#namespace prison;

/*
	Name: function_955cbf0d
	Namespace: prison
	Checksum: 0x7B6030AC
	Offset: 0x4918
	Size: 0x253
	Parameters: 1
	Flags: None
*/
function function_955cbf0d(str_objective)
{
	function_8ee087ec();
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
		namespace_4dc8633b::function_bff1a867("skipto_prison_hendricks");
		skipto::teleport_ai(str_objective);
	}
	if(!isdefined(level.var_4d5a4697))
	{
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_4d5a4697.ignoreme = 1;
		level.var_4d5a4697.ignoreall = 1;
		namespace_4dc8633b::function_211ff3c7("skipto_prison_minister");
		level.var_4d5a4697.goalRadius = 64;
	}
	if(!isdefined(level.var_9db406db))
	{
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_9db406db.ignoreme = 1;
		level.var_9db406db.ignoreall = 1;
		namespace_4dc8633b::function_c117302b("skipto_prison_khalil");
		level.var_9db406db.goalRadius = 64;
	}
	trigger::use("t_prison_respawns_disable", "targetname", undefined, 0);
	battlechatter::function_d9f49fba(0);
	namespace_2cb3876f::function_47a62798(1);
	level.var_2fd26037.pacifist = 0;
	level.var_2fd26037.ignoreme = 0;
	level flag::init("khalil_door_breached");
	level flag::init("player_interrogation_breach");
	level thread function_13bbee98();
}

/*
	Name: function_8ee087ec
	Namespace: prison
	Checksum: 0x99EC1590
	Offset: 0x4B78
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_8ee087ec()
{
}

/*
	Name: function_13bbee98
	Namespace: prison
	Checksum: 0x192956FF
	Offset: 0x4B88
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_13bbee98()
{
	level thread namespace_2cb3876f::function_950d1c3b(1);
	level thread function_b317c15f();
	level thread scene::init("cin_pro_06_03_hostage_1st_khalil_intro_rescue");
	namespace_52f8de11::function_bfe70f02();
	level thread function_f50dec65();
	level thread function_771ca4c3();
	var_beb17601 = GetEnt("collision_observation_door", "targetname");
	var_ddb80384 = GetEnt("observation_door", "targetname");
	var_beb17601 LinkTo(var_ddb80384);
	level thread function_ef1899fb();
	level.var_2fd26037 thread function_299a41be();
	level thread function_15c51270();
	level thread function_37b5c7e0();
}

/*
	Name: function_f50dec65
	Namespace: prison
	Checksum: 0x570D7D2B
	Offset: 0x4D00
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f50dec65()
{
	level thread util::function_d8eaed3d(3);
	level waittill("hash_516cb5e4");
	util::clear_streamer_hint();
	level thread util::function_d8eaed3d(4);
	level waittill("hash_29445f62");
	util::clear_streamer_hint();
}

/*
	Name: function_771ca4c3
	Namespace: prison
	Checksum: 0x9B10C9F8
	Offset: 0x4D80
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_771ca4c3()
{
	objectives::set("cp_level_prologue_free_the_minister");
	callback::on_ai_killed(&namespace_61c634f2::function_c58a9e36);
	level flag::wait_till("player_entered_observation");
	objectives::complete("cp_level_prologue_goto_minister_door");
	level waittill("hash_a859aef4");
	objectives::complete("cp_level_prologue_free_the_minister");
	savegame::function_5d2cdd99();
	level waittill("hash_ed07bf8c");
	trigger::use("t_prison_respawns_enable", "targetname", undefined, 0);
	s_pos = struct::get("s_objective_khalil_cell", "targetname");
	objectives::set("cp_level_prologue_goto_khalil_door", s_pos);
	objectives::set("cp_level_prologue_free_khalil");
	level flag::wait_till("khalil_door_breached");
	objectives::complete("cp_level_prologue_goto_minister_door");
	objectives::complete("cp_level_prologue_free_khalil");
	callback::remove_on_ai_killed(&namespace_61c634f2::function_c58a9e36);
	objectives::set("cp_level_prologue_get_to_the_surface");
	level waittill("hash_f83eeed5");
	level thread objectives::breadcrumb("post_prison_breadcrumb_start");
}

/*
	Name: function_299a41be
	Namespace: prison
	Checksum: 0x2D9D08B
	Offset: 0x4F78
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_299a41be()
{
	nd_node = GetNode("nd_hendricks_jail_setup", "targetname");
	self SetGoal(nd_node, 1);
	self waittill("goal");
	level flag::wait_till("post_up_minister_breach");
	level thread function_a1ad4aa7();
	self SetHighDetail(1);
	function_a859aef4();
	self SetHighDetail(0);
}

/*
	Name: function_22b149da
	Namespace: prison
	Checksum: 0x87E2748F
	Offset: 0x5050
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_22b149da()
{
	level waittill("hash_5ea48ae9");
	level thread namespace_21b2c1f2::function_1c0460dd();
	level waittill("hash_35308140");
	level.var_2fd26037 dialog::say("hend_depot_ahead_will_be_0");
}

/*
	Name: function_f48bd4a7
	Namespace: prison
	Checksum: 0x83E23E6E
	Offset: 0x50B0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_f48bd4a7()
{
	level waittill("hash_1dd905ef");
	exploder::exploder("light_exploder_prison_exit");
}

/*
	Name: function_a859aef4
	Namespace: prison
	Checksum: 0x11C999F0
	Offset: 0x50E8
	Size: 0x1E9
	Parameters: 0
	Flags: None
*/
function function_a859aef4()
{
	var_6553bad6 = GetEnt("trig_use_khalil_door", "targetname");
	var_6553bad6 TriggerEnable(0);
	level thread scene::Play("cin_pro_06_03_hostage_vign_breach_hendrickscover");
	level flag::wait_till("player_entered_observation");
	level thread function_b8c0a930();
	if(isdefined(level.BZM_PROLOGUEDialogue4Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue4Callback]]();
	}
	level flag::wait_till_any(Array("interrogation_finished", "player_breached_early"));
	level thread scene::Play("cin_pro_06_03_hostage_vign_breach");
	level thread scene::Play("cin_pro_06_03_hostage_vign_breach_hend_min");
	level notify("hash_a859aef4");
	level.var_4d5a4697.overrideActorDamage = undefined;
	level waittill("hash_ed07bf8c");
	var_6553bad6 TriggerEnable(1);
	var_d86e08d0 = util::function_14518e76(var_6553bad6, &"cp_prompt_enteralt_prologue_khalil_breach", &"CP_MI_ETH_PROLOGUE_DOOR_BREACH", &function_28af2208);
	var_d86e08d0 thread gameobjects::hide_icon_distance_and_los((1, 1, 1), 800, 0);
	level notify("hash_bd4342ed");
}

/*
	Name: function_db5cf0d5
	Namespace: prison
	Checksum: 0xFFF10DFC
	Offset: 0x52E0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_db5cf0d5()
{
	self endon("death");
	level endon("hash_a59a51");
	level endon("hash_bedc2f57");
	self waittill("weapon_fired");
	level flag::set("player_breached_early");
}

/*
	Name: function_a1ad4aa7
	Namespace: prison
	Checksum: 0x4C7331EC
	Offset: 0x5340
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a1ad4aa7()
{
	level waittill("hash_5e84ced9");
	level clientfield::set("interrogate_physics", 1);
}

/*
	Name: function_28af2208
	Namespace: prison
	Checksum: 0x6CA8042
	Offset: 0x5380
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_28af2208(e_player)
{
	self gameobjects::disable_object();
	Array::run_all(level.players, &util::function_16c71b8, 1);
	callback::on_spawned(&namespace_4dc8633b::function_4d4f1d4f);
	level thread function_2137acd9();
	level flag::set("khalil_door_breached");
	level thread scene::Play("cin_pro_06_03_hostage_1st_khalil_intro_player_rescue", e_player);
	level thread scene::Play("cin_pro_06_03_hostage_1st_khalil_intro_rescue");
	level.var_9db406db SetHighDetail(1);
	level thread function_22b149da();
	level thread function_f48bd4a7();
	level waittill("hash_f83eeed5");
	level.var_9db406db SetHighDetail(0);
	level notify("hash_29445f62");
	skipto::function_be8adfb8("skipto_prison");
}

/*
	Name: function_2137acd9
	Namespace: prison
	Checksum: 0x65A902A6
	Offset: 0x5518
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2137acd9()
{
	wait(42);
	Array::run_all(level.players, &util::function_16c71b8, 0);
	callback::remove_on_spawned(&namespace_4dc8633b::function_4d4f1d4f);
	level thread namespace_2cb3876f::function_77308ba7();
	level thread function_fae1bd07();
}

/*
	Name: function_fae1bd07
	Namespace: prison
	Checksum: 0xBD72F079
	Offset: 0x55A8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_fae1bd07()
{
	playsoundatposition("amb_walla_troops_1", (6175, -1548, -157));
	wait(8);
	playsoundatposition("amb_walla_troops_0", (6129, -1037, -266));
}

/*
	Name: function_b8c0a930
	Namespace: prison
	Checksum: 0x3161F09F
	Offset: 0x5610
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b8c0a930()
{
	level.var_4d5a4697.overrideActorDamage = &function_9b720436;
}

/*
	Name: function_9b720436
	Namespace: prison
	Checksum: 0x5063CE04
	Offset: 0x5640
	Size: 0x133
	Parameters: 13
	Flags: None
*/
function function_9b720436(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	if(isdefined(eAttacker) && isPlayer(eAttacker))
	{
		if(iDamage <= 1 || (isdefined(weapon) && weapon.isEmp))
		{
			iDamage = 0;
		}
		if(!isdefined(self.var_28e02422))
		{
			self.var_28e02422 = 0;
		}
		self.var_28e02422 = self.var_28e02422 + iDamage;
		if(self.var_28e02422 >= self.maxhealth)
		{
			util::missionfailedwrapper_nodeath(&"CP_MI_ETH_PROLOGUE_MINISTER_SHOT", &"SCRIPT_MISSIONFAIL_WATCH_FIRE");
		}
		else
		{
			iDamage = 0;
		}
	}
	return iDamage;
}

/*
	Name: function_ef1899fb
	Namespace: prison
	Checksum: 0x999322EE
	Offset: 0x5780
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_ef1899fb()
{
	var_130a032 = GetEnt("trig_use_minister_door", "targetname");
	var_130a032 TriggerEnable(1);
	var_e0897b20 = util::function_14518e76(var_130a032, &"cp_prompt_enteralt_prologue_minister_breach", &"CP_MI_ETH_PROLOGUE_DOOR_BREACH", &function_b0c29b02);
	var_e0897b20 thread gameobjects::hide_icon_distance_and_los((1, 1, 1), 800, 0);
}

/*
	Name: function_b0c29b02
	Namespace: prison
	Checksum: 0x3068BB35
	Offset: 0x5838
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_b0c29b02(e_player)
{
	self.trigger TriggerEnable(0);
	self gameobjects::disable_object();
	foreach(var_12195048 in level.activePlayers)
	{
		var_12195048 util::function_16c71b8(1);
		var_12195048 thread function_db5cf0d5();
	}
	callback::on_spawned(&namespace_4dc8633b::function_4d4f1d4f);
	level flag::set("player_interrogation_breach");
	level scene::Play("cin_pro_06_03_hostage_vign_breach_playerbreach", e_player);
	level notify("hash_516cb5e4");
	level thread dialog::function_13b3b16a("plyr_interrogator_has_his_0", 3);
	level thread function_813f55a8();
}

/*
	Name: function_f8d7f50a
	Namespace: prison
	Checksum: 0x597E5E14
	Offset: 0x59D0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_f8d7f50a(a_ents)
{
	e_door = a_ents["observation_door"];
	e_door SetModel("p7_door_metal_security_02_rt_keypad");
	level waittill("hash_18c83555");
	e_door SetModel("p7_door_metal_security_02_rt_keypad_damage");
}

/*
	Name: function_b317c15f
	Namespace: prison
	Checksum: 0xD06242C1
	Offset: 0x5A48
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_b317c15f()
{
	level scene::add_scene_func("cin_pro_06_03_hostage_vign_breach_interrogation", &function_b8d7b823, "init");
	level scene::init("cin_pro_06_03_hostage_vign_breach_interrogation");
	level waittill("hash_5c0ece37");
	scene::add_scene_func("cin_pro_06_03_hostage_vign_breach_guardloop", &function_53775c4d, "play");
	level thread scene::Play("cin_pro_06_03_hostage_vign_breach_guardloop");
	level scene::Play("cin_pro_06_03_hostage_vign_breach_interrogation");
	level flag::set("interrogation_finished");
}

/*
	Name: function_b8d7b823
	Namespace: prison
	Checksum: 0x8A26A2AD
	Offset: 0x5B48
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_b8d7b823(a_ents)
{
	a_ents["interrogator"].var_69dd5d62 = 0;
	a_ents["interrogator"] cybercom::function_59965309("cybercom_fireflyswarm");
	level waittill("ready_to_breach");
	level.var_2fd26037 dialog::say("hend_on_my_mark_0");
	wait(1);
	level.var_2fd26037 thread dialog::say("hend_three_two_go_0");
	level thread namespace_21b2c1f2::function_2f85277b();
	wait(1);
	foreach(e_player in level.activePlayers)
	{
		e_player util::function_16c71b8(0);
	}
	callback::remove_on_spawned(&namespace_4dc8633b::function_4d4f1d4f);
}

/*
	Name: function_53775c4d
	Namespace: prison
	Checksum: 0xC9D56732
	Offset: 0x5CC8
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_53775c4d(a_ents)
{
	foreach(ai_guard in a_ents)
	{
		ai_guard.var_c54411a6 = 1;
		ai_guard.var_69dd5d62 = 0;
		ai_guard cybercom::function_59965309("cybercom_fireflyswarm");
	}
}

/*
	Name: function_813f55a8
	Namespace: prison
	Checksum: 0xC752078B
	Offset: 0x5D90
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_813f55a8()
{
	trigger::wait_till("trig_dam_int_room");
	level thread namespace_2cb3876f::function_2a0bc326(level.var_2fd26037.origin, 0.3, 0.75, 5000, 10, "damage_heavy");
	var_d3079b09 = GetEnt("int_room_sound_wall", "targetname");
	var_d3079b09 delete();
	function_9e3608e3("interrogation_glass_hologram");
	exploder::exploder("fx_exploder_glass_screen");
}

/*
	Name: function_15c51270
	Namespace: prison
	Checksum: 0x6AB64A9E
	Offset: 0x5E70
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_15c51270()
{
	level thread function_88b82e8a();
	level waittill("hash_a859aef4");
	level thread function_b1d2594d();
	level flag::wait_till("khalil_door_breached");
	level thread namespace_21b2c1f2::function_fb4a2ce1();
}

/*
	Name: function_88b82e8a
	Namespace: prison
	Checksum: 0xC7F11E40
	Offset: 0x5EF0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_88b82e8a()
{
	level endon("hash_df5cca92");
	wait(17);
	level.var_2fd26037 dialog::say("hend_that_exfil_won_t_wai_0");
}

/*
	Name: function_b1d2594d
	Namespace: prison
	Checksum: 0x82AF6675
	Offset: 0x5F30
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_b1d2594d()
{
	level endon("hash_94c473aa");
	level waittill("hash_bd4342ed");
	wait(20);
	level.var_2fd26037 dialog::say("hend_sooner_we_get_khalil_0");
	wait(15);
	level.var_2fd26037 dialog::say("hend_they_re_gonna_be_on_0");
}

/*
	Name: function_37b5c7e0
	Namespace: prison
	Checksum: 0x5718FEF9
	Offset: 0x5FA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_37b5c7e0()
{
	level thread function_c11e5214("trig_volume_prisoner1_cell", "pris_please_please_help_0");
	level thread function_c11e5214("trig_volume_prisoner2_cell", "pris_get_us_out_of_here_0");
	level thread function_c11e5214("trig_volume_prisoner3_cell", "pris_don_t_leave_me_here_0");
	level thread function_c11e5214("trig_volume_prisoner4_cell", "pris_please_help_us_0");
}

/*
	Name: function_c11e5214
	Namespace: prison
	Checksum: 0x726DE23E
	Offset: 0x6058
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_c11e5214(str_trigger, str_vo)
{
	level trigger::wait_till(str_trigger, "targetname", undefined, 0);
	level.var_2fd26037 dialog::say(str_vo);
}

#namespace namespace_52f8de11;

/*
	Name: function_72514870
	Namespace: namespace_52f8de11
	Checksum: 0x227CA899
	Offset: 0x60C0
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_72514870(str_objective)
{
	function_6141027f();
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_4d5a4697 ai::set_ignoreall(0);
	battlechatter::function_d9f49fba(1);
	namespace_2cb3876f::function_47a62798(1);
	spawner::add_spawn_function_group("bridge_attacker", "script_noteworthy", &Hangar::ai_think);
	level thread function_b8fd868b();
	trigger::wait_till("t_start_lift_battle");
	skipto::function_be8adfb8("skipto_security_desk");
}

/*
	Name: function_6141027f
	Namespace: namespace_52f8de11
	Checksum: 0x99EC1590
	Offset: 0x61C0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_6141027f()
{
}

/*
	Name: function_b8fd868b
	Namespace: namespace_52f8de11
	Checksum: 0xD8B20055
	Offset: 0x61D0
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_b8fd868b()
{
	level thread namespace_2cb3876f::function_950d1c3b(1);
	level thread function_e6af47cb();
	level thread function_5e374f7a();
	var_88e2cef7 = GetEnt("trig_open_weapons_room", "targetname");
	var_88e2cef7 TriggerEnable(1);
	level flag::wait_till("open_weapons_room");
	level thread namespace_21b2c1f2::function_6c35b4f3();
	level thread function_b60a26e8();
}

/*
	Name: function_bfe70f02
	Namespace: namespace_52f8de11
	Checksum: 0x2375AC3
	Offset: 0x62C0
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_bfe70f02()
{
	if(!isdefined(level.var_e5ed7cda))
	{
		scene::init("cin_pro_07_01_securitydesk_vign_weapons_doorinit");
		level.var_e5ed7cda = 1;
	}
}

/*
	Name: function_5e374f7a
	Namespace: namespace_52f8de11
	Checksum: 0x7EF4EBF6
	Offset: 0x6300
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_5e374f7a()
{
	level flag::wait_till("open_weapons_room");
	level waittill("hash_ecefb6c8");
	level thread function_4fd5aaec();
	wait(1);
	level thread function_bce54c0b();
	level thread function_36113d75();
	level thread function_680575de();
}

/*
	Name: function_4fd5aaec
	Namespace: namespace_52f8de11
	Checksum: 0xCE883277
	Offset: 0x6398
	Size: 0x29D
	Parameters: 0
	Flags: None
*/
function function_4fd5aaec()
{
	a_ai = GetEntArray("sp_armory_lift_area_1st_attacker", "targetname");
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i] spawner::spawn();
		nd_node = GetNode(e_ent.target, "targetname");
		e_ent.goalRadius = 64;
		e_ent SetGoal(nd_node.origin);
		e_ent thread namespace_2cb3876f::function_8e9f617f(256, 1);
	}
	e_volume = GetEnt("info_armory_enemy_pushup", "targetname");
	a_ai = GetEntArray("sp_armory_lift_area_attackers", "targetname");
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i] spawner::spawn();
		e_ent SetGoal(e_volume);
		e_ent thread namespace_2cb3876f::function_8e9f617f(512, 1);
	}
	e_volume = GetEnt("info_armory_wave2", "targetname");
	a_ai = GetEntArray("sp_armory_lift_area_attackers_part2", "targetname");
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i] spawner::spawn();
		e_ent SetGoal(e_volume);
		e_ent thread namespace_2cb3876f::function_8e9f617f(512, 1);
	}
}

/*
	Name: function_bce54c0b
	Namespace: namespace_52f8de11
	Checksum: 0x6EC3DE8F
	Offset: 0x6640
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_bce54c0b()
{
	a_spawners = GetEntArray("sp_armory_walkway_attackers", "targetname");
	for(i = 0; i < a_spawners.size; i++)
	{
		e_ent = a_spawners[i] spawner::spawn();
		wait(1.5);
	}
	wait(3);
	level thread function_ad03757a();
}

/*
	Name: function_36113d75
	Namespace: namespace_52f8de11
	Checksum: 0x57A2607B
	Offset: 0x66F0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_36113d75()
{
	level thread namespace_2cb3876f::function_e0fb6da9("s_armory_moveup_start", 240, 7, 1, 1, 3, "info_armory_wave2", "info_armory_enemy_pushup");
	level thread namespace_2cb3876f::function_e0fb6da9("s_armory_moveup_point_left", 240, 4, 1, 1, 6, "info_armory_wave2", "info_armory_enemy_pushup");
	level thread namespace_2cb3876f::function_e0fb6da9("s_armory_moveup_point_right", 240, 4, 1, 1, 6, "info_armory_wave2", "info_armory_enemy_pushup");
}

/*
	Name: function_e6af47cb
	Namespace: namespace_52f8de11
	Checksum: 0xA9A98A4D
	Offset: 0x67C0
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_e6af47cb()
{
	level flag::wait_till("open_weapons_room");
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin);
	level.var_2fd26037 ClearForcedGoal();
	level.var_2fd26037.goalRadius = 64;
	level thread function_473b7de8();
	wait(2);
	trigger::use("trig_armory_color");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r2010");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r2020");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r2030");
	namespace_2cb3876f::function_d1f1caad("t_script_color_allies_r2040");
}

/*
	Name: function_473b7de8
	Namespace: namespace_52f8de11
	Checksum: 0x3B59A3DE
	Offset: 0x68D8
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_473b7de8()
{
	while(!scene::is_ready("cin_pro_07_01_securitydesk_vign_weapons"))
	{
		wait(0.05);
	}
	scene::add_scene_func("cin_pro_07_01_securitydesk_vign_weapons", &function_d4401b52);
	scene::Play("cin_pro_07_01_securitydesk_vign_weapons");
	level notify("hash_69db142c");
	nd_node = GetNode("nd_khalil_armory_battle", "targetname");
	level.var_9db406db.goalRadius = 64;
	level.var_9db406db SetGoal(nd_node.origin);
	level.var_9db406db waittill("goal");
	level.var_9db406db.goalRadius = 512;
}

/*
	Name: function_d4401b52
	Namespace: namespace_52f8de11
	Checksum: 0x6C33AF91
	Offset: 0x69F0
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_d4401b52(a_ents)
{
	level endon("hash_2b5787d4");
	level.var_4d5a4697 ai::gun_remove();
	level.var_9db406db ai::gun_remove();
	level.var_4d5a4697 waittill("weapon_swap");
	a_ents["arak_m"] Hide();
	level.var_4d5a4697 ai::gun_recall();
	level.var_9db406db waittill("hash_2dc522e9");
	a_ents["arak_k"] Hide();
	level.var_9db406db ai::gun_recall();
}

/*
	Name: function_ad03757a
	Namespace: namespace_52f8de11
	Checksum: 0x589803B0
	Offset: 0x6AD0
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_ad03757a()
{
	wait(3);
	a_ai = spawner::get_ai_group_ai("security_balcony");
	if(a_ai.size > 0)
	{
		var_b5dd40c7 = Array::random(a_ai);
		var_b5dd40c7 scene::Play("cin_pro_07_01_securitydesk_vign_dropdown", var_b5dd40c7);
		if(isalive(var_b5dd40c7))
		{
			var_b5dd40c7 SetGoal(var_b5dd40c7.origin);
			var_b5dd40c7.goalRadius = 512;
		}
	}
}

/*
	Name: function_680575de
	Namespace: namespace_52f8de11
	Checksum: 0xB94DC2D0
	Offset: 0x6BB0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_680575de()
{
	namespace_2cb3876f::function_520255e3("t_armory_wave2", 5);
	a_sp = GetEntArray("sp_armory_wave2", "targetname");
	for(i = 0; i < a_sp.size; i++)
	{
		e_ent = a_sp[i] spawner::spawn();
		e_ent thread function_2fa59109();
	}
}

/*
	Name: function_2fa59109
	Namespace: namespace_52f8de11
	Checksum: 0x6FD31327
	Offset: 0x6C70
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2fa59109()
{
	e_volume = GetEnt("info_armory_wave2", "targetname");
	self SetGoal(e_volume);
}

/*
	Name: function_d9f4b7bc
	Namespace: namespace_52f8de11
	Checksum: 0x2976FA64
	Offset: 0x6CC8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_d9f4b7bc()
{
	level.var_9db406db thread dialog::say("khal_i_need_to_get_my_wea_0");
}

/*
	Name: function_b60a26e8
	Namespace: namespace_52f8de11
	Checksum: 0xB379975F
	Offset: 0x6CF8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b60a26e8()
{
	objectives::set("cp_level_prologue_defend_khalil", level.var_9db406db);
	level waittill("hash_69db142c");
	objectives::complete("cp_level_prologue_defend_khalil");
}

#namespace namespace_e80bc418;

/*
	Name: function_7280b87c
	Namespace: namespace_e80bc418
	Checksum: 0xF8213853
	Offset: 0x6D50
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_7280b87c()
{
	level flag::init("lift_arrived");
	level flag::init("crane_in_position");
	level flag::init("crane_dropped");
	level.var_1dd14818 = 0;
}

/*
	Name: function_68538fd
	Namespace: namespace_e80bc418
	Checksum: 0x46C7131E
	Offset: 0x6DC8
	Size: 0x363
	Parameters: 1
	Flags: None
*/
function function_68538fd(str_objective)
{
	function_7280b87c();
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
		namespace_4dc8633b::function_bff1a867();
		level.var_2fd26037.goalRadius = 16;
		level.var_4d5a4697 = util::function_740f8516("minister");
		namespace_4dc8633b::function_211ff3c7();
		level.var_4d5a4697 ai::set_ignoreme(1);
		level.var_9db406db = util::function_740f8516("khalil");
		namespace_4dc8633b::function_c117302b();
		level.var_9db406db ai::set_ignoreme(1);
		skipto::teleport_ai(str_objective);
	}
	callback::on_ai_killed(&namespace_61c634f2::function_cbaf37cd);
	var_489e46a = GetEnt("t_regroup_lift", "targetname");
	var_489e46a TriggerEnable(0);
	trigger::use("t_lift_respawns_disable");
	exploder::stop_exploder("light_exploder_prison_exit");
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_4d5a4697 ai::set_ignoreall(0);
	battlechatter::function_d9f49fba(1);
	namespace_2cb3876f::function_47a62798(1);
	level thread function_9793598c();
	level thread function_5517d018();
	level thread function_6fabe3da();
	level thread function_b17bd9c5();
	function_e97f7dba();
	var_489e46a = GetEnt("t_regroup_lift", "targetname");
	var_489e46a TriggerEnable(1);
	trigger::use("t_lift_respawns_enable");
	level thread function_a3dbf6a2();
	level thread function_613d7b39();
	level waittill("hash_b100689e");
	callback::remove_on_ai_killed(&namespace_61c634f2::function_cbaf37cd);
	skipto::function_be8adfb8("skipto_lift_escape");
}

/*
	Name: function_9793598c
	Namespace: namespace_e80bc418
	Checksum: 0x1B610609
	Offset: 0x7138
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_9793598c()
{
	level thread function_b1017ede();
	level thread namespace_2cb3876f::function_e0fb6da9("s_lift_enemy_moveup_point_1", 130, 10, 1, 2, 10, "v_lift_fallback", "info_lift_start_right_side");
	level thread function_eeb1c74e();
	level thread function_30a5bc5();
	level thread function_c8950894();
	level thread function_a86c4e88();
	level thread namespace_2cb3876f::function_40e4b0cf("sm_lift_start_left_side", "sp_lift_start_left_side", "info_lift_start_left_side");
	if(level.activePlayers.size > 1)
	{
		level thread namespace_2cb3876f::function_40e4b0cf("sm_lift_start_right_side", "sp_lift_start_right_side", "info_lift_start_right_side");
	}
	else
	{
		spawn_manager::kill("sm_lift_start_right_side");
	}
	level thread function_8a1821e("t_left_start_fallback", "info_left_start_fallback", "v_lift_fallback");
	level thread function_8a1821e("t_right_start_fallback", "info_lift_start_right_side", "v_lift_fallback");
	level thread function_8949fadf();
	level thread function_51da5fc6();
	trigger::wait_till("t_lift_reinforcements", undefined, undefined, 0);
	a_spawners = GetEntArray("sp_stairs_guy_wave2", "targetname");
	foreach(sp_spawner in a_spawners)
	{
		sp_spawner spawner::spawn();
	}
	level thread namespace_2cb3876f::function_40e4b0cf("sm_lift_final_attackers", "sp_lift_final_attackers", "v_lift_fallback");
	level thread function_93c4d161();
}

/*
	Name: function_b1017ede
	Namespace: namespace_e80bc418
	Checksum: 0x6E6DC19A
	Offset: 0x7430
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_b1017ede()
{
	level endon("hash_631a1949");
	a_players = GetPlayers();
	if(a_players.size > 1)
	{
		return;
	}
	start_time = GetTime();
	var_c2798c63 = GetEnt("info_lift_players_camping", "targetname");
	var_a9dae27c = GetEnt("info_lift_area_volume", "targetname");
	while(1)
	{
		e_player = GetPlayers()[0];
		time = GetTime();
		if(e_player istouching(var_c2798c63))
		{
			DT = time - start_time / 1000;
			if(DT > 15)
			{
				var_f2c0d323 = 0;
				a_enemy = namespace_2cb3876f::function_68b8f4af(var_a9dae27c);
				for(i = 0; i < a_enemy.size; i++)
				{
					e_enemy = a_enemy[i];
					if(!isdefined(e_enemy.var_4383fc69))
					{
						e_enemy.var_4383fc69 = 1;
						e_enemy.goalRadius = 200;
						e_enemy SetGoal(e_player.origin);
						start_time = time;
						var_f2c0d323 = 1;
						break;
					}
				}
				if(!var_f2c0d323)
				{
					return;
				}
			}
		}
		else
		{
			start_time = time;
		}
		wait(0.05);
	}
}

/*
	Name: function_a86c4e88
	Namespace: namespace_e80bc418
	Checksum: 0x47C76B03
	Offset: 0x7680
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a86c4e88()
{
	namespace_2cb3876f::function_d1f1caad("t_lift_intro_runners");
	wait(10);
	level thread namespace_2cb3876f::function_a7eac508("sp_lift_intro_rightside_backup", undefined, undefined, undefined);
}

/*
	Name: function_eeb1c74e
	Namespace: namespace_e80bc418
	Checksum: 0xC7B6544F
	Offset: 0x76D0
	Size: 0x27D
	Parameters: 0
	Flags: None
*/
function function_eeb1c74e()
{
	level flag::wait_till("lift_arrived");
	wait(10);
	var_91737097 = GetEnt("info_lift_area_volume", "targetname");
	var_2320a476 = GetEnt("info_lift_start_area_volume", "targetname");
	while(1)
	{
		if(isdefined(level.var_1f5f8798) && level.var_1f5f8798)
		{
			return;
		}
		a_ai = GetAITeamArray("axis");
		count = 0;
		for(i = 0; i < a_ai.size; i++)
		{
			if(a_ai[i] istouching(var_2320a476))
			{
				count++;
			}
		}
		if(count <= 2)
		{
			break;
		}
		wait(0.05);
	}
	a_ai = GetAITeamArray("axis");
	a_enemy = [];
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i];
		if(e_ent istouching(var_91737097) && !e_ent istouching(var_2320a476))
		{
			a_enemy[a_enemy.size] = e_ent;
		}
	}
	count = a_enemy.size;
	if(count > 3)
	{
		count = 3;
	}
	for(i = 0; i < count; i++)
	{
		e_ent = a_enemy[i];
		e_ent SetGoal(var_2320a476);
	}
}

/*
	Name: function_30a5bc5
	Namespace: namespace_e80bc418
	Checksum: 0x3D443E64
	Offset: 0x7958
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_30a5bc5()
{
	namespace_2cb3876f::function_d1f1caad("t_lift_intro_runners");
	level thread namespace_2cb3876f::function_a7eac508("sp_lift_intro_runners", 64, 64, undefined);
}

/*
	Name: function_c8950894
	Namespace: namespace_e80bc418
	Checksum: 0x28F049D6
	Offset: 0x79A8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c8950894()
{
	namespace_2cb3876f::function_d1f1caad("t_intro_guys_on_bridge");
	namespace_2cb3876f::function_73acb160("sp_lift_stairs_intro_guys", undefined);
}

/*
	Name: function_b17bd9c5
	Namespace: namespace_e80bc418
	Checksum: 0xAAD521EF
	Offset: 0x79E8
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_b17bd9c5()
{
	level.var_2fd26037.script_accuracy = 0.6;
	level.var_4d5a4697.script_accuracy = 0.6;
	level.var_9db406db.script_accuracy = 0.6;
	level thread function_17d64396();
	trigger::use("t_script_color_allies_r920");
	trigger::wait_till("t_script_color_allies_r950");
	level flag::wait_till("crane_in_position");
	if(!level flag::get("crane_dropped"))
	{
		e_target = util::spawn_model("tag_origin", struct::get("s_destroy_pipes", "targetname").origin);
		e_target.health = 1000;
		level.var_2fd26037 ai::shoot_at_target("normal", e_target, "tag_origin", 3);
		e_target delete();
		t_damage = GetEnt("crane_damage_trigger", "targetname");
		if(isdefined(t_damage))
		{
			t_damage UseBy(level.var_2fd26037);
		}
	}
}

/*
	Name: function_e97f7dba
	Namespace: namespace_e80bc418
	Checksum: 0x75C614E3
	Offset: 0x7BC8
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_e97f7dba()
{
	spawner::waittill_ai_group_cleared("lift_area");
	level thread namespace_21b2c1f2::function_49fef8f4();
	level thread function_d4734ff1();
	level thread function_6f04ae03();
	level.var_2fd26037 thread function_add8f6bb();
	level.var_9db406db thread function_f92b76b7();
	level.var_4d5a4697 thread function_c3ab179b();
	level flag::wait_till("hendricks_in_lift");
	level flag::wait_till("minister_in_lift");
	level flag::wait_till("khalil_in_lift");
	while(!level scene::is_ready("cin_pro_09_01_intro_1st_cybersoldiers_diaz_attack") || !level scene::is_ready("cin_pro_09_01_intro_1st_cybersoldiers_maretti_attack") || !level scene::is_ready("cin_pro_09_01_intro_1st_cybersoldiers_sarah_attack") || !level scene::is_ready("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack"))
	{
		wait(0.05);
	}
}

/*
	Name: function_17d64396
	Namespace: namespace_e80bc418
	Checksum: 0x2D37BFA0
	Offset: 0x7D70
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_17d64396()
{
	namespace_2cb3876f::function_d1f1caad("entering_lift_fight");
	start_time = GetTime();
	while(1)
	{
		time = GetTime();
		DT = time - start_time / 1000;
		if(DT > 10)
		{
			var_f04bd8f5 = namespace_2cb3876f::function_609c412a("info_lift_start_area_volume", 0);
			if(var_f04bd8f5 <= 2)
			{
				break;
			}
		}
		wait(0.05);
	}
	e_trigger = GetEnt("t_script_color_allies_r930", "targetname");
	if(isdefined(e_trigger))
	{
		trigger::use("t_script_color_allies_r930");
	}
}

/*
	Name: function_8a1821e
	Namespace: namespace_e80bc418
	Checksum: 0x47BFEC4D
	Offset: 0x7E88
	Size: 0x155
	Parameters: 3
	Flags: None
*/
function function_8a1821e(str_trigger, var_fc9c675e, var_62ec3b42)
{
	e_trigger = GetEnt(str_trigger, "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
	}
	var_cc6832b6 = GetEnt(var_fc9c675e, "targetname");
	var_97e01c0a = GetEnt(var_62ec3b42, "targetname");
	a_ai = GetAITeamArray("axis");
	for(i = 0; i < a_ai.size; i++)
	{
		e_ent = a_ai[i];
		if(e_ent istouching(var_cc6832b6))
		{
			e_ent setgoalvolume(var_97e01c0a);
		}
	}
}

/*
	Name: function_d4734ff1
	Namespace: namespace_e80bc418
	Checksum: 0x9A46799E
	Offset: 0x7FE8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_d4734ff1()
{
	level thread scene::init("cin_pro_09_01_intro_1st_cybersoldiers_diaz_attack");
	level thread scene::init("cin_pro_09_01_intro_1st_cybersoldiers_maretti_attack");
	level thread scene::init("cin_pro_09_01_intro_1st_cybersoldiers_sarah_attack");
	level thread scene::init("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack");
}

/*
	Name: function_a3dbf6a2
	Namespace: namespace_e80bc418
	Checksum: 0x6D7BEC2
	Offset: 0x8078
	Size: 0x35F
	Parameters: 0
	Flags: None
*/
function function_a3dbf6a2()
{
	trigger::wait_till("t_lift_interior");
	var_d39a9d5b = GetEnt("player_lift_clip", "targetname");
	var_d39a9d5b MoveZ(124, 0.05);
	level.var_5b3ac1ed = 1;
	level scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride", &namespace_dccf27b3::function_679e7da9, "play");
	level thread scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_lift_pushbutton");
	level.var_4d5a4697.goalRadius = 16;
	level.var_4d5a4697.goalHeight = 1600;
	level.var_4d5a4697 SetGoal(level.var_4d5a4697.origin);
	level.var_9db406db.goalRadius = 16;
	level.var_9db406db.goalHeight = 1600;
	level.var_9db406db SetGoal(level.var_9db406db.origin);
	level notify("hash_3e51db3e");
	level thread function_45ed0d4b(0, 1.5);
	level waittill("hash_9e4059e6");
	level.var_be31aa9a = GetEnt("freight_lift", "targetname");
	level.var_be31aa9a SetMovingPlatformEnabled(1);
	level.var_be31aa9a playsound("evt_freight_lift_start");
	level.var_7b90133a = spawn("script_origin", level.var_be31aa9a.origin);
	level.var_7b90133a LinkTo(level.var_be31aa9a);
	level.var_7b90133a PlayLoopSound("evt_freight_lift_loop");
	level thread function_4d214c02(1);
	level thread function_e19320a1(1);
	level.var_be31aa9a thread scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_elevator");
	level.var_3dce3f88 MoveZ(270, 16.3);
	level.var_3dce3f88 thread function_5bd223b0();
	wait(16.3 - 2);
	SetDvar("grenadeAllowRigidBodyPhysics", "1");
	level notify("hash_b100689e");
	level.var_b100689e = 1;
}

/*
	Name: function_5bd223b0
	Namespace: namespace_e80bc418
	Checksum: 0xEABB26E4
	Offset: 0x83E0
	Size: 0x12D
	Parameters: 0
	Flags: None
*/
function function_5bd223b0()
{
	self endon("death");
	self waittill("movedone");
	var_18f37a5b = GetEnt("t_lift_interior", "targetname");
	a_s_spots = struct::get_array("lift_left_behind", "targetname");
	for(i = 0; i < level.activePlayers.size; i++)
	{
		player = level.activePlayers[i];
		if(player istouching(var_18f37a5b))
		{
			player SetOrigin(a_s_spots[i].origin);
			player SetPlayerAngles(a_s_spots[i].angles);
		}
	}
}

/*
	Name: function_e19320a1
	Namespace: namespace_e80bc418
	Checksum: 0xC2815EFA
	Offset: 0x8518
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_e19320a1(n_delay)
{
	if(!isdefined(n_delay))
	{
		n_delay = 0.05;
	}
	wait(n_delay);
	exploder::stop_exploder("light_exploder_lift_inside");
	exploder::exploder("light_exploder_lift_rising");
	exploder::exploder("light_exploder_igc_cybersoldier");
	exploder::exploder("fx_exploder_door_open_dust");
	var_58576bff = GetEnt("hangar_lift_door_left", "targetname");
	var_bbc00d9a = GetEnt("hangar_lift_door_right", "targetname");
	playsoundatposition("evt_freight_lift_abovedoor", var_bbc00d9a.origin);
	var_58576bff MoveY(104, 5);
	var_bbc00d9a MoveY(104 * -1, 5);
}

/*
	Name: function_4d214c02
	Namespace: namespace_e80bc418
	Checksum: 0xEDF71BBF
	Offset: 0x8688
	Size: 0x1AF
	Parameters: 1
	Flags: None
*/
function function_4d214c02(delay)
{
	wait(delay);
	while(!(isdefined(level.var_b100689e) && level.var_b100689e))
	{
		foreach(player in level.players)
		{
			player PlayRumbleOnEntity("cp_prologue_rumble_lift");
		}
		wait(0.5);
	}
	start_time = GetTime();
	while(1)
	{
		time = GetTime();
		DT = time - start_time / 1000;
		if(DT > 8)
		{
			break;
		}
		foreach(player in level.players)
		{
			player PlayRumbleOnEntity("cp_prologue_rumble_lift");
		}
		wait(0.5);
	}
}

/*
	Name: function_17ecef2
	Namespace: namespace_e80bc418
	Checksum: 0x44C7DE3B
	Offset: 0x8840
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_17ecef2()
{
	self.script_accuracy = 0.5;
	self.overrideActorDamage = &function_10ffa58e;
}

/*
	Name: function_10ffa58e
	Namespace: namespace_e80bc418
	Checksum: 0xBF17D8AE
	Offset: 0x8878
	Size: 0xB7
	Parameters: 13
	Flags: None
*/
function function_10ffa58e(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	if(self.health - iDamage <= 0)
	{
		if(isdefined(eAttacker) && isPlayer(eAttacker))
		{
			eAttacker notify("hash_38f375b6");
		}
	}
	return iDamage;
}

/*
	Name: function_613d7b39
	Namespace: namespace_e80bc418
	Checksum: 0x8DD56F83
	Offset: 0x8938
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_613d7b39()
{
	level waittill("hash_b100689e");
	wait(2);
	if(isdefined(level.var_90cd4b44))
	{
		namespace_4dc8633b::function_6a77bdd4(level.var_90cd4b44);
	}
	if(isdefined(level.var_5fbe7226))
	{
		namespace_4dc8633b::function_6a77bdd4(level.var_5fbe7226);
	}
	level.var_4d5a4697.goalHeight = 80;
	level.var_9db406db.goalHeight = 80;
	a_ai = GetAITeamArray("axis");
	for(i = 0; i < a_ai.size; i++)
	{
		a_ai[i] delete();
	}
}

/*
	Name: CleanUp
	Namespace: namespace_e80bc418
	Checksum: 0x51272AFF
	Offset: 0x8A38
	Size: 0xE9
	Parameters: 2
	Flags: None
*/
function CleanUp(var_95c5d6ed, var_5feb916c)
{
	spawn_manager::kill(var_95c5d6ed);
	var_db932442 = spawner::get_ai_group_ai(var_5feb916c);
	foreach(ai_dude in var_db932442)
	{
		if(isalive(ai_dude))
		{
			ai_dude delete();
		}
	}
}

/*
	Name: function_9b5132a1
	Namespace: namespace_e80bc418
	Checksum: 0x61B88850
	Offset: 0x8B30
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_9b5132a1(var_74293b08)
{
	s_target = struct::get(var_74293b08, "targetname");
	self.var_5ddefd36 = undefined;
	self.goalRadius = 128;
	self setgoalpos(s_target.origin);
	self waittill("goal");
	self.var_5ddefd36 = 1;
}

/*
	Name: function_add8f6bb
	Namespace: namespace_e80bc418
	Checksum: 0x4B1C3849
	Offset: 0x8BC8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_add8f6bb()
{
	self colors::disable();
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_hendricks", &function_3703e000, "play");
	level scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_hendricks");
	level flag::set("hendricks_in_lift");
}

/*
	Name: function_c3ab179b
	Namespace: namespace_e80bc418
	Checksum: 0x2BDA4124
	Offset: 0x8C60
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_c3ab179b()
{
	self ai::set_behavior_attribute("vignette_mode", "slow");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_minister", &function_6d36e736, "play");
	level scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_minister");
	self SetGoal(self.origin, 1);
	level flag::set("minister_in_lift");
}

/*
	Name: function_f92b76b7
	Namespace: namespace_e80bc418
	Checksum: 0x9764EAD7
	Offset: 0x8D28
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f92b76b7()
{
	self ai::set_behavior_attribute("vignette_mode", "slow");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_khalil", &function_789cecd6, "play");
	level scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_elevator_ride_start_khalil");
	self SetGoal(self.origin, 1);
	level flag::set("khalil_in_lift");
}

/*
	Name: function_3703e000
	Namespace: namespace_e80bc418
	Checksum: 0x73023C63
	Offset: 0x8DF0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_3703e000(a_ents)
{
	level endon("hash_7880f194");
	wait(6);
	level flag::set("hendricks_in_lift");
}

/*
	Name: function_6d36e736
	Namespace: namespace_e80bc418
	Checksum: 0x4C79B06E
	Offset: 0x8E38
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_6d36e736(a_ents)
{
	level endon("hash_9368976");
	wait(4);
	level flag::set("minister_in_lift");
}

/*
	Name: function_789cecd6
	Namespace: namespace_e80bc418
	Checksum: 0x567AFC6C
	Offset: 0x8E80
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_789cecd6(a_ents)
{
	level endon("hash_4c888af6");
	wait(6.7);
	level flag::set("khalil_in_lift");
}

/*
	Name: function_8949fadf
	Namespace: namespace_e80bc418
	Checksum: 0x7469CBD8
	Offset: 0x8EC8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_8949fadf()
{
	e_trigger = GetEnt("t_lift_player_advances", "targetname");
	if(isdefined(e_trigger))
	{
		e_trigger waittill("trigger");
	}
	level thread namespace_2cb3876f::function_a7eac508("sp_lift_player_advances", 64, 64, undefined);
	level.var_1f5f8798 = 1;
}

/*
	Name: function_51da5fc6
	Namespace: namespace_e80bc418
	Checksum: 0xF19DC9D7
	Offset: 0x8F50
	Size: 0x49B
	Parameters: 0
	Flags: None
*/
function function_51da5fc6()
{
	level.var_be31aa9a = GetEnt("freight_lift", "targetname");
	level.var_3dce3f88 = spawn("script_model", level.var_be31aa9a.origin);
	level.var_be31aa9a LinkTo(level.var_3dce3f88);
	level.var_be31aa9a SetMovingPlatformEnabled(1);
	level.var_be31aa9a thread function_f2f20b35();
	exploder::exploder("light_exploder_lift_inside");
	function_dfbe3c61();
	a_spawners = GetEntArray("sp_lift_reinforcements", "targetname");
	for(i = 0; i < a_spawners.size; i++)
	{
		a_spawners[i] spawner::add_spawn_function(&function_38a8e28b);
		a_spawners[i] spawner::spawn();
	}
	v_down = (0, 0, -1);
	dist = 354;
	move_time = 5;
	var_519d9482 = level.var_be31aa9a.origin + v_down * dist;
	level.var_3dce3f88 moveto(var_519d9482, move_time);
	level.var_be31aa9a = GetEnt("freight_lift", "targetname");
	level.var_be31aa9a playsound("evt_freight_lift_start");
	var_7b90133a = spawn("script_origin", level.var_be31aa9a.origin);
	var_7b90133a LinkTo(level.var_be31aa9a);
	var_7b90133a PlayLoopSound("evt_freight_lift_loop");
	level.var_3dce3f88 waittill("movedone");
	level.var_3dce3f88 scene::init("cin_pro_08_01_liftescape_vign_lift_doorsopen", level.var_be31aa9a);
	var_7b90133a StopLoopSound(0.1);
	SetDvar("grenadeAllowRigidBodyPhysics", "0");
	open_time = 1.5;
	level thread function_45ed0d4b(1, open_time);
	wait(open_time + 0.1);
	var_950ed8c6 = GetNode("n_lift_entrance_begin3", "targetname");
	LinkTraversal(var_950ed8c6);
	level flag::set("lift_arrived");
	a_nodes = GetNodeArray("nd_exit_lift", "targetname");
	a_ai = GetEntArray("sp_lift_reinforcements_ai", "targetname");
	for(i = 0; i < a_ai.size; i++)
	{
		a_ai[i] thread function_c6db42e4(a_nodes[i]);
	}
	wait(1);
	level.var_2fd26037 dialog::say("hend_spotted_more_reinfor_0");
}

/*
	Name: function_c6db42e4
	Namespace: namespace_e80bc418
	Checksum: 0x910488E1
	Offset: 0x93F8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c6db42e4(nd_node)
{
	self endon("death");
	self util::stop_magic_bullet_shield();
	self.goalRadius = 64;
	self SetGoal(nd_node.origin);
	self waittill("goal");
	self.goalRadius = 1024;
}

/*
	Name: function_38a8e28b
	Namespace: namespace_e80bc418
	Checksum: 0x5F5B4038
	Offset: 0x9478
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_38a8e28b()
{
	self.goalRadius = 64;
	self.var_37b94263 = 1;
	self util::magic_bullet_shield();
}

/*
	Name: function_93c4d161
	Namespace: namespace_e80bc418
	Checksum: 0xFFC41143
	Offset: 0x94B8
	Size: 0x225
	Parameters: 0
	Flags: None
*/
function function_93c4d161()
{
	e_volume = GetEnt("info_lift_start_area_volume", "targetname");
	while(1)
	{
		var_b9c84787 = GetAITeamArray("axis");
		if(var_b9c84787.size < 5)
		{
			a_enemy = namespace_2cb3876f::function_68b8f4af(e_volume);
			if(a_enemy.size < 3)
			{
				break;
			}
		}
		wait(0.05);
	}
	var_d6bb42cf = GetEnt("v_lift_fallback", "targetname");
	for(i = 0; i < a_enemy.size; i++)
	{
		e_ai = a_enemy[i];
		e_ai SetGoal(var_d6bb42cf);
	}
	var_d6bb42cf = GetEnt("info_lift_area_volume", "targetname");
	while(1)
	{
		a_enemy = namespace_2cb3876f::function_68b8f4af(e_volume);
		if(a_enemy.size <= 1)
		{
			break;
		}
		wait(0.05);
	}
	for(i = 0; i < a_enemy.size; i++)
	{
		e_player = GetPlayers()[0];
		e_enemy = a_enemy[i];
		e_enemy.goalRadius = 200;
		e_enemy SetGoal(e_player);
	}
}

/*
	Name: function_dfbe3c61
	Namespace: namespace_e80bc418
	Checksum: 0x7B084EC6
	Offset: 0x96E8
	Size: 0x105
	Parameters: 0
	Flags: None
*/
function function_dfbe3c61()
{
	namespace_2cb3876f::function_d1f1caad("entering_lift_fight");
	start_time = GetTime();
	while(1)
	{
		time = GetTime();
		DT = time - start_time / 1000;
		if(DT > 20)
		{
			e_trigger = GetEnt("t_lift_reinforcements", "targetname");
			if(!isdefined(e_trigger))
			{
				break;
			}
			var_f04bd8f5 = namespace_2cb3876f::function_609c412a("info_lift_area_volume", 0);
			if(var_f04bd8f5 < 3)
			{
				break;
			}
		}
		wait(0.05);
	}
	level notify("hash_631a1949");
}

/*
	Name: function_f2f20b35
	Namespace: namespace_e80bc418
	Checksum: 0x5FAFE553
	Offset: 0x97F8
	Size: 0x303
	Parameters: 0
	Flags: None
*/
function function_f2f20b35()
{
	var_dda0086b = GetEnt("probe_lift", "targetname");
	var_dda0086b LinkTo(self);
	var_62873ca1 = GetEnt("light_lift", "targetname");
	var_62873ca1 LinkTo(self);
	var_51875481 = GetEntArray("light_lift_02", "targetname");
	foreach(light in var_51875481)
	{
		light LinkTo(self);
	}
	var_51875481 = GetEntArray("light_lift_03", "targetname");
	foreach(light in var_51875481)
	{
		light LinkTo(self);
	}
	var_51875481 = GetEntArray("light_lift_panel_anim01", "targetname");
	foreach(light in var_51875481)
	{
		light LinkTo(self);
	}
	var_62873ca1 = GetEnt("light_lift_panel_anim02", "targetname");
	var_62873ca1 LinkTo(self);
	level waittill("hash_a1a67fd8");
	exploder::exploder("light_lift_panel_green");
}

/*
	Name: function_45ed0d4b
	Namespace: namespace_e80bc418
	Checksum: 0x79CF6136
	Offset: 0x9B08
	Size: 0x31B
	Parameters: 2
	Flags: None
*/
function function_45ed0d4b(open_door, move_time)
{
	var_507d66a5 = GetEnt("lift_door_top", "targetname");
	var_3d3eb4dd = GetEnt("lift_door_bottom", "targetname");
	v_up = (0, 0, 1);
	move_amount = 100;
	if(open_door)
	{
		if(level.var_1dd14818 == 1)
		{
			return;
		}
		v_dest = var_507d66a5.origin + v_up * move_amount;
		var_507d66a5 moveto(v_dest, move_time);
		v_dest = var_3d3eb4dd.origin + v_up * move_amount * -1;
		var_3d3eb4dd moveto(v_dest, move_time);
		level.var_1dd14818 = 1;
	}
	else if(level.var_1dd14818 == 0)
	{
		return;
	}
	v_dest = var_507d66a5.origin + v_up * move_amount * -1;
	var_507d66a5 moveto(v_dest, move_time);
	v_dest = var_3d3eb4dd.origin + v_up * move_amount;
	var_3d3eb4dd moveto(v_dest, move_time);
	level.var_1dd14818 = 0;
	var_3d3eb4dd playsound("evt_freight_elev_door_start");
	var_cc8ae729 = spawn("script_origin", var_3d3eb4dd.origin);
	var_cc8ae729 LinkTo(var_3d3eb4dd);
	var_cc8ae729 PlayLoopSound("evt_freight_elev_door_loop");
	wait(move_time);
	var_3d3eb4dd playsound("evt_freight_elev_door_stop");
	var_cc8ae729 StopLoopSound(0.1);
	if(open_door)
	{
		level.var_3dce3f88 scene::Play("cin_pro_08_01_liftescape_vign_lift_doorsopen", level.var_be31aa9a);
	}
	else
	{
		level.var_3dce3f88 scene::Play("cin_pro_08_01_liftescape_vign_lift_doorsclose", level.var_be31aa9a);
	}
}

/*
	Name: function_5517d018
	Namespace: namespace_e80bc418
	Checksum: 0x8BC0C0C6
	Offset: 0x9E30
	Size: 0x36B
	Parameters: 0
	Flags: None
*/
function function_5517d018()
{
	e_trigger = GetEnt("crane_damage_trigger", "targetname");
	e_trigger TriggerEnable(0);
	namespace_2cb3876f::function_d1f1caad("t_intro_guys_on_bridge");
	level thread scene::Play("p7_fxanim_cp_prologue_ceiling_underground_crane_bundle", "scriptbundlename");
	level waittill("hash_231a1398");
	level flag::set("crane_in_position");
	e_trigger TriggerEnable(1);
	e_trigger waittill("trigger", e_who);
	e_trigger delete();
	level thread scene::Play("p7_fxanim_cp_prologue_ceiling_underground_crane_shot_bundle");
	level waittill("hash_1cda5581");
	level flag::set("crane_dropped");
	a_ai = GetAITeamArray("axis");
	e_volume = GetEnt("info_crane_drop", "targetname");
	for(i = 0; i < a_ai.size; i++)
	{
		if(isalive(a_ai[i]) && a_ai[i] istouching(e_volume))
		{
			a_ai[i] kill();
			if(isPlayer(e_who))
			{
				namespace_61c634f2::function_d248b92b(e_who);
			}
		}
	}
	foreach(player in level.players)
	{
		if(player istouching(e_volume))
		{
			player DoDamage(500, e_volume.origin);
		}
	}
	e_volume delete();
	var_2fd07777 = GetEnt("lifttunnel_pipecollision", "targetname");
	var_2fd07777 MoveZ(-80, 0.05);
}

/*
	Name: function_6fabe3da
	Namespace: namespace_e80bc418
	Checksum: 0x1E70B52C
	Offset: 0xA1A8
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_6fabe3da()
{
	trigger::wait_till("entering_lift_fight");
	level.var_2fd26037 dialog::say("hend_that_s_our_exit_car_0");
	namespace_2cb3876f::function_520255e3("t_lift_reinforcements", 60);
	level.var_2fd26037 dialog::say("hend_elevator_s_right_the_0");
	level waittill("hash_3e51db3e");
	level thread namespace_21b2c1f2::function_9f50ebc2();
	level thread namespace_21b2c1f2::function_c4c71c7();
}

/*
	Name: function_6f04ae03
	Namespace: namespace_e80bc418
	Checksum: 0xF2AFF467
	Offset: 0xA268
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_6f04ae03()
{
	level endon("hash_3e51db3e");
	level.var_2fd26037 dialog::say("hend_let_s_move_get_to_t_0");
	wait(15);
	level.var_2fd26037 dialog::say("hend_keep_pushing_forward_0");
}


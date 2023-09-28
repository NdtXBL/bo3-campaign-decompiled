#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_accolades;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_aware;
#using scripts\shared\stealth_status;
#using scripts\shared\stealth_vo;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_628b256b;

/*
	Name: function_80032d7e
	Namespace: namespace_628b256b
	Checksum: 0xFB15E3DC
	Offset: 0x13E0
	Size: 0x13B
	Parameters: 2
	Flags: None
*/
function function_80032d7e(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_63b4601c::function_b87f9c13(str_objective, var_74cd64bc);
		callback::on_spawned(&namespace_63b4601c::give_hero_weapon);
		namespace_63b4601c::init_hero("hendricks", str_objective);
		level thread namespace_63b4601c::function_cc6f3598();
		level thread namespace_63b4601c::function_3f34106b();
		level thread namespace_9fd035::function_dad71f51();
		load::function_a2995f22();
		objectives::set("cp_level_vengeance_rescue_kane");
		objectives::set("cp_level_vengeance_go_to_safehouse");
		objectives::Hide("cp_level_vengeance_go_to_safehouse");
	}
	function_88933a86(str_objective);
}

/*
	Name: function_88933a86
	Namespace: namespace_628b256b
	Checksum: 0x245311A1
	Offset: 0x1528
	Size: 0x801
	Parameters: 1
	Flags: None
*/
function function_88933a86(str_objective)
{
	stealth::reset();
	level.var_67e1f60e[level.var_67e1f60e.size] = &function_591ead63;
	level flag::set("temple_begin");
	SetDvar("scr_security_breach_lose_contact_distance", 36000);
	SetDvar("scr_security_breach_lost_contact_distance", 72000);
	level thread namespace_523da15d::function_a6fadcaa();
	level thread function_899bbe30();
	level.var_2fd26037 thread function_a0ef55a8();
	spawner::add_spawn_function_group("temple_ambient_civilian", "script_noteworthy", &function_8e6475bd);
	level thread function_47dc557f();
	level thread function_a86ac59d();
	level thread function_7ee71c12();
	namespace_63b4601c::function_e00864bd("office_umbra_gate", 0, "office_gate");
	level.var_216db1b0 = spawner::simple_spawn("temple_patroller_spawners", &function_e8f0e2bd);
	level thread function_f8f4e73e();
	level thread namespace_63b4601c::function_e3420328("temple_ambient_anims", "dogleg_2_at_end");
	level thread scene::Play("cin_ven_05_20_pond_floaters_vign");
	spawner::add_spawn_function_group("drowncivilian_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_22_drowncivilian_civdeath_vign", "cin_ven_05_22_drowncivilian_enemyreact_vign", undefined);
	level thread scene::Play("cin_ven_05_22_drowncivilian_vign");
	spawner::add_spawn_function_group("rocksmash_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_21_rocksmash_civdeath_vign", "cin_ven_05_21_rocksmash_enemyreact_vign", "rocksmash_boulder");
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "rocksmash_civilian";
	scene::add_scene_func("cin_ven_05_21_rocksmash_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	level thread scene::Play("cin_ven_05_21_rocksmash_vign");
	spawner::add_spawn_function_group("slicendice_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_23_slicendice_civdeath_vign", undefined, "slicendice_machete");
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "slicendice_civilian";
	scene::add_scene_func("cin_ven_05_23_slicendice_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	level thread scene::Play("cin_ven_05_23_slicendice_vign");
	spawner::add_spawn_function_group("beatdown_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_26_beatdown_civdeath_vign", undefined, undefined);
	level thread scene::Play("cin_ven_05_26_beatdown_vign");
	spawner::add_spawn_function_group("execution_lineup_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_24_execution_lineup_civdeath_vign", undefined, undefined);
	level thread scene::Play("cin_ven_05_24_execution_lineup_vign");
	spawner::add_spawn_function_group("ammorestock_en3", "targetname", &function_558af5fd, undefined, undefined, "cin_ven_05_27_ammorestock_enemyreact_vign", undefined);
	level thread scene::Play("cin_ven_05_27_ammorestock_vign");
	spawner::add_spawn_function_group("grassstomp_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_28_grassstomp_civdeath_vign", undefined, undefined);
	level thread scene::Play("cin_ven_05_28_grassstomp_vign");
	spawner::add_spawn_function_group("railbeatdown_enemy", "targetname", &function_558af5fd, undefined, "cin_ven_05_29_rail_beatdown_civdeath_vign", "cin_ven_05_29_rail_beatdown_enemyreact_vign", undefined);
	var_6a07eb6c = [];
	var_6a07eb6c[0] = "railbeatdown_civ";
	scene::add_scene_func("cin_ven_05_29_rail_beatdown_vign", &namespace_63b4601c::function_65a61b78, "play", var_6a07eb6c);
	level thread scene::Play("cin_ven_05_29_rail_beatdown_vign");
	spawner::add_spawn_function_group("wallbeatdown_enemy1", "targetname", &function_558af5fd, undefined, "cin_ven_05_32_wall_beatdown_civdeath_vign", "cin_ven_05_32_wall_beatdown_enemyreact_vign", undefined);
	level thread scene::Play("cin_ven_05_32_wall_beatdown_vign");
	level thread function_ea758541("temple_rooftop_sniper_trigger", "targetname");
	triggers = GetEntArray("temple_stealth_checkpoint_trigger", "targetname");
	foreach(trigger in triggers)
	{
		trigger thread namespace_63b4601c::function_f9c94344();
	}
	level thread function_68be9dc2();
	clips = GetEntArray("temple_spawn_closet_door_pathing_clip", "targetname");
	foreach(clip in clips)
	{
		clip disconnectpaths();
	}
}

/*
	Name: function_68be9dc2
	Namespace: namespace_628b256b
	Checksum: 0x77A65954
	Offset: 0x1D38
	Size: 0x25F
	Parameters: 0
	Flags: None
*/
function function_68be9dc2()
{
	wait(0.25);
	var_dd48cfe3 = [];
	var_dd48cfe3[var_dd48cfe3.size] = "drowncivilian_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "rocksmash_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "slicendice_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "beatdown_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ1";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ2";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ3";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ4";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ5";
	var_dd48cfe3[var_dd48cfe3.size] = "execution_lineup_civ6";
	var_dd48cfe3[var_dd48cfe3.size] = "temple_butcher_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "gateroughup_civilian";
	var_dd48cfe3[var_dd48cfe3.size] = "grassstomp_civ";
	var_dd48cfe3[var_dd48cfe3.size] = "railbeatdown_civ";
	var_dd48cfe3[var_dd48cfe3.size] = "wallbeatdown_civilian";
	foreach(var_aca1a7c8 in var_dd48cfe3)
	{
		var_ad10cf41 = GetEntArray(var_aca1a7c8, "targetname");
		foreach(civ in var_ad10cf41)
		{
			civ thread namespace_63b4601c::function_f832e2fa();
		}
	}
}

/*
	Name: function_558af5fd
	Namespace: namespace_628b256b
	Checksum: 0xA50A4B90
	Offset: 0x1FA0
	Size: 0x1DB
	Parameters: 4
	Flags: None
*/
function function_558af5fd(var_7131db57, var_1f486a3b, react_scene, drop_object)
{
	self endon("death");
	if(isdefined(var_7131db57))
	{
		self namespace_234a4910::function_4970c8b8(var_7131db57);
	}
	self thread function_c2627018(var_1f486a3b, drop_object);
	self util::waittill_any("alert", "damage");
	if(isdefined(self.script_aigroup))
	{
		group = GetAIArray(self.script_aigroup, "script_aigroup");
		foreach(guy in group)
		{
			if(isalive(guy) && guy != self)
			{
				guy notify("alert", "combat");
			}
		}
	}
	else if(isdefined(drop_object))
	{
		level thread function_54c1902c(drop_object);
	}
	if(isdefined(react_scene))
	{
		self StopAnimScripted();
		level thread scene::Play(react_scene);
	}
}

/*
	Name: function_c2627018
	Namespace: namespace_628b256b
	Checksum: 0x4B290FD7
	Offset: 0x2188
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_c2627018(var_1f486a3b, drop_object)
{
	self util::waittill_any("death", "alert", "damage");
	if(isdefined(drop_object))
	{
		level thread function_54c1902c(drop_object);
	}
	if(isdefined(var_1f486a3b))
	{
		level thread scene::Play(var_1f486a3b);
	}
}

/*
	Name: function_e0d6af75
	Namespace: namespace_628b256b
	Checksum: 0x594BFDEA
	Offset: 0x2218
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_e0d6af75()
{
	self endon("death");
	self ai::set_ignoreme(1);
	self thread function_64cea510();
	self util::waittill_any("alert", "fake_alert");
	self animation::fire_weapon();
	self StopAnimScripted();
	civ = GetEnt("gunpoint_civilian_ai", "targetname");
	if(isdefined(civ) && isalive(civ))
	{
		civ notify("fake_death");
	}
	wait(0.1);
	self ai::set_ignoreme(0);
}

/*
	Name: function_64cea510
	Namespace: namespace_628b256b
	Checksum: 0xC8542168
	Offset: 0x2338
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_64cea510()
{
	self waittill("death");
	civ = GetEnt("gunpoint_civilian_ai", "targetname");
	if(isdefined(civ) && isalive(civ))
	{
		civ notify("fake_death");
	}
	if(isdefined(self))
	{
		start_origin = self GetTagOrigin("tag_flash");
		if(isdefined(start_origin))
		{
			end_origin = start_origin + AnglesToForward(self GetTagAngles("tag_flash")) * 120;
			if(isdefined(start_origin) && isdefined(end_origin))
			{
				shot = MagicBullet(GetWeapon("shotgun_pump"), start_origin, end_origin);
			}
		}
	}
}

/*
	Name: function_bddcb39c
	Namespace: namespace_628b256b
	Checksum: 0xAB435EE5
	Offset: 0x2488
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_bddcb39c()
{
	self endon("death");
	self.team = "allies";
	self.Civilian = 1;
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self ai::set_behavior_attribute("panic", 0);
	self.health = 1;
	self util::waittill_any("damage", "alert", "fake_death");
	guy = GetEnt("gunpoint_enemy_ai", "targetname");
	if(isdefined(guy) && isalive(guy))
	{
		guy notify("hash_da6a4775");
	}
	if(isdefined(self.magic_bullet_shield))
	{
		util::stop_magic_bullet_shield(self);
	}
	self.takedamage = 1;
	self.allowdeath = 1;
	self kill();
	self StartRagdoll();
}

/*
	Name: function_54c1902c
	Namespace: namespace_628b256b
	Checksum: 0x9E622472
	Offset: 0x2610
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_54c1902c(e_obj)
{
	if(isdefined(e_obj))
	{
		e_obj = GetEnt(e_obj, "targetname");
		if(isdefined(e_obj))
		{
			e_obj StopAnimScripted();
			e_obj PhysicsLaunch(e_obj.origin, VectorScale((0, 0, 1), 0.1));
		}
	}
}

/*
	Name: function_8e6475bd
	Namespace: namespace_628b256b
	Checksum: 0x5B05475D
	Offset: 0x26A8
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_8e6475bd()
{
	self endon("death");
	self.team = "allies";
	self.Civilian = 1;
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self ai::set_behavior_attribute("panic", 0);
	self.health = 1;
}

/*
	Name: function_e8f0e2bd
	Namespace: namespace_628b256b
	Checksum: 0xE6499894
	Offset: 0x2738
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e8f0e2bd()
{
	self thread namespace_63b4601c::setup_patroller();
	self PlayLoopSound("amb_patrol_walla");
	self thread ai_sniper::agent_init();
}

/*
	Name: function_47dc557f
	Namespace: namespace_628b256b
	Checksum: 0x8BF68457
	Offset: 0x2798
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_47dc557f()
{
	level.var_47dc557f = spawner::simple_spawn("temple_wasps", &function_a044ee0);
}

/*
	Name: function_a044ee0
	Namespace: namespace_628b256b
	Checksum: 0x5F66F194
	Offset: 0x27D8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_a044ee0()
{
	var_850a4b14 = GetEnt("temple_wasp_gv", "targetname");
	if(isdefined(var_850a4b14))
	{
		self ClearForcedGoal();
		self ClearGoalVolume();
		self SetGoal(var_850a4b14);
	}
}

/*
	Name: function_a0ef55a8
	Namespace: namespace_628b256b
	Checksum: 0x56CEED60
	Offset: 0x2860
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_a0ef55a8()
{
	level endon("hash_8a3b89d3");
	self endon("death");
	self thread function_f6b53854();
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self colors::disable();
	self ai::set_behavior_attribute("cqb", 1);
	self.holdFire = 1;
	self battlechatter::function_d9f49fba(0);
	level scene::Play("cin_ven_05_10_templearrival_vign");
	self.disableArrivals = 1;
	self.disableExits = 1;
	node = GetNode("temple_hendricks_node_05", "targetname");
	self SetGoal(node, 1);
	level notify("hash_899bbe30");
	wait(1);
	self.disableArrivals = 0;
	self.disableExits = 0;
}

/*
	Name: function_f6b53854
	Namespace: namespace_628b256b
	Checksum: 0xE855E725
	Offset: 0x29D0
	Size: 0x2D3
	Parameters: 0
	Flags: None
*/
function function_f6b53854()
{
	level flag::wait_till("stealth_discovered");
	level flag::set("temple_stealth_broken");
	self.disableArrivals = 0;
	self.disableExits = 0;
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self.fixedNode = 0;
	self ClearForcedGoal();
	self ai::set_behavior_attribute("cqb", 0);
	self.holdFire = 0;
	self.var_df53bc6 = self.script_accuracy;
	self.script_accuracy = 0.1;
	objectives::set("cp_level_vengeance_support", self);
	self thread namespace_63b4601c::function_5a886ae0();
	level flag::wait_till_clear("stealth_discovered");
	self notify("hash_90a20e6d");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.holdFire = 1;
	self battlechatter::function_d9f49fba(0);
	self.script_accuracy = self.var_df53bc6;
	self ClearForcedGoal();
	self ClearGoalVolume();
	self colors::disable();
	var_d7b9ba9b = GetNode("temple_end_hendricks_node", "targetname");
	self.forcegoal = 1;
	self.fixedNode = 1;
	self.goalRadius = 32;
	self setgoalnode(var_d7b9ba9b, 1);
	level flag::clear("stealth_combat");
	self waittill("goal");
	self.forcegoal = 0;
	self.fixedNode = 0;
	level flag::set("temple_hendricks_done");
}

/*
	Name: function_4002969a
	Namespace: namespace_628b256b
	Checksum: 0xA6D4BAC4
	Offset: 0x2CB0
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_4002969a()
{
	level flag::wait_till("all_players_at_temple_exit");
	if(!level flag::get("hendricks_near_dogleg_2"))
	{
		nodes = GetNodeArray("hendricks_temple_end_teleport_node", "targetname");
		node = ArrayGetClosest(level.var_2fd26037.origin, nodes);
		var_e52b590a = 0.75;
		if(namespace_63b4601c::function_8c6350db(level.var_2fd26037.origin + VectorScale((0, 0, 1), 48), var_e52b590a, 1))
		{
			level.var_2fd26037 ForceTeleport(node.origin, node.angles);
			wait(0.1);
			var_d7b9ba9b = GetNode("temple_end_hendricks_node", "targetname");
			self.forcegoal = 1;
			self.fixedNode = 1;
			self.goalRadius = 32;
			self setgoalnode(var_d7b9ba9b, 1);
		}
	}
}

/*
	Name: function_578145a3
	Namespace: namespace_628b256b
	Checksum: 0xCBE0D6DA
	Offset: 0x2E58
	Size: 0xBBB
	Parameters: 0
	Flags: None
*/
function function_578145a3()
{
	var_1044cded = 0;
	i = 3;
	for(i = 3; i >= 2; i--)
	{
		var_26b3981a = GetEnt("temple_axis_gv_0" + i, "targetname");
		var_42cc32ad = function_f1c7b73f(var_26b3981a);
		if(isdefined(var_42cc32ad) && var_42cc32ad)
		{
			var_1044cded = 1;
			break;
		}
	}
	var_17994622 = GetAITeamArray("axis");
	if(isdefined(var_1044cded) && var_1044cded)
	{
		var_7a5bdffc = GetEnt("temple_ally_gv_0" + i, "targetname");
		var_a2d2b3b = GetEnt("temple_axis_gv_0" + i, "targetname");
		var_fcf2483c = GetEnt("temple_axis_cleanup_volume_0" + i, "targetname");
		level thread function_620fbb8a(var_17994622, var_fcf2483c);
	}
	else
	{
		var_7a5bdffc = GetEnt("temple_ally_gv_01", "targetname");
		var_a2d2b3b = GetEnt("temple_axis_gv_01", "targetname");
	}
	foreach(guy in var_17994622)
	{
		if(isalive(guy))
		{
			guy ClearForcedGoal();
			guy ClearGoalVolume();
			guy SetGoal(var_a2d2b3b);
		}
	}
	if(isdefined(var_1044cded) && var_1044cded)
	{
		nodes = GetNodeArray("hendircks_forced_advance_0" + i, "targetname");
		node = Array::random(nodes);
		level.var_2fd26037 ForceTeleport(node.origin, node.angles);
		wait(0.1);
	}
	level.var_2fd26037 ClearForcedGoal();
	level.var_2fd26037 ClearGoalVolume();
	level.var_2fd26037 SetGoal(var_7a5bdffc);
	var_7a5bdffc = GetEnt("temple_ally_gv_02", "targetname");
	var_a2d2b3b = GetEnt("temple_axis_gv_02", "targetname");
	while(1)
	{
		if(isdefined(var_1044cded) && var_1044cded && i >= 2)
		{
			break;
		}
		guys_left = GetAITeamArray("axis");
		if(isdefined(guys_left) && guys_left.size <= var_17994622.size * 0.8)
		{
			foreach(guy in guys_left)
			{
				if(isalive(guy))
				{
					guy ClearForcedGoal();
					guy ClearGoalVolume();
					guy SetGoal(var_a2d2b3b);
				}
			}
			level.var_2fd26037 ClearForcedGoal();
			level.var_2fd26037 ClearGoalVolume();
			level.var_2fd26037 SetGoal(var_7a5bdffc);
			break;
		}
		wait(0.1);
	}
	var_7a5bdffc = GetEnt("temple_ally_gv_03", "targetname");
	var_a2d2b3b = GetEnt("temple_axis_gv_03", "targetname");
	while(1)
	{
		if(isdefined(var_1044cded) && var_1044cded && i >= 3)
		{
			break;
		}
		guys_left = GetAITeamArray("axis");
		if(isdefined(guys_left) && guys_left.size <= var_17994622.size * 0.6)
		{
			foreach(guy in guys_left)
			{
				if(isalive(guy))
				{
					guy ClearForcedGoal();
					guy ClearGoalVolume();
					guy SetGoal(var_a2d2b3b);
				}
			}
			level.var_2fd26037 ClearForcedGoal();
			level.var_2fd26037 ClearGoalVolume();
			level.var_2fd26037 SetGoal(var_7a5bdffc);
			break;
		}
		wait(0.1);
	}
	var_7a5bdffc = GetEnt("temple_ally_gv_04", "targetname");
	var_a2d2b3b = GetEnt("temple_axis_gv_04", "targetname");
	while(1)
	{
		guys_left = GetAITeamArray("axis");
		if(isdefined(guys_left) && guys_left.size <= var_17994622.size * 0.4)
		{
			foreach(guy in guys_left)
			{
				if(isalive(guy))
				{
					guy ClearForcedGoal();
					guy ClearGoalVolume();
					guy SetGoal(var_a2d2b3b);
				}
			}
			level.var_2fd26037 ClearForcedGoal();
			level.var_2fd26037 ClearGoalVolume();
			level.var_2fd26037 SetGoal(var_7a5bdffc);
			break;
		}
		wait(0.1);
	}
	while(1)
	{
		guys_left = GetAITeamArray("axis");
		if(isdefined(guys_left) && guys_left.size <= var_17994622.size * 0.2)
		{
			foreach(guy in guys_left)
			{
				if(isdefined(guy) && isalive(guy))
				{
					if(isVehicle(guy))
					{
						var_c1cd872a = struct::get_array("temple_wasp_retreat_nodes", "targetname");
						node = Array::random(var_c1cd872a);
						guy thread namespace_63b4601c::function_3d5f97bd(node);
					}
					node = GetNodeArraySorted("temple_retreat_nodes", "targetname", guy.origin, 4096);
					if(isdefined(node[0]))
					{
						if(guy ai::has_behavior_attribute("sprint"))
						{
							guy ai::set_behavior_attribute("sprint", 1);
						}
						guy thread namespace_63b4601c::function_3d5f97bd(node[0]);
						continue;
					}
					a_ai = Array(guy);
					level thread namespace_63b4601c::function_ff5f379(a_ai, 1024);
				}
			}
			level flag::set("combat_enemies_retreating");
			level flag::set("disable_temple_robot_triggers");
			break;
		}
		wait(0.1);
	}
}

/*
	Name: function_f1c7b73f
	Namespace: namespace_628b256b
	Checksum: 0x4CEA7C11
	Offset: 0x3A20
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_f1c7b73f(trigger)
{
	foreach(player in GetPlayers())
	{
		if(!player istouching(trigger))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_620fbb8a
	Namespace: namespace_628b256b
	Checksum: 0xEAA41B3D
	Offset: 0x3AD8
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_620fbb8a(var_7cd99f10, e_volume)
{
	a_ai = [];
	foreach(ai in var_7cd99f10)
	{
		if(isdefined(ai) && isalive(ai) && ai istouching(e_volume))
		{
			if(!isdefined(a_ai))
			{
				a_ai = [];
			}
			else if(!IsArray(a_ai))
			{
				a_ai = Array(a_ai);
			}
			a_ai[a_ai.size] = ai;
		}
	}
	level thread namespace_63b4601c::function_ff5f379(a_ai, 512);
}

/*
	Name: function_899bbe30
	Namespace: namespace_628b256b
	Checksum: 0x89177B15
	Offset: 0x3C30
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_899bbe30()
{
	level endon("hash_8a3b89d3");
	level.var_2fd26037 endon("death");
	level waittill("hash_899bbe30");
	foreach(player in level.activePlayers)
	{
		player thread namespace_63b4601c::function_51caee84("temple_end");
	}
	level flag::set("show_temple_gather");
	stealth::function_26f24c93(1);
	flag::wait_till("tmeple_stealth_motivator_01");
	namespace_63b4601c::function_ee75acde("hend_stick_to_the_shadows_0");
	flag::wait_till("tmeple_stealth_motivator_02");
	namespace_63b4601c::function_ee75acde("hend_lots_of_movement_dow_1");
	flag::wait_till("tmeple_stealth_motivator_03");
	namespace_63b4601c::function_ee75acde("hend_keep_moving_they_ha_0");
}

/*
	Name: function_a86ac59d
	Namespace: namespace_628b256b
	Checksum: 0x46002196
	Offset: 0x3DB8
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_a86ac59d()
{
	level endon("hash_29964e40");
	level flag::wait_till("stealth_discovered");
	Array::thread_all(GetAITeamArray("axis"), &function_329c89f);
	level thread namespace_63b4601c::function_e6399870("temple_molotov_trigger", "script_noteworthy", 2);
	level flag::set("enable_temple_robot_triggers");
	var_b264f09 = GetEntArray("temple_robot_trigger", "targetname");
	Array::thread_all(var_b264f09, &function_dd797045);
	stealth::function_26f24c93(0);
	level thread namespace_63b4601c::function_80840124(&function_e4612dd6);
	level thread function_578145a3();
	while(1)
	{
		guys = GetAITeamArray("axis");
		if(isdefined(guys) && guys.size <= 0 || !isdefined(guys))
		{
			break;
		}
		else
		{
			wait(0.1);
		}
	}
	objectives::complete("cp_level_vengeance_support", level.var_2fd26037);
	level flag::clear("stealth_discovered");
}

/*
	Name: function_329c89f
	Namespace: namespace_628b256b
	Checksum: 0x838FBE86
	Offset: 0x3FC0
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_329c89f()
{
	self stopsounds();
}

/*
	Name: function_dd797045
	Namespace: namespace_628b256b
	Checksum: 0x48D27CAE
	Offset: 0x3FE8
	Size: 0x5E3
	Parameters: 0
	Flags: None
*/
function function_dd797045()
{
	level endon("hash_29964e40");
	level endon("hash_fecd096c");
	self endon("death");
	while(1)
	{
		self waittill("trigger");
		guys = GetAITeamArray("axis");
		guys = Array::remove_dead(guys);
		if(guys.size > 37)
		{
			wait(2);
			continue;
		}
		volume = GetEnt(self.target + "_volume", "targetname");
		if(isdefined(volume))
		{
			robots = GetEntArray(self.target, "targetname");
			foreach(robot in robots)
			{
				robot.ignoreall = 1;
				robot.ignoreme = 1;
			}
			doors = GetEntArray("temple_spawn_closet_door", "targetname");
			foreach(door in doors)
			{
				var_6c37ffe1 = self.target + "_closet";
				if(isdefined(door.script_noteworthy) && door.script_noteworthy == var_6c37ffe1)
				{
					var_8b006810 = door;
					break;
				}
			}
			var_d17d5da5 = GetEntArray("temple_spawn_closet_door_clip", "targetname");
			foreach(clip in var_d17d5da5)
			{
				var_35f2b287 = self.target + "_closet";
				if(isdefined(clip.script_noteworthy) && clip.script_noteworthy == var_35f2b287)
				{
					var_17c44fc9 = clip;
					break;
				}
			}
			var_6e15ff70 = GetEntArray("temple_spawn_closet_door_pathing_clip", "targetname");
			foreach(clip in var_6e15ff70)
			{
				var_35f2b287 = self.target + "_closet";
				if(isdefined(clip.script_noteworthy) && clip.script_noteworthy == var_35f2b287)
				{
					var_3cdd15e3 = clip;
					break;
				}
			}
			if(isdefined(var_8b006810) && isdefined(var_17c44fc9))
			{
				var_17c44fc9 LinkTo(var_8b006810);
			}
			if(isdefined(var_8b006810))
			{
				var_8b006810 RotateTo(var_8b006810.angles + VectorScale((0, 1, 0), 90), 1);
			}
			wait(0.5);
			if(isdefined(var_3cdd15e3))
			{
				var_3cdd15e3 notsolid();
				wait(0.05);
				var_3cdd15e3 connectpaths();
			}
			foreach(robot in robots)
			{
				if(isalive(robot))
				{
					robot.ignoreall = 0;
					robot.ignoreme = 0;
				}
			}
			self TriggerEnable(0);
			break;
		}
	}
}

/*
	Name: function_e4612dd6
	Namespace: namespace_628b256b
	Checksum: 0xD6C6271C
	Offset: 0x45D8
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_e4612dd6()
{
	level endon("hash_29964e40");
	level.var_2fd26037 battlechatter::function_d9f49fba(0);
	var_eb6e35ef = [];
	var_eb6e35ef[0] = "hend_shifting_positions_0";
	var_eb6e35ef[1] = "hend_i_m_dropping_down_to_0";
	line = Array::random(var_eb6e35ef);
	namespace_63b4601c::function_ee75acde(line);
	namespace_63b4601c::function_ee75acde("hend_if_we_can_clear_the_0", 4);
	level thread namespace_9fd035::function_14592f48();
	level.var_2fd26037 battlechatter::function_d9f49fba(1);
}

/*
	Name: function_1a289333
	Namespace: namespace_628b256b
	Checksum: 0x99EC1590
	Offset: 0x46D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_1a289333()
{
}

/*
	Name: function_299dec58
	Namespace: namespace_628b256b
	Checksum: 0x911F34C1
	Offset: 0x46E0
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_299dec58(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level flag::set("temple_end");
	level thread function_c5b8e111();
	level struct::delete_script_bundle("scene", "cin_ven_hanging_body_loop_vign_civ07_ropeshort");
}

/*
	Name: function_c5b8e111
	Namespace: namespace_628b256b
	Checksum: 0x8F9585A2
	Offset: 0x4770
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_c5b8e111()
{
	if(isdefined(level.var_216db1b0))
	{
		foreach(enemy in level.var_216db1b0)
		{
			if(isdefined(enemy))
			{
				enemy namespace_8312dbf::function_180adb28();
				enemy delete();
			}
		}
	}
	else if(isdefined(level.var_47dc557f))
	{
		foreach(enemy in level.var_47dc557f)
		{
			if(isdefined(enemy))
			{
				enemy delete();
			}
		}
	}
}

/*
	Name: function_7ee71c12
	Namespace: namespace_628b256b
	Checksum: 0xD0A187DC
	Offset: 0x48D0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7ee71c12()
{
	var_3f199d98 = GetEntArray("breakable_garden_window", "targetname");
	Array::thread_all(var_3f199d98, &function_f1d8ca4c);
}

/*
	Name: function_f1d8ca4c
	Namespace: namespace_628b256b
	Checksum: 0x87033EBD
	Offset: 0x4930
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f1d8ca4c()
{
	self SetCanDamage(1);
	self.health = 10;
	while(1)
	{
		self waittill("damage", damage, attacker);
		if(isdefined(attacker) && isPlayer(attacker) && isdefined(damage))
		{
			self.health = self.health - damage;
			if(self.health <= 0)
			{
				self delete();
				break;
			}
		}
	}
}

/*
	Name: function_f8f4e73e
	Namespace: namespace_628b256b
	Checksum: 0xA384A0FE
	Offset: 0x49F8
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_f8f4e73e()
{
	var_cd0466c3 = struct::get("dogleg_2_intro_obj_struct");
	if(isdefined(var_cd0466c3))
	{
		objectives::set("cp_level_vengeance_goto_dogleg_2", var_cd0466c3);
	}
	objectives::Hide("cp_level_vengeance_goto_dogleg_2");
	level flag::wait_till_any(Array("show_temple_gather", "stealth_discovered"));
	objectives::show("cp_level_vengeance_goto_dogleg_2");
	var_f8f4e73e = GetEnt("dogleg_2_intro_trigger", "script_noteworthy");
	if(isdefined(var_f8f4e73e))
	{
		level thread namespace_63b4601c::function_8a63fd6b(var_f8f4e73e, "cp_level_vengeance_goto_dogleg_2", undefined, "all_players_at_temple_exit", "cp_level_vengeance_clear_area");
	}
	level flag::wait_till("all_players_at_temple_exit");
	objectives::Hide("cp_level_vengeance_goto_dogleg_2");
	if(level flag::get("temple_stealth_broken"))
	{
		level flag::wait_till("temple_hendricks_done");
	}
	level.var_2fd26037 thread namespace_63b4601c::function_5fbec645("hend_open_it_up_i_ll_cov_0");
	level thread function_cf782b84();
	var_70f21d83 = struct::get("tag_align_dogleg_2", "targetname");
	var_70f21d83 thread scene::Play("cin_ven_05_65_deadcivilians_vign");
	n_node = GetNode("hendricks_dogleg_2_stairs", "targetname");
	level waittill("hash_ad75a4f1");
	level thread function_29e96a35();
	if(level flag::get("temple_stealth_broken"))
	{
		level waittill("hash_9fb1ff75");
		level.var_2fd26037 SetGoal(n_node, 1);
	}
	else
	{
		wait(1.5);
		level thread function_37d4d605();
		var_70f21d83 scene::init("cin_ven_05_70_dogleg2_takedown_vign");
	}
	level flag::set("dogleg_2_begin");
}

/*
	Name: function_29e96a35
	Namespace: namespace_628b256b
	Checksum: 0xCDD34A40
	Offset: 0x4D10
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_29e96a35()
{
	level.var_2fd26037 notify("hash_6f33cd57");
	level.var_2fd26037.var_5d9fbd2d = 0;
	if(level flag::get("temple_stealth_broken"))
	{
		level waittill("hash_9fb1ff75");
		level.var_2fd26037 dialog::say("hend_you_sure_you_don_t_w_0");
	}
	else
	{
		level waittill("hash_132639c7");
		level.var_2fd26037 dialog::say("hend_you_sure_you_don_t_w_0", 1);
	}
	level dialog::function_13b3b16a("plyr_not_a_chance_hendri_0");
}

/*
	Name: function_38bcd0
	Namespace: namespace_628b256b
	Checksum: 0x34C60F6D
	Offset: 0x4DF0
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_38bcd0()
{
	e_trigger = GetEnt("dogleg_2_door_entry_trigger", "targetname");
	e_trigger TriggerEnable(0);
	var_71678477 = GetEnt("dogleg_2_entry_door_lf", "targetname");
	var_1d746940 = GetEnt(var_71678477.target, "targetname");
	var_1d746940 disconnectpaths();
	var_b8e4988b = GetEnt("dogleg_2_entry_door_rt", "targetname");
	var_4a669fbc = GetEnt(var_b8e4988b.target, "targetname");
	var_4a669fbc disconnectpaths();
	var_35a1e4f8 = struct::get("tag_align_dogleg_2_door", "targetname");
	var_35a1e4f8 thread scene::init("cin_ven_05_60_officedoor_1st");
}

/*
	Name: function_cf782b84
	Namespace: namespace_628b256b
	Checksum: 0xDA8C4721
	Offset: 0x4F70
	Size: 0x39B
	Parameters: 0
	Flags: None
*/
function function_cf782b84()
{
	e_trigger = GetEnt("dogleg_2_door_entry_trigger", "targetname");
	e_trigger TriggerEnable(1);
	var_ca0e9b65 = util::function_14518e76(e_trigger, &"cp_prompt_enter_ven_doors", &"CP_MI_SING_VENGEANCE_HINT_OPEN", &function_863781f2);
	objectives::set("cp_level_vengeance_open_dogleg_2_menu");
	level notify("hash_479fadce");
	var_71678477 = GetEnt("dogleg_2_entry_door_lf", "targetname");
	var_1d746940 = GetEnt(var_71678477.target, "targetname");
	var_71678477.animName = "dogleg_2_entry_door_lf";
	var_71678477.old_angles = var_71678477.angles;
	var_71678477.old_origin = var_71678477.origin;
	var_b8e4988b = GetEnt("dogleg_2_entry_door_rt", "targetname");
	var_4a669fbc = GetEnt(var_b8e4988b.target, "targetname");
	var_b8e4988b.animName = "dogleg_2_entry_door_rt";
	var_b8e4988b.old_angles = var_b8e4988b.angles;
	var_b8e4988b.old_origin = var_b8e4988b.origin;
	var_1d746940 LinkTo(var_71678477);
	var_4a669fbc LinkTo(var_b8e4988b);
	level thread namespace_63b4601c::function_8a63fd6b(e_trigger, undefined, "cp_level_vengeance_open_dogleg_2_menu", "dogleg_2_entry_door_opening", "cp_level_vengeance_clear_area", var_ca0e9b65);
	level waittill("hash_ad75a4f1");
	var_ca0e9b65 gameobjects::disable_object();
	objectives::Hide("cp_level_vengeance_open_dogleg_2_menu");
	level waittill("hash_c4bb0520");
	if(!level flag::get("temple_stealth_broken"))
	{
		var_71678477 StopAnimScripted();
		var_71678477.angles = var_71678477.old_angles;
		var_71678477.origin = var_71678477.old_origin;
		var_b8e4988b StopAnimScripted();
		var_b8e4988b.angles = var_b8e4988b.old_angles;
		var_b8e4988b.origin = var_b8e4988b.old_origin;
	}
	else
	{
		var_1d746940 connectpaths();
		var_4a669fbc connectpaths();
	}
}

/*
	Name: function_863781f2
	Namespace: namespace_628b256b
	Checksum: 0x48D0F0A2
	Offset: 0x5318
	Size: 0x19D
	Parameters: 1
	Flags: None
*/
function function_863781f2(e_player)
{
	level.var_67e1f60e = undefined;
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_b9e5210f))
		{
			player.var_b9e5210f = undefined;
		}
	}
	skipto::function_be8adfb8("temple");
	var_35a1e4f8 = struct::get("tag_align_dogleg_2_door", "targetname");
	if(level flag::get("temple_stealth_broken"))
	{
		var_35a1e4f8 thread scene::Play("cin_ven_05_60_officedoor_1st", e_player);
	}
	else
	{
		namespace_63b4601c::function_ac2b4535("cin_ven_05_60_officedoor_1st_shared", "dogleg_2_entrance_teleport");
		var_35a1e4f8 thread scene::Play("cin_ven_05_60_officedoor_1st_shared", e_player);
	}
	level notify("hash_ad75a4f1");
	var_35a1e4f8 waittill("scene_done");
	level notify("hash_9fb1ff75");
}

/*
	Name: function_37d4d605
	Namespace: namespace_628b256b
	Checksum: 0x4010AE1E
	Offset: 0x54C0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_37d4d605()
{
	level waittill("hash_132639c7");
	var_c13b7e2a = struct::get_array("dogleg_2_glass_break", "targetname");
	exploder::exploder("dogleg_2_railing_break");
	foreach(var_d64f5bac in var_c13b7e2a)
	{
		glassRadiusDamage(var_d64f5bac.origin, 38, 200, 175);
	}
}

/*
	Name: function_ca660ef7
	Namespace: namespace_628b256b
	Checksum: 0xA0BDF0BA
	Offset: 0x55C0
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_ca660ef7()
{
	self endon("death");
	level flag::wait_till("stealth_discovered");
	self.goalHeight = 512;
	var_eaf20b66 = GetNodeArray(self.script_noteworthy, "targetname");
	foreach(node in var_eaf20b66)
	{
		self WarlordInterface::AddPreferedPoint(node.origin, 4000, 8000);
	}
}

/*
	Name: function_ea758541
	Namespace: namespace_628b256b
	Checksum: 0x2215ACF5
	Offset: 0x56D0
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_ea758541(name, key)
{
	var_fc0a0636 = GetEntArray(name, key);
	Array::thread_all(var_fc0a0636, &function_8f9d056c);
}

/*
	Name: function_3bb1295b
	Namespace: namespace_628b256b
	Checksum: 0x4F35C107
	Offset: 0x5738
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_3bb1295b()
{
	guys = GetAITeamArray("axis");
	guys = ArraySortClosest(guys, self.origin);
	foreach(guy in guys)
	{
		if(isdefined(guy) && isalive(guy) && isdefined(guy.var_9eb700da))
		{
			return guy;
		}
	}
}

/*
	Name: function_8f9d056c
	Namespace: namespace_628b256b
	Checksum: 0xABF12506
	Offset: 0x5838
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_8f9d056c()
{
	self endon("death");
	level endon("hash_8a3b89d3");
	while(1)
	{
		self waittill("trigger", player);
		if(isPlayer(player))
		{
			self function_a1a65fdc(player);
		}
	}
}

/*
	Name: function_a1a65fdc
	Namespace: namespace_628b256b
	Checksum: 0xCD132F91
	Offset: 0x58B0
	Size: 0x2B7
	Parameters: 1
	Flags: None
*/
function function_a1a65fdc(player)
{
	player endon("death_or_disconnect");
	if(isdefined(player.var_15f789fb) && player.var_15f789fb == self)
	{
		return;
	}
	var_c2918075 = GetTime();
	if(isdefined(player.var_496772e9))
	{
		var_c2918075 = GetTime() - player.var_496772e9;
	}
	var_d3e8dab = -1;
	if(isdefined(player.var_18091778))
	{
		var_d3e8dab = DistanceSquared(player.origin, player.var_18091778);
	}
	player.var_15f789fb = self;
	player.var_496772e9 = GetTime();
	player thread function_b321fac9(self);
	if(var_c2918075 < 5000 && var_d3e8dab > 0 && var_d3e8dab > 10000)
	{
		if(!(isdefined(player.var_b9e5210f) && player.var_b9e5210f))
		{
			var_2dd18bed = [];
			var_2dd18bed[0] = "hend_get_off_the_rooftops_0";
			var_2dd18bed[1] = "hend_stay_off_the_rooftop_0";
			var_2dd18bed[2] = "hend_they_re_going_to_spo_0";
			player thread namespace_63b4601c::function_ee75acde(Array::random(var_2dd18bed), 0, undefined, player);
		}
		player.var_b9e5210f = 1;
		wait(4);
		if(isdefined(player.var_15f789fb) && !player istouching(player.var_15f789fb))
		{
			player.var_b9e5210f = 0;
			return;
		}
		guy = player function_3bb1295b();
		if(isdefined(guy) && isdefined(guy.var_9eb700da))
		{
			guy.var_9eb700da ai_sniper::function_b77b41d1(guy GetEye(), player, guy);
		}
	}
}

/*
	Name: function_b321fac9
	Namespace: namespace_628b256b
	Checksum: 0x68223329
	Offset: 0x5B70
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_b321fac9(trigger)
{
	self notify("hash_b321fac9");
	self endon("hash_b321fac9");
	self endon("death");
	self endon("disconnect");
	while(1)
	{
		if(self istouching(trigger))
		{
			self.var_18091778 = self.origin;
		}
		else
		{
			return;
		}
		wait(0.05);
	}
}

/*
	Name: function_591ead63
	Namespace: namespace_628b256b
	Checksum: 0x9968D547
	Offset: 0x5C00
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_591ead63()
{
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_b9e5210f) && player.var_b9e5210f)
		{
			return 0;
		}
	}
	return 1;
}


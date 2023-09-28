#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_laststand;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation;
#using scripts\cp\cp_mi_sing_blackstation_accolades;
#using scripts\cp\cp_mi_sing_blackstation_cross_debris;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_firefly;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_933eb669;

/*
	Name: function_23a0cc93
	Namespace: namespace_933eb669
	Checksum: 0x1E0CD776
	Offset: 0x10D8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_23a0cc93(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_police_station");
		level function_a7bb8a82();
		load::function_a2995f22();
	}
	level thread namespace_79e1cd97::function_6778ea09("light_ne");
	level thread scene::init("p7_fxanim_cp_blackstation_police_station_ceiling_tiles_bundle");
	Array::thread_all(level.activePlayers, &clientfield::set_to_player, "toggle_rain_sprite", 1);
	streamerRequest("set", "cp_mi_sing_blackstation_objective_kane_intro");
	function_fa216142();
}

/*
	Name: function_88d892b9
	Namespace: namespace_933eb669
	Checksum: 0xB3E2FC2F
	Offset: 0x11F8
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_88d892b9(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level scene::init("p7_fxanim_cp_blackstation_apartment_collapse_bundle");
	objectives::set("cp_level_blackstation_goto_comm_relay");
	objectives::Hide("cp_level_blackstation_goto_comm_relay");
	objectives::Hide("cp_level_blackstation_qzone");
	function_6ddd4fa4("collapse_frogger_water");
}

/*
	Name: function_fa216142
	Namespace: namespace_933eb669
	Checksum: 0x59AA9A32
	Offset: 0x12A8
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_fa216142()
{
	level.var_2fd26037 thread function_7f3763ee();
	level.var_d1cabfc = 0;
	level thread function_a331bab9();
	level thread function_2397a7b2();
	level thread function_1932762c();
	level thread function_e2038b3();
	level thread function_d87a714f();
	level thread function_edabcebb();
	level thread function_f832655c();
	level thread function_2afc85c();
	level thread function_7902424c();
	level thread function_d7f282ac();
	level thread namespace_79e1cd97::function_90db9f9c();
	level thread function_e27b9e3c();
	level thread function_656de5b5();
	level thread function_f6f7ab3d();
	level thread function_969d668a();
	level thread function_37170d4a();
	level thread namespace_23567e72::function_26aa602b();
	foreach(player in level.activePlayers)
	{
		player thread function_5723cc6();
		player thread namespace_79e1cd97::function_d870e0("trig_police_station_lobby_in_position");
		player thread namespace_79e1cd97::function_d870e0("trig_spawn_upstairs_intro");
	}
	spawner::add_spawn_function_group("police_station_warlord", "script_noteworthy", &function_b45ce54a);
}

/*
	Name: function_5723cc6
	Namespace: namespace_933eb669
	Checksum: 0xF8FE164
	Offset: 0x1568
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5723cc6()
{
	self endon("death");
	level endon("hash_39e22858");
	level flag::wait_till("flag_waypoint_police_station01");
	self waittill("weapon_fired");
	level flag::set("flag_lobby_engaged");
}

/*
	Name: function_969d668a
	Namespace: namespace_933eb669
	Checksum: 0xC3AA4C52
	Offset: 0x15D0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_969d668a()
{
	level flag::wait_till("flag_waypoint_police_station03");
	battlechatter::function_d9f49fba(0);
	level flag::wait_till("flag_kane_intro_complete");
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_edabcebb
	Namespace: namespace_933eb669
	Checksum: 0x1E182C0D
	Offset: 0x1650
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_edabcebb()
{
	level flag::wait_till("flag_enter_police_station");
	level thread objectives::breadcrumb("police_station_breadcrumb");
}

/*
	Name: function_2397a7b2
	Namespace: namespace_933eb669
	Checksum: 0x809B9617
	Offset: 0x16A0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2397a7b2()
{
	trigger::wait_till("trig_police__station_group03", undefined, undefined, 0);
	var_56b381f2 = GetEnt("police_station_warlord", "targetname");
	PlayRumbleOnPosition("cp_blackstation_rumble_breach", var_56b381f2.origin);
	playsoundatposition("evt_kane_explosion", (0, 0, 0));
}

/*
	Name: function_1932762c
	Namespace: namespace_933eb669
	Checksum: 0x1AA98B2F
	Offset: 0x1740
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_1932762c()
{
	level flag::wait_till("flag_lobby_setup");
	level thread namespace_4297372::function_bed0eaad();
	level flag::wait_till("flag_police_station_hendricks_cqb");
	if(!level flag::get("flag_lobby_engaged"))
	{
		level.var_2fd26037 thread dialog::say("hend_quiet_0");
	}
	level flag::wait_till("vo_hendricks_first");
	level.var_2fd26037 dialog::say("hend_moving_to_first_floo_0");
	trigger::wait_till("hend_moving_to_second", undefined, undefined, 0);
	level.var_2fd26037 dialog::say("hend_moving_to_second_flo_0");
	trigger::wait_till("hend_moving_to_third", undefined, undefined, 0);
	level.var_2fd26037 dialog::say("hend_moving_to_third_floo_0");
	level thread namespace_4297372::function_973b77f9();
}

/*
	Name: function_e2038b3
	Namespace: namespace_933eb669
	Checksum: 0x5A91DA16
	Offset: 0x18C0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_e2038b3()
{
	level endon("hash_262a14ee");
	level flag::wait_till("ps_enter_vo");
	level.var_2fd26037 dialog::say("hend_hostiles_above_and_0");
	level flag::wait_till("ps_upstairs_intro");
	if(!flag::get("flag_police_station_defend"))
	{
		level.var_2fd26037 dialog::say("hend_top_floor_0", 1);
	}
	level flag::wait_till("flag_police_station_defend");
	while(GetAITeamArray("axis").size)
	{
		wait(1);
	}
}

/*
	Name: function_d87a714f
	Namespace: namespace_933eb669
	Checksum: 0xD4E252F1
	Offset: 0x19C0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_d87a714f()
{
	trigger::wait_till("trigger_riot");
	level.var_2fd26037 dialog::say("hend_bastards_have_riot_s_0", 1);
	level.var_2fd26037 dialog::say("hend_hit_em_with_some_fr_0", 0.5);
}

/*
	Name: function_a7bb8a82
	Namespace: namespace_933eb669
	Checksum: 0x3666AF6B
	Offset: 0x1A38
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a7bb8a82()
{
	spawner::simple_spawn("police_station_exterior_group", &function_4fa3ec81);
	spawner::simple_spawn("police_station_exterior_robot", &function_4fa3ec81);
	level function_8b31ae9b();
}

/*
	Name: function_a331bab9
	Namespace: namespace_933eb669
	Checksum: 0xC5374D33
	Offset: 0x1AB0
	Size: 0x453
	Parameters: 0
	Flags: None
*/
function function_a331bab9()
{
	level flag::wait_till("flag_lobby_setup");
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_2fd26037 ai::set_ignoreme(1);
	level flag::wait_till("flag_police_station_hendricks_cqb");
	if(!level flag::get("flag_lobby_engaged"))
	{
		level.var_2fd26037 dialog::say("hend_i_see_you_beat_h_0", 0.5);
		var_77d29eae = 0;
		for(i = 0; i < level.players.size; i++)
		{
			if(!var_77d29eae)
			{
				foreach(ai_enemy in level.var_4eef455c)
				{
					if(isalive(ai_enemy) && ai_enemy.script_noteworthy === "police_station_gunner_target_01")
					{
						ai_enemy thread function_bd78d653();
						ai_enemy clientfield::set("kill_target_keyline", level.players[i] GetEntityNumber() + 1);
						var_dd079248 = [];
						Array::add(var_dd079248, ai_enemy);
						level.var_4eef455c = Array::exclude(level.var_4eef455c, var_dd079248);
						var_77d29eae = 1;
					}
				}
				continue;
			}
			if(isdefined(level.var_4eef455c[i]) && level.var_4eef455c[i].script_noteworthy != "police_station_gunner_target_02")
			{
				level.var_4eef455c[i] clientfield::set("kill_target_keyline", level.players[i] GetEntityNumber() + 1);
				ArrayRemoveIndex(level.var_4eef455c, i, 1);
			}
		}
		level flag::set("flag_lobby_ready_to_engage");
		level flag::wait_till_timeout(2, "flag_lobby_engaged");
		wait(0.5);
		level.var_2fd26037 ai::set_ignoreall(0);
		level.var_2fd26037 ai::set_ignoreme(0);
	}
	else
	{
		level.var_2fd26037 ai::set_ignoreall(0);
		level.var_2fd26037 ai::set_ignoreme(0);
		level.var_2fd26037 dialog::say("hend_they_re_onto_us_se_0");
	}
	level flag::wait_till("hendricks_subway_exit");
	level.var_2fd26037 function_cbbb2fea();
	spawner::waittill_ai_group_count("lobby_enemies", 5);
	level flag::set("approach_ps_entrance");
}

/*
	Name: function_693c6a46
	Namespace: namespace_933eb669
	Checksum: 0x16EAB09E
	Offset: 0x1F10
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_693c6a46()
{
	self waittill("death");
	if(!isdefined(level.var_d1cabfc))
	{
		level.var_d1cabfc = 0;
	}
	level.var_d1cabfc++;
	if(level.var_d1cabfc > 2)
	{
		level flag::set("approach_ps_entrance");
		wait(1);
		level flag::set("flag_enter_police_station");
	}
}

/*
	Name: function_2c3b5e41
	Namespace: namespace_933eb669
	Checksum: 0xA0790630
	Offset: 0x1F98
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_2c3b5e41()
{
	self endon("death");
	while(1)
	{
		level waittill("hash_61df3d1c", swarm);
		self SetIgnoreEnt(swarm, 1);
	}
}

/*
	Name: function_7f3763ee
	Namespace: namespace_933eb669
	Checksum: 0xF61B642
	Offset: 0x1FF0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_7f3763ee()
{
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level flag::wait_till("approach_ps_entrance");
	trigger::use("triggercolor_ps_entrance");
	level flag::wait_till("flag_enter_police_station");
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 0);
	level flag::wait_till("police_station_enter");
	trigger::use("trig_hendricks_move_into_police_station", undefined, undefined, 0);
	level flag::wait_till("ps_regroup");
	trigger::use("triggercolor_regroup");
	trigger::wait_till("trigger_riot");
	spawn_manager::enable("police_station_group03_sm");
}

/*
	Name: function_cbbb2fea
	Namespace: namespace_933eb669
	Checksum: 0xF972F052
	Offset: 0x2148
	Size: 0x16B
	Parameters: 0
	Flags: None
*/
function function_cbbb2fea()
{
	ai_target = GetEnt("police_station_gunner_target_02", "script_noteworthy", 1);
	if(isalive(ai_target))
	{
		e_target = ai_target;
		break;
	}
	foreach(ai_enemy in level.var_4eef455c)
	{
		if(isalive(ai_enemy))
		{
			e_target = ai_enemy;
			break;
		}
	}
	self namespace_79e1cd97::function_4f96504c(e_target);
	if(isalive(e_target))
	{
		self cybercom::function_d240e350("cybercom_fireflyswarm", e_target, 0, 1);
	}
	level.var_2fd26037 ai::set_ignoreall(0);
}

/*
	Name: function_bd78d653
	Namespace: namespace_933eb669
	Checksum: 0x9DE6489C
	Offset: 0x22C0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_bd78d653()
{
	level endon("hash_d9295e03");
	self waittill("death");
	wait(0.5);
	level dialog::function_13b3b16a("plyr_kill_confirmed_0");
}

/*
	Name: function_e27b9e3c
	Namespace: namespace_933eb669
	Checksum: 0xADC6256C
	Offset: 0x2310
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_e27b9e3c()
{
	level flag::wait_till("ps_upstairs_intro");
	a_ai_enemies = GetAITeamArray("axis");
	a_ai_enemies = ArraySortClosest(a_ai_enemies, level.var_2fd26037.origin);
	for(i = 0; i < a_ai_enemies.size; i++)
	{
		if(isalive(a_ai_enemies[i]))
		{
			level.var_2fd26037 thread namespace_79e1cd97::function_4f96504c(a_ai_enemies[i]);
			level.var_2fd26037 cybercom::function_d240e350("cybercom_fireflyswarm", a_ai_enemies[i], 0, 1);
			break;
		}
	}
}

/*
	Name: function_76021c7d
	Namespace: namespace_933eb669
	Checksum: 0x503754C3
	Offset: 0x2430
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_76021c7d()
{
	self endon("death");
	self ai::patrol(GetNode("lobby_patrol_start_point", "targetname"));
	level flag::wait_till("flag_lobby_engaged");
	self setgoalvolume(GetEnt("lobby_defend_volume_01", "targetname"));
}

/*
	Name: function_8b31ae9b
	Namespace: namespace_933eb669
	Checksum: 0xF4CA6A8F
	Offset: 0x24D0
	Size: 0xB5
	Parameters: 0
	Flags: None
*/
function function_8b31ae9b()
{
	spawner::add_spawn_function_group("turret_gunner", "targetname", &function_e355fe3e);
	for(i = 1; i < 3; i++)
	{
		vh_turret = vehicle::simple_spawn_single("veh_turret_0" + i);
		vh_turret vehicle::lights_off();
		vh_turret thread turret_think();
	}
}

/*
	Name: function_e355fe3e
	Namespace: namespace_933eb669
	Checksum: 0xC2AC7401
	Offset: 0x2590
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_e355fe3e(vh_turret)
{
	self endon("death");
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	Array::add(level.var_4eef455c, self);
	self thread function_dbf996a();
	level flag::wait_till("flag_lobby_engaged");
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
}

/*
	Name: turret_think
	Namespace: namespace_933eb669
	Checksum: 0xF51E1230
	Offset: 0x2660
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function turret_think()
{
	self endon("death");
	level flag::wait_till("flag_lobby_engaged");
	wait(2);
	ai_gunner = self vehicle::get_rider("gunner1");
	if(isdefined(ai_gunner) && isalive(ai_gunner))
	{
		self turret::enable(1, 1);
	}
}

/*
	Name: function_4fa3ec81
	Namespace: namespace_933eb669
	Checksum: 0xB593B1B2
	Offset: 0x2708
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_4fa3ec81()
{
	self endon("death");
	self thread function_b1a1cd4d();
	self thread function_dbf996a();
	if(self.targetname == "police_station_exterior_robot_ai")
	{
		self thread function_693c6a46();
		self thread function_2c3b5e41();
	}
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	level clientfield::set("sndStationWalla", 1);
	Array::add(level.var_4eef455c, self);
	if(self.script_noteworthy === "lobby_patrol")
	{
		self thread function_76021c7d();
	}
	level flag::wait_till("flag_lobby_engaged");
	level clientfield::set("sndStationWalla", 0);
	self.maxsightdistsqrd = self.var_98207841;
	self ai::set_ignoreme(0);
	self.goalRadius = 2048;
	if(self.targetname == "police_station_exterior_robot_ai")
	{
		self ai::set_ignoreall(0);
		self ai::set_behavior_attribute("move_mode", "rusher");
	}
	else
	{
		wait(RandomFloatRange(0.3, 1.3));
		self ai::set_ignoreall(0);
	}
	spawner::waittill_ai_group_count("lobby_enemies", 9);
	if(self.script_noteworthy === "lobby_group_01")
	{
		wait(RandomInt(2));
		self setgoalvolume(GetEnt("lobby_defend_volume_01", "targetname"));
	}
	else if(self.script_noteworthy === "lobby_group_02")
	{
		wait(RandomInt(2));
		self setgoalvolume(GetEnt("lobby_defend_volume_02", "targetname"));
	}
}

/*
	Name: function_b1a1cd4d
	Namespace: namespace_933eb669
	Checksum: 0x89F8AF09
	Offset: 0x2A00
	Size: 0xF7
	Parameters: 0
	Flags: None
*/
function function_b1a1cd4d()
{
	self endon("death");
	level endon("hash_39e22858");
	self.var_98207841 = self.maxsightdistsqrd;
	self.maxsightdistsqrd = 160000;
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(self cansee(player))
			{
				level flag::set("flag_lobby_engaged");
			}
		}
		wait(0.3);
	}
}

/*
	Name: function_dbf996a
	Namespace: namespace_933eb669
	Checksum: 0x7BF44817
	Offset: 0x2B00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_dbf996a()
{
	self util::waittill_any("damage", "bulletwhizby", "grenadedanger", "enemy", "projectile_impact", "cybercom_action");
	level flag::set("flag_lobby_engaged");
}

/*
	Name: function_2afc85c
	Namespace: namespace_933eb669
	Checksum: 0xE7BB3A9
	Offset: 0x2B78
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_2afc85c()
{
	trigger::wait_till("trig_kane_intro");
	level clientfield::set("flotsam", 0);
	foreach(player in level.players)
	{
		if(player laststand::player_is_in_laststand())
		{
			player laststand::auto_revive(player);
		}
	}
	var_60a2aad6 = GetAITeamArray("axis");
	foreach(ai in var_60a2aad6)
	{
		ai delete();
	}
	skipto::function_be8adfb8("objective_police_station");
}

/*
	Name: function_f832655c
	Namespace: namespace_933eb669
	Checksum: 0x4B4B9AF5
	Offset: 0x2D28
	Size: 0x13D
	Parameters: 0
	Flags: None
*/
function function_f832655c()
{
	a_lights = GetEntArray("script_worklight", "targetname");
	for(i = 0; i < a_lights.size; i++)
	{
		a_lights[i] FX::Play("worklight", a_lights[i].origin, a_lights[i].angles, "fx_stop", 1, "tag_origin");
		a_lights[i] FX::Play("worklight_rays", a_lights[i].origin, a_lights[i].angles, "fx_stop", 1, "tag_origin");
		a_lights[i] thread function_d8a1308b();
	}
}

/*
	Name: function_d8a1308b
	Namespace: namespace_933eb669
	Checksum: 0x7C857B46
	Offset: 0x2E70
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_d8a1308b()
{
	t_damage = GetEnt(self.target, "targetname");
	if(isdefined(t_damage))
	{
		t_damage trigger::wait_till();
	}
	level thread scene::Play(t_damage.target, "targetname");
	self notify("hash_aae6938e");
}

/*
	Name: function_d7f282ac
	Namespace: namespace_933eb669
	Checksum: 0x85BA1F3E
	Offset: 0x2F08
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_d7f282ac()
{
	spawner::add_spawn_function_group("police_groundfloor01", "targetname", &function_5eb730ee);
	spawner::add_spawn_function_group("police_upstairs01", "targetname", &function_5eb730ee);
	spawner::add_spawn_function_group("police_station_group03", "targetname", &function_5eb730ee);
	trigger::wait_till("trigger_police_interior");
	spawn_manager::enable("police_groundfloor01_sm");
	spawn_manager::enable("police_station_group01_sm");
}

/*
	Name: function_5eb730ee
	Namespace: namespace_933eb669
	Checksum: 0xF5CC1493
	Offset: 0x2FF0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_5eb730ee()
{
	self endon("death");
	self.goalRadius = 32;
	self waittill("goal");
	self.goalRadius = 700;
}

/*
	Name: function_7902424c
	Namespace: namespace_933eb669
	Checksum: 0x774B3D66
	Offset: 0x3030
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_7902424c()
{
	level flag::wait_till("ps_enter_vo");
	spawn_manager::enable("police_upstairs01_sm", 1);
	level trigger::wait_till("trig_spawn_upstairs_intro", undefined, undefined, 0);
	if(!flag::get("flag_police_station_defend"))
	{
		spawner::simple_spawn("police_upstairs02");
	}
}

/*
	Name: function_b45ce54a
	Namespace: namespace_933eb669
	Checksum: 0x7E8BDCE9
	Offset: 0x30D0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_b45ce54a()
{
	var_eaf20b66 = GetNodeArray("warlord_node", "script_noteworthy");
	foreach(node in var_eaf20b66)
	{
		self WarlordInterface::AddPreferedPoint(node.origin, 5000, 10000);
	}
	var_5721137f = GetNode("warlord_police_station_node", "targetname");
	if(isdefined(var_5721137f))
	{
		self SetGoal(var_5721137f);
	}
}

/*
	Name: function_656de5b5
	Namespace: namespace_933eb669
	Checksum: 0xA72C4BD1
	Offset: 0x31F8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_656de5b5()
{
	flag::wait_till("flag_enter_cell_block");
	e_trigger = trigger::wait_till("trig_cellblock_ambush");
	if(e_trigger.who == level.var_2fd26037)
	{
		var_90e20a06 = GetEnt("cellblock_ambush_spawn_01", "targetname");
		var_cbc84fe3 = var_90e20a06 spawner::spawn(1);
		var_cbc84fe3 function_f8eb4eb0();
	}
	else
	{
		var_90e20a06 = GetEnt("cellblock_ambush_spawn_02", "targetname");
		var_cbc84fe3 = var_90e20a06 spawner::spawn(1);
	}
	if(!level flag::get("exit_cellblock"))
	{
		trigger::use("triger_hendricks_b7_cell_block_move", "targetname");
	}
}

/*
	Name: function_f8eb4eb0
	Namespace: namespace_933eb669
	Checksum: 0xF271127
	Offset: 0x3350
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_f8eb4eb0()
{
	self endon("death");
	level.var_2fd26037 ai::set_ignoreall(1);
	self ai::set_ignoreall(1);
	self SetGoal(self.origin, 1);
	level.var_2fd26037 colors::disable();
	self.animName = "patroller";
	level scene::add_scene_func("cin_bla_09_02_policestation_vign_ambush", &function_878db82b, "done");
	level.var_2fd26037 scene::Play("cin_bla_09_02_policestation_vign_ambush");
}

/*
	Name: function_878db82b
	Namespace: namespace_933eb669
	Checksum: 0x2E56952A
	Offset: 0x3438
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_878db82b(a_ents)
{
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 colors::enable();
}

/*
	Name: function_f6f7ab3d
	Namespace: namespace_933eb669
	Checksum: 0x19E7EE4D
	Offset: 0x3480
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_f6f7ab3d()
{
	trigger::wait_till("trigger_phalanx");
	switch(level.players.size)
	{
		case 2:
		{
			var_e64a5de5 = 3;
			break;
		}
		case 3:
		{
			var_e64a5de5 = 4;
			break;
		}
		case 4:
		{
			var_e64a5de5 = 5;
			break;
		}
		case default:
		{
			var_e64a5de5 = 2;
			break;
		}
	}
	v_start = struct::get("cell_phalanx_start").origin;
	v_end = struct::get("cell_phalanx_end").origin;
	var_f835ddae = GetEnt("police_station_phalanx", "targetname");
	function_9b385ca5();
	phalanx = phalanx;
	Initialize(phalanx, "phanalx_wedge", v_start, v_end, 2, var_e64a5de5, var_f835ddae);
	var_ace28dfc = ArrayCombine(phalanx.sentientTiers_["phalanx_tier1"], phalanx.sentientTiers_["phalanx_tier2"], 0, 0);
	level thread namespace_23567e72::function_92e8d6d8(var_ace28dfc);
	a_ai = GetAITeamArray("axis");
	Array::wait_till(a_ai, "death");
	trigger::use("police_riotshield_color", undefined, undefined, 0);
}

/*
	Name: function_37170d4a
	Namespace: namespace_933eb669
	Checksum: 0x9FF28203
	Offset: 0x36C0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_37170d4a()
{
	trigger::wait_till("trigger_cell_guard");
	spawner::simple_spawn("cell_guard", &function_1fb3b8c9);
}

/*
	Name: function_1fb3b8c9
	Namespace: namespace_933eb669
	Checksum: 0x104CEC99
	Offset: 0x3710
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_1fb3b8c9()
{
	self endon("death");
	self.goalRadius = 32;
	level flag::wait_till("exit_cellblock");
	wait(RandomFloatRange(1, 2.5));
	self.goalRadius = 2048;
	if(level.activePlayers.size)
	{
		self SetGoal(level.activePlayers[RandomInt(level.activePlayers.size)]);
	}
}

/*
	Name: function_1629236a
	Namespace: namespace_933eb669
	Checksum: 0xF7B6C6A8
	Offset: 0x37C8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_1629236a(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread namespace_79e1cd97::function_90db9f9c();
		namespace_79e1cd97::function_bff1a867("objective_kane_intro");
		level scene::init("cin_bla_10_01_kaneintro_3rd_sh010");
		load::function_a2995f22();
	}
	level thread namespace_79e1cd97::function_6778ea09("none");
	level thread function_6127b673();
	level flag::wait_till("flag_kane_intro_complete");
	level thread namespace_4297372::function_6c35b4f3();
	skipto::function_be8adfb8("objective_kane_intro");
}

/*
	Name: function_5d496554
	Namespace: namespace_933eb669
	Checksum: 0x8E916CF1
	Offset: 0x38E8
	Size: 0x19B
	Parameters: 4
	Flags: None
*/
function function_5d496554(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	objectives::set("cp_level_blackstation_goto_relay");
	var_95c6d300 = GetEntArray("floating_trash", "targetname");
	Array::thread_all(var_95c6d300, &util::self_delete);
	var_11d618f2 = ArrayCombine(GetEntArray("subway_corpse_2", "targetname"), GetEntArray("subway_corpse_3", "targetname"), 1, 0);
	var_11d618f2 = ArrayCombine(var_11d618f2, GetEntArray("subway_corpse_floating", "targetname"), 1, 0);
	Array::thread_all(var_11d618f2, &util::self_delete);
	Array::thread_all(GetEntArray("trigger_current", "targetname"), &namespace_79e1cd97::function_76b75dc7, "blackstation_exterior_engaged");
}

/*
	Name: function_6127b673
	Namespace: namespace_933eb669
	Checksum: 0x942861E5
	Offset: 0x3A90
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_6127b673()
{
	foreach(player in level.activePlayers)
	{
		player thread namespace_79e1cd97::function_ed7faf05();
	}
	objectives::set("cp_level_blackstation_comm_relay");
	if(isdefined(level.BZM_BLACKSTATIONDialogue4Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue4Callback]]();
	}
	level thread namespace_4297372::function_5b1a53ea();
	level scene::add_scene_func("cin_bla_10_01_kaneintro_3rd_sh190", &function_80a596c6, "play");
	level scene::add_scene_func("cin_bla_10_01_kaneintro_3rd_sh190", &function_7a574065, "done");
	level scene::Play("cin_bla_10_01_kaneintro_3rd_sh010");
}

/*
	Name: function_80a596c6
	Namespace: namespace_933eb669
	Checksum: 0xCDFD5A0
	Offset: 0x3BF0
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_80a596c6(a_ents)
{
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "slow");
	level.var_2fd26037 SetGoal(GetNode("hendricks_node_kane_intro_end", "targetname"), 1);
	if(!scene::is_skipping_in_progress())
	{
		wait(1);
		level.var_2fd26037 ai::gun_remove();
		level thread scene::Play("cin_bla_10_01_kaneintro_end_idle");
		wait(1);
		level.var_2fd26037 ai::gun_recall();
	}
	else
	{
		level thread scene::Play("cin_bla_10_01_kaneintro_end_idle");
	}
}

/*
	Name: function_7a574065
	Namespace: namespace_933eb669
	Checksum: 0x4EE78742
	Offset: 0x3D00
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_7a574065(a_ents)
{
	level flag::set("flag_kane_intro_complete");
	level flag::set("flag_intro_dialog_ended");
	wait(0.3);
	level.var_2fd26037 ClearForcedGoal();
	trigger::use("trig_hendricks_comm_b0", "targetname");
	level.var_2fd26037 ai::set_behavior_attribute("vignette_mode", "off");
	util::clear_streamer_hint();
}


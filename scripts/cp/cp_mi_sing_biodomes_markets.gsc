#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_squad_control;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_sound;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\archetype_warlord_interface;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai\warlord;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_73fc8448;

/*
	Name: main
	Namespace: namespace_73fc8448
	Checksum: 0xC12B205F
	Offset: 0x1A30
	Size: 0x25B
	Parameters: 0
	Flags: None
*/
function main()
{
	var_83b0c601 = GetEntArray("hendricks_markets1_scene_triggers", "script_noteworthy");
	level thread Array::thread_all(var_83b0c601, &function_ddde0fc3);
	spawner::add_spawn_function_group("sp_markets1_warlord", "targetname", &function_7ff66080);
	spawner::add_spawn_function_group("sp_markets2_warlord", "targetname", &function_ff2bafac);
	spawner::add_spawn_function_group("headpop_guys", "script_noteworthy", &function_2a1badc);
	spawner::add_spawn_function_group("markets2_rpg_tower", "script_noteworthy", &function_898e1184);
	spawner::add_spawn_function_group("markets2_ambush_guys", "script_noteworthy", &function_d89d2fa0);
	spawner::add_spawn_function_group("sp_markets2_bridge_retreat", "targetname", &function_f4ed98ea);
	spawner::add_spawn_function_group("markets2_robot_rushers", "script_noteworthy", &function_23089a30);
	level.var_9198e8fa = [];
	spawner::add_spawn_function_group("sp_markets1_start_anim", "script_noteworthy", &ai::force_goal, undefined, 64);
	spawner::add_spawn_function_group("sp_markets1_weapongrab_leader", "targetname", &function_4a0994ae);
	spawner::add_spawn_function_group("markets1_magic_rpg", "script_noteworthy", &function_d999a915);
	setup_scenes();
}

/*
	Name: setup_scenes
	Namespace: namespace_73fc8448
	Checksum: 0x1DF60365
	Offset: 0x1C98
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function setup_scenes()
{
	level scene::add_scene_func("cin_bio_03_01_market_vign_hendricksmoment_throw", &function_a5040920, "play");
	level scene::add_scene_func("cin_bio_03_01_market_vign_hendricksmoment_rush", &function_f4e90efd, "play");
	level scene::add_scene_func("cin_bio_04_01_market2_vign_explode", &function_b27f1679, "play");
}

/*
	Name: function_afd92016
	Namespace: namespace_73fc8448
	Checksum: 0x3FE17E08
	Offset: 0x1D38
	Size: 0x24B
	Parameters: 1
	Flags: None
*/
function function_afd92016(str_side)
{
	level endon("hash_efa973e9");
	var_1d92694f = GetEnt("dumpster_markets1_push_sideways_" + str_side, "targetname");
	var_1d92694f disconnectpaths();
	s_align = struct::get("markets1_push_sideways_" + str_side);
	s_align scene::init(s_align.scriptbundlename, var_1d92694f);
	nd_cover = GetNode("nd_markets1_push_sideways_" + str_side, "targetname");
	SetEnableNode(nd_cover, 0);
	trigger::wait_till("trig_markets1_push_sideways_" + str_side);
	var_a715f176 = spawner::simple_spawn_single("sp_markets1_push_sideways_" + str_side);
	var_a715f176 ai::set_behavior_attribute("sprint", 1);
	var_a715f176 endon("death");
	var_a715f176 function_d87e0a34(1024);
	var_1d92694f connectpaths();
	a_ents = Array(var_a715f176, var_1d92694f);
	s_align thread function_73bcc8bf(var_a715f176, var_1d92694f);
	s_align scene::Play("cin_gen_aie_push_cover_sideways_no_dynpath", a_ents);
	s_align notify("hash_5c016b54");
	SetEnableNode(nd_cover, 1);
	var_1d92694f disconnectpaths();
}

/*
	Name: function_73bcc8bf
	Namespace: namespace_73fc8448
	Checksum: 0x639D9D39
	Offset: 0x1F90
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_73bcc8bf(var_a715f176, var_1d92694f)
{
	self endon("hash_5c016b54");
	var_a715f176 waittill("death");
	self scene::stop("cin_gen_aie_push_cover_sideways_no_dynpath");
	var_1d92694f disconnectpaths();
}

/*
	Name: function_d3cdcc7a
	Namespace: namespace_73fc8448
	Checksum: 0x3FECAF8E
	Offset: 0x2000
	Size: 0x25B
	Parameters: 1
	Flags: None
*/
function function_d3cdcc7a(str_side)
{
	level endon("hash_efa973e9");
	var_db712e4f = GetEnt("table_markets1_flip_" + str_side, "targetname");
	var_db712e4f disconnectpaths();
	s_align = struct::get("markets1_flip_" + str_side);
	s_align scene::init("cin_gen_aie_table_flip_no_dynpath", var_db712e4f);
	var_f377c056 = GetNode("nd_markets1_flip_" + str_side, "targetname");
	SetEnableNode(var_f377c056, 0);
	trigger::wait_till("trig_markets1_flip_" + str_side);
	var_7f7b2bb8 = spawner::simple_spawn_single("sp_markets1_flip_" + str_side);
	var_7f7b2bb8 ai::set_behavior_attribute("sprint", 1);
	var_7f7b2bb8 endon("death");
	var_7f7b2bb8 function_d87e0a34(1024);
	a_ents = Array(var_7f7b2bb8, var_db712e4f);
	s_align thread function_2188c8d1(var_7f7b2bb8, var_db712e4f);
	s_align thread scene::Play("cin_gen_aie_table_flip_no_dynpath", a_ents);
	var_db712e4f waittill("connect_paths");
	var_db712e4f connectpaths();
	var_7f7b2bb8 waittill("enable_node");
	SetEnableNode(var_f377c056, 1);
	var_db712e4f thread function_1d148f52();
}

/*
	Name: function_2188c8d1
	Namespace: namespace_73fc8448
	Checksum: 0x473EEE0C
	Offset: 0x2268
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_2188c8d1(var_7f7b2bb8, var_db712e4f)
{
	var_7f7b2bb8 endon("enable_node");
	var_7f7b2bb8 waittill("death");
	self scene::stop("cin_gen_aie_table_flip_no_dynpath");
	var_db712e4f disconnectpaths();
}

/*
	Name: function_1d148f52
	Namespace: namespace_73fc8448
	Checksum: 0xBE7A14AF
	Offset: 0x22D8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_1d148f52()
{
	self waittill("disconnect_paths");
	self disconnectpaths();
}

/*
	Name: function_174b2742
	Namespace: namespace_73fc8448
	Checksum: 0xA154B5EA
	Offset: 0x2308
	Size: 0x52F
	Parameters: 0
	Flags: None
*/
function function_174b2742()
{
	level endon("hash_9bb53038");
	trigger::wait_till("trig_markets1_warlord");
	spawn_manager::function_347e835a("sm_markets1_warlord");
	while(1)
	{
		var_11657e7b = spawn_manager::get_ai("sm_markets1_warlord");
		foreach(var_c7a78bed in var_11657e7b)
		{
			var_c7a78bed.var_8e7be685 = [];
			foreach(player in level.activePlayers)
			{
				n_dist_sq = DistanceSquared(var_c7a78bed.origin, player.origin);
				if(!isdefined(var_c7a78bed.var_8e7be685))
				{
					var_c7a78bed.var_8e7be685 = [];
				}
				else if(!IsArray(var_c7a78bed.var_8e7be685))
				{
					var_c7a78bed.var_8e7be685 = Array(var_c7a78bed.var_8e7be685);
				}
				var_c7a78bed.var_8e7be685[var_c7a78bed.var_8e7be685.size] = n_dist_sq;
			}
			var_c7a78bed.e_target = undefined;
		}
		for(i = 0; i < level.activePlayers.size; i++)
		{
			var_43b73530 = undefined;
			var_1d2985c7 = undefined;
			var_ab1697de = undefined;
			foreach(var_c7a78bed in var_11657e7b)
			{
				if(isdefined(var_c7a78bed.var_8e7be685))
				{
					for(i = 0; i < var_c7a78bed.var_8e7be685.size; i++)
					{
						if(!isdefined(var_1d2985c7) || (isdefined(var_c7a78bed.var_8e7be685[i]) && var_c7a78bed.var_8e7be685[i] < var_1d2985c7))
						{
							var_1d2985c7 = var_c7a78bed.var_8e7be685[i];
							var_ab1697de = i;
							var_43b73530 = var_c7a78bed;
						}
					}
				}
			}
			var_43b73530.e_target = level.activePlayers[var_ab1697de];
			var_43b73530.var_8e7be685 = undefined;
			foreach(var_c7a78bed in var_11657e7b)
			{
				if(isdefined(var_c7a78bed.var_8e7be685))
				{
					var_c7a78bed.var_8e7be685[var_ab1697de] = undefined;
				}
			}
		}
		if(var_11657e7b.size > level.activePlayers.size)
		{
			foreach(var_c7a78bed in var_11657e7b)
			{
				if(!isdefined(var_c7a78bed.e_target))
				{
					var_c7a78bed.e_target = ArraySortClosest(level.activePlayers, var_c7a78bed.origin, 1)[0];
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_7ff66080
	Namespace: namespace_73fc8448
	Checksum: 0x5B195511
	Offset: 0x2840
	Size: 0x18F
	Parameters: 0
	Flags: None
*/
function function_7ff66080()
{
	self endon("death");
	self thread function_5a24feff();
	self.e_target = undefined;
	self.var_8fa11c4a = undefined;
	self namespace_27a45d31::function_f61c0df8("nd_market1_warlord", 2, 3);
	var_e812ecff = GetEnt("vol_markets1_warlord_last", "targetname");
	a_volumes = GetEntArray("vol_markets1_warlord", "script_noteworthy");
	while(1)
	{
		if(isdefined(self.e_target))
		{
			if(self.e_target istouching(var_e812ecff))
			{
				var_bf84b114 = var_e812ecff;
			}
			else
			{
				var_bf84b114 = ArraySortClosest(a_volumes, self.e_target.origin, 1)[0];
			}
			if(!isdefined(self.var_8fa11c4a) || self.var_8fa11c4a !== var_bf84b114)
			{
				self.var_8fa11c4a = var_bf84b114;
				self SetGoal(self.var_8fa11c4a, 1);
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_5a24feff
	Namespace: namespace_73fc8448
	Checksum: 0x72B2F8E
	Offset: 0x29D8
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_5a24feff()
{
	self endon("death");
	level endon("hash_8057891");
	var_9f460d03 = 0;
	while(!var_9f460d03)
	{
		foreach(player in level.activePlayers)
		{
			if(player islookingat(self))
			{
				var_9f460d03 = 1;
				break;
			}
		}
		wait(0.25);
	}
	level util::delay_notify(5, "warlord_vo_done");
	level flag::wait_till("markets1_intro_dialogue_done");
	level thread dialog::remote("kane_warlord_get_to_cove_0");
	level notify("hash_8057891");
}

/*
	Name: function_768ccc86
	Namespace: namespace_73fc8448
	Checksum: 0x345BABB2
	Offset: 0x2B30
	Size: 0x4CB
	Parameters: 2
	Flags: None
*/
function function_768ccc86(str_objective, var_74cd64bc)
{
	objectives::set("cp_level_biodomes_cloud_mountain");
	namespace_27a45d31::function_ddb0eeea("objective_markets_start_init");
	if(var_74cd64bc)
	{
		namespace_27a45d31::function_bff1a867(str_objective);
		level thread namespace_55d2f1be::function_69468f09(1);
		level thread namespace_27a45d31::function_753a859(str_objective);
		level waittill("end_igc");
		streamerRequest("clear", "cin_bio_02_04_gunplay_vign_stab");
		level thread namespace_f1b4cbbc::function_fa2e45b8();
	}
	if(isdefined(level.BZMLoadOutChangeCallback))
	{
		level thread [[level.BZMLoadOutChangeCallback]]();
	}
	level thread namespace_27a45d31::function_cc20e187("markets1", 1);
	level.var_996e05eb = "friendly_spawns_markets_start";
	trigger::use("trig_hendricks_color_marketst1");
	level flag::set("markets1_enemies_alert");
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets1"));
	objectives::Hide("cp_waypoint_breadcrumb");
	savegame::function_5d2cdd99();
	level thread namespace_f1b4cbbc::function_fa2e45b8();
	level thread function_174b2742();
	level thread function_afd92016("left");
	level thread function_d3cdcc7a("left");
	level thread function_afd92016("right");
	level thread function_d3cdcc7a("right");
	trigger::wait_till("trig_markets1_combat2");
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_left", "info_volume_markets1_left", 2, 4);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_right", "info_volume_markets1_right", 2, 4);
	trigger::wait_till("trig_markets1_pushback");
	spawn_manager::kill("sm_markets1_combat0");
	spawn_manager::kill("sm_markets1_combat1");
	spawn_manager::kill("sm_markets1_combat2");
	spawn_manager::kill("sm_markets1_combat3");
	level thread namespace_27a45d31::function_a1669688("markets1_snipers", "info_volume_markets1_rear", 1, 4);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters", "info_volume_markets1_rear", 1, 4);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_left", "info_volume_markets1_rear", 2, 4);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_right", "info_volume_markets1_rear", 1, 3);
	level thread namespace_27a45d31::function_a1669688("markets1_retreaters_last", "info_volume_markets1_rear", 3, 6);
	level scene::init("p7_fxanim_cp_biodomes_cafe_window_break_right_bundle");
	level scene::init("p7_fxanim_cp_biodomes_cafe_window_break_left_bundle");
	trigger::wait_till("trig_markets_rpg");
	level notify("hash_efa973e9");
	level skipto::function_be8adfb8("objective_markets_start");
}

/*
	Name: function_4a0994ae
	Namespace: namespace_73fc8448
	Checksum: 0x8B891904
	Offset: 0x3008
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4a0994ae()
{
	self waittill("death");
	if(level scene::is_playing("cin_bio_03_01_market_aie_weapons"))
	{
		level scene::stop("cin_bio_03_01_market_aie_weapons");
	}
}

/*
	Name: function_8387168c
	Namespace: namespace_73fc8448
	Checksum: 0x62314A17
	Offset: 0x3060
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_8387168c()
{
	level thread scene::add_scene_func("cin_gen_aie_table_react", &function_c7cb9a93, "done");
	level waittill("hash_ec11d3eb");
	spawner::simple_spawn("sp_markets1_friendly_robot_start");
	spawn_manager::enable("sm_markets1_combat0");
	spawn_manager::enable("sm_markets1_combat1");
	level.var_1675f12a = spawner::simple_spawn_single("turret_markets1");
	level.var_1675f12a thread function_70da4f9b();
	level thread function_5d4c2323();
	level thread function_b1e84c2();
	trigger::use("trig_markets1_combat1");
	level thread scene::Play("cin_bio_03_01_market_vign_engage");
	level thread scene::Play("cin_bio_03_01_market_aie_weapons");
	level thread scene::Play("cin_gen_aie_table_react");
	wait(2);
	level flag::set("markets1_enemies_alert");
	level clientfield::set("sndIGCsnapshot", 0);
}

/*
	Name: function_d87e0a34
	Namespace: namespace_73fc8448
	Checksum: 0xE535934A
	Offset: 0x3218
	Size: 0x147
	Parameters: 1
	Flags: None
*/
function function_d87e0a34(var_78850f88)
{
	n_distance_sq = var_78850f88 * var_78850f88;
	var_9f460d03 = 0;
	while(!var_9f460d03)
	{
		foreach(player in level.activePlayers)
		{
			n_distance = Distance2DSquared(player.origin, self.origin);
			if(player util::is_looking_at(self, 0.6, 1) && n_distance < 1000000 || n_distance < n_distance_sq)
			{
				var_9f460d03 = 1;
				break;
			}
		}
		wait(0.25);
	}
}

/*
	Name: function_5d4c2323
	Namespace: namespace_73fc8448
	Checksum: 0xD4661320
	Offset: 0x3368
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_5d4c2323()
{
	while(!isdefined(level.var_2fd26037))
	{
		wait(0.05);
	}
	battlechatter::function_d9f49fba(0);
	level dialog::function_13b3b16a("plyr_plan_b_0");
	level.var_2fd26037 dialog::say("hend_plan_b_into_comms_0");
	level dialog::function_13b3b16a("plyr_i_thought_you_and_da_0");
	level.var_2fd26037 dialog::say("hend_yeah_so_did_i_0");
	level dialog::remote("kane_robot_squad_activati_0", 1);
	level.var_2fd26037 dialog::say("hend_you_finished_triangu_0", 3);
	level dialog::remote("kane_got_em_data_drives_0");
	level.var_2fd26037 dialog::say("hend_are_you_fucking_kidd_0");
	level dialog::function_13b3b16a("plyr_how_much_do_you_wann_0");
	level dialog::remote("kane_overwatch_shows_cdp_0");
	objectives::show("cp_waypoint_breadcrumb");
	level.var_2fd26037 dialog::say("hend_you_kidding_me_wha_0");
	battlechatter::function_d9f49fba(1);
	level flag::set("markets1_intro_dialogue_done");
}

/*
	Name: function_b1e84c2
	Namespace: namespace_73fc8448
	Checksum: 0xDE795D1A
	Offset: 0x3560
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_b1e84c2()
{
	trigger::wait_till("trig_markets1_combat3");
	var_bd9defd6 = spawner::get_ai_group_sentient_count("markets1_snipers");
	if(var_bd9defd6 > 0)
	{
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "hend_i_got_eyes_on_a_snip_0";
		var_2d3d7b7[1] = "hend_hostile_sniper_ahead_0";
		var_2d3d7b7[2] = "hend_eyes_up_sniper_in_p_0";
		level.var_2fd26037 dialog::say(namespace_27a45d31::function_7ff50323(var_2d3d7b7), 3);
	}
	var_207c708e = spawner::get_ai_group_sentient_count("markets1_riotshields");
	if(var_207c708e > 0)
	{
		var_2d3d7b7 = [];
		var_2d3d7b7[0] = "hend_riot_gear_incoming_0";
		var_2d3d7b7[1] = "hend_eyes_on_riot_gear_0";
		var_2d3d7b7[2] = "hend_riot_shields_comin_0";
		level.var_2fd26037 dialog::say(namespace_27a45d31::function_7ff50323(var_2d3d7b7), 3);
	}
	level flag::wait_till("markets1_enemies_retreating");
	level.var_2fd26037 thread dialog::say("hend_they_re_falling_back_0", 5);
}

/*
	Name: function_ddde0fc3
	Namespace: namespace_73fc8448
	Checksum: 0xA93B5417
	Offset: 0x3718
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_ddde0fc3()
{
	self endon("death");
	while(self IsTriggerEnabled())
	{
		self trigger::wait_till();
		if(self.who == level.players[0])
		{
			if(IsString(self.target))
			{
				level.var_2fd26037 thread function_563bb5b3(self.target);
			}
			self TriggerEnable(0);
		}
	}
}

/*
	Name: function_563bb5b3
	Namespace: namespace_73fc8448
	Checksum: 0xFFA1BB21
	Offset: 0x37C8
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_563bb5b3(var_87b2bbe5)
{
	switch(var_87b2bbe5)
	{
		case "nd_hendricks_wok1":
		{
			level.var_2fd26037 thread function_1485f7dc();
			break;
		}
		case "nd_hendricks_shelves":
		{
			level.var_2fd26037 thread function_a67aaa62();
			break;
		}
		case default:
		{
			break;
		}
	}
	var_dfcbd82b = GetNode(var_87b2bbe5, "targetname");
	if(isdefined(var_dfcbd82b))
	{
		self SetGoal(var_dfcbd82b);
	}
}

/*
	Name: function_a67aaa62
	Namespace: namespace_73fc8448
	Checksum: 0x5ED74C27
	Offset: 0x3890
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_a67aaa62()
{
	level scene::init("cin_bio_03_01_market_vign_hendricksmoment_rush");
	self waittill("goal");
	function_2e1ac4d4();
}

/*
	Name: function_2e1ac4d4
	Namespace: namespace_73fc8448
	Checksum: 0xA81AEF17
	Offset: 0x38E0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_2e1ac4d4()
{
	var_d36f9bf = "trig_hendricks_moment_colors_right";
	var_68833421 = spawner::simple_spawn_single("sp_markets1_shelfguy");
	if(isalive(var_68833421))
	{
		var_68833421 ai::set_ignoreme(1);
		level scene::add_scene_func("cin_bio_03_01_market_vign_hendricksmoment_rush_enemy", &function_3a8d91fc, "play");
		level thread function_a3bac88("cin_bio_03_01_market_vign_hendricksmoment_rush", var_68833421, var_d36f9bf);
		level scene::Play("cin_bio_03_01_market_vign_hendricksmoment_rush_enemy", var_68833421);
	}
	else
	{
		level thread function_a3bac88("cin_bio_03_01_market_vign_hendricksmoment_rush", undefined, var_d36f9bf);
	}
}

/*
	Name: function_3a8d91fc
	Namespace: namespace_73fc8448
	Checksum: 0xCE099330
	Offset: 0x3A00
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_3a8d91fc(a_ents)
{
	level scene::Play("cin_bio_03_01_market_vign_hendricksmoment_rush");
}

/*
	Name: function_1485f7dc
	Namespace: namespace_73fc8448
	Checksum: 0xBADED923
	Offset: 0x3A38
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_1485f7dc()
{
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	level scene::add_scene_func("cin_bio_03_01_market_vign_hendricksmoment_throw", &function_b347511d, "init");
	level scene::init("cin_bio_03_01_market_vign_hendricksmoment_throw");
}

/*
	Name: function_b347511d
	Namespace: namespace_73fc8448
	Checksum: 0x8F3AE7C0
	Offset: 0x3AC8
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_b347511d(a_ents)
{
	var_d36f9bf = "trig_hendricks_color_markets1_left1";
	var_eb8ef003 = spawner::simple_spawn_single("sp_hendricks_enemy_throw_1");
	if(isalive(var_eb8ef003))
	{
		level scene::add_scene_func("cin_bio_03_01_market_vign_hendricksmoment_throw_enemy", &function_af620536, "play");
		level thread function_a3bac88("cin_bio_03_01_market_vign_hendricksmoment_throw", var_eb8ef003, var_d36f9bf);
		level scene::Play("cin_bio_03_01_market_vign_hendricksmoment_throw_enemy", var_eb8ef003);
	}
	else
	{
		level thread function_a3bac88("cin_bio_03_01_market_vign_hendricksmoment_throw", undefined, var_d36f9bf);
	}
}

/*
	Name: function_af620536
	Namespace: namespace_73fc8448
	Checksum: 0x57DDBB29
	Offset: 0x3BD0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_af620536(a_ents)
{
	level scene::Play("cin_bio_03_01_market_vign_hendricksmoment_throw");
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_ignoreme(0);
}

/*
	Name: function_a3bac88
	Namespace: namespace_73fc8448
	Checksum: 0x66BBB217
	Offset: 0x3C38
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_a3bac88(str_scene, ai_enemy, var_d36f9bf)
{
	if(isalive(ai_enemy))
	{
		ai_enemy waittill("death");
	}
	level scene::stop(str_scene);
	wait(0.15);
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_ignoreme(0);
	trigger::use(var_d36f9bf, "targetname", undefined, 0);
}

/*
	Name: function_a5040920
	Namespace: namespace_73fc8448
	Checksum: 0x8F33EE38
	Offset: 0x3CF8
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_a5040920(a_ents)
{
	level waittill("hash_d1c9c0a9");
}

/*
	Name: function_f4e90efd
	Namespace: namespace_73fc8448
	Checksum: 0x44082075
	Offset: 0x3D18
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_f4e90efd(a_ents)
{
	level waittill("hash_a04c5e57");
	var_8fbeee65 = GetEnt("plaster_walls_01", "targetname");
	var_8fbeee65 notsolid();
	level scene::Play("p7_fxanim_cp_newworld_plaster_walls_01_bundle");
}

/*
	Name: function_1589a392
	Namespace: namespace_73fc8448
	Checksum: 0x2D4DB6F7
	Offset: 0x3DA0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_1589a392(str_scene)
{
	self.goalRadius = 8;
	self ai::set_ignoreme(1);
	self waittill("death");
	level scene::stop(str_scene);
}

/*
	Name: function_c7cb9a93
	Namespace: namespace_73fc8448
	Checksum: 0xA54EA933
	Offset: 0x3E08
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_c7cb9a93(a_ents)
{
	var_524f5f14 = GetEnt("sp_markets_table_react_chair", "targetname");
	e_table = GetEnt("sp_markets_table_react_table", "targetname");
	var_524f5f14 disconnectpaths();
	e_table disconnectpaths();
}

/*
	Name: function_1bc4d710
	Namespace: namespace_73fc8448
	Checksum: 0xC4C9F5F1
	Offset: 0x3EA8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_1bc4d710(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets_start_done");
}

/*
	Name: function_df0ba879
	Namespace: namespace_73fc8448
	Checksum: 0xAC04BD40
	Offset: 0x3EF0
	Size: 0x35B
	Parameters: 2
	Flags: None
*/
function function_df0ba879(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets_rpg_init");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_27a45d31::function_bff1a867(str_objective);
		namespace_55d2f1be::function_cef897cf(str_objective);
		level scene::init("p7_fxanim_cp_biodomes_cafe_window_break_right_bundle");
		level scene::init("p7_fxanim_cp_biodomes_cafe_window_break_left_bundle");
		level.var_1675f12a = spawner::simple_spawn_single("turret_markets1");
		level.var_1675f12a thread function_70da4f9b();
		level thread clientfield::set("party_house_shutter", 1);
		level thread clientfield::set("party_house_destruction", 1);
		level thread namespace_27a45d31::function_753a859(str_objective);
		objectives::set("cp_level_biodomes_cloud_mountain");
		objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets1"));
		level thread namespace_27a45d31::function_cc20e187("markets1");
		load::function_a2995f22();
		trigger::use("t_pre_turret1");
		level thread namespace_f1b4cbbc::function_fa2e45b8();
	}
	level.var_996e05eb = "friendly_spawns_markets_rpg";
	function_6ddd4fa4("fxanim_nursery");
	function_6ddd4fa4("fxanim_markets2");
	spawner::add_spawn_function_group("markets1_rpgguy", "script_noteworthy", &function_c008e227);
	trigger::wait_till("trig_markets_rpg");
	spawner::simple_spawn_single("sp_markets_rpg_dome_break", &function_d999a915);
	spawn_manager::enable("sm_markets_rpg_nest");
	level thread function_1711aacb();
	level thread function_e7229eec();
	wait(0.5);
	if(isalive(level.var_1675f12a))
	{
		level.var_1675f12a thread function_ac861f96();
	}
	trigger::wait_till("t_zoo_tunnel");
	level notify("hash_4893df48");
	level skipto::function_be8adfb8("objective_markets_rpg");
}

/*
	Name: function_ac861f96
	Namespace: namespace_73fc8448
	Checksum: 0x1F13756E
	Offset: 0x4258
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_ac861f96()
{
	self endon("death");
	e_turret_target = GetEnt("turret_shutter_target", "targetname");
	self.ignoreall = 0;
	self.ignoreme = 0;
	var_6f458912 = GetEnt("market_turret_clip", "targetname");
	var_6f458912 delete();
	self thread turret::shoot_at_target(e_turret_target, 3, (0, 0, 0), 0);
	self waittill("turret_on_target");
	self cybercom::function_a1f70a02("cybercom_hijack");
	e_turret_target MoveZ(64, 3);
	level flag::set("turret1");
	level scene::Play("p7_fxanim_cp_biodomes_cafe_window_break_right_bundle");
}

/*
	Name: function_c008e227
	Namespace: namespace_73fc8448
	Checksum: 0x6ADEEB2C
	Offset: 0x43A0
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c008e227()
{
	self waittill("goal");
	var_fedce7e9 = GetEnt("market_rpg_clip", "targetname");
	var_fedce7e9 delete();
	level scene::Play("p7_fxanim_cp_biodomes_cafe_window_break_left_bundle");
}

/*
	Name: function_1711aacb
	Namespace: namespace_73fc8448
	Checksum: 0x808EAA0D
	Offset: 0x4420
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_1711aacb()
{
	level endon("hash_c791a545");
	level endon("hash_4893df48");
	level flag::wait_till("turret1");
	level.var_2fd26037 dialog::say("hend_take_out_that_turret_1", 1);
	level thread namespace_36171bd3::function_9c52a47e("floor_collapse");
	wait(6);
	level.var_2fd26037 dialog::say("hend_we_gotta_take_out_th_1");
	wait(8);
	level.var_2fd26037 dialog::say("hend_we_ain_t_movin_with_0");
	wait(10);
	level.var_2fd26037 dialog::say("hend_bring_down_that_turr_0");
}

/*
	Name: function_e7229eec
	Namespace: namespace_73fc8448
	Checksum: 0x2A4D7B25
	Offset: 0x4520
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e7229eec()
{
	level endon("hash_4893df48");
	spawn_manager::function_72e3dd35("sm_markets_rpg_nest");
	level flag::wait_till("turret1_dead");
	level.var_2fd26037 dialog::say("hend_area_clear_0");
}

/*
	Name: function_20e9cee4
	Namespace: namespace_73fc8448
	Checksum: 0x6633CFA0
	Offset: 0x4590
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_20e9cee4()
{
	level scene::skipto_end("p7_fxanim_cp_biodomes_cafe_window_break_left_bundle");
	level scene::skipto_end("p7_fxanim_cp_biodomes_cafe_window_break_right_bundle");
	var_a8a0e766 = GetEnt("market_turret_clip", "targetname");
	var_a8a0e766 delete();
	var_d8861eed = GetEnt("market_rpg_clip", "targetname");
	var_d8861eed delete();
}

/*
	Name: function_254ce088
	Namespace: namespace_73fc8448
	Checksum: 0xD8069FDB
	Offset: 0x4660
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_254ce088(STR_MODEL)
{
	var_197ca77b = GetEnt(STR_MODEL, "targetname");
	/#
		Assert(isdefined(var_197ca77b), STR_MODEL + "Dev Block strings are not supported");
	#/
	var_d4cf8d4e = struct::get(var_197ca77b.target, "targetname");
	/#
		Assert(isdefined(var_d4cf8d4e), STR_MODEL + "Dev Block strings are not supported");
	#/
	if(isdefined(var_197ca77b) && isdefined(var_d4cf8d4e))
	{
		var_d246e703 = var_197ca77b.angles - VectorScale((0, 1, 0), 90);
		var_197ca77b FX::Play("dirt_impact", var_197ca77b.origin, var_d246e703, 4);
		var_197ca77b moveto(var_d4cf8d4e.origin, 0.5);
		var_197ca77b RotateTo(var_d4cf8d4e.angles, 0.5);
	}
}

/*
	Name: function_d999a915
	Namespace: namespace_73fc8448
	Checksum: 0xA834DD56
	Offset: 0x47F0
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_d999a915()
{
	self waittill("death");
	var_9faa0c88 = GetWeapon("smaw");
	var_1987d48e = self GetTagOrigin("tag_aim");
	var_6893fc99 = struct::get("markets1_magic_rpg_dest", "targetname");
	e_rocket = MagicBullet(var_9faa0c88, var_1987d48e + VectorScale((1, 1, 1), 5), var_6893fc99.origin);
	e_rocket waittill("death");
	PlayRumbleOnPosition("cp_biodomes_rpg_dome_rumble", var_6893fc99.origin);
	level clientfield::set("dome_glass_break", 1);
	var_1842712c = GetEnt("rpg_dome_glass_clip", "targetname");
	var_1842712c delete();
}

/*
	Name: function_c80a0733
	Namespace: namespace_73fc8448
	Checksum: 0x68977B36
	Offset: 0x4960
	Size: 0x6B
	Parameters: 4
	Flags: None
*/
function function_c80a0733(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets_rpg_done");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets1"));
}

/*
	Name: function_bf0a0e50
	Namespace: namespace_73fc8448
	Checksum: 0xB22B0830
	Offset: 0x49D8
	Size: 0x43B
	Parameters: 2
	Flags: None
*/
function function_bf0a0e50(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets2_start_init");
	level thread function_11549ce5();
	level thread function_f5120a68();
	level thread function_4ef9f5db();
	level thread function_1c8db87();
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		Array::delete_all(GetEntArray("triggers_markets1", "script_noteworthy"));
		namespace_27a45d31::function_bff1a867(str_objective);
		namespace_55d2f1be::function_cef897cf(str_objective);
		level thread clientfield::set("party_house_shutter", 1);
		level thread clientfield::set("party_house_destruction", 1);
		level.var_1675f12a = spawner::simple_spawn_single("turret_markets1");
		level.var_1675f12a kill();
		thread function_20e9cee4();
		level thread namespace_27a45d31::function_753a859(str_objective);
		level thread namespace_27a45d31::function_cc20e187("markets1");
		objectives::set("cp_level_biodomes_cloud_mountain");
		load::function_a2995f22();
		level thread namespace_f1b4cbbc::function_fa2e45b8();
	}
	if(isdefined(level.BZM_BIODialogue2_2Callback))
	{
		level thread [[level.BZM_BIODialogue2_2Callback]]();
	}
	level thread namespace_27a45d31::function_cc20e187("markets2", 1);
	level thread namespace_27a45d31::function_cc20e187("warehouse", 1);
	level.var_996e05eb = "friendly_spawns_markets2_tunnel";
	level scene::init("p7_fxanim_cp_biodomes_market_bridge_bundle");
	function_a7548a8f();
	namespace_27a45d31::function_a22e7052(0, "markets2_bridge_traversals", "script_noteworthy");
	function_9e3608e3("fxanim_party_house");
	function_6ddd4fa4("fxanim_warehouse");
	trigger::wait_till("trig_warehouse_entrance");
	namespace_27a45d31::function_1c1462ee("sm_markets1_combat0");
	namespace_27a45d31::function_1c1462ee("sm_markets1_combat1");
	namespace_27a45d31::function_1c1462ee("sm_markets1_combat2");
	namespace_27a45d31::function_1c1462ee("sm_markets1_combat3");
	namespace_27a45d31::function_1c1462ee("sm_markets_rpg_nest");
	if(isalive(level.var_1675f12a))
	{
		level.var_1675f12a util::stop_magic_bullet_shield();
		level.var_1675f12a kill();
	}
	if(isalive(level.var_f07376c1))
	{
		level.var_f07376c1 util::stop_magic_bullet_shield();
		level.var_f07376c1 kill();
	}
	level skipto::function_be8adfb8("objective_markets2_start");
}

/*
	Name: function_11549ce5
	Namespace: namespace_73fc8448
	Checksum: 0x16F59913
	Offset: 0x4E20
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function function_11549ce5()
{
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets2_pit"));
	trigger::wait_till("trig_markets2_combat2b");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets2_pit"));
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets2_arch"));
	trigger::wait_till("trig_markets2_turret_intro");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets2_arch"));
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets2_bridge"));
	trigger::wait_till("trig_markets2_combat3");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets2_bridge"));
	objectives::set("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets2_end"));
	trigger::wait_till("trig_warehouse_entrance");
	objectives::complete("cp_waypoint_breadcrumb", struct::get("breadcrumb_markets2_end"));
}

/*
	Name: function_a7548a8f
	Namespace: namespace_73fc8448
	Checksum: 0xCA2C98D1
	Offset: 0x5010
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_a7548a8f()
{
	level thread function_eb44b3e8();
	trigger::wait_till("trig_markets2_hendricks_pit");
	trigger::use("trig_hendricks_color_markets2_pit");
	spawn_manager::enable("sm_markets2_combat0");
	level.var_f07376c1 = spawner::simple_spawn_single("turret_markets2");
	level.var_f07376c1 thread function_9e873c98();
	level.var_f07376c1 thread function_45ec4c38();
	level flag::set("turret2");
	trigger::wait_till("trig_markets2_combat2");
	level.var_2fd26037 notify("hash_fa1b759e");
	level.var_2fd26037 notify("hash_ce815b72");
	level notify("hash_79fccdae");
	level.var_2fd26037 thread function_802808a0();
	trigger::wait_till("trig_markets2_turret_intro");
	level.var_996e05eb = "friendly_spawns_markets2_waterfall";
	spawn_manager::enable("sm_markets2_combat2c");
	spawn_manager::enable("sm_markets2_warlord");
	level thread function_306c7d29();
	level.var_2fd26037 notify("hash_e0a6f6d8");
	level thread namespace_27a45d31::function_a1669688("markets2_retreaters", "info_volume_markets2_rear", 0, 0.1);
}

/*
	Name: function_d89d2fa0
	Namespace: namespace_73fc8448
	Checksum: 0x86E9A655
	Offset: 0x5208
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_d89d2fa0()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self ai::set_behavior_attribute("coverIdleOnly", 1);
	level util::waittill_notify_or_timeout("player_in_pit", 5);
	wait(RandomFloatRange(0, 0.5));
	self ai::set_behavior_attribute("coverIdleOnly", 0);
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_802808a0
	Namespace: namespace_73fc8448
	Checksum: 0x76AC64
	Offset: 0x5300
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_802808a0()
{
	self notify("hash_ce815b72");
	level flag::wait_till("hendricks_markets2_arch_throw");
	var_e2b94783 = spawner::simple_spawn_single("sp_arch_thrown_off", &function_8fcead5c, "markets2_hendricks_throw_arch", 1);
	level scene::Play("markets2_hendricks_throw_arch", "targetname", Array(self, var_e2b94783));
	var_dfcbd82b = GetNode("cover_hendricks_arch", "targetname");
	self SetGoal(var_dfcbd82b);
	level flag::wait_till("hendricks_markets2_wallrun");
	var_87b6fa5f = spawner::simple_spawn_single("sp_hendricks_wallrun_fodder", &function_8fcead5c, "cin_bio_04_03_market2_vign_wallrun", 0);
	level scene::Play("cin_bio_04_03_market2_vign_wallrun", Array(self, var_87b6fa5f));
	var_dfcbd82b = GetNode("nd_hendricks_window_after_wallrun", "targetname");
	self thread ai::force_goal(var_dfcbd82b, 12, 1, "goal", 1);
	self waittill("goal");
	self ClearForcedGoal();
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
}

/*
	Name: function_8fcead5c
	Namespace: namespace_73fc8448
	Checksum: 0xF5A08A95
	Offset: 0x5530
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_8fcead5c(str_scene, var_5d5638aa)
{
	self.goalRadius = 8;
	self.goalHeight = 8;
	self ai::set_ignoreme(1);
	self waittill("death");
	if(var_5d5638aa)
	{
		level scene::stop(str_scene, "targetname");
	}
	else
	{
		level scene::stop(str_scene);
	}
}

/*
	Name: function_4eb79d4f
	Namespace: namespace_73fc8448
	Checksum: 0xF537FD18
	Offset: 0x55D8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_4eb79d4f(var_a92ac318)
{
	level endon("hash_54ba776e");
	self waittill("death");
	wait(0.5);
	level scene::stop(var_a92ac318, "targetname");
}

/*
	Name: function_eb44b3e8
	Namespace: namespace_73fc8448
	Checksum: 0x16E930C2
	Offset: 0x5630
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_eb44b3e8()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level dialog::remote("kane_heads_up_got_54i_r_0");
	var_d65ac7cc = trigger::wait_till("trig_markets2_turret_intro");
	level.var_2fd26037 dialog::say("hend_moving_up_gimme_som_0");
	if(var_d65ac7cc.script_label == "path_arch")
	{
		level dialog::function_13b3b16a("plyr_covering_go_0");
	}
	trigger::wait_till("trig_rpg_tower_vo");
	if(!level flag::get("markets2_tower_destroyed"))
	{
		level thread dialog::function_13b3b16a("plyr_got_an_rpg_in_that_t_0");
	}
	level endon("hash_7ca50f0");
	wait(8);
	level.var_2fd26037 dialog::say("hend_we_gotta_take_out_th_1");
}

/*
	Name: function_b27f1679
	Namespace: namespace_73fc8448
	Checksum: 0x1A9CBA5B
	Offset: 0x5778
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_b27f1679(a_ents)
{
	level notify("hash_ad26056f");
	for(i = 1; i <= 3; i++)
	{
		a_ents["sp_civilian_headpop" + i].var_70a4ef5f = a_ents["bomb_collar_" + i];
	}
}

/*
	Name: function_2a1badc
	Namespace: namespace_73fc8448
	Checksum: 0xD3DDCF9F
	Offset: 0x5800
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_2a1badc()
{
	self endon("death");
	self util::magic_bullet_shield();
	self ai::gun_remove();
	level waittill("hash_ad26056f");
	self waittill("hash_49055167");
	self.var_70a4ef5f Hide();
	PlayRumbleOnPosition("cp_biodomes_headpop_rumble", self.origin);
	foreach(player in level.players)
	{
		Distance = Distance2DSquared(player.origin, self.origin);
		if(Distance < 160000 && self cansee(player))
		{
			player DoDamage(player.health * 0.1, self.origin);
		}
	}
	self util::stop_magic_bullet_shield();
	GibServerUtils::GibHead(self);
}

/*
	Name: function_1c8db87
	Namespace: namespace_73fc8448
	Checksum: 0xF250C391
	Offset: 0x59C8
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_1c8db87()
{
	var_6f261beb = 6;
	var_80110940 = 4;
	var_72e94765 = [];
	for(m = 1; m <= var_6f261beb; m++)
	{
		var_83491dca = spawner::simple_spawn_single("bound_civ_male");
		var_83491dca.animName = "prisoner_male_0" + m;
		var_83491dca.overrideActorDamage = &function_c1c247f6;
		if(!isdefined(var_72e94765))
		{
			var_72e94765 = [];
		}
		else if(!IsArray(var_72e94765))
		{
			var_72e94765 = Array(var_72e94765);
		}
		var_72e94765[var_72e94765.size] = var_83491dca;
	}
	for(f = 1; f <= var_80110940; f++)
	{
		var_83491dca = spawner::simple_spawn_single("bound_civ_female");
		var_83491dca.animName = "prisoner_female_0" + f;
		var_83491dca.overrideActorDamage = &function_c1c247f6;
		if(!isdefined(var_72e94765))
		{
			var_72e94765 = [];
		}
		else if(!IsArray(var_72e94765))
		{
			var_72e94765 = Array(var_72e94765);
		}
		var_72e94765[var_72e94765.size] = var_83491dca;
	}
	level scene::Play("cin_bio_04_01_market2_vign_caged", var_72e94765);
}

/*
	Name: function_4ef9f5db
	Namespace: namespace_73fc8448
	Checksum: 0xA63F8F86
	Offset: 0x5BE8
	Size: 0x1F9
	Parameters: 0
	Flags: None
*/
function function_4ef9f5db()
{
	var_64bc5989 = struct::get_array("prisoner_aligns", "script_noteworthy");
	var_d71a37a5 = spawn("script_origin", (9944, 12957, -163));
	var_d71a37a5 PlayLoopSound("amb_slaves_a");
	var_fd1cb20e = spawn("script_origin", (9895, 13170, -163));
	var_fd1cb20e PlayLoopSound("amb_slaves_b");
	foreach(s_align in var_64bc5989)
	{
		var_83491dca = spawner::simple_spawn_single(s_align.script_string);
		if(s_align.script_label == "male")
		{
			str_scene_name = "cin_bio_04_01_market2_vign_bound_civ01";
		}
		else
		{
			str_scene_name = "cin_bio_04_01_market2_vign_bound_civ02";
		}
		s_align thread scene::Play(str_scene_name, var_83491dca);
		wait(1);
		var_83491dca kill();
		wait(RandomFloatRange(0, 2));
	}
}

/*
	Name: function_dbb91fcf
	Namespace: namespace_73fc8448
	Checksum: 0x3FBC8DBB
	Offset: 0x5DF0
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_dbb91fcf()
{
	var_64bc5989 = struct::get_array("prisoner_aligns", "script_noteworthy");
	foreach(s_align in var_64bc5989)
	{
		s_align scene::stop();
	}
}

/*
	Name: function_c1c247f6
	Namespace: namespace_73fc8448
	Checksum: 0xA5C85736
	Offset: 0x5EB0
	Size: 0x101
	Parameters: 15
	Flags: None
*/
function function_c1c247f6(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, weapon, v_point, v_dir, str_hit_loc, v_damage_origin, psOffsetTime, b_damage_from_underneath, n_model_index, str_part_name, var_eca96ec1)
{
	var_f6896234 = IsInArray(Array("MOD_GRENADE", "MOD_GRENADE_SPLASH", "MOD_PROJECTILE", "MOD_PROJECTILE_SPLASH", "MOD_EXPLOSIVE"), str_means_of_death);
	if(var_f6896234 && e_attacker isBadGuy())
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_45ec4c38
	Namespace: namespace_73fc8448
	Checksum: 0x1EB03D9
	Offset: 0x5FC0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_45ec4c38()
{
	self endon("death");
	trigger::wait_till("trig_markets2_turret_intro");
	var_b6bd02bb = struct::get("s_markets2_turret_target", "targetname");
	var_975c918d = util::spawn_model("tag_origin", var_b6bd02bb.origin, var_b6bd02bb.angles);
	level.var_f07376c1 turret::set_target(var_975c918d, (0, 0, 0), 0);
	var_975c918d MoveX(40, 3);
	var_975c918d MoveY(-200, 3);
	var_975c918d waittill("movedone");
	level.var_f07376c1 turret::clear_target(0);
}

/*
	Name: function_898e1184
	Namespace: namespace_73fc8448
	Checksum: 0x98641D4B
	Offset: 0x60E8
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_898e1184()
{
	level thread function_226ac1e4();
	self waittill("death");
	var_9faa0c88 = GetWeapon("smaw");
	if(SessionModeIsCampaignZombiesGame())
	{
		tag = "tag_eye";
	}
	else
	{
		tag = "tag_aim";
	}
	var_1987d48e = self GetTagOrigin("tag_aim");
	v_origin = self.origin;
	var_2f7fd5db = self.damageWeapon;
	if(var_2f7fd5db == GetWeapon("gadget_mrpukey"))
	{
		wait(2);
	}
	else
	{
		wait(0.5);
	}
	MagicBullet(var_9faa0c88, var_1987d48e, v_origin);
	PlayRumbleOnPosition("cp_biodomes_rpg_tower_rumble", v_origin);
	level notify("hash_f311a0e2");
	level flag::set("markets2_tower_destroyed");
	level scene::Play("p7_fxanim_cp_biodomes_guard_tower_warehouse_bundle");
	namespace_769dc23f::function_b5cf7b68();
}

/*
	Name: function_226ac1e4
	Namespace: namespace_73fc8448
	Checksum: 0xF03FAE81
	Offset: 0x62A0
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_226ac1e4()
{
	trigger::wait_till("trig_markets2_rpg_tower_warning");
	var_9faa0c88 = GetWeapon("smaw");
	var_11fd5f3f = struct::get("markets2_rpg_tower_warning_launch", "targetname");
	var_6beedec9 = struct::get("markets2_rpg_tower_warning_target", "targetname");
	e_rocket = MagicBullet(var_9faa0c88, var_11fd5f3f.origin, var_6beedec9.origin);
}

/*
	Name: function_f4ed98ea
	Namespace: namespace_73fc8448
	Checksum: 0xE260348C
	Offset: 0x6380
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_f4ed98ea()
{
	self endon("death");
	level endon("hash_f7452abe");
	self thread function_e143a359();
	self ai::set_ignoreall(1);
	nd_goal = GetNode(self.target, "targetname");
	if(isdefined(nd_goal))
	{
		self ai::force_goal(nd_goal, 12, 0, "goal", 0, 1);
		self waittill("goal");
	}
	self ai::set_ignoreall(0);
}

/*
	Name: function_e143a359
	Namespace: namespace_73fc8448
	Checksum: 0x1FCF8403
	Offset: 0x6450
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_e143a359()
{
	self endon("goal");
	self endon("death");
	level waittill("hash_f7452abe");
	self ai::set_ignoreall(0);
	self ClearForcedGoal();
}

/*
	Name: function_23089a30
	Namespace: namespace_73fc8448
	Checksum: 0x24CF0FC1
	Offset: 0x64B0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_23089a30()
{
	self endon("death");
	self ai::set_behavior_attribute("move_mode", "rusher");
}

/*
	Name: function_f5120a68
	Namespace: namespace_73fc8448
	Checksum: 0x3415CD27
	Offset: 0x64F0
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_f5120a68()
{
	level endon("hash_3fe031c0");
	trigger::wait_till("trig_markets2_turret_intro");
	var_b31ff87c = spawner::simple_spawn_single("sp_bridge_controller");
	if(isalive(var_b31ff87c))
	{
		level thread scene::Play("cin_bio_04_01_market2_vign_bridge_destroy", var_b31ff87c);
		level thread util::delay_notify(15, "retract_bridge");
		level util::waittill_any_ents_two(level, "retract_bridge", var_b31ff87c, "death");
		if(level scene::is_playing("cin_bio_04_01_market2_vign_bridge_destroy"))
		{
			level scene::stop("cin_bio_04_01_market2_vign_bridge_destroy");
		}
	}
	level thread scene::Play("p7_fxanim_cp_biodomes_market_bridge_bundle");
	var_97268a8e = struct::get("breadcrumb_markets2_bridge", "targetname");
	if(isdefined(var_97268a8e))
	{
		PlayRumbleOnPosition("cp_biodomes_markets2_bridge_rumble", var_97268a8e.origin);
		foreach(player in level.activePlayers)
		{
			Distance = Distance2DSquared(player.origin, var_97268a8e.origin);
			if(Distance < 160000)
			{
				player DoDamage(player.health * 0.1, var_97268a8e.origin);
			}
		}
	}
	var_29c45e93 = GetEnt("markets2_bridge_collision", "targetname");
	if(isdefined(var_29c45e93))
	{
		var_29c45e93 notsolid();
		var_29c45e93 disconnectpaths();
	}
	level notify("hash_f7452abe");
	namespace_27a45d31::function_a22e7052(1, "markets2_bridge_traversals", "script_noteworthy");
}

/*
	Name: function_306c7d29
	Namespace: namespace_73fc8448
	Checksum: 0xFB16F445
	Offset: 0x6818
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_306c7d29()
{
	trigger::wait_till("trig_markets2_robot_colors_end");
	level.var_996e05eb = "friendly_spawns_markets2_warlord";
	v_start = struct::get("phalanx_markets2_start").origin;
	v_end = struct::get("phalanx_markets2_end").origin;
	var_1b6ee6b2 = 4;
	if(level.players.size >= 2)
	{
		var_1b6ee6b2 = 6;
	}
	function_9b385ca5();
	phalanx = RobotPhalanx;
	Initialize(phalanx, "phanalx_wedge", v_start, v_end, 2);
}

/*
	Name: function_ff2bafac
	Namespace: namespace_73fc8448
	Checksum: 0xF658412
	Offset: 0x6920
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_ff2bafac()
{
	self endon("death");
	self SetThreatBiasGroup("warlords");
	setthreatbias("heroes", "warlords", -9999);
	self namespace_27a45d31::function_f61c0df8("node_warlord_markets2_preferred", 1, 2);
}

/*
	Name: function_4fd7cfe6
	Namespace: namespace_73fc8448
	Checksum: 0x3EC3E05C
	Offset: 0x69A8
	Size: 0x49
	Parameters: 4
	Flags: None
*/
function function_4fd7cfe6(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_markets2_start_done");
	level notify("hash_3fe031c0");
}

/*
	Name: function_70da4f9b
	Namespace: namespace_73fc8448
	Checksum: 0x29EC344D
	Offset: 0x6A00
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_70da4f9b()
{
	self.var_2ddc2ef9 = 0;
	self.var_38c1e4c8 = 0;
	level.var_1675f12a.ignoreall = 1;
	level.var_1675f12a.ignoreme = 1;
	self cybercom::function_59965309("cybercom_hijack");
	self.script_noteworthy = "floor_collapse";
	level.var_1675f12a turret::set_on_target_angle(1, 0);
	self waittill("death");
	level flag::set("turret1_dead");
	var_dfcbd82b = GetNode("cover_hendricks_headpopper", "targetname");
	level.var_2fd26037 SetGoal(var_dfcbd82b, 1);
}

/*
	Name: function_9e873c98
	Namespace: namespace_73fc8448
	Checksum: 0x5776A114
	Offset: 0x6B18
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_9e873c98()
{
	self waittill("death");
	level flag::set("turret2_dead");
	savegame::function_5d2cdd99();
}


#using scripts\codescripts\struct;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\_vehicle_platform;
#using scripts\cp\cp_mi_cairo_lotus3_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_util;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_1af1994;

/*
	Name: function_c4ecc384
	Namespace: namespace_1af1994
	Checksum: 0x7D266C7F
	Offset: 0x1110
	Size: 0x401
	Parameters: 2
	Flags: None
*/
function function_c4ecc384(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	callback::on_spawned(&on_player_spawned);
	level.var_2fd26037 = util::function_740f8516("hendricks");
	skipto::teleport_ai(str_objective);
	scene::init("cin_lot_09_01_pursuit_1st_switch_end");
	objectives::set("cp_level_lotus_go_to_tower_two");
	var_f23f965a = GetEnt("hack_panel_ms_cin", "targetname");
	var_f23f965a Hide();
	var_2a0a99e4 = GetEnt("tower_2_ascent_complete", "targetname");
	var_2a0a99e4 TriggerEnable(0);
	namespace_431cac9::function_69533bc9();
	spawner::add_spawn_function_group("team_3", "script_noteworthy", &function_b6e11e5d);
	trigger::use("trig_tower_2_ascent_start");
	level thread function_97e1c0b6();
	level thread function_eecc2d6();
	level thread function_afa41a25();
	load::function_a2995f22();
	exploder::exploder("fx_interior_ambient_falling_debris_tower2");
	function_a0ab59f();
	level thread namespace_3bad5a01::function_d641bfe3();
	level.var_2fd26037 thread function_2eed485d();
	level thread function_562d8d63();
	level thread function_b9f5176f();
	level thread function_a82e3c9a();
	level thread function_24e69186();
	level thread function_25e58e03();
	function_1d0cebf2();
	var_306e8533 = GetEntArray("trig_charging_station", "targetname");
	Array::thread_all(var_306e8533, &function_96e4a36);
	level thread function_a14cccf5();
	function_a8e16f60();
	function_fda718ac();
	level waittill("hash_dd19bcbe");
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	var_2a0a99e4 TriggerEnable(1);
	var_c960aa14 = GetEntArray("t2ascent_ms_panel_end_skipto", "targetname");
	var_2a0a99e4 hacking::function_68df65d8(1, &"cp_level_lotus_hack_console", &"CP_MI_CAIRO_LOTUS_HACK_DOOR_CONSOLE", &function_1fd00721, var_c960aa14);
	level notify("hash_3369554");
}

/*
	Name: on_player_spawned
	Namespace: namespace_1af1994
	Checksum: 0xA965EB30
	Offset: 0x1520
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	self.var_4948fbce = undefined;
	self thread function_59b06ed6();
}

/*
	Name: function_59b06ed6
	Namespace: namespace_1af1994
	Checksum: 0x78A8B82A
	Offset: 0x1550
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_59b06ed6()
{
	self endon("hash_c276f97f");
	self endon("death");
	self endon("disconnect");
	var_9dda0dc8 = GetEnt("filter_danger_trigger", "targetname");
	while(1)
	{
		if(self istouching(var_9dda0dc8))
		{
			if(!isdefined(self.var_4948fbce) || !self.var_4948fbce)
			{
				self thread hazard::function_ccddb105("filter", 1, 999999, 1);
				self.var_4948fbce = 1;
			}
		}
		else
		{
			self thread hazard::function_60455f28("filter");
			self.var_4948fbce = undefined;
		}
		wait(1);
	}
}

/*
	Name: function_1fd00721
	Namespace: namespace_1af1994
	Checksum: 0xB4BF46EB
	Offset: 0x1660
	Size: 0x313
	Parameters: 1
	Flags: None
*/
function function_1fd00721(e_player)
{
	self gameobjects::disable_object();
	var_43f7b899 = GetEnt("atrium_mobile_shop_door1", "script_noteworthy");
	var_69fa3302 = GetEnt("atrium_mobile_shop_door2", "script_noteworthy");
	var_43f7b899 thread function_d413b369(59);
	var_69fa3302 thread function_d413b369(-59);
	if(isdefined(level.BZM_ForceAICleanup))
	{
		[[level.BZM_ForceAICleanup]]();
	}
	wait(0.5);
	var_494d8c62 = GetAITeamArray("team3");
	Array::run_all(var_494d8c62, &kill);
	level notify("hash_c276f97f");
	foreach(player in level.players)
	{
		player thread hazard::function_60455f28("filter");
		player.var_43a8d7c6 = undefined;
	}
	objectives::complete("cp_level_lotus_go_to_tower_two");
	objectives::complete("cp_level_lotus_go_to_mobile_shop");
	level scene::add_scene_func("cin_lot_11_tower2ascent_3rd_sh050", &function_9e4c698f, "done");
	var_f23f965a = GetEnt("hack_panel_ms_cin", "targetname");
	var_f23f965a show();
	var_4b8428ba = GetEnt("p_intro_glass_window", "targetname");
	var_4b8428ba delete();
	if(isdefined(level.BZM_LOTUSDialogue7Callback))
	{
		level thread [[level.BZM_LOTUSDialogue7Callback]]();
	}
	level thread namespace_3bad5a01::function_43ead72c();
	level scene::Play("cin_lot_11_tower2ascent_3rd_sh010", self.trigger.who);
}

/*
	Name: function_d413b369
	Namespace: namespace_1af1994
	Checksum: 0x34CB0D80
	Offset: 0x1980
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_d413b369(offset)
{
	var_bff1f526 = self.origin + (offset, 0, 0);
	self moveto(var_bff1f526, 0.35);
}

/*
	Name: function_9e4c698f
	Namespace: namespace_1af1994
	Checksum: 0x78B31D2
	Offset: 0x19D8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_9e4c698f(a_ents)
{
	skipto::function_be8adfb8("tower_2_ascent");
}

/*
	Name: function_562d8d63
	Namespace: namespace_1af1994
	Checksum: 0x4140E1E9
	Offset: 0x1A08
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_562d8d63()
{
	trigger::wait_till("trig_stairs_breadcrumb");
	objectives::breadcrumb("trig_breadcrumb_t2a_stairs");
	trigger::wait_till("trig_t2a_breadcrumb");
	objectives::breadcrumb("trig_breadcrumb_tower_2_ascent");
	level notify("hash_dd19bcbe");
}

/*
	Name: function_97e1c0b6
	Namespace: namespace_1af1994
	Checksum: 0xE56EEFC1
	Offset: 0x1A88
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_97e1c0b6()
{
	level endon("hash_a25dbbd2");
	battlechatter::function_d9f49fba(0);
	level waittill("hash_cb42bb2");
	level dialog::function_13b3b16a("plyr_hendricks_you_sti_0");
	level.var_2fd26037 dialog::say("hend_i_m_still_here_what_0");
	level waittill("hash_d4b39ff7");
	level notify("hash_794bb7a8");
	level dialog::function_13b3b16a("plyr_where_is_he_kane_0");
	level dialog::remote("kane_got_him_in_a_mobil_0");
	objectives::complete("cp_level_lotus_go_to_tower_two");
	objectives::set("cp_level_lotus_go_to_mobile_shop");
	flag::wait_till("spawn_pods_01_activate");
	level thread function_1d5b90d6();
	trigger::wait_till("trig_t2a_wasps", undefined, undefined, 0);
	savegame::function_5d2cdd99();
	wait(3);
}

/*
	Name: function_1d5b90d6
	Namespace: namespace_1af1994
	Checksum: 0xDFF26A6C
	Offset: 0x1BF0
	Size: 0x143
	Parameters: 0
	Flags: None
*/
function function_1d5b90d6()
{
	level dialog::function_13b3b16a("plyr_where_we_going_kane_1");
	level dialog::remote("tayr_up_0");
	level.var_2fd26037 dialog::say("hend_john_listen_to_me_0");
	level dialog::remote("tayr_it_can_t_be_stopped_0");
	level.var_2fd26037 dialog::say("hend_you_go_down_this_pat_0");
	level dialog::remote("tayr_you_don_t_want_to_do_0");
	level dialog::function_13b3b16a("plyr_don_t_listen_to_him_0");
	level.var_2fd26037 dialog::say("hend_you_re_fucking_psych_0");
	level dialog::remote("tayr_we_re_all_being_used_0");
	level dialog::remote("tayr_this_time_around_s_0");
}

/*
	Name: function_b6e11e5d
	Namespace: namespace_1af1994
	Checksum: 0x5036FCAB
	Offset: 0x1D40
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_b6e11e5d()
{
	self.team = "team3";
}

/*
	Name: function_a0ab59f
	Namespace: namespace_1af1994
	Checksum: 0x1A149264
	Offset: 0x1D60
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_a0ab59f()
{
	if(isdefined(level.BZM_LOTUSDialogue6Callback))
	{
		level thread [[level.BZM_LOTUSDialogue6Callback]]();
	}
	scene::Play("cin_lot_09_01_pursuit_1st_switch_end");
	util::function_93831e79("tower_2_ascent");
	level notify("hash_cb42bb2");
}

/*
	Name: function_eecc2d6
	Namespace: namespace_1af1994
	Checksum: 0x51FF0F9C
	Offset: 0x1DD0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_eecc2d6()
{
	level waittill("hash_e6b6da78");
	level thread scene::Play("p7_fxanim_cp_lotus_hall_debris_01_bundle");
	trigger::wait_till("trig_civ_crawl");
	level thread scene::Play("p7_fxanim_cp_lotus_hall_debris_02_bundle");
	level waittill("hash_c2e0f4f8");
	level clientfield::set("t2a_paper_burst", 1);
}

/*
	Name: function_afa41a25
	Namespace: namespace_1af1994
	Checksum: 0xEFC92645
	Offset: 0x1E70
	Size: 0x2B3
	Parameters: 0
	Flags: None
*/
function function_afa41a25()
{
	var_f19e787 = spawner::simple_spawn_single("civ_lotus");
	var_f19e787 ai::set_ignoreme(1);
	var_f79b3b69 = struct::get("sb_civ_choking_1");
	var_f79b3b69 thread scene::skipto_end("cin_gen_wounded_vign_choking03", var_f19e787, undefined, 0.5);
	function_be24fb87("sb_civ_choking_t2ascent_entry", "cin_gen_wounded_vign_choking01");
	trigger::wait_till("trig_civ_crawl");
	function_be24fb87("sb_civ_choking_2", "cin_gen_wounded_vign_choking01");
	function_53775619("sb_soldier_choking_pair_01", "cin_gen_wounded_vign_choking_pair");
	trigger::wait_till("trig_t2a_breadcrumb");
	function_be24fb87("sb_civ_choking_3", "cin_gen_wounded_vign_choking02");
	function_e478d8aa("sb_soldier_random_death_1", "cin_gen_wounded_last_stand_guy01");
	function_e478d8aa("sb_soldier_random_death_2", "cin_gen_wounded_last_stand_guy03");
	trigger::wait_till("intro_area_exit");
	function_be24fb87("sb_civ_choking_4", "cin_gen_wounded_vign_choking01");
	function_e478d8aa("sb_soldier_random_death_3", "cin_gen_wounded_vign_choking02");
	trigger::wait_till("trig_sb_civ_choking_5", "script_noteworthy");
	function_be24fb87("sb_civ_choking_5", "cin_gen_wounded_vign_choking02");
	function_e478d8aa("sb_soldier_random_death_4", "cin_gen_wounded_last_stand_guy02");
	trigger::wait_till("trig_t2a_wasps");
	function_be24fb87("sb_civ_choking_6", "cin_gen_wounded_vign_choking03");
	function_e478d8aa("sb_soldier_random_death_5", "cin_gen_wounded_last_stand_guy01");
	function_e478d8aa("sb_soldier_random_death_6", "cin_gen_wounded_last_stand_guy02");
}

/*
	Name: function_be24fb87
	Namespace: namespace_1af1994
	Checksum: 0xFF6F67ED
	Offset: 0x2130
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_be24fb87(var_d83ebd04, str_anim)
{
	var_f19e787 = spawner::simple_spawn_single("civ_lotus");
	var_f19e787 ai::set_ignoreme(1);
	var_f79b3b69 = struct::get(var_d83ebd04);
	var_f79b3b69 thread scene::Play(str_anim, var_f19e787);
}

/*
	Name: function_e478d8aa
	Namespace: namespace_1af1994
	Checksum: 0xEF417349
	Offset: 0x21D0
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_e478d8aa(var_d83ebd04, str_anim)
{
	Selector = RandomInt(2);
	if(Selector == 0)
	{
		spawner = "soldier_assault_lotus";
	}
	else
	{
		spawner = "soldier_supp_lotus";
	}
	ai_soldier = spawner::simple_spawn_single(spawner);
	ai_soldier ai::set_ignoreme(1);
	ai_soldier ai::set_ignoreall(1);
	var_f79b3b69 = struct::get(var_d83ebd04);
	var_f79b3b69 thread scene::skipto_end(str_anim, ai_soldier);
}

/*
	Name: function_53775619
	Namespace: namespace_1af1994
	Checksum: 0xF30F1497
	Offset: 0x22D8
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_53775619(var_d83ebd04, str_anim)
{
	var_a98d2f05 = spawner::simple_spawn_single("soldier_assault_lotus");
	var_cf8fa96e = spawner::simple_spawn_single("soldier_supp_lotus");
	var_a98d2f05 ai::set_ignoreme(1);
	var_cf8fa96e ai::set_ignoreme(1);
	var_a98d2f05 ai::set_ignoreall(1);
	var_cf8fa96e ai::set_ignoreall(1);
	var_f096c1f7 = [];
	var_f096c1f7[var_f096c1f7.size] = var_a98d2f05;
	var_f096c1f7[var_f096c1f7.size] = var_cf8fa96e;
	var_f79b3b69 = struct::get(var_d83ebd04);
	var_f79b3b69 thread scene::skipto_end(str_anim, var_f096c1f7);
}

/*
	Name: function_2eed485d
	Namespace: namespace_1af1994
	Checksum: 0x2141291A
	Offset: 0x2418
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_2eed485d()
{
	trigger::wait_till("trig_hendricks_cqb");
	self ai::set_behavior_attribute("cqb", 1);
	level flag::wait_till("rflag_t2_wall_break");
	self ai::set_behavior_attribute("cqb", 0);
	spawn_manager::function_72e3dd35("sm_wall_break");
	trigger::use("trig_stairs_breadcrumb", "targetname", undefined, 0);
}

/*
	Name: function_b9f5176f
	Namespace: namespace_1af1994
	Checksum: 0x96F930E6
	Offset: 0x24E0
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_b9f5176f()
{
	flag::wait_till("rflag_t2_wall_break");
	level thread scene::Play("p7_fxanim_cp_lotus_wall_hole_break_through_bundle");
	spawn_manager::enable("sm_wall_break");
	while(!spawn_manager::function_b02fc450("sm_wall_break"))
	{
		wait(0.05);
	}
	level notify("hash_d4b39ff7");
}

/*
	Name: function_a8e16f60
	Namespace: namespace_1af1994
	Checksum: 0x1F2DD1F1
	Offset: 0x2578
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_a8e16f60()
{
	flag::wait_till("rflag_t2_ceiling_break");
	level thread scene::Play("p7_fxanim_cp_lotus_t2_ceiling_collapse_bundle");
	spawn_manager::enable("sm_ceiling_hole_01");
}

/*
	Name: function_fda718ac
	Namespace: namespace_1af1994
	Checksum: 0x4D477A43
	Offset: 0x25D8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_fda718ac()
{
	trigger::wait_till("trig_robot_climb_and_leap");
	ai_leaper = spawner::simple_spawn_single("robot_climb_and_leap");
	s_align = struct::get("align_robot_climb_and_leap");
	s_align scene::Play("cin_lot_12_01_minigun_vign_invadetop_robot01", ai_leaper);
}

/*
	Name: function_25e58e03
	Namespace: namespace_1af1994
	Checksum: 0x943D774B
	Offset: 0x2670
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_25e58e03()
{
	trigger::wait_till("trig_ascent_init");
	level scene::init("cin_lot_11_tower2ascent_3rd_sh010");
}

/*
	Name: function_c276f97f
	Namespace: namespace_1af1994
	Checksum: 0x605892DD
	Offset: 0x26B8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_c276f97f(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_24e69186
	Namespace: namespace_1af1994
	Checksum: 0x1F73D9FF
	Offset: 0x26E8
	Size: 0x159
	Parameters: 0
	Flags: None
*/
function function_24e69186()
{
	trigger::wait_till("trig_crush_robots");
	spawner::simple_spawn("poor_crushed_bastards");
	level thread scene::Play("p7_fxanim_cp_lotus_mobile_shop_tower2_balcony_bundle");
	trigger::wait_till("trig_crush_robots_mobile_shop");
	savegame::function_fb150717();
	level thread scene::Play("p7_fxanim_cp_lotus_mobile_shop_tower2_bundle");
	level waittill("hash_ff32a68a");
	var_5b5accb8 = GetEntArray("poor_crushed_bastards_ai", "targetname");
	foreach(var_40e0db58 in var_5b5accb8)
	{
		var_40e0db58 kill();
	}
}

/*
	Name: function_a14cccf5
	Namespace: namespace_1af1994
	Checksum: 0x4426B4B7
	Offset: 0x2850
	Size: 0x26B
	Parameters: 0
	Flags: None
*/
function function_a14cccf5()
{
	level.var_62737b71 = [];
	function_9b385ca5();
	var_6516249 = var_fa0d90fd;
	init(var_6516249, "atrium01_mobile_shop");
	var_5c834145 = function_9bc3d62a();
	var_5c834145 SetCanDamage(0);
	var_a37d2f3f = GetEntArray("atrium01_mobile_shop", "groupname");
	foreach(var_d1651c in var_a37d2f3f)
	{
		teleport_spot = spawn("script_origin", var_d1651c.origin + VectorScale((0, 0, 1), 20));
		teleport_spot.angles = var_d1651c.angles;
		teleport_spot.targetname = var_d1651c.targetname + "_telly";
		teleport_spot SetInvisibleToAll();
		level.var_62737b71[var_d1651c.targetname + "_ai" + n_index] = teleport_spot;
		teleport_spot LinkTo(var_5c834145);
	}
	trigger::wait_till("atrium01_mobile_shop_move");
	spawn_manager::enable("sm_atrium01_mobile_shop_enemies");
	trigger::use("atrium01_mobile_shop_trigger");
	level waittill("hash_ac9b613c");
	level thread function_79518669();
}

/*
	Name: function_9c0a1fb0
	Namespace: namespace_1af1994
	Checksum: 0x3250454D
	Offset: 0x2AC8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9c0a1fb0()
{
	LinkTraversal(self);
}

/*
	Name: function_79518669
	Namespace: namespace_1af1994
	Checksum: 0x666EECA
	Offset: 0x2AF0
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function function_79518669()
{
	var_43f7b899 = GetEnt("atrium_mobile_shop_door1", "script_noteworthy");
	var_69fa3302 = GetEnt("atrium_mobile_shop_door2", "script_noteworthy");
	var_43f7b899 Unlink();
	var_69fa3302 Unlink();
	var_43f7b899 thread function_d413b369(59);
	var_69fa3302 thread function_d413b369(-59);
	Array::thread_all(GetNodeArray("atrium01_mobile_shop_traversal", "targetname"), &function_9c0a1fb0);
	var_9b973797 = GetEntArray("atrium01_mobile_shop_interior", "script_aigroup", 1);
	var_e328554a = GetEnt("v_mobile_shop_enemies_goal", "targetname");
	foreach(enemy in var_9b973797)
	{
		enemy ai::set_behavior_attribute("move_mode", "rambo");
		enemy.goalRadius = 16;
	}
	Array::wait_till(var_9b973797, "goal");
	foreach(enemy in var_9b973797)
	{
		if(isdefined(enemy) && isalive(enemy))
		{
			enemy ai::set_behavior_attribute("move_mode", "rambo");
			enemy.goalRadius = 1024;
			enemy SetGoal(var_e328554a);
		}
	}
	var_43f7b899 thread function_d413b369(-59);
	var_69fa3302 thread function_d413b369(59);
}

/*
	Name: function_350b14b4
	Namespace: namespace_1af1994
	Checksum: 0x5EC1FBDB
	Offset: 0x2E30
	Size: 0xDD
	Parameters: 0
	Flags: None
*/
function function_350b14b4()
{
	switch(self.script_noteworthy)
	{
		case "mobile_shop_shooter_spawners":
		{
			self SetGoal(GetNode(self.target, "targetname"));
			break;
		}
		case "mobile_shop_melee_spawners":
		{
			self ai::set_behavior_attribute("rogue_control", "forced_level_2");
			break;
		}
		case "mobile_shop_suicide_spawners":
		{
			self ai::set_behavior_attribute("rogue_control", "forced_level_3");
			break;
		}
		case default:
		{
			/#
				Assert("Dev Block strings are not supported");
			#/
			break;
		}
	}
}

/*
	Name: function_a652d076
	Namespace: namespace_1af1994
	Checksum: 0x91DA482E
	Offset: 0x2F18
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a652d076()
{
	self endon("trigger");
	self TriggerEnable(0);
	while(!isalive(level.var_2fd26037) || !level.var_2fd26037 istouching(self) && level.var_2fd26037.origin[2] > 16300)
	{
		wait(0.2);
	}
	self TriggerEnable(1);
}

/*
	Name: function_a82e3c9a
	Namespace: namespace_1af1994
	Checksum: 0x9EBE92A1
	Offset: 0x2FC8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a82e3c9a()
{
	level waittill("hash_794bb7a8");
	level thread LUI::play_movie("cp_lotus3_pip_towerjump", "pip");
}

/*
	Name: function_df51a037
	Namespace: namespace_1af1994
	Checksum: 0x99EC1590
	Offset: 0x3008
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_df51a037()
{
}

/*
	Name: function_283f872d
	Namespace: namespace_1af1994
	Checksum: 0x13D603F
	Offset: 0x3018
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_283f872d()
{
	function_9b385ca5();
	var_ca404144 = var_fa0d90fd;
	init(var_ca404144, "ms_prometheus");
	var_92d245e2 = util::function_740f8516("taylor");
	var_92d245e2 ai::set_ignoreall(1);
	var_92d245e2 ai::set_ignoreme(1);
	var_23abba9c = function_9bc3d62a();
	s_align = struct::get("align_rise");
	m_align = util::spawn_model("tag_origin", s_align.origin, s_align.angles);
	m_align.targetname = "tag_align_rise";
	m_align LinkTo(var_23abba9c);
	wait(10);
	m_align thread scene::Play("cin_lot_11_02_tower2_pip_jump_camera");
	m_align scene::Play("cin_lot_11_02_tower2_pip_jump", var_92d245e2);
	trigger::use("trig_ms_prometheus", "script_noteworthy");
	m_align thread scene::Play("cin_lot_11_03_tower2_vign_rise", var_92d245e2);
	level waittill("hash_c31669a4");
	var_92d245e2 delete();
}

/*
	Name: function_1d0cebf2
	Namespace: namespace_1af1994
	Checksum: 0x108282D3
	Offset: 0x3210
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_1d0cebf2()
{
	level.var_54a1e80 = 0;
	level.var_63a2bc2d = 1;
	scene::add_scene_func("cin_lotus_charging_station_awaken_robot_static", &function_524683e3, "init");
}

/*
	Name: function_96e4a36
	Namespace: namespace_1af1994
	Checksum: 0x719223AF
	Offset: 0x3268
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_96e4a36()
{
	self waittill("trigger");
	var_336f0a7e = struct::get_array(self.target);
	var_336f0a7e = Array::randomize(var_336f0a7e);
	var_5a3059c5 = function_d7b7baa9(var_336f0a7e);
	var_336f0a7e = Array::exclude(var_336f0a7e, var_5a3059c5);
	var_8046f3a7 = function_c0ff2395();
	b_active = 1;
	for(i = 0; i < var_336f0a7e.size; i++)
	{
		if(i >= var_8046f3a7)
		{
			b_active = 0;
		}
		var_336f0a7e[i] thread function_de86d341(b_active);
	}
}

/*
	Name: function_c0ff2395
	Namespace: namespace_1af1994
	Checksum: 0x65480B22
	Offset: 0x3398
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_c0ff2395()
{
	switch(level.players.size)
	{
		case 1:
		{
			var_d3fe3965 = 4;
			break;
		}
		case 2:
		{
			var_d3fe3965 = 6;
			break;
		}
		case 3:
		{
			var_d3fe3965 = 7;
			break;
		}
		case 4:
		{
			var_d3fe3965 = 8;
			break;
		}
		case default:
		{
			break;
		}
	}
	return var_d3fe3965;
}

/*
	Name: function_d7b7baa9
	Namespace: namespace_1af1994
	Checksum: 0xDB1A8D42
	Offset: 0x3450
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_d7b7baa9(var_336f0a7e)
{
	var_99ca2a39 = 0;
	var_11b21d5 = [];
	foreach(var_a1d93799 in var_336f0a7e)
	{
		if(var_a1d93799.script_label === "ignore")
		{
			if(!isdefined(var_11b21d5))
			{
				var_11b21d5 = [];
			}
			else if(!IsArray(var_11b21d5))
			{
				var_11b21d5 = Array(var_11b21d5);
			}
			var_11b21d5[var_11b21d5.size] = var_a1d93799;
			var_a1d93799 function_b8c02ba3(var_99ca2a39);
			if(var_99ca2a39)
			{
				var_99ca2a39 = 0;
				continue;
			}
			var_99ca2a39 = 1;
		}
	}
	return var_11b21d5;
}

/*
	Name: function_b8c02ba3
	Namespace: namespace_1af1994
	Checksum: 0x5059BAAE
	Offset: 0x35A8
	Size: 0x14B
	Parameters: 1
	Flags: None
*/
function function_b8c02ba3(var_e572d9b)
{
	if(!isdefined(var_e572d9b))
	{
		var_e572d9b = 0;
	}
	if(!var_e572d9b)
	{
		self scene::init("cin_lotus_charging_station_awaken_robot_static");
	}
	s_door = struct::get(self.target);
	var_c638600 = util::spawn_model("p7_fxanim_cp_sgen_charging_station_doors_break_mod", s_door.origin, s_door.angles);
	var_38ae1670 = 0;
	if(var_e572d9b)
	{
		if(RandomInt(2))
		{
			var_38ae1670 = 1;
		}
	}
	if(var_38ae1670)
	{
		s_door scene::skipto_end("p7_fxanim_cp_sgen_charging_station_break_01_bundle", var_c638600);
	}
	else
	{
		s_door scene::init("p7_fxanim_cp_sgen_charging_station_break_01_bundle", var_c638600);
	}
	s_door.var_c638600 = var_c638600;
	return s_door;
}

/*
	Name: function_de86d341
	Namespace: namespace_1af1994
	Checksum: 0x3F2EDA7C
	Offset: 0x3700
	Size: 0x211
	Parameters: 1
	Flags: None
*/
function function_de86d341(b_active)
{
	s_door = self function_b8c02ba3();
	if(b_active)
	{
		if(isdefined(self.script_label))
		{
			trigger::wait_till(self.script_label);
		}
		else
		{
			wait(RandomFloatRange(0.05, 4.65));
		}
	}
	else if(level.var_63a2bc2d && level.players.size > 1)
	{
		level.var_63a2bc2d = 0;
		t_radius = spawn("trigger_radius", self.origin, 0, 128, 128);
		t_radius waittill("trigger");
	}
	else
	{
		level.var_63a2bc2d = 1;
		return;
	}
	str_anim = "cin_lotus_charging_station_awaken_robot_right";
	if(self.script_string == "left")
	{
		str_anim = "cin_lotus_charging_station_awaken_robot_left";
	}
	level.var_54a1e80++;
	str_spawner = "cs_robot_rusher";
	if(level.var_54a1e80 > 3)
	{
		level.var_54a1e80 = 0;
		str_spawner = "cs_robot_shooter";
	}
	var_f6c5842 = spawner::simple_spawn_single(str_spawner);
	self thread scene::Play(str_anim, var_f6c5842);
	var_f6c5842 waittill("breakGlass");
	s_door thread scene::Play("p7_fxanim_cp_sgen_charging_station_break_01_bundle", s_door.var_c638600);
	self notify("hash_2ffb0bc3");
}

/*
	Name: function_524683e3
	Namespace: namespace_1af1994
	Checksum: 0xD075C945
	Offset: 0x3920
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_524683e3(a_entities)
{
	self waittill("hash_2ffb0bc3");
	foreach(var_9544d7c1 in a_entities)
	{
		if(isdefined(var_9544d7c1))
		{
			var_9544d7c1 delete();
		}
	}
}

/*
	Name: function_7c30c579
	Namespace: namespace_1af1994
	Checksum: 0x68C208F6
	Offset: 0x39D8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_7c30c579()
{
	self endon("death");
	level endon("hash_c276f97f");
	var_dc7bd541 = GetEnt("hendricks_nag_position", "targetname");
	while(1)
	{
		dist_squared = 1000000;
		a_enemies = function_846256f4("axis");
		if(isdefined(a_enemies) && a_enemies.size > 0)
		{
			var_2e0763ad = ArrayGetClosest(self.origin, a_enemies);
			dist_squared = DistanceSquared(self.origin, var_2e0763ad.origin);
		}
		if(self istouching(var_dc7bd541) && dist_squared >= 562500)
		{
			self scene::Play("cin_gen_ambient_idle_nag", self);
		}
		else
		{
			wait(0.25);
		}
	}
}


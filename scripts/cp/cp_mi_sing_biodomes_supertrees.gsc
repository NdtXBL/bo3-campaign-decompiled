#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_biodomes_accolades;
#using scripts\cp\cp_mi_sing_biodomes_swamp;
#using scripts\cp\cp_mi_sing_biodomes_util;
#using scripts\cp\cp_mi_sing_biodomes2_sound;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_hunter;

#namespace namespace_1b0f1865;

/*
	Name: main
	Namespace: namespace_1b0f1865
	Checksum: 0x926215EB
	Offset: 0x1CC0
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function main()
{
	level thread function_fd35e580();
	level thread function_2387e4bd();
	level thread function_c85169ef();
	spawner::add_spawn_function_group("zipline_guys", "script_noteworthy", &function_cdb04f99);
	spawner::add_spawn_function_group("zipline_scene_guys", "script_noteworthy", &function_eb9e3e82);
	spawner::add_spawn_function_group("bridge1_runners", "script_noteworthy", &function_68f11e2b);
	spawner::add_spawn_function_group("finaltree_rpg_guys", "script_noteworthy", &function_d4fba74e);
	spawner::add_spawn_function_group("zipline_reinforcements", "script_noteworthy", &function_d79559c5);
	spawner::add_spawn_function_group("supertree_arsonists", "script_noteworthy", &function_5ac671e7);
	spawner::add_spawn_function_group("zipline_wasps", "script_noteworthy", &function_6e1246e9);
	var_6cfd4078 = GetEntArray("reached_finaltree_triggers", "script_noteworthy");
	Array::thread_all(var_6cfd4078, &function_5a80eb84);
	var_69535641 = GetEntArray("bridge_trigger_enter", "script_noteworthy");
	Array::thread_all(var_69535641, &function_8dba42a1);
	var_c23afe76 = GetEntArray("bridge2_transition_triggers", "script_noteworthy");
	Array::thread_all(var_c23afe76, &function_4331ad22);
	level.var_d582416e = GetWeapon("pistol_standard");
	level.var_8ffd4cdb = GetWeapon("pistol_fullauto");
	level.var_44a0465d = GetWeapon("pistol_burst");
	level.var_957c9ba0 = GetWeapon("hero_annihilator");
	level.var_17a1f194 = GetWeapon("pistol_standard_zipline");
	level.var_d397bc89 = GetWeapon("pistol_fullauto_zipline");
	level.var_80242247 = GetWeapon("pistol_burst_zipline");
	level.var_135a01e4 = GetWeapon("noweapon_zipline");
	level.var_ad139ea = GetWeapon("hero_annihilator_cp_zipline");
	setup_scenes();
}

/*
	Name: setup_scenes
	Namespace: namespace_1b0f1865
	Checksum: 0x6E9C0B51
	Offset: 0x2088
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function setup_scenes()
{
	scene::add_scene_func("cin_bio_13_03_treefight_1st_zipline", &function_5068f9bd, "play");
}

/*
	Name: function_765faa8e
	Namespace: namespace_1b0f1865
	Checksum: 0xF70359B
	Offset: 0x20C8
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_765faa8e(str_objective, var_74cd64bc)
{
	load::function_73adcefc();
	namespace_27a45d31::function_ddb0eeea("objective_descend_init");
	namespace_27a45d31::function_bff1a867(str_objective);
	function_9e3608e3("fxanim_fish");
	load::function_a2995f22();
	var_a1a8c705 = level thread spawner::simple_spawn("sp_supertrees_tree1_explode", &function_1c60cd10);
	level clientfield::increment("supertree_fall_init", 1);
	level flag::set("start_slide");
	level thread function_65ac2d4e();
	var_be8bdabd = GetEnt("trig_objective_descend_complete", "targetname");
	level thread util::single_thread(var_be8bdabd, &function_62260259);
	level thread function_7254f23f();
	level thread namespace_76133733::function_ec357599();
	if(isdefined(level.BZM_BIODialogue5_1Callback))
	{
		level thread [[level.BZM_BIODialogue5_1Callback]]();
	}
	trigger::wait_till("trig_objective_descend_complete");
	level thread namespace_76133733::function_683d15e();
	skipto::function_be8adfb8("objective_descend");
}

/*
	Name: function_65ac2d4e
	Namespace: namespace_1b0f1865
	Checksum: 0xBD7531A
	Offset: 0x22D0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_65ac2d4e()
{
	scene::add_scene_func("cin_bio_12_05_descend_vign_planc", &function_20ff3f32, "done");
	level scene::init("cin_bio_12_05_descend_vign_planc");
	level flag::wait_till("first_player_spawned");
	level thread function_492debfc();
	level scene::Play("cin_bio_12_05_descend_vign_planc");
	wait(0.15);
	trigger::use("trig_move_toward_supertree", undefined, undefined, 0);
}

/*
	Name: function_7254f23f
	Namespace: namespace_1b0f1865
	Checksum: 0x5321297D
	Offset: 0x23B0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_7254f23f()
{
	level dialog::remote("kane_keep_going_just_get_0");
}

/*
	Name: function_62260259
	Namespace: namespace_1b0f1865
	Checksum: 0x22C33824
	Offset: 0x23E0
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_62260259()
{
	self endon("death");
	while(1)
	{
		self trigger::wait_till();
		player = self.who;
		self SetInvisibleToPlayer(player);
		player thread function_b76ad4cd();
	}
}

/*
	Name: function_b76ad4cd
	Namespace: namespace_1b0f1865
	Checksum: 0x81995FFB
	Offset: 0x2460
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b76ad4cd()
{
	self endon("death");
	self EnableInvulnerability();
	wait(2);
	self DisableInvulnerability();
}

/*
	Name: function_9aee8548
	Namespace: namespace_1b0f1865
	Checksum: 0x6F1B39A8
	Offset: 0x24A8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_9aee8548(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_descend_done");
}

/*
	Name: function_ac17866e
	Namespace: namespace_1b0f1865
	Checksum: 0xC6F5A9C8
	Offset: 0x24F0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_ac17866e()
{
	self ai::gun_remove();
	self ai::set_ignoreme(1);
	if(isdefined(self.target))
	{
		level thread scene::Play(self.target, self);
	}
	else
	{
		self kill();
	}
	self waittill("death");
	if(isdefined(self))
	{
		self StartRagdoll(1);
	}
}

/*
	Name: function_1c60cd10
	Namespace: namespace_1b0f1865
	Checksum: 0xA2FE8A23
	Offset: 0x25A0
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_1c60cd10()
{
	self endon("death");
	self.goalRadius = 4;
	self.goalHeight = 4;
	level waittill("hash_706115bc");
	var_d7f9ac76 = randomIntRange(1, 4);
	wait(RandomFloatRange(0.25, 0.75));
	switch(var_d7f9ac76)
	{
		case 1:
		{
			self thread scene::Play("cin_gen_xplode_death_1", self);
			break;
		}
		case 2:
		{
			self thread scene::Play("cin_gen_xplode_death_2", self);
			break;
		}
		case 3:
		{
			self thread scene::Play("cin_gen_xplode_death_3", self);
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_68f11e2b
	Namespace: namespace_1b0f1865
	Checksum: 0xF1F7CECE
	Offset: 0x26C0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_68f11e2b()
{
	self endon("death");
	nd_target = GetNode(self.target, "targetname");
	if(isdefined(nd_target))
	{
		self.ignoreSuppression = 1;
		self.grenadeawareness = 0;
		self ai::disable_pain();
		self PushPlayer(1);
		self SetGoal(nd_target);
		self waittill("goal");
		self ai::enable_pain();
		self.grenadeawareness = 1;
		self.ignoreSuppression = 0;
		self PushPlayer(0);
	}
}

/*
	Name: function_6e1246e9
	Namespace: namespace_1b0f1865
	Checksum: 0x8C82BA4E
	Offset: 0x27C0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_6e1246e9()
{
	self endon("death");
	self.health = 2;
	self thread function_9da1f0ff();
}

/*
	Name: function_9da1f0ff
	Namespace: namespace_1b0f1865
	Checksum: 0x79566D2F
	Offset: 0x2800
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_9da1f0ff()
{
	self endon("death");
	str_target = self.target;
	var_840ef1ce = str_target + "_move";
	var_a8f67e26 = GetEnt(var_840ef1ce, "targetname");
	var_ea32a33b = "trig_" + str_target;
	self trigger::wait_till(var_ea32a33b, "targetname");
	self SetGoal(var_a8f67e26);
}

/*
	Name: function_6ab1d04e
	Namespace: namespace_1b0f1865
	Checksum: 0x91C2DFCA
	Offset: 0x28C8
	Size: 0x45B
	Parameters: 2
	Flags: None
*/
function function_6ab1d04e(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_supertrees_init");
	namespace_769dc23f::function_e77dc7c0();
	namespace_769dc23f::function_e3f60acf();
	namespace_769dc23f::function_3f59ea45();
	namespace_769dc23f::function_765fa7e9();
	namespace_769dc23f::function_9ccc0413();
	level flag::init("tree2_and_tree3_pursuit_allowed");
	level flag::init("tree4_and_tree5_pursuit_allowed");
	if(var_74cd64bc)
	{
		namespace_27a45d31::function_bff1a867(str_objective);
		level flag::wait_till("all_players_connected");
		level clientfield::increment("supertree_fall_init", 1);
		scene::add_scene_func("cin_bio_12_05_descend_vign_planc", &function_20ff3f32, "done");
		level thread scene::skipto_end("cin_bio_12_05_descend_vign_planc", undefined, undefined, 0.5);
		level thread function_492debfc(var_74cd64bc);
		var_a1a8c705 = spawner::simple_spawn("sp_supertrees_tree1_explode", &function_1c60cd10);
		level thread namespace_76133733::function_683d15e();
		function_9e3608e3("fxanim_fish");
	}
	level thread function_9c95d588();
	level thread function_d6919efd();
	level thread function_bfd61da4();
	level thread function_e0cc746();
	level.var_2fd26037 thread function_9c25cf32();
	level thread function_6738338b();
	level thread function_d656e12f();
	level.var_2fd26037 thread function_805505ea();
	level.var_2fd26037 notify("stop_following");
	level.var_2fd26037 ClearForcedGoal();
	level.var_2fd26037.goalRadius = 200;
	level.var_2fd26037.goalHeight = 80;
	level.var_2fd26037 colors::enable();
	level.var_2fd26037.var_fd3ee5eb = "tree1";
	level thread function_482775a2(0);
	level thread function_7c3cd57();
	trigger::wait_till("trig_supertrees_breadcrumb3");
	level flag::set("player_reached_top_finaltree");
	level waittill("hash_449ba453");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree1_enemy1");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree1_enemy2");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree3_enemy1");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree4_enemy1");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_tree5_enemy1");
	namespace_27a45d31::function_1c1462ee("sm_supertrees_finaltree_enemy1");
	level skipto::function_be8adfb8("objective_supertrees");
}

/*
	Name: function_20ff3f32
	Namespace: namespace_1b0f1865
	Checksum: 0xA74C356B
	Offset: 0x2D30
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_20ff3f32(var_8a818774)
{
	level flag::set("supertrees_intro_done");
}

/*
	Name: function_492debfc
	Namespace: namespace_1b0f1865
	Checksum: 0x988FA4FA
	Offset: 0x2D68
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_492debfc(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	battlechatter::function_d9f49fba(0);
	level flag::wait_till("supertrees_intro_done");
	level notify("hash_c8f7f782");
	level dialog::remote("kane_the_supertree_on_the_0");
	level.var_2fd26037 dialog::say("hend_copy_that_let_s_get_0");
	battlechatter::function_d9f49fba(1);
	level flag::set("supertrees_intro_vo_complete");
}

/*
	Name: function_9c95d588
	Namespace: namespace_1b0f1865
	Checksum: 0xB893423E
	Offset: 0x2E48
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_9c95d588()
{
	level waittill("hash_c8f7f782");
	var_3ecaa61 = struct::get("s_objective_treefinal", "targetname");
	objectives::set("cp_level_biodomes_supertrees_treefinal", var_3ecaa61);
	level flag::wait_till("player_ziplines_up_last_tree");
	level thread namespace_76133733::function_fcea1d9(3);
	objectives::complete("cp_level_biodomes_supertrees_treefinal");
}

/*
	Name: function_d6919efd
	Namespace: namespace_1b0f1865
	Checksum: 0x9FD7A6A0
	Offset: 0x2F00
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_d6919efd()
{
	var_f652bfac = 11;
	var_2f184298 = level util::waittill_any_return("player_landed_on_tree2", "player_landed_on_tree3");
	level function_cc1f04a7(var_2f184298, var_f652bfac);
	savegame::function_5d2cdd99();
	var_2f184298 = level util::waittill_any_return("player_landed_on_tree4", "player_crossed_to_tree4", "player_landed_on_tree5");
	if(var_2f184298 == "player_crossed_to_tree4")
	{
		savegame::function_5d2cdd99();
	}
	else
	{
		level function_cc1f04a7(var_2f184298, var_f652bfac);
		savegame::function_5d2cdd99();
	}
	level util::waittill_any("player_landed_on_treefinal");
	savegame::function_5d2cdd99();
}

/*
	Name: function_cc1f04a7
	Namespace: namespace_1b0f1865
	Checksum: 0x7E9ACE80
	Offset: 0x3038
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_cc1f04a7(var_3095dc45, n_timeout)
{
	level flag::delay_set(7, "tree2_and_tree3_pursuit_allowed");
	var_aac0e4ef = function_52b6f57a(var_3095dc45);
	var_e4b1b0d6 = "vol_" + var_3095dc45;
	start_time = GetTime();
	var_a4854031 = 1;
	while(var_a4854031)
	{
		current_time = GetTime();
		time_in_seconds = current_time - start_time / 1000;
		if(time_in_seconds >= n_timeout)
		{
			break;
		}
		var_a4854031 = function_a4603364(var_e4b1b0d6, var_aac0e4ef);
		wait(0.25);
	}
}

/*
	Name: function_a4603364
	Namespace: namespace_1b0f1865
	Checksum: 0x690E5888
	Offset: 0x3148
	Size: 0x14D
	Parameters: 2
	Flags: None
*/
function function_a4603364(var_e4b1b0d6, var_aac0e4ef)
{
	var_26884bd1 = GetEnt(var_e4b1b0d6, "targetname");
	a_ai_enemies = GetAITeamArray("axis");
	foreach(ai_enemy in a_ai_enemies)
	{
		if(ai_enemy istouching(var_26884bd1))
		{
			return 1;
			continue;
		}
		if(isalive(ai_enemy) && ai_enemy.archetype === "hunter")
		{
			if(ai_enemy.var_aac0e4ef === var_aac0e4ef)
			{
				return 1;
			}
		}
	}
	return 0;
}

/*
	Name: function_bfd61da4
	Namespace: namespace_1b0f1865
	Checksum: 0x15BBDC57
	Offset: 0x32A0
	Size: 0x279
	Parameters: 0
	Flags: None
*/
function function_bfd61da4()
{
	trigger::wait_till("trig_supertrees_hunter_flyby1");
	spawn_manager::enable("sm_supertrees_finaltree_rpg");
	spawn_manager::enable("sm_supertrees_finaltree_reinforcements");
	trigger::wait_till("trig_finaltree_hendricks_zipline_go");
	spawn_manager::kill("sm_supertrees_finaltree_rpg");
	spawn_manager::kill("sm_supertrees_finaltree_reinforcements");
	var_df90cda = function_846256f4("axis");
	foreach(ai in var_df90cda)
	{
		if(ai.var_fd3ee5eb === "treefinal" && !ai.var_23304c9e && ai.targetname != "sp_supertrees_finaltree_arsonists_ai")
		{
			foreach(player in level.activePlayers)
			{
				if(player.var_fd3ee5eb === "tree4" || player.var_fd3ee5eb === "tree5")
				{
					ai.script_string = player.var_fd3ee5eb;
					break;
					continue;
				}
				ai.script_string = player.var_fd3ee5eb;
			}
			ai notify("hash_f3069794");
			ai thread function_76e355e1();
		}
	}
}

/*
	Name: function_d4fba74e
	Namespace: namespace_1b0f1865
	Checksum: 0xF9135435
	Offset: 0x3528
	Size: 0x337
	Parameters: 0
	Flags: None
*/
function function_d4fba74e()
{
	self endon("death");
	level endon("hash_52434ccd");
	level endon("hash_75a4526b");
	self.var_fd3ee5eb = "treefinal";
	nd_dest = GetNode(self.target, "targetname");
	if(isdefined(nd_dest))
	{
		self SetGoal(nd_dest, 1);
		self waittill("goal");
	}
	self.accuracy = 0.1;
	var_e6e6dfc8 = struct::get_array("s_finaltree_fake_rockets", "targetname");
	while(1)
	{
		e_closest_player = ArrayGetClosest(self.origin, level.activePlayers);
		if(isdefined(e_closest_player))
		{
			var_bdb1a817 = Array::random(var_e6e6dfc8);
			var_5e92b8ab = GetWeapon("smaw");
			var_8a86412d = 0;
			foreach(player in level.activePlayers)
			{
				if(player util::is_player_looking_at(var_bdb1a817.origin, 0.9, 1, player))
				{
					var_8a86412d = 1;
					break;
				}
			}
			n_dist = Distance2DSquared(e_closest_player.origin, self.origin);
			if(n_dist > self.engageMaxDist * self.engageMaxDist && !var_8a86412d)
			{
				MagicBullet(var_5e92b8ab, var_bdb1a817.origin, e_closest_player.origin, self, e_closest_player, (400, 400, 200));
			}
			else
			{
				self thread ai::shoot_at_target("normal", e_closest_player, undefined);
			}
			if(e_closest_player.var_fd3ee5eb === "tree4" || e_closest_player.var_fd3ee5eb === "tree5")
			{
				break;
			}
		}
		wait(5);
	}
	self.accuracy = 1;
}

/*
	Name: function_d79559c5
	Namespace: namespace_1b0f1865
	Checksum: 0x8FC6FBAF
	Offset: 0x3868
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_d79559c5()
{
	self endon("death");
	level endon("hash_52434ccd");
	level endon("hash_75a4526b");
	if(isdefined(self.script_label))
	{
		self.var_fd3ee5eb = self.script_label;
	}
	else
	{
		self.var_fd3ee5eb = "treefinal";
	}
	wait(randomIntRange(1, 4));
	self function_76e355e1();
}

/*
	Name: function_5ac671e7
	Namespace: namespace_1b0f1865
	Checksum: 0x966D14B3
	Offset: 0x3900
	Size: 0x1C7
	Parameters: 0
	Flags: None
*/
function function_5ac671e7()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self.goalRadius = 10;
	if(isdefined(self.script_label))
	{
		self.var_fd3ee5eb = self.script_label;
	}
	else
	{
		self.var_fd3ee5eb = "treefinal";
	}
	self waittill("goal");
	e_align = util::spawn_model("tag_origin", self.origin, self.angles);
	var_9ef7554b = util::spawn_model("p7_container_medical_02", self.origin, self.angles);
	self thread function_e7da495a(var_9ef7554b, e_align);
	if(math::cointoss())
	{
		e_align scene::Play("cin_bio_13_03_treefight_vign_gas_pour_a", Array(self, var_9ef7554b));
	}
	else
	{
		e_align scene::Play("cin_bio_13_03_treefight_vign_gas_pour_b", Array(self, var_9ef7554b));
	}
	e_align delete();
	self ai::set_ignoreall(0);
	self ClearForcedGoal();
	self.goalRadius = 200;
}

/*
	Name: function_e7da495a
	Namespace: namespace_1b0f1865
	Checksum: 0xC0B99135
	Offset: 0x3AD0
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_e7da495a(var_9ef7554b, e_align)
{
	self waittill("death");
	if(isdefined(var_9ef7554b))
	{
		var_9ef7554b delete();
	}
	if(isdefined(e_align))
	{
		e_align delete();
	}
}

/*
	Name: function_76e355e1
	Namespace: namespace_1b0f1865
	Checksum: 0xCC90B14
	Offset: 0x3B40
	Size: 0x1AD
	Parameters: 0
	Flags: None
*/
function function_76e355e1()
{
	self endon("death");
	var_e3325966 = struct::get_array(self.var_fd3ee5eb, "script_label");
	var_e3325966 = Array::randomize(var_e3325966);
	foreach(var_e60b519d in var_e3325966)
	{
		if(isdefined(self.script_string))
		{
			if(isdefined(var_e60b519d.target))
			{
				var_daa592e9 = struct::get(var_e60b519d.target, "targetname");
			}
			else
			{
				continue;
			}
			if(var_daa592e9.script_label === self.script_string)
			{
				self.target = var_e60b519d.targetname;
				self function_cdb04f99();
				break;
			}
			continue;
		}
		if(isdefined(var_e60b519d.target))
		{
			self.target = var_e60b519d.targetname;
			self function_cdb04f99();
			break;
		}
	}
}

/*
	Name: function_4331ad22
	Namespace: namespace_1b0f1865
	Checksum: 0x6AB7A385
	Offset: 0x3CF8
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_4331ad22()
{
	self endon("death");
	level endon("hash_3a2c1be8");
	while(1)
	{
		self trigger::wait_till();
		if(self.targetname === "trig_supertrees_tree2_entered")
		{
			self.who.var_fd3ee5eb = "tree2";
		}
		else if(self.targetname === "trig_supertrees_tree4_entered")
		{
			self.who.var_fd3ee5eb = "tree4";
		}
		if(isPlayer(self.who))
		{
			level notify("player_crossed_to_" + self.who.var_fd3ee5eb);
		}
		else if(IsActor(self.who))
		{
			self.who notify("landed_on_" + self.who.var_fd3ee5eb);
		}
	}
}

/*
	Name: function_7c3cd57
	Namespace: namespace_1b0f1865
	Checksum: 0x75EF32A8
	Offset: 0x3E18
	Size: 0x2EB
	Parameters: 0
	Flags: None
*/
function function_7c3cd57()
{
	trigger::wait_till("trigger_supertrees_tree1_start");
	level flag::set("supertrees_tree1_started");
	if(level flag::get("supertrees_intro_vo_complete"))
	{
		battlechatter::function_d9f49fba(0);
		level.var_2fd26037 thread dialog::say("hend_pick_a_path_and_move_0");
		a_flags = Array("tree1_interior", "tree1_exterior");
		level flag::wait_till_any(a_flags);
		if(level flag::get("tree1_interior"))
		{
			level dialog::function_13b3b16a("plyr_taking_interior_hen_0");
		}
		else
		{
			level dialog::function_13b3b16a("plyr_taking_exterior_hen_0");
		}
		level dialog::remote("kane_overwatch_shows_54i_0", 0.5);
		level.var_2fd26037 dialog::say("hend_that_leaning_tree_s_0");
		battlechatter::function_d9f49fba(1);
	}
	level flag::wait_till("supertrees_intro_vo_complete");
	var_9343c9b7 = GetEntArray("so_xiulan_supertree_loudspeaker", "targetname");
	wait(2);
	foreach(var_ea519684 in var_9343c9b7)
	{
		var_ea519684 thread dialog::say("xiul_immortals_hunt_dow_0", 0, 1);
	}
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_shit_i_d_kinda_ho_0", 2);
	battlechatter::function_d9f49fba(1);
	level thread function_f6a22b91();
}

/*
	Name: function_f6a22b91
	Namespace: namespace_1b0f1865
	Checksum: 0xE7698584
	Offset: 0x4110
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_f6a22b91()
{
	level endon("hash_75a4526b");
	wait(4);
	level flag::wait_till("supertrees_hunter_arrival");
	level.var_2fd26037 dialog::say("hend_hunter_grab_some_co_0", 1);
	level.var_2fd26037 dialog::say("hend_don_t_let_that_hunte_0");
	level waittill("hash_38124849");
	level.var_2fd26037 thread dialog::say("hend_hunter_s_targeting_u_0");
	level waittill("hash_82f2510e");
	level.var_2fd26037 dialog::say("hend_hunter_moving_on_our_0");
	level waittill("hash_82f2510e");
	level.var_2fd26037 dialog::say("hend_eyes_up_hunter_comi_0", 6);
	level waittill("hash_82f2510e");
	level.var_2fd26037 dialog::say("hend_we_gotta_get_that_hu_0", 6);
	level dialog::remote("kane_there_s_no_time_hen_0");
}

/*
	Name: function_a87139db
	Namespace: namespace_1b0f1865
	Checksum: 0x9BE3B30F
	Offset: 0x4278
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_a87139db()
{
	level endon("hash_f6312ac0");
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_kane_they_re_trying_0");
	var_2d3d7b7 = [];
	var_2d3d7b7[0] = "kane_negative_that_s_you_0";
	var_2d3d7b7[1] = "kane_negative_that_s_you_1";
	level dialog::remote(namespace_27a45d31::function_7ff50323(var_2d3d7b7));
	level dialog::function_13b3b16a("plyr_what_no_plan_d_0");
	level.var_2fd26037 dialog::say("hend_now_is_not_the_time_0");
	battlechatter::function_d9f49fba(1);
	level flag::wait_till("any_player_reached_bottom_finaltree");
	battlechatter::function_d9f49fba(0);
	level.var_2fd26037 dialog::say("hend_kane_get_us_outta_h_0", 2);
	level dialog::remote("kane_get_to_the_elevators_0");
	battlechatter::function_d9f49fba(1);
}

/*
	Name: function_e0cc746
	Namespace: namespace_1b0f1865
	Checksum: 0xA8F25753
	Offset: 0x4410
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e0cc746()
{
	var_7ec8ecac = spawner::simple_spawn_single("sp_enemy_bridge1_thrown");
	if(isalive(var_7ec8ecac))
	{
		var_7ec8ecac endon("death");
		trigger::wait_till("trig_supertrees_hendricks_throw_bridge1");
		trigger::use("trig_supertrees_color_tree1_1");
	}
}

/*
	Name: function_8dba42a1
	Namespace: namespace_1b0f1865
	Checksum: 0xF279408
	Offset: 0x4498
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_8dba42a1()
{
	while(isdefined(self))
	{
		self trigger::wait_till();
		self.who thread function_3cd19f27(self);
	}
}

/*
	Name: function_3cd19f27
	Namespace: namespace_1b0f1865
	Checksum: 0xE0F7D4E4
	Offset: 0x44E0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_3cd19f27(t_bridge)
{
	self endon("death");
	t_bridge SetInvisibleToPlayer(self);
	while(self istouching(t_bridge))
	{
		var_ae0d7318 = RandomFloatRange(1, 3);
		wait(var_ae0d7318);
	}
	t_bridge SetVisibleToPlayer(self);
}

/*
	Name: function_805505ea
	Namespace: namespace_1b0f1865
	Checksum: 0xA7D924C4
	Offset: 0x4580
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_805505ea()
{
	trigger::wait_till("trig_supertrees_hunter_flyby1");
	level thread scene::init("cin_bio_13_02_treefight_vign_ziplinekill");
	trigger::wait_till("trig_supertrees_tree2_enemy2_zipline");
	if(spawner::get_ai_group_count("zipline_takedown") > 0)
	{
		level scene::Play("cin_bio_13_02_treefight_vign_ziplinekill");
	}
	level flag::set("hendricks_played_supertree_takedown");
}

/*
	Name: function_eb9e3e82
	Namespace: namespace_1b0f1865
	Checksum: 0x33F5B044
	Offset: 0x4638
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_eb9e3e82()
{
	self waittill("death");
	if(level scene::is_playing("cin_bio_13_02_treefight_vign_ziplinekill"))
	{
		level scene::stop("cin_bio_13_02_treefight_vign_ziplinekill");
	}
}

/*
	Name: function_ff1892e
	Namespace: namespace_1b0f1865
	Checksum: 0x3E2ED012
	Offset: 0x4690
	Size: 0xBB
	Parameters: 3
	Flags: None
*/
function function_ff1892e(target, var_f3d436cd, var_8a5a20d0)
{
	self endon("hash_3a2c1be8");
	self endon("death");
	var_8dc33a9 = util::spawn_model("tag_origin", target.origin, target.angles);
	while(1)
	{
		self SetTurretTargetEnt(var_8dc33a9);
		self thread vehicle_ai::fire_for_time(var_f3d436cd);
		wait(var_f3d436cd + var_8a5a20d0);
	}
}

/*
	Name: function_6738338b
	Namespace: namespace_1b0f1865
	Checksum: 0x1F94B884
	Offset: 0x4758
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_6738338b()
{
	trigger::wait_till("trig_supertrees_finaltree_hunter");
	level thread clientfield::set("elevator_bottom_debris_play", 1);
}

/*
	Name: function_482775a2
	Namespace: namespace_1b0f1865
	Checksum: 0xB77D4266
	Offset: 0x47A0
	Size: 0x2D1
	Parameters: 1
	Flags: None
*/
function function_482775a2(var_31b91f3a)
{
	vh_vtol = spawner::simple_spawn_single("vtol_supertrees_crash");
	vh_vtol turret::enable(0, 0);
	level thread scene::init("p7_fxanim_cp_biodomes_super_tree_collapse_vtol_bundle", vh_vtol);
	level thread function_a2bdd835();
	level flag::wait_till("start_supertree_crash");
	function_ebb6378a(vh_vtol);
	level thread scene::Play("p7_fxanim_cp_biodomes_super_tree_collapse_vtol_bundle", vh_vtol);
	vh_vtol waittill("hash_fee929b6");
	playsoundatposition("wpn_rocket_explode", vh_vtol.origin);
	level clientfield::increment("supertree_fall_play", 1);
	level thread function_3fbe7731();
	level flag::set("supertree_fall_played");
	trigger::wait_till("trig_supertrees_hunter_flyby1");
	level flag::set("supertrees_hunter_arrival");
	spawn_manager::enable("sm_supertrees_hunter");
	spawn_manager::function_740ea7ff("sm_supertrees_hunter", 1);
	var_325ce29e = spawn_manager::get_ai("sm_supertrees_hunter");
	var_325ce29e[0] flag::init("hunter_sees_player");
	var_325ce29e[0] thread function_de17e19c("info_volume_hunter_patrol_tree1");
	foreach(player in level.players)
	{
		player thread function_5f8f3618(var_325ce29e[0]);
	}
}

/*
	Name: function_a2bdd835
	Namespace: namespace_1b0f1865
	Checksum: 0x6DCE51C7
	Offset: 0x4A80
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_a2bdd835()
{
	for(a_enemies = GetAIArray("supertrees_explode_enemies", "script_noteworthy"); a_enemies.size != 0;  = GetAIArray("supertrees_explode_enemies", "script_noteworthy"))
	{
		wait(0.05);
	}
	level flag::set("start_supertree_crash");
}

/*
	Name: function_ebb6378a
	Namespace: namespace_1b0f1865
	Checksum: 0xF81F49AE
	Offset: 0x4B10
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_ebb6378a(vh_vtol)
{
	var_8af78429 = GetWeapon("hunter_rocket_turret");
	for(i = 1; i <= 2; i++)
	{
		s_start = struct::get("missile_attack_vtol_pos_" + i);
		MagicBullet(var_8af78429, s_start.origin, vh_vtol.origin + VectorScale((0, 0, -1), 64));
		wait(0.15);
	}
	vh_vtol util::waittill_notify_or_timeout("damage", 3);
	playsoundatposition("wpn_rocket_explode", vh_vtol.origin);
}

/*
	Name: function_7d32eadb
	Namespace: namespace_1b0f1865
	Checksum: 0xB6D17693
	Offset: 0x4C40
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_7d32eadb()
{
	trigger::wait_till("trig_supertrees_finaltree_hunter");
	level thread function_6febb5e2();
}

/*
	Name: function_33cde320
	Namespace: namespace_1b0f1865
	Checksum: 0xCEF90922
	Offset: 0x4C80
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_33cde320()
{
	self waittill("death");
	level thread function_6febb5e2();
}

/*
	Name: function_6febb5e2
	Namespace: namespace_1b0f1865
	Checksum: 0x426EAF06
	Offset: 0x4CB0
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_6febb5e2()
{
	foreach(player in level.players)
	{
		if(isdefined(player GetLuiMenu("HunterPatrolSightingMenu")))
		{
			player CloseLUIMenu(player GetLuiMenu("HunterPatrolSightingMenu"));
		}
		player notify("hash_82f2510e");
	}
}

/*
	Name: function_de17e19c
	Namespace: namespace_1b0f1865
	Checksum: 0xF99A9602
	Offset: 0x4D90
	Size: 0x4DF
	Parameters: 1
	Flags: None
*/
function function_de17e19c(var_13e51ee2)
{
	self endon("death");
	self endon("hash_a2c295a");
	self.var_df1b2d54 = 0;
	a_goal_volumes = GetEntArray("hunter_supertree_patrol_volumes", "script_noteworthy");
	var_2ba4edf6 = GetEnt(var_13e51ee2, "targetname");
	/#
		Assert(isdefined(var_2ba4edf6), "Dev Block strings are not supported");
	#/
	self vehicle_ai::function_81b6f1ac();
	self SetVehGoalPos(var_2ba4edf6.origin, 1, 1);
	self.var_aac0e4ef = function_52b6f57a(var_2ba4edf6.targetname);
	self waittill("goal");
	while(1)
	{
		if(self flag::get("hunter_sees_player") && !level flag::get("player_reached_top_finaltree"))
		{
			self vehicle_ai::function_efe9815e("combat");
			self SetGoal(var_2ba4edf6, 1);
		}
		wait(randomIntRange(2, 5));
		if(self flag::get("hunter_sees_player") && !level flag::get("player_reached_top_finaltree"))
		{
			level notify("hash_38124849");
			level notify("hash_82f2510e");
			if(isdefined(self.attacker))
			{
				var_8f2206cb = self.attacker;
			}
			else if(isdefined(self.enemy))
			{
				var_8f2206cb = self.enemy;
			}
			else
			{
				var_8f2206cb = level.players[0];
			}
			var_2ba4edf6 = ArrayGetClosest(var_8f2206cb.origin, a_goal_volumes);
			/#
				Assert(isdefined(var_2ba4edf6), "Dev Block strings are not supported");
			#/
			if(self.health < self.healthdefault * 0.75 && self.var_df1b2d54 === 0)
			{
				self.var_df1b2d54++;
				self function_d2eb46b7(var_8f2206cb);
			}
			else if(self.health < self.healthdefault * 0.4 && self.var_df1b2d54 === 1)
			{
				self.var_df1b2d54++;
				self function_d2eb46b7(var_8f2206cb);
			}
		}
		else
		{
			var_2ba4edf6 = GetEnt(var_2ba4edf6.target, "targetname");
			/#
				Assert(isdefined(var_2ba4edf6), "Dev Block strings are not supported");
			#/
		}
		self ClearLookAtEnt();
		self vehicle_ai::function_81b6f1ac();
		self.var_aac0e4ef = function_52b6f57a(var_2ba4edf6.targetname);
		str_msg = "find_new_goal";
		while(str_msg !== "goal")
		{
			wait(1);
			var_1237bd50 = Distance2DSquared(self.origin, var_2ba4edf6.origin);
			if(var_1237bd50 > 16384)
			{
				self SetVehGoalPos(var_2ba4edf6.origin, 1, 1);
				str_msg = self util::waittill_any_timeout(6, "goal", "pathfind_failed");
			}
		}
	}
}

/*
	Name: function_52b6f57a
	Namespace: namespace_1b0f1865
	Checksum: 0x453D3968
	Offset: 0x5278
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_52b6f57a(str_name)
{
	var_a556a495 = StrTok(str_name, "_");
	var_aac0e4ef = var_a556a495[var_a556a495.size - 1];
	return var_aac0e4ef;
}

/*
	Name: function_d2eb46b7
	Namespace: namespace_1b0f1865
	Checksum: 0xF0AB21E5
	Offset: 0x52E0
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_d2eb46b7(var_8f2206cb)
{
	var_2ed198ee = GetEntArray("hunter_supertree_retreat_volumes", "script_noteworthy");
	if(var_2ed198ee.size)
	{
		var_ec273240 = function_f270b41d(var_8f2206cb.origin, var_2ed198ee);
		self ClearLookAtEnt();
		self vehicle_ai::function_81b6f1ac();
		self SetVehGoalPos(var_ec273240.origin, 1, 1);
		self waittill("goal");
		wait(randomIntRange(6, 12));
	}
}

/*
	Name: function_d656e12f
	Namespace: namespace_1b0f1865
	Checksum: 0x2AD16B7C
	Offset: 0x53D8
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_d656e12f()
{
	trigger::wait_till("trig_supertrees_hunter_flyby2");
	if(spawner::get_ai_group_sentient_count("supertrees_hunter_aigroup") == 0)
	{
		var_ce310ae3 = spawner::simple_spawn_single("sp_hunter_supertree_boat_fire");
		var_ce310ae3 flag::init("hunter_sees_player");
	}
	else
	{
		var_2e9e2605 = spawner::get_ai_group_ai("supertrees_hunter_aigroup");
		var_ce310ae3 = var_2e9e2605[0];
	}
	var_ce310ae3 endon("death");
	var_ce310ae3 notify("hash_a2c295a");
	level thread function_f2c36556();
	var_2ba4edf6 = GetEnt("info_volume_supertrees_hunter_patrol_end", "targetname");
	var_ce310ae3 vehicle_ai::function_81b6f1ac();
	var_ce310ae3 SetVehGoalPos(var_2ba4edf6.origin, 1, 1);
	var_ce310ae3 waittill("goal");
	wait(2);
	var_8c0e2909 = struct::get_array("s_hunter_supertree_boat_fire", "targetname");
	/#
		Assert(var_8c0e2909.size > 0, "Dev Block strings are not supported");
	#/
	var_8dc33a9 = util::spawn_model("tag_origin", var_8c0e2909[0].origin, var_8c0e2909[0].angles);
	var_ce310ae3 SetLookAtEnt(var_8dc33a9);
	var_ce310ae3 SetTurretTargetEnt(var_8dc33a9);
	wait(3);
	for(i = 0; i < 10; i++)
	{
		n_index = randomIntRange(0, var_8c0e2909.size);
		e_target = var_8c0e2909[n_index];
		var_ce310ae3 hunter::hunter_fire_one_missile(0, e_target.origin);
		wait(0.5);
	}
	wait(5);
	var_ce310ae3 ClearLookAtEnt();
	var_ce310ae3 ClearTurretTarget();
	var_8dc33a9 delete();
	var_ce310ae3 flag::set("hunter_sees_player");
	var_ce310ae3 thread function_de17e19c("info_volume_hunter_patrol_tree3");
}

/*
	Name: function_86a08a81
	Namespace: namespace_1b0f1865
	Checksum: 0xBEBCAF61
	Offset: 0x5748
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_86a08a81(str_objective, var_74cd64bc)
{
	/#
		namespace_27a45d31::function_bff1a867(str_objective);
		level.var_2fd26037.var_fd3ee5eb = "Dev Block strings are not supported";
		foreach(player in level.players)
		{
			player.var_fd3ee5eb = "Dev Block strings are not supported";
		}
		level thread function_8b1a5d48();
	#/
}

/*
	Name: function_6e6908bc
	Namespace: namespace_1b0f1865
	Checksum: 0xC61A1EA7
	Offset: 0x5830
	Size: 0xDB
	Parameters: 2
	Flags: None
*/
function function_6e6908bc(str_objective, var_74cd64bc)
{
	/#
		namespace_27a45d31::function_bff1a867(str_objective);
		level.var_2fd26037.var_fd3ee5eb = "Dev Block strings are not supported";
		foreach(player in level.players)
		{
			player.var_fd3ee5eb = "Dev Block strings are not supported";
		}
		level thread function_8b1a5d48();
	#/
}

/*
	Name: function_8b1a5d48
	Namespace: namespace_1b0f1865
	Checksum: 0x44143D35
	Offset: 0x5918
	Size: 0x19B
	Parameters: 0
	Flags: None
*/
function function_8b1a5d48()
{
	/#
		level thread function_a2b40033();
		level thread function_ca1d2a2d();
		level.var_2fd26037 thread function_9c25cf32();
		level thread function_6738338b();
		level flag::set("Dev Block strings are not supported");
		level flag::wait_till("Dev Block strings are not supported");
		var_3ecaa61 = struct::get("Dev Block strings are not supported", "Dev Block strings are not supported");
		objectives::set("Dev Block strings are not supported", var_3ecaa61);
		level thread function_9c95d588();
		level thread function_bfd61da4();
		level flag::set("Dev Block strings are not supported");
		var_a6557ae = GetEntArray("Dev Block strings are not supported", "Dev Block strings are not supported");
		var_a6557ae[0] trigger::use();
		level thread function_f2c36556();
	#/
}

/*
	Name: function_f2c36556
	Namespace: namespace_1b0f1865
	Checksum: 0x9729741E
	Offset: 0x5AC0
	Size: 0x36B
	Parameters: 0
	Flags: None
*/
function function_f2c36556()
{
	spawner::simple_spawn("sp_supertrees_rpg_boat_fire", &function_b0272bca);
	level thread function_b1436bdb();
	wait(1);
	if(isdefined(level.BZM_BIODialogue5_2Callback))
	{
		level thread [[level.BZM_BIODialogue5_2Callback]]();
	}
	exploder::exploder("fx_expl_fire_prehunter_supertree");
	wait(3);
	level notify("hash_75a4526b");
	exploder::exploder("fx_expl_fire_posthunter_supertree");
	exploder::exploder("fx_expl_fire_arrivetop_supertree");
	exploder::exploder("fx_expl_fire_lowerplatform_supertree");
	level thread function_a87139db();
	level waittill("hash_52434ccd");
	level clientfield::set("boat_explosion_play", 1);
	exploder::exploder("fx_expl_fire_zip_explode");
	wait(1);
	function_44ec4f8f();
	wait(1);
	function_44ec4f8f();
	var_65051b38 = trigger::wait_till("trig_final_zipline_for_one");
	level notify("hash_b0ab1d93");
	foreach(player in level.players)
	{
		if(isdefined(player.var_23304c9e) && player.var_23304c9e)
		{
			player function_f74e47aa();
		}
	}
	if(level.var_2fd26037 flag::get("hendricks_on_zipline"))
	{
		level.var_2fd26037 function_cac74662();
	}
	level thread scene::Play("cin_bio_14_01_treejump_vign_elevator_shaft_hendricks");
	level thread scene::Play("cin_bio_13_03_treefight_1st_zipline", var_65051b38.who);
	level waittill("hash_ecb1951e");
	level util::function_93831e79("dive_start_igc");
	if(level.var_2fd26037.origin[2] < 4572)
	{
		level.var_2fd26037 skipto::function_d9b1ee00(struct::get("dive_start_igc_hendricks"));
	}
	level notify("hash_449ba453");
	level thread function_f6312ac0();
}

/*
	Name: function_44ec4f8f
	Namespace: namespace_1b0f1865
	Checksum: 0x6354666D
	Offset: 0x5E38
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_44ec4f8f()
{
	var_beecfae5 = struct::get_array("final_zipline_explosion_location");
	foreach(struct in var_beecfae5)
	{
		PlayRumbleOnPosition("cp_biodomes_zipline_explosion_positional_rumble", struct.origin);
	}
}

/*
	Name: function_b1436bdb
	Namespace: namespace_1b0f1865
	Checksum: 0x951C8F50
	Offset: 0x5F00
	Size: 0x141
	Parameters: 0
	Flags: None
*/
function function_b1436bdb()
{
	var_5e92b8ab = GetWeapon("smaw");
	var_5e2b4bef = struct::get_array("s_final_supertree_fake_rocket_dests", "targetname");
	var_55ad5a1e = struct::get("s_final_supertree_fake_rocket_start", "targetname");
	if(isdefined(var_55ad5a1e) && isdefined(var_5e2b4bef))
	{
		foreach(dest in var_5e2b4bef)
		{
			MagicBullet(var_5e92b8ab, var_55ad5a1e.origin, dest.origin);
			wait(0.25);
		}
	}
}

/*
	Name: function_b0272bca
	Namespace: namespace_1b0f1865
	Checksum: 0x640FEDC4
	Offset: 0x6050
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_b0272bca()
{
	self endon("death");
	self ai::set_ignoreall(1);
	nd_dest = GetNode(self.target, "targetname");
	if(isdefined(nd_dest))
	{
		self SetGoal(nd_dest, 1);
		self waittill("goal");
	}
	var_2dcf8554 = struct::get_array("s_hunter_supertree_boat_fire", "targetname");
	var_b10a5b26 = ArrayGetClosest(self.origin, var_2dcf8554);
	if(isdefined(var_b10a5b26))
	{
		var_3929e8a2 = util::spawn_model("tag_origin", var_b10a5b26.origin, var_b10a5b26.angles);
		self thread function_f2bd3676();
		self ai::shoot_at_target("normal", var_3929e8a2, "tag_origin", 10, 10);
		var_3929e8a2 delete();
	}
	self ai::set_ignoreall(0);
}

/*
	Name: function_f2bd3676
	Namespace: namespace_1b0f1865
	Checksum: 0xDB88C8C2
	Offset: 0x61F0
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_f2bd3676()
{
	self endon("death");
	self endon("stop_shoot_at_target");
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(isdefined(player))
			{
				n_dist = Distance2DSquared(player.origin, self.origin);
				if(n_dist < 90000)
				{
					self ai::stop_shoot_at_target();
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_5068f9bd
	Namespace: namespace_1b0f1865
	Checksum: 0x14C99E50
	Offset: 0x62F8
	Size: 0x143
	Parameters: 1
	Flags: None
*/
function function_5068f9bd(a_ents)
{
	level waittill("hash_a668dfbe");
	player = a_ents["player 1"];
	player FX::Play("explosion_zipline_up", player.origin + VectorScale((0, 0, -1), 150), undefined, "elevator_fire_stops", 1);
	player clientfield::set_to_player("zipline_rumble_loop", 1);
	level waittill("hash_9b2c77c4");
	player clientfield::set_to_player("zipline_rumble_loop", 0);
	var_38a15f56 = GetEnt("fx_fire_elevator", "targetname");
	if(isdefined(var_38a15f56))
	{
		var_38a15f56 FX::Play("explosion_zipline_up", var_38a15f56.origin, undefined);
	}
	level thread clientfield::set("elevator_top_debris_play", 1);
}

/*
	Name: function_5f8f3618
	Namespace: namespace_1b0f1865
	Checksum: 0xB71765E5
	Offset: 0x6448
	Size: 0x2B7
	Parameters: 1
	Flags: None
*/
function function_5f8f3618(var_11976e03)
{
	self endon("disconnect");
	self endon("hash_82f2510e");
	self endon("disconnect");
	var_11976e03 endon("death");
	n_timer = 0;
	n_alpha = 1;
	alpha = 0;
	level thread function_7d32eadb();
	var_11976e03 thread function_33cde320();
	while(1)
	{
		distance_sq = Distance2DSquared(self.origin, var_11976e03.origin);
		if(var_11976e03 util::is_looking_at(self, 0.5, 1) && !self laststand::player_is_in_laststand() && distance_sq <= 6250000)
		{
			n_timer = n_timer + 0.05;
			if(n_timer > 1.25)
			{
				level notify("hash_38124849");
			}
			if(n_timer > 5)
			{
				n_timer = 5;
			}
			n_alpha = n_timer / 5;
		}
		else if(!var_11976e03 util::is_looking_at(self, 0.5, 1) || distance_sq > 6250000)
		{
			n_timer = n_timer - 0.05;
			if(n_timer < 0)
			{
				n_timer = 0;
			}
			n_alpha = n_timer / 5;
		}
		if(n_timer >= 5 || var_11976e03.health < var_11976e03.healthdefault * 0.9 || var_11976e03 flag::get("hunter_sees_player"))
		{
			n_timer = 0;
			var_11976e03 flag::set("hunter_sees_player");
			var_11976e03 ai::set_ignoreme(0);
			level thread function_6febb5e2();
		}
		wait(0.05);
	}
}

/*
	Name: function_3fbe7731
	Namespace: namespace_1b0f1865
	Checksum: 0x2BE6E227
	Offset: 0x6708
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_3fbe7731()
{
	var_b1e02cab = struct::get("hunter_target_tree1_1", "targetname");
	/#
		Assert(isdefined(var_b1e02cab), "Dev Block strings are not supported");
	#/
	PlayRumbleOnPosition("cp_biodomes_supertree_collapse_1_rumble", var_b1e02cab.origin);
	level notify("hash_706115bc");
	var_c889b49e = spawner::simple_spawn("sp_supertree_tree1_wounded", &function_ac17866e);
	level thread function_5cfa83d9("sp_supertrees_treecrash_ragdolls1", 2, (80, 15, 90), 0, 0.25);
	level thread function_5cfa83d9("sp_supertrees_treecrash_ragdolls2", 2, (80, 15, 100), 0, 0.25);
	wait(4);
	PlayRumbleOnPosition("cp_biodomes_supertree_collapse_2_rumble", var_b1e02cab.origin);
	wait(5);
	PlayRumbleOnPosition("cp_biodomes_supertree_collapse_3_rumble", var_b1e02cab.origin);
	if(!spawn_manager::is_enabled("sm_supertrees_wasp1"))
	{
		spawn_manager::enable("sm_supertrees_wasp1");
	}
}

/*
	Name: function_5cfa83d9
	Namespace: namespace_1b0f1865
	Checksum: 0xE6BC1882
	Offset: 0x68D8
	Size: 0x18D
	Parameters: 5
	Flags: None
*/
function function_5cfa83d9(str_spawner, var_ee8ca7aa, v_velocity, min_delay, max_delay)
{
	if(!isdefined(min_delay))
	{
		min_delay = 0;
	}
	if(!isdefined(max_delay))
	{
		max_delay = 0.1;
	}
	for(i = 0; i < var_ee8ca7aa; i++)
	{
		ai = spawner::simple_spawn_single(str_spawner);
		ai StartRagdoll();
		var_1d83c20f = randomIntRange(-5, 5);
		var_f78147a6 = randomIntRange(-5, 5);
		var_d17ecd3d = randomIntRange(-5, 5);
		v_velocity = v_velocity + (var_1d83c20f, var_f78147a6, var_d17ecd3d);
		ai LaunchRagdoll(v_velocity);
		ai kill();
		wait(RandomFloatRange(min_delay, max_delay));
	}
}

/*
	Name: function_29eec7b2
	Namespace: namespace_1b0f1865
	Checksum: 0xB1E845E2
	Offset: 0x6A70
	Size: 0x147
	Parameters: 5
	Flags: None
*/
function function_29eec7b2(var_effa55fa, start_index, end_index, min_delay, max_delay)
{
	if(!isdefined(min_delay))
	{
		min_delay = 1;
	}
	if(!isdefined(max_delay))
	{
		max_delay = 1;
	}
	for(i = start_index; i <= end_index; i++)
	{
		var_96f9f90c = struct::get(var_effa55fa + "_" + i, "targetname");
		/#
			Assert(isdefined(var_96f9f90c), "Dev Block strings are not supported" + var_effa55fa + "Dev Block strings are not supported" + i);
		#/
		self hunter::hunter_fire_one_missile(0, var_96f9f90c);
		wait_time = RandomFloatRange(min_delay, max_delay + 0.01);
		wait(wait_time);
	}
}

/*
	Name: function_5a80eb84
	Namespace: namespace_1b0f1865
	Checksum: 0x38E30017
	Offset: 0x6BC0
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_5a80eb84()
{
	while(isdefined(self) && self IsTriggerEnabled())
	{
		self trigger::wait_till();
		level flag::set("any_player_reached_bottom_finaltree");
		if(self.who == level.players[0])
		{
			level flag::set("player_reached_bottom_finaltree");
			var_6cfd4078 = GetEntArray("reached_finaltree_triggers", "script_noteworthy");
			foreach(trigger in var_6cfd4078)
			{
				trigger TriggerEnable(0);
			}
		}
	}
}

/*
	Name: function_9c25cf32
	Namespace: namespace_1b0f1865
	Checksum: 0x3DE81489
	Offset: 0x6D10
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_9c25cf32()
{
	self endon("hash_57ce910f");
	var_3dc3d229 = trigger::wait_till("trig_finaltree_hendricks_zipline_go");
	self flag::wait_till_clear("hendricks_on_zipline");
	if(self.var_fd3ee5eb == "tree3")
	{
		self.script_string = var_3dc3d229.script_label;
		self function_76e355e1();
	}
	else if(self.var_fd3ee5eb == "tree2")
	{
		self.var_fd3ee5eb = "tree4";
		self function_76e355e1();
	}
	else if(self.var_fd3ee5eb == "tree1")
	{
		if(!level flag::get("hendricks_played_supertree_takedown"))
		{
			level scene::stop("cin_bio_13_02_treefight_vign_ziplinekill");
		}
		self.script_string = "tree3";
		self function_76e355e1();
		self.script_string = var_3dc3d229.script_label;
		self function_76e355e1();
	}
	self.script_string = "treefinal";
	self function_76e355e1();
	level flag::set("hendricks_reached_finaltree");
	self colors::disable();
	self ClearForcedGoal();
	var_dfcbd82b = GetNode("hendricks_elevator_goal", "targetname");
	self SetGoal(var_dfcbd82b);
}

/*
	Name: function_657c0308
	Namespace: namespace_1b0f1865
	Checksum: 0x986226EA
	Offset: 0x6F58
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_657c0308(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_769dc23f::function_4b47f9f6();
	namespace_769dc23f::function_16509d1f();
	namespace_27a45d31::function_ddb0eeea("objective_supertrees_done");
}

/*
	Name: function_e83c544
	Namespace: namespace_1b0f1865
	Checksum: 0xAADF41E0
	Offset: 0x6FC0
	Size: 0x33B
	Parameters: 2
	Flags: None
*/
function function_e83c544(str_objective, var_74cd64bc)
{
	namespace_27a45d31::function_ddb0eeea("objective_dive_init");
	spawn_manager::kill("sm_supertrees_hunter");
	function_6ddd4fa4("fxanim_fish");
	level notify("hash_3a2c1be8");
	level thread function_a2b40033();
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_27a45d31::function_bff1a867(str_objective);
		objectives::complete("cp_level_biodomes_supertrees_treefinal");
		level flag::set("supertrees_hunter_arrival");
		level flag::set("player_reached_bottom_finaltree");
		level flag::set("player_reached_top_finaltree");
		level flag::set("any_player_reached_bottom_finaltree");
		level flag::set("hendricks_played_supertree_takedown");
		exploder::exploder("fx_expl_fire_prehunter_supertree");
		exploder::exploder("fx_expl_fire_arrivetop_supertree");
		level thread function_f6312ac0(var_74cd64bc);
		level clientfield::set("elevator_top_debris_play", 1);
		level clientfield::set("boat_explosion_play", 1);
		level thread namespace_76133733::function_973b77f9();
		load::function_a2995f22();
	}
	level.var_2fd26037 notify("hash_3a2c1be8");
	level.var_2fd26037 ai::set_behavior_attribute("sprint", 0);
	level.var_2fd26037 ai::set_ignoreall(0);
	level util::clientNotify("sndRamp");
	level thread function_ca1d2a2d();
	level thread namespace_a660d427::function_b52b6eac();
	Array::thread_all(level.players, &namespace_a660d427::function_39af75ef, "boats_go");
	level flag::wait_till("player_dive_done");
	level.var_2fd26037 ai::set_ignoreall(0);
	level skipto::function_be8adfb8("objective_dive");
}

/*
	Name: function_863b63b5
	Namespace: namespace_1b0f1865
	Checksum: 0xA4212BB
	Offset: 0x7308
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_863b63b5()
{
	level endon("hash_f6312ac0");
	wait(12);
	level.var_2fd26037 dialog::say("hend_we_re_dead_if_we_don_0");
	level notify("hash_b1e29472");
}

/*
	Name: function_f6312ac0
	Namespace: namespace_1b0f1865
	Checksum: 0xC5CA9F0
	Offset: 0x7358
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_f6312ac0(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	if(var_74cd64bc)
	{
		level flag::wait_till("first_player_spawned");
	}
	level thread scene::Play("cin_bio_14_01_treejump_vign_dive");
	wait(2);
	level notify("hash_3d6e28");
	if(isdefined(level.BZM_BIODialogue5_3Callback))
	{
		level thread [[level.BZM_BIODialogue5_3Callback]]();
	}
	var_c908f76f = struct::get("s_waypoint_supertree_jump");
	/#
		Assert(isdefined(var_c908f76f), "Dev Block strings are not supported");
	#/
	level objectives::set("cp_level_biodomes_jump_from_supertree", var_c908f76f);
	if(!level flag::get("start_hendricks_dive"))
	{
		level thread function_863b63b5();
		level flag::wait_till("start_hendricks_dive");
	}
	level.var_2fd26037 ai::set_ignoreall(1);
	level util::delay_notify(2, "top_of_supertree_explosion");
	level scene::Play("cin_bio_14_01_treejump_vign_dive_end");
	level.var_2fd26037 namespace_a660d427::function_dd9ded92();
}

/*
	Name: function_975cf43a
	Namespace: namespace_1b0f1865
	Checksum: 0x3BEC7891
	Offset: 0x7530
	Size: 0x5F
	Parameters: 4
	Flags: None
*/
function function_975cf43a(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	namespace_27a45d31::function_ddb0eeea("objective_dive_done");
	objectives::complete("cp_level_biodomes_jump_from_supertree");
	level.var_adcba170 = 1;
}

#namespace namespace_ba668242;

/*
	Name: function_9b385ca5
	Namespace: namespace_ba668242
	Checksum: 0xFE72B3B1
	Offset: 0x7598
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	self.var_58955f5c = GetEntArray("gate_tree_1a", "targetname");
	self.m_str_targetname = self.var_58955f5c[0].targetname;
	self.m_str_target = self.var_58955f5c[0].target;
	self.var_ceb54ef4 = 0.25;
	self.var_8d014670 = 0.25;
	self.var_6aa78718 = self.var_58955f5c[0].origin;
	self.var_bbe2e3a7 = self.var_58955f5c[1].origin;
	self.var_63199256 = self.var_58955f5c[0].angles;
	self.var_10ff592d = self.var_58955f5c[1].angles;
	self.var_c88d0ebd = self.var_58955f5c[0].angles;
	self.var_e6756120 = self.var_58955f5c[1].angles;
}

/*
	Name: function_5fba2032
	Namespace: namespace_ba668242
	Checksum: 0x99EC1590
	Offset: 0x76F0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

/*
	Name: init
	Namespace: namespace_ba668242
	Checksum: 0x46E4BACC
	Offset: 0x7700
	Size: 0x4F3
	Parameters: 1
	Flags: None
*/
function init(var_43ccc7b4)
{
	self.var_58955f5c = GetEntArray(var_43ccc7b4, "targetname");
	self.m_str_targetname = var_43ccc7b4;
	self.m_str_target = self.var_58955f5c[0].target;
	self.var_6aa78718 = self.var_58955f5c[0].origin;
	self.var_bbe2e3a7 = self.var_58955f5c[1].origin;
	self.var_c88d0ebd = self.var_58955f5c[0].angles;
	self.var_e6756120 = self.var_58955f5c[1].angles;
	if(self.m_str_targetname == "restaurant_gate_01")
	{
		self.var_63199256 = self.var_58955f5c[0].angles + (self.var_58955f5c[0].angles[0] + 14, self.var_58955f5c[0].angles[1] + -90, self.var_58955f5c[0].angles[2] + 0);
		self.var_10ff592d = self.var_58955f5c[1].angles + (self.var_58955f5c[1].angles[0] + -2, self.var_58955f5c[1].angles[1] + 90, self.var_58955f5c[1].angles[2] + -18);
	}
	else if(self.m_str_targetname == "restaurant_gate_02")
	{
		self.var_63199256 = self.var_58955f5c[0].angles + (self.var_58955f5c[0].angles[0] + 2, self.var_58955f5c[0].angles[1] + -90, self.var_58955f5c[0].angles[2] + -4);
		self.var_10ff592d = self.var_58955f5c[1].angles + (self.var_58955f5c[1].angles[0] + -8, self.var_58955f5c[1].angles[1] + 90, self.var_58955f5c[1].angles[2] + -5);
	}
	else
	{
		self.var_63199256 = self.var_58955f5c[0].angles + (self.var_58955f5c[0].angles[0], self.var_58955f5c[0].angles[1] + -90, self.var_58955f5c[0].angles[2]);
		self.var_10ff592d = self.var_58955f5c[1].angles + (self.var_58955f5c[1].angles[0], self.var_58955f5c[1].angles[1] + 90, self.var_58955f5c[1].angles[2]);
	}
	var_fcd3376c = 0;
	foreach(var_82e417eb in level.var_77a37a25)
	{
		if(self == function_cabbdf40())
		{
			var_fcd3376c = 1;
			break;
		}
	}
	if(!var_fcd3376c)
	{
		Array::add(level.var_77a37a25, self);
	}
}

/*
	Name: function_c3e1dff0
	Namespace: namespace_ba668242
	Checksum: 0x3DA306E3
	Offset: 0x7C00
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_c3e1dff0()
{
	self.var_58955f5c[0] RotateTo(self.var_63199256, self.var_ceb54ef4);
	self.var_58955f5c[1] RotateTo(self.var_10ff592d, self.var_ceb54ef4);
	playsoundatposition("evt_zipline_gate_open", self.var_6aa78718);
	wait(self.var_ceb54ef4);
}

/*
	Name: function_c0cdf2d2
	Namespace: namespace_ba668242
	Checksum: 0x99DE9C09
	Offset: 0x7C98
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_c0cdf2d2()
{
	self.var_58955f5c[0] RotateTo(self.var_c88d0ebd, self.var_8d014670);
	self.var_58955f5c[1] RotateTo(self.var_e6756120, self.var_8d014670);
	playsoundatposition("evt_zipline_gate_close", self.var_6aa78718);
	wait(self.var_8d014670);
}

/*
	Name: function_cabbdf40
	Namespace: namespace_ba668242
	Checksum: 0xA3AB4062
	Offset: 0x7D30
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_cabbdf40()
{
	return self.m_str_targetname;
}

/*
	Name: function_83f15319
	Namespace: namespace_ba668242
	Checksum: 0xBB5B4C5D
	Offset: 0x7D48
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_83f15319()
{
	return self.m_str_target;
}

#namespace namespace_1b0f1865;

/*
	Name: function_ba668242
	Namespace: namespace_1b0f1865
	Checksum: 0xFE743B14
	Offset: 0x7D60
	Size: 0x175
	Parameters: 0
	Flags: 6
*/
function private autoexec function_ba668242()
{
	classes.var_ba668242[0] = spawnstruct();
	classes.var_ba668242[0].__vtable[-2081336551] = &namespace_ba668242::function_83f15319;
	classes.var_ba668242[0].__vtable[-893657280] = &namespace_ba668242::function_cabbdf40;
	classes.var_ba668242[0].__vtable[-1060244782] = &namespace_ba668242::function_c0cdf2d2;
	classes.var_ba668242[0].__vtable[-1008607248] = &namespace_ba668242::function_c3e1dff0;
	classes.var_ba668242[0].__vtable[-1017222485] = &namespace_ba668242::init;
	classes.var_ba668242[0].__vtable[1606033458] = &namespace_ba668242::function_5fba2032;
	classes.var_ba668242[0].__vtable[-1690805083] = &namespace_ba668242::function_9b385ca5;
}

/*
	Name: function_c85169ef
	Namespace: namespace_1b0f1865
	Checksum: 0x9246CF95
	Offset: 0x7EE0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c85169ef()
{
	level.var_77a37a25 = [];
	var_1f0c83ec = GetEntArray("zipline_gates", "script_parameters");
	Array::thread_all(var_1f0c83ec, &function_b41f17f2);
}

/*
	Name: function_b41f17f2
	Namespace: namespace_1b0f1865
	Checksum: 0x2B95A6B8
	Offset: 0x7F50
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_b41f17f2()
{
	function_9b385ca5();
	var_1eb88afc = var_ba668242;
	init(var_1eb88afc);
}

/*
	Name: function_558d1745
	Namespace: namespace_1b0f1865
	Checksum: 0xC4D4E077
	Offset: 0x7F90
	Size: 0x1DF
	Parameters: 2
	Flags: None
*/
function function_558d1745()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_fd35e580
	Namespace: namespace_1b0f1865
	Checksum: 0x5A7F8FB6
	Offset: 0x8178
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fd35e580()
{
	var_9d26d41c = GetEntArray("zipline_trigger", "script_noteworthy");
	Array::thread_all(var_9d26d41c, &function_36934515);
}

/*
	Name: function_36934515
	Namespace: namespace_1b0f1865
	Checksum: 0x2E0B7C59
	Offset: 0x81D8
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_36934515()
{
	self endon("death");
	level flag::wait_till("all_players_connected");
	self.var_5356d2cc = util::function_14518e76(self, &"cp_prompt_zipline_biodomes_use", &"CP_MI_SING_BIODOMES_ZIPLINE_USE", &function_cbfdcddd);
	self.var_5356d2cc thread gameobjects::hide_icon_distance_and_los((1, 1, 1), 400, 0);
	s_start = struct::get(self.target, "targetname");
	/#
		Assert(isdefined(s_start), "Dev Block strings are not supported" + self.origin + "Dev Block strings are not supported");
	#/
	s_end = struct::get(s_start.target, "targetname");
	/#
		Assert(isdefined(s_end), "Dev Block strings are not supported" + s_start.origin + "Dev Block strings are not supported");
	#/
	while(1)
	{
		self waittill("hash_4032ce0f", player);
		player function_45f61c3c(self, s_start, s_end);
	}
}

/*
	Name: function_cbfdcddd
	Namespace: namespace_1b0f1865
	Checksum: 0x320EE68A
	Offset: 0x8378
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_cbfdcddd(player)
{
	self.trigger notify("hash_4032ce0f", player);
	if(isdefined(self.trigger.script_parameters))
	{
		if(self.trigger.script_parameters == "gate_tree_4b" || self.trigger.script_parameters == "gate_tree_5b")
		{
			level notify("hash_52434ccd");
		}
	}
}

/*
	Name: function_45f61c3c
	Namespace: namespace_1b0f1865
	Checksum: 0xAEA49B59
	Offset: 0x8400
	Size: 0x9D3
	Parameters: 3
	Flags: None
*/
function function_45f61c3c(trigger, s_start, s_end)
{
	self endon("death");
	self.var_23304c9e = 1;
	var_ad470f8c = util::spawn_model("tag_origin", self.origin, s_start.angles, 0, 0);
	self PlayerLinkToDelta(var_ad470f8c, undefined, 1, 20, 20, 15, 60);
	n_dist = Distance(s_start.origin, s_end.origin);
	n_time = n_dist / 400;
	self thread function_ace0977c();
	self DisableWeaponCycling();
	self disableOffhandWeapons();
	self AllowCrouch(0);
	self AllowProne(0);
	level notify("disable_cybercom", self, 1);
	var_ad470f8c playsoundtoplayer("evt_zipline_attach", self);
	var_b01e95a = util::spawn_player_clone(self);
	var_f4ce3e5 = util::spawn_model("wpn_t7_zipline_trolley_prop", var_b01e95a GetTagOrigin("tag_weapon_left"), var_b01e95a GetTagAngles("tag_weapon_left"));
	var_f4ce3e5 LinkTo(var_b01e95a, "tag_weapon_left");
	var_f4ce3e5 SetOwner(self);
	w_current = self.currentWeapon;
	var_9f2c3e1c = self function_1caa9276();
	var_1ca8dedf = util::spawn_model(var_9f2c3e1c.worldmodel, var_b01e95a GetTagOrigin("tag_weapon_right"), var_b01e95a GetTagAngles("tag_weapon_right"));
	var_1ca8dedf LinkTo(var_b01e95a, "tag_weapon_right");
	var_1ca8dedf SetOwner(self);
	if(var_9f2c3e1c === level.var_135a01e4)
	{
		self.var_42a705b8 = 0;
		self DisableWeapons();
		self setClientUIVisibilityFlag("weapon_hud_visible", 0);
	}
	var_b01e95a clientfield::set("clone_control", 1);
	var_f4ce3e5 clientfield::set("clone_control", 1);
	var_1ca8dedf clientfield::set("clone_control", 1);
	self ghost();
	self.var_fd3ee5eb = s_end.script_label;
	var_ad470f8c.origin = self.origin;
	var_ad470f8c.angles = self.angles;
	if(self.var_42a705b8)
	{
		var_b01e95a thread animation::Play("pb_pistol_zipline_enter", var_ad470f8c, "tag_origin");
	}
	else
	{
		var_b01e95a thread animation::Play("pb_zipline_enter", var_ad470f8c, "tag_origin");
	}
	var_ad470f8c moveto(s_start.origin, 0.25);
	var_ad470f8c RotateTo(s_start.angles, 0.25);
	var_ad470f8c waittill("movedone");
	self PlayRumbleOnEntity("cp_biodomes_zipline_attach_rumble");
	self thread function_558d1745(trigger, var_ad470f8c);
	if(self == level.players[0] && !level flag::get("player_reached_final_zipline"))
	{
		level.var_2fd26037 thread function_b5e8c4c0(s_start);
	}
	if(self.var_42a705b8)
	{
		var_b01e95a thread animation::Play("pb_pistol_zipline_loop", var_ad470f8c, "tag_origin");
	}
	else
	{
		var_b01e95a thread animation::Play("pb_zipline_loop", var_ad470f8c, "tag_origin");
	}
	self clientfield::set_to_player("zipline_speed_blur", 1);
	self clientfield::set_to_player("zipline_rumble_loop", 1);
	self PlayLoopSound("evt_zipline_move", 0.3);
	var_ad470f8c moveto(s_end.origin, n_time, 0, 0);
	var_ad470f8c waittill("movedone");
	self Unlink();
	v_forward = AnglesToForward(self.angles);
	self SetVelocity(v_forward * 300);
	self PlayRumbleOnEntity("cp_biodomes_zipline_dismount_rumble");
	self clientfield::set_to_player("zipline_rumble_loop", 0);
	self clientfield::set_to_player("zipline_speed_blur", 0);
	self StopLoopSound(0.5);
	v_on_navmesh = GetClosestPointOnNavMesh(var_ad470f8c.origin, 72, 48);
	if(isdefined(v_on_navmesh))
	{
		if(self.var_42a705b8)
		{
			var_b01e95a thread animation::Play("pb_pistol_zipline_exit", var_ad470f8c, "tag_origin");
		}
		else
		{
			var_b01e95a thread animation::Play("pb_zipline_exit", var_ad470f8c, "tag_origin");
		}
		var_ad470f8c moveto(v_on_navmesh, 0.25);
		var_ad470f8c waittill("movedone");
	}
	else
	{
		var_ccacea03 = GroundTrace(self.origin, self.origin + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
		var_ad470f8c moveto(var_ccacea03, 0.25);
	}
	self notify("hash_4d91a838");
	level notify("player_landed_on_" + self.var_fd3ee5eb);
	var_b01e95a clientfield::set("clone_control", 0);
	var_f4ce3e5 clientfield::set("clone_control", 0);
	var_1ca8dedf clientfield::set("clone_control", 0);
	var_ad470f8c delete();
	var_1ca8dedf delete();
	var_f4ce3e5 delete();
	self show();
	var_b01e95a Hide();
	util::wait_network_frame();
	var_b01e95a delete();
	self function_1ed1ef36();
	self TakeWeapon(var_9f2c3e1c);
	self SwitchToWeaponImmediate(w_current);
}

/*
	Name: function_1ed1ef36
	Namespace: namespace_1b0f1865
	Checksum: 0x7767BA82
	Offset: 0x8DE0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_1ed1ef36()
{
	if(!self.var_42a705b8)
	{
		self enableWeapons();
		self setClientUIVisibilityFlag("weapon_hud_visible", 1);
	}
	self EnableWeaponCycling();
	self EnableOffhandWeapons();
	self AllowCrouch(1);
	self AllowProne(1);
	level notify("enable_cybercom", self);
	self.var_23304c9e = 0;
}

/*
	Name: function_f74e47aa
	Namespace: namespace_1b0f1865
	Checksum: 0xBE3BF793
	Offset: 0x8EA8
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f74e47aa()
{
	self notify("hash_9d906207");
	self Unlink();
	self clientfield::set_to_player("zipline_rumble_loop", 0);
	self clientfield::set_to_player("zipline_speed_blur", 0);
	self notify("hash_4d91a838");
	self show();
	self function_1ed1ef36();
}

/*
	Name: function_ace0977c
	Namespace: namespace_1b0f1865
	Checksum: 0x66BCB3FE
	Offset: 0x8F50
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ace0977c()
{
	self endon("death");
	self EnableInvulnerability();
	self waittill("hash_4d91a838");
	wait(2);
	self DisableInvulnerability();
}

/*
	Name: function_1caa9276
	Namespace: namespace_1b0f1865
	Checksum: 0x21C68107
	Offset: 0x8FA8
	Size: 0x5C7
	Parameters: 0
	Flags: None
*/
function function_1caa9276()
{
	self.var_42a705b8 = 0;
	if(self.currentWeapon.weapClass == "pistol")
	{
		self.var_42a705b8 = 1;
		var_d1f13390 = self.currentWeapon;
		break;
	}
	if(isdefined(self.weapon_array_primary))
	{
		foreach(weapon in self.weapon_array_primary)
		{
			if(weapon.weapClass === "pistol")
			{
				self.var_42a705b8 = 1;
				var_d1f13390 = weapon;
				break;
			}
		}
	}
	else if(isdefined(self.weapon_array_sidearm))
	{
		foreach(weapon in self.weapon_array_sidearm)
		{
			if(weapon.weapClass === "pistol")
			{
				self.var_42a705b8 = 1;
				var_d1f13390 = weapon;
				break;
			}
		}
	}
	var_64026dbd = [];
	if(isdefined(var_d1f13390))
	{
		n_ammo_clip = self GetWeaponAmmoClip(var_d1f13390);
		var_bdb1b959 = self GetWeaponAmmoStock(var_d1f13390);
		var_64026dbd = var_d1f13390.attachments;
	}
	if(self.var_42a705b8)
	{
		if(var_d1f13390.rootweapon == level.var_957c9ba0)
		{
			var_9f2c3e1c = level.var_ad139ea;
		}
		else if(var_d1f13390.rootweapon == level.var_d582416e)
		{
			var_9f2c3e1c = level.var_17a1f194;
		}
		else if(var_d1f13390.rootweapon == level.var_8ffd4cdb)
		{
			var_9f2c3e1c.rootweapon = level.var_d397bc89;
		}
		else if(var_d1f13390.rootweapon == level.var_44a0465d)
		{
			var_9f2c3e1c = level.var_80242247;
		}
		else if(self.var_42a705b8)
		{
			var_9f2c3e1c = level.var_17a1f194;
		}
		switch(var_64026dbd.size)
		{
			case 1:
			{
				var_9f2c3e1c = GetWeapon(var_9f2c3e1c.name, var_64026dbd[0]);
				break;
			}
			case 2:
			{
				var_9f2c3e1c = GetWeapon(var_9f2c3e1c.name, var_64026dbd[0], var_64026dbd[1]);
				break;
			}
			case 3:
			{
				var_9f2c3e1c = GetWeapon(var_9f2c3e1c.name, var_64026dbd[0], var_64026dbd[1], var_64026dbd[2]);
				break;
			}
			case 4:
			{
				var_9f2c3e1c = GetWeapon(var_9f2c3e1c.name, var_64026dbd[0], var_64026dbd[1], var_64026dbd[2], var_64026dbd[3]);
				break;
			}
			case default:
			{
				break;
			}
		}
	}
	else if(self HasWeapon(level.var_957c9ba0, 1))
	{
		var_9f2c3e1c = level.var_ad139ea;
	}
	else if(self HasWeapon(level.var_d582416e, 1))
	{
		var_9f2c3e1c = level.var_17a1f194;
	}
	else if(self HasWeapon(level.var_8ffd4cdb, 1))
	{
		var_9f2c3e1c = level.var_d397bc89;
	}
	else if(self HasWeapon(level.var_44a0465d, 1))
	{
		var_9f2c3e1c = level.var_80242247;
	}
	else
	{
		var_9f2c3e1c = level.var_135a01e4;
	}
	self GiveWeapon(var_9f2c3e1c);
	self SwitchToWeaponImmediate(var_9f2c3e1c);
	if(isdefined(var_d1f13390))
	{
		self SetWeaponAmmoClip(var_9f2c3e1c, n_ammo_clip);
		self SetWeaponAmmoStock(var_9f2c3e1c, var_bdb1b959);
		self thread function_5cab4471(var_9f2c3e1c, var_d1f13390);
	}
	return var_9f2c3e1c;
}

/*
	Name: function_5cab4471
	Namespace: namespace_1b0f1865
	Checksum: 0x9C193BEA
	Offset: 0x9578
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function function_5cab4471(var_9f2c3e1c, var_d1f13390)
{
	self endon("death");
	self waittill("hash_4d91a838");
	self SetWeaponAmmoClip(var_d1f13390, self GetWeaponAmmoClip(var_9f2c3e1c));
	self SetWeaponAmmoStock(var_d1f13390, self GetWeaponAmmoStock(var_9f2c3e1c));
}

/*
	Name: function_b5e8c4c0
	Namespace: namespace_1b0f1865
	Checksum: 0xFFA3BC89
	Offset: 0x9610
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_b5e8c4c0(struct_start)
{
	level endon("hash_f7ebef4e");
	self flag::wait_till_clear("hendricks_on_zipline");
	self notify("stop_following");
	if(!level flag::get("hendricks_played_supertree_takedown"))
	{
		level scene::stop("cin_bio_13_02_treefight_vign_ziplinekill");
	}
	self.target = struct_start.targetname;
	self thread function_cdb04f99();
}

/*
	Name: function_cdb04f99
	Namespace: namespace_1b0f1865
	Checksum: 0x3A531C72
	Offset: 0x96C8
	Size: 0x833
	Parameters: 0
	Flags: None
*/
function function_cdb04f99()
{
	s_start = struct::get(self.target, "targetname");
	/#
		Assert(isdefined(s_start), "Dev Block strings are not supported" + self.origin + "Dev Block strings are not supported");
	#/
	s_end = struct::get(s_start.target, "targetname");
	/#
		Assert(isdefined(s_end), "Dev Block strings are not supported" + s_start.origin + "Dev Block strings are not supported");
	#/
	self.var_fd3ee5eb = s_start.script_label;
	if(self == level.var_2fd26037)
	{
		self endon("hash_57ce910f");
		self colors::disable();
		self flag::set("hendricks_on_zipline");
	}
	self endon("death");
	self endon("hash_f3069794");
	var_ccacea03 = GroundTrace(s_start.origin, s_start.origin + VectorScale((0, 0, -1), 100000), 0, self, 1)["position"];
	if(isdefined(var_ccacea03))
	{
		self SetGoal(var_ccacea03, 1);
		var_c312dab9 = util::spawn_model("tag_origin", var_ccacea03, s_start.angles);
	}
	else
	{
		self SetGoal(var_ccacea03, 1);
		var_c312dab9 = util::spawn_model("tag_origin", s_start.origin, s_start.angles);
	}
	self waittill("goal");
	if(self == level.var_2fd26037 && (self.var_fd3ee5eb == "tree4" || self.var_fd3ee5eb == "tree5"))
	{
		exploder::exploder("fx_expl_fire_leadzip_explode");
		level thread util::delay(1.5, undefined, &function_44ec4f8f);
	}
	self ai::set_ignoreall(0);
	self.var_23304c9e = 1;
	n_dist = Distance(s_start.origin, s_end.origin);
	if(self == level.var_2fd26037)
	{
		n_time = n_dist / 400;
	}
	else
	{
		n_time = n_dist / 350;
		self.health = 5;
	}
	var_b39127dd = util::spawn_model("wpn_t7_zipline_trolley_prop", self GetTagOrigin("tag_weapon_left"), self GetTagAngles("tag_weapon_left"));
	var_b39127dd LinkTo(self, "tag_weapon_left");
	if(self == level.var_2fd26037)
	{
		self.var_ae65ed78 = var_b39127dd;
		self.e_mover = var_c312dab9;
	}
	else
	{
		self thread function_e87de176(Array(var_c312dab9, var_b39127dd));
	}
	var_c312dab9.origin = self.origin;
	var_c312dab9.angles = self.angles;
	var_c312dab9 thread scene::Play("cin_gen_traversal_zipline_enemy02_attach", self);
	self waittill("hash_8c8d4197");
	var_c312dab9 moveto(s_start.origin, 0.33);
	var_c312dab9 RotateTo(s_start.angles, 0.33);
	var_c312dab9 waittill("movedone");
	var_c312dab9 thread scene::Play("cin_gen_traversal_zipline_enemy02_idle", self);
	var_c312dab9 moveto(s_end.origin, n_time);
	self thread function_558d1745(s_start, var_c312dab9);
	self thread function_c936992e();
	var_c312dab9 util::waittill_notify_or_timeout("movedone", 8);
	v_on_navmesh = GetClosestPointOnNavMesh(var_c312dab9.origin, 72, 36);
	if(isdefined(v_on_navmesh))
	{
		var_c312dab9 moveto(v_on_navmesh, 0.25);
	}
	else
	{
		var_ccacea03 = GroundTrace(self.origin, self.origin + VectorScale((0, 0, -1), 100000), 0, undefined, 1)["position"];
		var_c312dab9 moveto(var_ccacea03, 0.25);
	}
	var_c312dab9 scene::Play("cin_gen_traversal_zipline_enemy02_dismount", self);
	self notify("hash_4d91a838");
	self notify("landed_on_" + self.var_fd3ee5eb);
	self Unlink();
	self.var_fd3ee5eb = s_end.script_label;
	self ClearForcedGoal();
	self ai::set_behavior_attribute("sprint", 0);
	util::wait_network_frame();
	var_c312dab9 delete();
	var_b39127dd delete();
	self.var_23304c9e = 0;
	self ai::set_ignoreall(0);
	if(self == level.var_2fd26037)
	{
		self colors::enable();
		self flag::clear("hendricks_on_zipline");
	}
	if(self != level.var_2fd26037)
	{
		self.goalRadius = 2000;
		self.goalHeight = 200;
		self.health = self.maxhealth;
		wait(randomIntRange(8, 15));
		self thread function_3ca0a891();
	}
}

/*
	Name: function_c936992e
	Namespace: namespace_1b0f1865
	Checksum: 0xE2EF113A
	Offset: 0x9F08
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c936992e()
{
	self endon("death");
	self endon("hash_4d91a838");
	wait(9);
	if(self.current_scene === "cin_gen_traversal_zipline_enemy02_idle")
	{
		self StopAnimScripted();
		self Unlink();
	}
}

/*
	Name: function_cac74662
	Namespace: namespace_1b0f1865
	Checksum: 0x64438A98
	Offset: 0x9F78
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_cac74662()
{
	self notify("hash_57ce910f");
	self Unlink();
	if(isdefined(self.var_ae65ed78))
	{
		self.var_ae65ed78 delete();
	}
	if(isdefined(self.e_mover))
	{
		self.e_mover scene::stop();
		self.e_mover delete();
	}
	self ClearForcedGoal();
	self ai::set_behavior_attribute("sprint", 0);
	self.var_23304c9e = 0;
	self ai::set_ignoreall(0);
	self colors::enable();
	self flag::clear("hendricks_on_zipline");
}

/*
	Name: function_e87de176
	Namespace: namespace_1b0f1865
	Checksum: 0x8D94EAB5
	Offset: 0xA0A0
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_e87de176(a_e_cleanup)
{
	self endon("hash_4d91a838");
	self waittill("death");
	if(isdefined(self))
	{
		self Unlink();
		self StartRagdoll(1);
	}
	foreach(entity in a_e_cleanup)
	{
		if(isdefined(entity))
		{
			entity delete();
		}
	}
}

/*
	Name: function_3ca0a891
	Namespace: namespace_1b0f1865
	Checksum: 0xD5012689
	Offset: 0xA198
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_3ca0a891()
{
	self endon("death");
	level endon("hash_3a2c1be8");
	var_53e40947 = 0;
	while(1)
	{
		wait(randomIntRange(3, 7));
		foreach(player in level.activePlayers)
		{
			if(player.var_fd3ee5eb === self.var_fd3ee5eb)
			{
				var_53e40947 = 1;
				break;
				continue;
			}
			var_53e40947 = 0;
		}
		if(!var_53e40947)
		{
			e_closest_player = ArrayGetClosest(self.origin, level.activePlayers);
			if(isdefined(e_closest_player))
			{
				self function_d15ea140(self.var_fd3ee5eb, e_closest_player.var_fd3ee5eb);
			}
		}
	}
}

/*
	Name: function_d15ea140
	Namespace: namespace_1b0f1865
	Checksum: 0x342AB094
	Offset: 0xA300
	Size: 0x789
	Parameters: 2
	Flags: None
*/
function function_d15ea140(var_fd3ee5eb, var_91776028)
{
	self endon("death");
	self endon("hash_f3069794");
	var_8ab385b5 = struct::get_array(var_fd3ee5eb, "script_label");
	if(!var_8ab385b5.size)
	{
		return;
	}
	if(var_fd3ee5eb === "tree1")
	{
		switch(var_91776028)
		{
			case "tree2":
			{
				level flag::wait_till("tree2_and_tree3_pursuit_allowed");
				self function_258f9c50(var_8ab385b5, "tree2");
				break;
			}
			case "tree3":
			{
				level flag::wait_till("tree2_and_tree3_pursuit_allowed");
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree4":
			{
				self function_258f9c50(var_8ab385b5, "tree2");
				break;
			}
			case "tree5":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "treefinal":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case default:
			{
				break;
			}
		}
		break;
	}
	if(var_fd3ee5eb === "tree2")
	{
		switch(var_91776028)
		{
			case "tree1":
			{
				self function_258f9c50(var_8ab385b5, "tree1");
				break;
			}
			case "tree3":
			{
				self function_258f9c50(var_8ab385b5, "tree1");
				break;
			}
			case "tree4":
			{
				nd_dest = GetNode("nd_tree4_center", "targetname");
				self SetGoal(nd_dest, 1);
				self waittill("goal");
				self.var_fd3ee5eb = "tree4";
				self thread function_3ca0a891();
				break;
			}
			case "tree5":
			{
				nd_dest = GetNode("nd_tree4_center", "targetname");
				self SetGoal(nd_dest, 1);
				self waittill("goal");
				self.var_fd3ee5eb = "tree4";
				self thread function_3ca0a891();
				break;
			}
			case "treefinal":
			{
				nd_dest = GetNode("nd_tree4_center", "targetname");
				self SetGoal(nd_dest, 1);
				self waittill("goal");
				self.var_fd3ee5eb = "tree4";
				break;
			}
			case default:
			{
				break;
			}
		}
		break;
	}
	if(var_fd3ee5eb === "tree3")
	{
		switch(var_91776028)
		{
			case "tree1":
			{
				self function_258f9c50(var_8ab385b5, "tree1");
				break;
			}
			case "tree2":
			{
				self function_258f9c50(var_8ab385b5, "tree1");
				break;
			}
			case "tree4":
			{
				level flag::wait_till("tree4_and_tree5_pursuit_allowed");
				self function_258f9c50(var_8ab385b5, "tree4");
				break;
			}
			case "tree5":
			{
				level flag::wait_till("tree4_and_tree5_pursuit_allowed");
				self function_258f9c50(var_8ab385b5, "tree5");
				break;
			}
			case "treefinal":
			{
				self function_258f9c50(var_8ab385b5, "tree5");
				break;
			}
			case default:
			{
				break;
			}
		}
		break;
	}
	if(var_fd3ee5eb === "tree4")
	{
		switch(var_91776028)
		{
			case "tree1":
			{
				self function_258f9c50(var_8ab385b5, "tree5");
				break;
			}
			case "tree2":
			{
				nd_dest = GetNode("nd_tree2_center", "targetname");
				self SetGoal(nd_dest, 1);
				self waittill("goal");
				self.var_fd3ee5eb = "tree2";
				self thread function_3ca0a891();
				break;
			}
			case "tree3":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree5":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "treefinal":
			{
				self function_258f9c50(var_8ab385b5, "treefinal");
				break;
			}
			case default:
			{
				break;
			}
		}
		break;
	}
	if(var_fd3ee5eb === "tree5")
	{
		switch(var_91776028)
		{
			case "tree1":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree2":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree3":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "tree4":
			{
				self function_258f9c50(var_8ab385b5, "tree3");
				break;
			}
			case "treefinal":
			{
				self function_258f9c50(var_8ab385b5, "treefinal");
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_258f9c50
	Namespace: namespace_1b0f1865
	Checksum: 0x5577D84B
	Offset: 0xAA98
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_258f9c50(var_5b5ad127, var_91776028)
{
	self endon("death");
	self endon("hash_f3069794");
	var_fd729fb3 = [];
	foreach(var_5e1dc07 in var_5b5ad127)
	{
		if(isdefined(var_5e1dc07.target))
		{
			Array::add(var_fd729fb3, var_5e1dc07, 0);
		}
	}
	var_d4bb1798 = var_fd729fb3[0].targetname;
	foreach(var_5e1dc07 in var_fd729fb3)
	{
		s_end = struct::get(var_5e1dc07.target, "targetname");
		if(s_end.script_label === var_91776028)
		{
			var_d4bb1798 = var_5e1dc07.targetname;
			break;
		}
	}
	self thread function_495d7b05();
	self.target = var_d4bb1798;
	self function_cdb04f99();
}

/*
	Name: function_495d7b05
	Namespace: namespace_1b0f1865
	Checksum: 0xF0DCA150
	Offset: 0xAC98
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_495d7b05()
{
	self endon("death");
	self endon("hash_4d91a838");
	self endon("hash_f3069794");
	while(1)
	{
		foreach(player in level.activePlayers)
		{
			if(player.var_fd3ee5eb === self.var_fd3ee5eb)
			{
				if(self.var_23304c9e === 0)
				{
					self ClearForcedGoal();
					self ai::set_ignoreall(0);
					self notify("hash_f3069794");
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_2387e4bd
	Namespace: namespace_1b0f1865
	Checksum: 0x7509D3EA
	Offset: 0xADB0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_2387e4bd()
{
	var_3fa09da0 = GetEnt("trig_dive_fxanim_debris", "targetname");
	var_3fa09da0 thread function_af083c9b();
	var_e193b33b = GetEnt("trig_supertrees_playerdive_play", "targetname");
	var_e193b33b thread function_644d430e();
	level thread scene::add_scene_func("cin_bio_14_01_treejump_vign_dive_end", &function_2370ed93, "done");
}

/*
	Name: function_2370ed93
	Namespace: namespace_1b0f1865
	Checksum: 0x958F2C16
	Offset: 0xAE70
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_2370ed93(str_scene)
{
	level flag::set("hendricks_dive");
}

/*
	Name: function_a2b40033
	Namespace: namespace_1b0f1865
	Checksum: 0xF4E114D
	Offset: 0xAEA8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_a2b40033()
{
	var_e05caeb2 = GetEnt("trig_supertrees_finaltree_hurt", "targetname");
	/#
		Assert(isdefined(var_e05caeb2), "Dev Block strings are not supported");
	#/
	var_e05caeb2 TriggerEnable(0);
	level waittill("hash_b1e29472");
	var_e05caeb2 TriggerEnable(1);
	PlayRumbleOnPosition("cp_biodomes_final_tree_explosion_rumble", var_e05caeb2.origin);
	exploder::exploder("fx_expl_fire_deathtop_supertree");
}

/*
	Name: function_ca1d2a2d
	Namespace: namespace_1b0f1865
	Checksum: 0x1D33C8D
	Offset: 0xAF88
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ca1d2a2d()
{
	level waittill("player_dive");
	exploder::exploder("fx_expl_fire_descendlast_supertree");
}

/*
	Name: function_af083c9b
	Namespace: namespace_1b0f1865
	Checksum: 0x30E85486
	Offset: 0xAFC0
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_af083c9b()
{
	while(isdefined(self))
	{
		self trigger::wait_till();
		player = self.who;
		player clientfield::set_to_player("supertree_jump_debris_play", 1);
	}
}

/*
	Name: function_644d430e
	Namespace: namespace_1b0f1865
	Checksum: 0xF232E0CA
	Offset: 0xB028
	Size: 0x87
	Parameters: 0
	Flags: None
*/
function function_644d430e()
{
	while(isdefined(self))
	{
		self trigger::wait_till();
		player = self.who;
		level util::clientNotify("sndRampEnd");
		player thread function_a04a0f57(self);
		player thread function_9eb272bb();
	}
}

/*
	Name: function_a04a0f57
	Namespace: namespace_1b0f1865
	Checksum: 0xC9D4167F
	Offset: 0xB0B8
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_a04a0f57(trigger)
{
	self endon("death");
	level notify("player_dive");
	trigger SetInvisibleToPlayer(self);
	self EnableInvulnerability();
	var_2d103051 = struct::get("fake_tag_align_supertree_dive_p" + self GetEntityNumber(), "targetname");
	if(isdefined(var_2d103051))
	{
		var_2d103051 scene::Play("cin_bio_14_01_treejump_1st_dive", self);
	}
	else
	{
		level scene::Play("cin_bio_14_01_treejump_1st_dive", self);
	}
	var_57a51f3c = GetEnt("vista_water", "targetname");
	if(isdefined(var_57a51f3c))
	{
		var_57a51f3c delete();
	}
	level flag::set("player_dive_done");
	wait(2);
	trigger SetVisibleToPlayer(self);
	self DisableInvulnerability();
}

/*
	Name: function_9eb272bb
	Namespace: namespace_1b0f1865
	Checksum: 0x2415A6D4
	Offset: 0xB250
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_9eb272bb()
{
	self endon("death");
	self waittill("hash_786c0556");
	self clientfield::set_to_player("dive_wind_rumble_loop", 1);
	self waittill("hash_76ed094c");
	thread function_c59ffff();
	self clientfield::set_to_player("dive_wind_rumble_loop", 0);
}

/*
	Name: function_c59ffff
	Namespace: namespace_1b0f1865
	Checksum: 0x13C97BDB
	Offset: 0xB2D8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_c59ffff()
{
	var_be2ea7e9 = spawn("script_origin", (-3498, 1773, 406));
	if(isdefined(var_be2ea7e9))
	{
		var_be2ea7e9 PlayLoopSound("amb_post_dive_battle", 1);
		wait(120);
		var_be2ea7e9 delete();
	}
}


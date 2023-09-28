#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_lotus2_sound;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\lotus_util;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
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
#using scripts\shared\util_shared;

#namespace namespace_ef6666f9;

/*
	Name: function_e44d217a
	Namespace: namespace_ef6666f9
	Checksum: 0xB7EA2E05
	Offset: 0xE50
	Size: 0x383
	Parameters: 2
	Flags: None
*/
function function_e44d217a(str_objective, var_74cd64bc)
{
	var_d6cea0d7 = GetEnt("trig_kick_door", "targetname");
	var_d6cea0d7 TriggerEnable(0);
	battlechatter::function_d9f49fba(0);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_2fd26037.allowbattlechatter["bc"] = 0;
		skipto::teleport_ai(str_objective);
		level.var_2fd26037 colors::disable();
		level.var_2fd26037 SetGoal(GetNode("hendricks_stand_down_door_node", "targetname"), 0, 32);
		level.var_2fd26037 ai::set_behavior_attribute("coverIdleOnly", 1);
		var_cfcc5424 = GetEntArray("aigroup_detention_center", "script_aigroup");
		Array::delete_all(var_cfcc5424);
		level util::function_d8eaed3d(2, 1);
		level scene::init("cin_lot_08_01_standdown_sh010");
		load::function_a2995f22();
		level namespace_431cac9::function_484bc3aa(1);
	}
	level.var_2fd26037 ai::set_ignoreall(1);
	level.var_2fd26037 ai::set_ignoreme(1);
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
	level dialog::remote("kane_taylor_s_through_tha_0", 0.25);
	a_enemies = GetAITeamArray("axis");
	Array::run_all(a_enemies, &delete);
	level thread namespace_a92ad484::function_a3388bcf();
	var_d6cea0d7 TriggerEnable(1);
	util::function_14518e76(var_d6cea0d7, &"cp_level_lotus_stand_down_door", &"CP_MI_CAIRO_LOTUS_BREACH", &function_8019e0e5);
	level thread scene::Play("pursuit_initial_bodies");
	level thread function_e3e58995();
}

/*
	Name: function_e3e58995
	Namespace: namespace_ef6666f9
	Checksum: 0x21627320
	Offset: 0x11E0
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e3e58995()
{
	level endon("hash_e93df84");
	wait(5);
	var_a6225d0e = ArrayGetClosest(level.var_2fd26037.origin, level.players);
	if(DistanceSquared(var_a6225d0e.origin, level.var_2fd26037.origin) > 122500)
	{
		level.var_2fd26037 thread dialog::say("hend_c_mon_post_on_me_l_0", 0.25);
	}
}

/*
	Name: function_8019e0e5
	Namespace: namespace_ef6666f9
	Checksum: 0x60F985D0
	Offset: 0x1298
	Size: 0x3E3
	Parameters: 1
	Flags: None
*/
function function_8019e0e5(e_player)
{
	self gameobjects::disable_object();
	level notify("hash_e93df84");
	namespace_431cac9::function_3b6587d6(1, "lotus2_standdown_igc_umbra_gate");
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 ai::set_ignoreme(0);
	level thread namespace_a92ad484::function_973b77f9();
	level clientfield::set("sndIGCsnapshot", 1);
	objectives::complete("cp_level_lotus_stand_down_door");
	spawner::add_spawn_function_ai_group("standdown_robos", &function_623dfa9f);
	scene::add_scene_func("cin_lot_08_01_standdown_sh010", &function_e8455070);
	scene::add_scene_func("cin_lot_08_01_standdown_sh100", &function_50ac7315);
	scene::add_scene_func("cin_lot_08_01_standdown_sh230", &function_1faa71ce);
	scene::add_scene_func("cin_lot_08_01_standdown_sh270", &function_6a59f8cb);
	scene::add_scene_func("cin_lot_08_01_standdown_sh280", &function_e26078a4, "done");
	scene::add_scene_func("cin_gen_hendricksmoment_riphead_robot", &function_b58d1d50);
	if(isdefined(level.BZM_LOTUSDialogue4Callback))
	{
		level thread [[level.BZM_LOTUSDialogue4Callback]]();
	}
	level util::streamer_wait(undefined, 1, 10);
	level scene::Play("cin_lot_08_01_standdown_sh010", e_player);
	e_glass = scene::get_existing_ent("interrogation_room_glass");
	level thread function_5c1f1535(e_glass);
	s_goal = struct::get("pursuit_ai");
	level.var_2fd26037 SetGoal(s_goal.origin, 0, 64);
	level thread function_4869f17d();
	level waittill("hash_fa07455a");
	e_glass show();
	util::clear_streamer_hint();
	function_7b1a7b5c();
	foreach(player in level.players)
	{
		player util::function_16c71b8(0);
	}
	skipto::function_be8adfb8("stand_down");
	self gameobjects::destroy_object(1);
}

/*
	Name: function_5c1f1535
	Namespace: namespace_ef6666f9
	Checksum: 0xF7CFF501
	Offset: 0x1688
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_5c1f1535(e_glass)
{
	level endon("hash_fa07455a");
	level waittill("hash_3678706d");
	e_glass Hide();
	level waittill("hash_da20ef20");
	e_glass show();
	level waittill("hash_de5f95bf");
	e_glass Hide();
	level waittill("hash_130e1922");
	e_glass show();
	level waittill("hash_906aafb6");
	e_glass Hide();
	level waittill("hash_90c52573");
	e_glass show();
}

/*
	Name: function_b58d1d50
	Namespace: namespace_ef6666f9
	Checksum: 0xC6FE47F3
	Offset: 0x1770
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_b58d1d50(a_ents)
{
	level endon("hash_9c97dac4");
	var_f6c5842 = a_ents["riphead_robot"];
	level util::waittill_notify_or_timeout("robot_head_off", 3);
	if(isdefined(var_f6c5842))
	{
		var_f6c5842 util::stop_magic_bullet_shield();
		GibServerUtils::GibHead(var_f6c5842);
	}
	var_f49ffb15 = GetEnt("continue_hendricks", "targetname");
	if(isdefined(var_f49ffb15))
	{
		level.var_2fd26037 colors::enable();
		trigger::use("continue_hendricks", "targetname");
	}
}

/*
	Name: function_f59268d5
	Namespace: namespace_ef6666f9
	Checksum: 0xD37C5616
	Offset: 0x1878
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_f59268d5()
{
	spawner::waittill_ai_group_cleared("standdown_robos");
	level thread function_88486511();
	level.var_2fd26037 ai::set_ignoreall(0);
	level.var_2fd26037 colors::enable();
	level clientfield::set("sndIGCsnapshot", 0);
	level thread function_6678da67();
	level thread function_ae2d3f70();
	level thread function_c8e59dae();
}

/*
	Name: function_c8e59dae
	Namespace: namespace_ef6666f9
	Checksum: 0x19F0101C
	Offset: 0x1950
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_c8e59dae()
{
	objectives::breadcrumb("pursuit_breadcrumb01");
}

/*
	Name: function_88486511
	Namespace: namespace_ef6666f9
	Checksum: 0x11BEEE3F
	Offset: 0x1978
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_88486511()
{
	level endon("hash_9c97dac4");
	savegame::function_5d2cdd99();
	level thread function_fc2eabb1("nearside_enemies");
	level thread function_fc2eabb1("farside_enemies");
	flag::wait_till("lotus_snow_1");
	while(!flag::get("farside_enemies_dead") && !flag::get("farside_enemies_dead"))
	{
		wait(0.25);
	}
	savegame::function_5d2cdd99();
}

/*
	Name: function_fc2eabb1
	Namespace: namespace_ef6666f9
	Checksum: 0x3690544A
	Offset: 0x1A58
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_fc2eabb1(str_ai_group)
{
	level endon("hash_9c97dac4");
	var_df8970d = str_ai_group + "_dead";
	flag::init(var_df8970d);
	spawner::waittill_ai_group_cleared(str_ai_group);
	savegame::function_5d2cdd99();
	flag::set(var_df8970d);
}

/*
	Name: function_e8455070
	Namespace: namespace_ef6666f9
	Checksum: 0xF6957416
	Offset: 0x1AF0
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_e8455070(a_ents)
{
	foreach(player in level.players)
	{
		player util::function_16c71b8(1);
	}
	level.var_2fd26037 ai::set_ignoreall(1);
}

/*
	Name: function_50ac7315
	Namespace: namespace_ef6666f9
	Checksum: 0x39F33C23
	Offset: 0x1BB0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_50ac7315(a_ents)
{
	a_ents["standdown_robot01"] thread function_8bff8df9();
	a_ents["standdown_robot02"] thread function_8bff8df9();
	a_ents["standdown_robot03"] thread function_8bff8df9();
}

/*
	Name: function_8bff8df9
	Namespace: namespace_ef6666f9
	Checksum: 0x6866C23B
	Offset: 0x1C28
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_8bff8df9()
{
	self waittill("hash_e5b0f8fa");
	self ai::set_behavior_attribute("rogue_control", "forced_level_1");
}

/*
	Name: function_6a59f8cb
	Namespace: namespace_ef6666f9
	Checksum: 0x163F4E1D
	Offset: 0x1C68
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_6a59f8cb(a_ents)
{
	var_51ffb7a3 = struct::get("standdown_explode_here", "targetname");
	level thread scene::Play("p7_fxanim_cp_lotus_interrogation_room_glass_bundle");
}

/*
	Name: function_9ab22ea
	Namespace: namespace_ef6666f9
	Checksum: 0x5D1C038E
	Offset: 0x1CC8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_9ab22ea(var_3ad5e8e)
{
	var_f6c5842 = GetEnt(var_3ad5e8e, "targetname");
	if(isdefined(var_f6c5842))
	{
		var_f6c5842 ai::set_behavior_attribute("rogue_control", "forced_level_3");
		var_f6c5842 ai::set_behavior_attribute("rogue_force_explosion", 1);
	}
}

/*
	Name: function_e26078a4
	Namespace: namespace_ef6666f9
	Checksum: 0x53F9D755
	Offset: 0x1D58
	Size: 0x4EB
	Parameters: 1
	Flags: None
*/
function function_e26078a4(a_ents)
{
	var_182ef0f0 = scene::get_existing_ent("prometheus");
	if(isdefined(var_182ef0f0))
	{
		var_182ef0f0 delete();
	}
	level util::function_93831e79("pursuit");
	foreach(player in level.players)
	{
		player util::function_16c71b8(0);
	}
	level thread namespace_a92ad484::function_c954e9a2();
	foreach(ai_in_scene in a_ents)
	{
		if(isdefined(ai_in_scene))
		{
			if(ai_in_scene.archetype === "robot")
			{
				if(ai_in_scene.animName === "standdown_robot01")
				{
					ai_in_scene ai::set_behavior_attribute("rogue_control", "forced_level_2");
					ai_in_scene util::magic_bullet_shield();
					continue;
				}
				ai_in_scene ai::set_behavior_attribute("rogue_control", "forced_level_2");
			}
		}
	}
	var_3a462080 = a_ents["standdown_robot02"];
	var_60489ae9 = a_ents["standdown_robot03"];
	if(isalive(var_3a462080))
	{
		var_3a462080.noCybercom = 0;
	}
	if(isalive(var_60489ae9))
	{
		var_60489ae9.noCybercom = 0;
	}
	a_actors = Array(level.var_2fd26037, a_ents["standdown_robot01"]);
	s_scene = struct::get("cin_hendricks_beheads_robot_00");
	s_scene.origin = a_ents["standdown_robot01"].origin;
	s_scene.angles = a_ents["standdown_robot01"].angles + VectorScale((0, -1, 0), 7);
	level thread scene::Play("cin_hendricks_beheads_robot_00", "targetname", a_actors);
	wait(2);
	foreach(ai_in_scene in a_ents)
	{
		if(isdefined(ai_in_scene))
		{
			ai_in_scene ai::set_ignoreall(0);
		}
	}
	if(isalive(var_60489ae9))
	{
		level.var_2fd26037 SetIgnoreEnt(var_60489ae9, 1);
		var_60489ae9 SetIgnoreEnt(level.var_2fd26037, 1);
	}
	wait(3);
	if(isalive(var_60489ae9))
	{
		var_60489ae9 ai::set_ignoreme(0);
		var_60489ae9 SetIgnoreEnt(level.var_2fd26037, 0);
	}
	function_f59268d5();
	function_d8fb6400();
}

/*
	Name: function_7b1a7b5c
	Namespace: namespace_ef6666f9
	Checksum: 0x82109159
	Offset: 0x2250
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_7b1a7b5c()
{
	var_e4f9e680 = GetEnt("prometheus_window", "targetname");
	if(isdefined(var_e4f9e680))
	{
		var_e4f9e680 delete();
	}
}

/*
	Name: function_470ca661
	Namespace: namespace_ef6666f9
	Checksum: 0xCDABF01B
	Offset: 0x22B0
	Size: 0xE3
	Parameters: 4
	Flags: None
*/
function function_470ca661(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		objectives::complete("cp_level_lotus_stand_down_door");
	}
	var_f223b5db = GetEnt("trig_bb_pursuit_out_of_bounds", "targetname");
	if(isdefined(var_f223b5db))
	{
		var_f223b5db delete();
	}
	var_c330bf06 = GetEnt("clip_bb_pursuit_out_of_bounds", "targetname");
	if(isdefined(var_c330bf06))
	{
		var_c330bf06 delete();
	}
}

/*
	Name: function_623dfa9f
	Namespace: namespace_ef6666f9
	Checksum: 0x1114777C
	Offset: 0x23A0
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_623dfa9f(var_38465df1)
{
	if(!isdefined(var_38465df1))
	{
		var_38465df1 = 0;
	}
	self ai::set_ignoreall(1);
	self.noCybercom = 1;
	self ai::set_behavior_attribute("rogue_allow_pregib", 0);
	if(var_38465df1)
	{
		self ai::set_behavior_attribute("rogue_control", "forced_level_1");
	}
}

/*
	Name: main
	Namespace: namespace_ef6666f9
	Checksum: 0xB691037A
	Offset: 0x2438
	Size: 0x66B
	Parameters: 2
	Flags: None
*/
function main(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_2fd26037.allowbattlechatter["bc"] = 0;
		skipto::teleport_ai(str_objective);
		level.var_2fd26037.goalRadius = 64;
		level thread scene::Play("pursuit_initial_bodies");
		util::function_d8eaed3d(2, 1);
		var_331a6d52 = GetEnt("standdown_door_far_lt", "targetname");
		var_fbdd5570 = GetEnt("standdown_door_far_rt", "targetname");
		var_331a6d52 moveto(var_331a6d52.origin - VectorScale((1, 0, 0), 300), 1, 0.1, 0.1);
		var_fbdd5570 moveto(var_fbdd5570.origin + VectorScale((1, 0, 0), 300), 1, 0.1, 0.1);
		scene::add_scene_func("cin_lot_08_01_standdown_sh230", &function_1faa71ce);
		scene::add_scene_func("cin_lot_08_01_standdown_sh270", &function_6a59f8cb);
		scene::add_scene_func("cin_lot_08_01_standdown_sh280", &function_e26078a4, "done");
		scene::add_scene_func("cin_gen_hendricksmoment_riphead_robot", &function_b58d1d50);
		spawner::add_spawn_function_ai_group("standdown_robos", &function_623dfa9f, 1);
		level.var_2fd26037 ai::set_ignoreall(1);
		load::function_a2995f22();
		level thread function_4869f17d();
		level thread scene::Play("cin_lot_08_01_standdown_sh230");
		function_7b1a7b5c();
		level thread namespace_431cac9::function_14be4cad(1);
		util::clear_streamer_hint();
		level namespace_431cac9::function_484bc3aa(1);
		level thread namespace_a92ad484::function_c954e9a2();
	}
	level.var_2fd26037 ai::set_behavior_attribute("coverIdleOnly", 0);
	level thread namespace_431cac9::function_fda257c3();
	level thread function_3bb6dd7c();
	GetEnt("pursuit_oob", "targetname") TriggerEnable(1);
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	level thread function_742bcaff();
	if(!flag::exists("prometheus_spawned"))
	{
		flag::init("prometheus_spawned");
	}
	namespace_431cac9::function_69533bc9();
	spawner::add_spawn_function_group("pursuit_robot_level_2_a", "script_noteworthy", &function_89bac1be, 0);
	spawner::add_spawn_function_group("pursuit_robot_level_2_b", "script_noteworthy", &function_89bac1be, 1);
	spawner::add_spawn_function_group("pursuit_robot_level_2_b", "script_noteworthy", &function_1a26fc20);
	spawner::add_spawn_function_group("pursuit_robot_ambient", "script_noteworthy", &function_37716d71);
	spawner::add_spawn_function_group("pursuit_human_ambient", "script_noteworthy", &function_b6be1e52);
	spawner::add_spawn_function_group("pursuit_human_b", "script_noteworthy", &function_1a26fc20);
	var_935a64f = GetEnt("pursuit_wall_clip", "targetname");
	var_935a64f moveto(var_935a64f.origin + VectorScale((0, 0, -1), 192), 2);
	level flag::wait_till("flag_delete_pursuit_wall_clip");
	var_935a64f delete();
	level thread function_dfd4fce3();
	trigger::wait_till("pursuit_done");
	skipto::function_be8adfb8("pursuit");
}

/*
	Name: function_3bb6dd7c
	Namespace: namespace_ef6666f9
	Checksum: 0x2E36E936
	Offset: 0x2AB0
	Size: 0x2C9
	Parameters: 0
	Flags: None
*/
function function_3bb6dd7c()
{
	trigger::wait_till("trig_snow_fog_begin_pursuit");
	if(isdefined(level.BZM_LOTUSDialogue14Callback))
	{
		level thread [[level.BZM_LOTUSDialogue14Callback]]();
	}
	exploder::exploder("fx_interior_snow_1");
	level scene::remove_scene_func("cin_gen_traversal_raven_fly_away", &namespace_431cac9::function_e547724d, "init");
	level scene::remove_scene_func("cin_gen_traversal_raven_fly_away", &namespace_431cac9::function_86b1cd8a);
	level thread namespace_431cac9::function_cf37ec3();
	var_222d6912 = GetEntArray("lotus_snow_pile", "targetname");
	foreach(var_fee0659 in var_222d6912)
	{
		var_fee0659 MoveZ(72, 15);
	}
	namespace_431cac9::function_78805698("pursuit");
	trigger::wait_till("trig_snow_fog_end_pursuit");
	foreach(player in level.players)
	{
		player clientfield::increment_to_player("hide_pursuit_decals");
	}
	foreach(var_fee0659 in var_222d6912)
	{
		var_fee0659 delete();
	}
}

/*
	Name: function_dfd4fce3
	Namespace: namespace_ef6666f9
	Checksum: 0x1A6E34B0
	Offset: 0x2D88
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_dfd4fce3()
{
	level endon("hash_b2f27e0e");
	e_fan = GetEnt("ceiling_fan", "targetname");
	while(isdefined(e_fan))
	{
		e_fan RotateTo(e_fan.angles + VectorScale((0, -1, 0), 180), 3);
		e_fan waittill("rotatedone");
	}
}

/*
	Name: function_742bcaff
	Namespace: namespace_ef6666f9
	Checksum: 0xBEE640FF
	Offset: 0x2E20
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_742bcaff()
{
	self endon("hash_9c97dac4");
	e_fan = GetEnt("wall_run_ventilation_fan", "targetname");
	/#
		Assert(isdefined(e_fan), "Dev Block strings are not supported");
	#/
	e_fan SetScale(e_fan.script_int);
	while(1)
	{
		e_fan RotateTo(e_fan.angles + VectorScale((1, 0, 0), 180), 3);
		wait(3);
	}
}

/*
	Name: function_1faa71ce
	Namespace: namespace_ef6666f9
	Checksum: 0xFBDAD700
	Offset: 0x2EF0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_1faa71ce(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		dialog::remote("kane_robots_compromised_0", 0.5);
		level.var_2fd26037 dialog::say("hend_they_re_gonna_detona_0", 1);
	}
}

/*
	Name: function_b5ca2beb
	Namespace: namespace_ef6666f9
	Checksum: 0x88C1034B
	Offset: 0x2F60
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_b5ca2beb()
{
	var_222d6912 = GetEntArray("lotus_snow_pile", "targetname");
	foreach(var_fee0659 in var_222d6912)
	{
		var_fee0659 MoveZ(72, 15);
	}
}

/*
	Name: function_6678da67
	Namespace: namespace_ef6666f9
	Checksum: 0x27A8BEB6
	Offset: 0x3038
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6678da67()
{
	battlechatter::function_d9f49fba(1);
	flag::wait_till("lotus_snow_stop");
	battlechatter::function_d9f49fba(0);
}

/*
	Name: function_d8fb6400
	Namespace: namespace_ef6666f9
	Checksum: 0xB623800B
	Offset: 0x3090
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_d8fb6400()
{
	level dialog::remote("kane_nrc_robotics_have_go_0", 0.25);
	level dialog::function_13b3b16a("plyr_how_can_he_be_doing_0", 1);
	wait(0.25);
	level flag::wait_till("flag_player_crossing_bridge");
	level.var_2fd26037 dialog::say("hend_where_the_hell_does_0");
	level dialog::remote("tayr_you_know_what_you_sa_0", 1);
	level dialog::function_13b3b16a("plyr_where_where_are_we_0", 0.5);
	wait(0.5);
	level flag::wait_till_any_timeout(5, Array("in_a_frozen_forest"));
	level dialog::remote("tayr_imagine_yourself_in_0");
	level dialog::function_13b3b16a("plyr_taylor_this_isn_t_0", 1);
	level flag::wait_till("lotus_snow_stop");
	level thread LUI::prime_movie("cp_lotus2_pip_skybridgedispatch");
	level dialog::function_13b3b16a("plyr_kane_where_is_he_0", 1);
	level thread LUI::play_movie("cp_lotus2_pip_skybridgedispatch", "pip");
	objectives::set("cp_level_lotus_go_to_skybridge");
	level dialog::remote("kane_target_spotted_cro_0", 0.5);
}

/*
	Name: function_89bac1be
	Namespace: namespace_ef6666f9
	Checksum: 0xC861A5A2
	Offset: 0x32B8
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_89bac1be(b_sprint)
{
	if(!isdefined(b_sprint))
	{
		b_sprint = 0;
	}
	self endon("death");
	self.overrideActorDamage = &function_5a616058;
	self.goalRadius = 512;
	if(b_sprint)
	{
		self ai::set_behavior_attribute("rogue_control_speed", "sprint");
	}
	self ai::set_behavior_attribute("rogue_control", "level_2");
}

/*
	Name: function_b6be1e52
	Namespace: namespace_ef6666f9
	Checksum: 0xB04D9527
	Offset: 0x3368
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b6be1e52()
{
	self endon("death");
	self setnormalhealth(0.5);
	self ai::set_behavior_attribute("can_initiateaivsaimelee", 0);
}

/*
	Name: function_37716d71
	Namespace: namespace_ef6666f9
	Checksum: 0xA39150A0
	Offset: 0x33C0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_37716d71()
{
	self endon("death");
	self.overrideActorDamage = &function_9e5ba8ea;
	self ai::set_behavior_attribute("can_initiateaivsaimelee", 1);
	self ai::set_behavior_attribute("rogue_control", "forced_level_2");
	spawner::waittill_ai_group_cleared("pursuit_human_ambient");
	var_63058086 = GetNode(self.target, "targetname");
	self ai::set_behavior_attribute("rogue_control_force_goal", var_63058086.origin);
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self waittill("goal");
	self delete();
}

/*
	Name: function_1a26fc20
	Namespace: namespace_ef6666f9
	Checksum: 0x33DC4D8D
	Offset: 0x34F8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1a26fc20()
{
	self endon("death");
	if(self.archetype == "human")
	{
		self ai::set_behavior_attribute("can_initiateaivsaimelee", 0);
	}
	level flag::wait_till("end_set_b_fight");
	if(!isdefined(self.var_bb8d3f02))
	{
		self.var_fd5a8f70 = 1;
		self ClearGoalVolume();
	}
}

/*
	Name: function_8166e270
	Namespace: namespace_ef6666f9
	Checksum: 0xF2DCE450
	Offset: 0x3598
	Size: 0xB9
	Parameters: 12
	Flags: None
*/
function function_8166e270(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, str_weapon, v_point, v_dir, str_hit_loc, n_model_index, psOffsetTime, str_bone_name)
{
	if(self.var_fd5a8f70 === 1 && self.archetype == "human")
	{
		n_damage = self.health;
	}
	else if(!isPlayer(e_attacker))
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_9e5ba8ea
	Namespace: namespace_ef6666f9
	Checksum: 0xB88B43F5
	Offset: 0x3660
	Size: 0x89
	Parameters: 12
	Flags: None
*/
function function_9e5ba8ea(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, str_weapon, v_point, v_dir, str_hit_loc, n_model_index, psOffsetTime, str_bone_name)
{
	if(!isPlayer(e_attacker))
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_5a616058
	Namespace: namespace_ef6666f9
	Checksum: 0x430B2A1D
	Offset: 0x36F8
	Size: 0x9B
	Parameters: 12
	Flags: None
*/
function function_5a616058(e_inflictor, e_attacker, n_damage, n_dflags, str_means_of_death, str_weapon, v_point, v_dir, str_hit_loc, n_model_index, psOffsetTime, str_bone_name)
{
	if(!isPlayer(e_attacker) && e_attacker !== level.var_2fd26037)
	{
		n_damage = 0;
	}
	return n_damage;
}

/*
	Name: function_4869f17d
	Namespace: namespace_ef6666f9
	Checksum: 0x6F51E0C8
	Offset: 0x37A0
	Size: 0x523
	Parameters: 0
	Flags: None
*/
function function_4869f17d()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		spawn_manager::enable("pursuit_upstairs_robots_spawn_manager");
		return;
	}
	level waittill("hash_90c52573");
	level thread namespace_431cac9::function_df89b05b("pursuit_choke_throw_00", "forced_level_2", "do_pursuit_choke_throw_00", undefined, "pursuit_done");
	level thread function_80f43be0();
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_01", "forced_level_2", "nearside_rvh_go", RandomFloatRange(1, 2), "pursuit_done");
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_02", "forced_level_2", "nearside_rvh_go", RandomFloatRange(2, 3), "pursuit_done");
	level thread namespace_431cac9::function_df89b05b("cin_rvh_smashface", "forced_level_2", "nearside_rvh_go", 2, "pursuit_done");
	if(level.players.size > 2)
	{
		level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_03", "forced_level_1", "nearside_rvh_go", RandomFloatRange(3, 4), "pursuit_done");
		wait(0.25);
	}
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_04", "forced_level_1", "nearside_rvh_go", RandomFloatRange(4, 5), "pursuit_done");
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_05", "forced_level_1", "nearside_rvh_go", RandomFloatRange(5, 6), "pursuit_done");
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_06", "forced_level_1", "farside_rvh_go", RandomFloatRange(1, 2), "pursuit_done");
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("pursuit_rvh_init_07", "forced_level_2", "farside_rvh_go", RandomFloatRange(2, 3), "pursuit_done");
	flag::wait_till("play_farside_overthrow");
	var_f6c5842 = spawner::simple_spawn_single("pursuit_overthrow_1b_robot", &function_89bac1be, 1);
	level thread namespace_431cac9::function_c92cb5b("cin_death_by_robot_throw01", "pursuit_overthrow_1b_robot", "pursuit_human_b");
	level thread namespace_431cac9::function_df89b05b("lotus_snow_rvh_01", "forced_level_2", "do_lotus_snow_vignettes", 0, "pursuit_done");
	wait(0.25);
	if(level.players.size > 2)
	{
		level thread namespace_431cac9::function_df89b05b("lotus_snow_rvh_02", "forced_level_2", "do_lotus_snow_vignettes", 4, "pursuit_done");
	}
	wait(0.25);
	level thread namespace_431cac9::function_df89b05b("cin_rvh_facesmash_02", "forced_level_3", "lotus_snow_rvh_go", 0.5, "pursuit_done");
	level thread namespace_431cac9::function_df89b05b("cin_rvh_uppercut", "forced_level_1", "cin_rvh_uppercut_go", 1, "pursuit_done");
	level flag::wait_till("do_lotus_snow_vignettes");
	wait(5);
	spawn_manager::enable("pursuit_upstairs_robots_spawn_manager");
	level thread namespace_431cac9::function_df89b05b("pursuit_choke_throw_stairs", "forced_level_1", "lotus_snow_2", 1);
}

/*
	Name: function_ae2d3f70
	Namespace: namespace_ef6666f9
	Checksum: 0x88CD8EB
	Offset: 0x3CD0
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_ae2d3f70()
{
	flag::wait_till("do_first_vignette");
	spawn_manager::enable("sm_pursuit_interference_robots");
}

/*
	Name: function_80f43be0
	Namespace: namespace_ef6666f9
	Checksum: 0x58FF6BD8
	Offset: 0x3D10
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_80f43be0()
{
	level flag::wait_till("do_first_vignette");
	var_3f3a4339 = spawner::simple_spawn_single("pursuit_overthrow_01_human");
	var_3f3a4339 ai::set_ignoreme(1);
	var_3f3a4339 SetGoal(var_3f3a4339.origin, 1);
	var_3f3a4339.health = 250;
	var_f6c5842 = spawner::simple_spawn_single("pursuit_overthrow_01_robot_sky", &function_89bac1be, 1);
	var_f6c5842 ai::set_ignoreme(1);
	var_f6c5842 ai::set_ignoreall(1);
	level namespace_431cac9::function_c92cb5b("cin_death_by_robot_throw00", "pursuit_overthrow_01_robot_sky", "pursuit_overthrow_01_human");
	if(isalive(var_f6c5842))
	{
		var_fc02d77b = ArrayGetClosest(var_f6c5842.origin, level.players);
		var_f6c5842 SetTargetEntity(var_fc02d77b);
	}
}

/*
	Name: function_9c97dac4
	Namespace: namespace_ef6666f9
	Checksum: 0xB5AC2ED0
	Offset: 0x3EC0
	Size: 0x71
	Parameters: 4
	Flags: None
*/
function function_9c97dac4(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		objectives::set("cp_level_lotus_go_to_skybridge");
	}
	namespace_431cac9::function_3b6587d6(0, "lotus1_industrial_zone_umbra_gate");
	level notify("hash_1206d494");
}


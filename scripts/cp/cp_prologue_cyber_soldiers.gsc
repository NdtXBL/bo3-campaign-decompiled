#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_dccf27b3;

/*
	Name: function_23ed1506
	Namespace: namespace_dccf27b3
	Checksum: 0x6465D4E8
	Offset: 0x6F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_23ed1506()
{
	function_936b4205();
	level thread function_68ad0269();
}

/*
	Name: function_936b4205
	Namespace: namespace_dccf27b3
	Checksum: 0x99EC1590
	Offset: 0x728
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_936b4205()
{
}

/*
	Name: function_68ad0269
	Namespace: namespace_dccf27b3
	Checksum: 0x951747C4
	Offset: 0x738
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function function_68ad0269()
{
	level thread namespace_2cb3876f::function_950d1c3b(0);
	level thread function_74df00be();
	level thread function_26f3c859();
	level thread function_55b2b7ce();
	level thread function_e3957b4();
	level.var_2fd26037 ClearForcedGoal();
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
	level.var_5d4087a6 = util::function_740f8516("hyperion");
	level.var_7f246cd7 = util::function_740f8516("pallas");
	level.var_92d245e2 = util::function_740f8516("prometheus");
	level.var_f58c9f31 = util::function_740f8516("theia");
	level.var_92d245e2 SetHighDetail(1);
	level.var_2fd26037 SetHighDetail(1);
	function_9f230ee1();
	namespace_2cb3876f::function_47a62798(0);
	Array::run_all(level.players, &util::function_16c71b8, 0);
	callback::remove_on_spawned(&namespace_4dc8633b::function_4d4f1d4f);
	level notify("hash_e1626ff0");
	level.var_92d245e2 SetHighDetail(0);
	level.var_2fd26037 SetHighDetail(0);
	skipto::function_be8adfb8("skipto_intro_cyber_soldiers");
}

/*
	Name: function_55b2b7ce
	Namespace: namespace_dccf27b3
	Checksum: 0xC22968C3
	Offset: 0x990
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_55b2b7ce()
{
	level waittill("hash_999aab74");
	var_771bcc8f = GetEnt("cyber_solider_intro_lift_clip", "targetname");
	var_771bcc8f delete();
}

/*
	Name: function_26f3c859
	Namespace: namespace_dccf27b3
	Checksum: 0x18771EF3
	Offset: 0x9F0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_26f3c859()
{
	wait(20);
	level thread scene::Play("p7_fxanim_cp_prologue_hangar_doors_02_bundle");
	var_6cebf8ac = GetEnt("cyber_hangar_gate_r_pos", "targetname");
	var_6cebf8ac playsound("evt_hangar_start_r");
	var_6cebf8ac PlayLoopSound("evt_hangar_loop_r");
	var_5fb95ff2 = GetEnt("cyber_hangar_gate_l_pos", "targetname");
	var_5fb95ff2 playsound("evt_hangar_start_l");
	var_5fb95ff2 PlayLoopSound("evt_hangar_loop_l");
	level waittill("hash_8e385112");
	var_6cebf8ac playsound("evt_hangar_stop_r");
	var_5fb95ff2 playsound("evt_hangar_stop_l");
	var_6cebf8ac StopLoopSound(0.1);
	var_5fb95ff2 StopLoopSound(0.1);
	level util::clientNotify("sndBW");
	function_bab1ff00("umbra_gate_hangar_02", 0);
}

/*
	Name: function_4ed5ddb9
	Namespace: namespace_dccf27b3
	Checksum: 0x2A4294DD
	Offset: 0xBB0
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_4ed5ddb9(s_node)
{
	n_node = GetNode(s_node, "targetname");
	self ForceTeleport(n_node.origin, n_node.angles, 1);
	self SetGoal(n_node);
}

/*
	Name: ai_goal
	Namespace: namespace_dccf27b3
	Checksum: 0xDFE56C48
	Offset: 0xC40
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function ai_goal(str_node)
{
	if(isdefined(str_node))
	{
		nd_goal = GetNode(str_node, "targetname");
		self SetGoal(nd_goal, 1, 16);
		return;
	}
	self SetGoal(self.origin, 1, 16);
}

/*
	Name: function_9f230ee1
	Namespace: namespace_dccf27b3
	Checksum: 0x8F12237C
	Offset: 0xCD8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_9f230ee1()
{
	level waittill("hash_af22422d");
	exploder::exploder_stop("light_exploder_igc_cybersoldier");
}

/*
	Name: function_679e7da9
	Namespace: namespace_dccf27b3
	Checksum: 0xB1A40500
	Offset: 0xD10
	Size: 0x269
	Parameters: 1
	Flags: None
*/
function function_679e7da9(a_ents)
{
	level thread function_ac290386();
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack", &namespace_21b2c1f2::function_43ead72c, "play");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack", &function_39b556d, "play");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack", &function_e98e1240, "play");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_sarah_attack", &function_4e5acf5e, "play");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack", &function_a21df404, "play");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_confrontation_hkm", &function_89f840a1, "play");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_confrontation_hkm", &function_d71a5c1b, "play");
	scene::add_scene_func("cin_pro_09_01_intro_1st_cybersoldiers_confrontation", &function_73293683, "play");
	if(isdefined(level.BZM_PROLOGUEDialogue5Callback))
	{
		level thread [[level.BZM_PROLOGUEDialogue5Callback]]();
	}
	level thread scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_diaz_attack");
	level thread scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_maretti_attack");
	level thread scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_sarah_attack");
	level thread scene::Play("cin_pro_09_01_intro_1st_cybersoldiers_taylor_attack");
	level waittill("hash_afbcd4e8");
	util::clear_streamer_hint();
	level notify("hash_af22422d");
}

/*
	Name: function_d71a5c1b
	Namespace: namespace_dccf27b3
	Checksum: 0xE1CED41B
	Offset: 0xF88
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_d71a5c1b(a_ents)
{
	level waittill("hash_60921fc7");
	level.var_2fd26037 thread ai_goal("node_cyber_hendricks");
	level.var_9db406db thread ai_goal();
	level.var_4d5a4697 thread ai_goal();
}

/*
	Name: function_73293683
	Namespace: namespace_dccf27b3
	Checksum: 0xDD4FE083
	Offset: 0x1000
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_73293683(a_ents)
{
	level waittill("hash_afbcd4e8");
	level.var_92d245e2 thread ai_goal();
	level.var_5d4087a6 thread ai_goal();
	level.var_7f246cd7 thread ai_goal("node_cyber_diaz");
	level.var_f58c9f31 thread ai_goal();
}

/*
	Name: function_ac290386
	Namespace: namespace_dccf27b3
	Checksum: 0x7A4E34AD
	Offset: 0x1090
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_ac290386()
{
	level waittill("hash_b7587dcc");
	level waittill("hash_63ae24ea");
	Array::run_all(level.players, &util::function_16c71b8, 1);
	callback::on_spawned(&namespace_4dc8633b::function_4d4f1d4f);
	Array::thread_all(level.players, &namespace_4dc8633b::function_7072c5d8);
	level waittill("hash_af43d596");
	playsoundatposition("evt_soldierintro_walla_panic_1", (6859, 886, 191));
	playsoundatposition("evt_soldierintro_walla_panic_2", (6870, 598, 197));
}

/*
	Name: function_89f840a1
	Namespace: namespace_dccf27b3
	Checksum: 0x34D69EB0
	Offset: 0x1188
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_89f840a1(a_ents)
{
	var_9db406db = a_ents["khalil"];
	var_4d5a4697 = a_ents["minister"];
	var_9db406db.goalRadius = 32;
	var_4d5a4697.goalRadius = 32;
	level waittill("hash_fd263aff");
	var_4d5a4697 SetGoal(var_4d5a4697.origin);
	var_4d5a4697 ai::set_behavior_attribute("vignette_mode", "fast");
	level waittill("hash_19175c89");
	var_9db406db SetGoal(var_9db406db.origin);
	var_9db406db ai::set_behavior_attribute("vignette_mode", "fast");
}

/*
	Name: function_39b556d
	Namespace: namespace_dccf27b3
	Checksum: 0xEA673049
	Offset: 0x12A8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_39b556d(a_ents)
{
	var_7b00e29e = a_ents["pallas"];
	var_7b00e29e function_9110a277(1, 0);
	var_7b00e29e waittill("uncloak");
	var_7b00e29e function_9110a277(0);
}

/*
	Name: function_e98e1240
	Namespace: namespace_dccf27b3
	Checksum: 0x8BE6D694
	Offset: 0x1320
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_e98e1240(a_ents)
{
	var_7b00e29e = a_ents["prometheus"];
	var_7b00e29e function_9110a277(1, 0);
	var_7b00e29e waittill("uncloak");
	var_7b00e29e function_9110a277(0);
	var_7b00e29e waittill("cloak");
	nd_goal = GetNode("nd_taylor_after_intro", "targetname");
	var_7b00e29e SetGoal(nd_goal);
	var_7b00e29e function_9110a277(1, 1);
	wait(2);
	var_7b00e29e ghost();
}

/*
	Name: function_4e5acf5e
	Namespace: namespace_dccf27b3
	Checksum: 0xB22A40F
	Offset: 0x1430
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_4e5acf5e(a_ents)
{
	var_7b00e29e = a_ents["theia"];
	var_7b00e29e function_9110a277(1, 0);
	var_7b00e29e waittill("uncloak");
	var_7b00e29e function_9110a277(0);
	var_7b00e29e waittill("cloak");
	nd_goal = GetNode("nd_theia_after_intro", "targetname");
	var_7b00e29e SetGoal(nd_goal);
	var_7b00e29e function_9110a277(1, 1);
	wait(2);
	var_7b00e29e ghost();
}

/*
	Name: function_a21df404
	Namespace: namespace_dccf27b3
	Checksum: 0xF14BB23F
	Offset: 0x1540
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_a21df404(a_ents)
{
	var_7b00e29e = a_ents["hyperion"];
	var_7b00e29e waittill("cloak");
	nd_goal = GetNode("nd_hyperion_after_intro", "targetname");
	var_7b00e29e SetGoal(nd_goal);
	var_7b00e29e function_9110a277(1, 1);
	wait(1.5);
	var_7b00e29e ghost();
}

/*
	Name: function_9110a277
	Namespace: namespace_dccf27b3
	Checksum: 0x3A21500F
	Offset: 0x1608
	Size: 0xE3
	Parameters: 2
	Flags: None
*/
function function_9110a277(var_e33a0786, var_fbf0fdce)
{
	if(!isdefined(var_fbf0fdce))
	{
		var_fbf0fdce = 1;
	}
	self endon("death");
	if(var_e33a0786 == 1)
	{
		self PlaySoundOnTag("gdt_activecamo_on_npc", "tag_eye");
	}
	else
	{
		self PlaySoundOnTag("gdt_activecamo_off_npc", "tag_eye");
	}
	if(isdefined(var_fbf0fdce) && var_fbf0fdce)
	{
		self clientfield::set("cyber_soldier_camo", 2);
		wait(2);
	}
	self clientfield::set("cyber_soldier_camo", var_e33a0786);
}

/*
	Name: link_traversals
	Namespace: namespace_dccf27b3
	Checksum: 0xB6BE2F8E
	Offset: 0x16F8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function link_traversals()
{
	var_950ed8c6 = GetNode("ms_lift_exit1_begin", "targetname");
	LinkTraversal(var_950ed8c6);
}

/*
	Name: function_e3957b4
	Namespace: namespace_dccf27b3
	Checksum: 0x30369C8C
	Offset: 0x1748
	Size: 0x153
	Parameters: 0
	Flags: None
*/
function function_e3957b4()
{
	if(!isdefined(level.var_3dce3f88))
	{
		level.var_3dce3f88 = spawn("script_model", level.var_be31aa9a.origin);
		level.var_be31aa9a LinkTo(level.var_3dce3f88);
	}
	level.var_3dce3f88 MoveZ(220, 12.3);
	level.var_3dce3f88 waittill("movedone");
	level.var_2fd26037 ClearForcedGoal();
	level.var_2fd26037 SetGoal(level.var_2fd26037.origin, 1);
	level thread link_traversals();
	level.var_9db406db Unlink();
	level.var_7b90133a StopLoopSound(0.1);
	level.var_be31aa9a playsound("evt_freight_lift_stop");
}

/*
	Name: function_f9753551
	Namespace: namespace_dccf27b3
	Checksum: 0x34ABDAC1
	Offset: 0x18A8
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_f9753551()
{
	level.var_be31aa9a = GetEnt("freight_lift", "targetname");
	level.var_be31aa9a playsound("evt_freight_lift_start");
	level.var_7b90133a = spawn("script_origin", level.var_be31aa9a.origin);
	level.var_7b90133a LinkTo(level.var_be31aa9a);
	level.var_7b90133a PlayLoopSound("evt_freight_lift_loop");
	level.var_1dd14818 = 1;
	level.var_3dce3f88 MoveZ(-354, 0.05);
	level.var_3dce3f88 waittill("movedone");
	level.var_7b90133a StopLoopSound(0.1);
}

/*
	Name: function_74df00be
	Namespace: namespace_dccf27b3
	Checksum: 0x5255A67F
	Offset: 0x19D0
	Size: 0xC1
	Parameters: 0
	Flags: None
*/
function function_74df00be()
{
	a_ais = GetAITeamArray("axis");
	foreach(ai in a_ais)
	{
		if(isalive(ai))
		{
			ai delete();
		}
	}
}


#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_village_surreal;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace village;

/*
	Name: __init__sytem__
	Namespace: village
	Checksum: 0x2AD08B8E
	Offset: 0x1420
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("infection_village", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: village
	Checksum: 0x20D3896B
	Offset: 0x1460
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function __init__()
{
	function_49eb92b9();
}

/*
	Name: init_client_field_callback_funcs
	Namespace: village
	Checksum: 0xCAC1D4A4
	Offset: 0x1480
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	clientfield::register("world", "village_mortar_index", 1, 3, "int");
	clientfield::register("world", "village_intro_mortar", 1, 1, "int");
	clientfield::register("world", "init_fold", 1, 1, "int");
	clientfield::register("world", "start_fold", 1, 1, "int");
	clientfield::register("scriptmover", "fold_buildings", 1, 1, "int");
}

/*
	Name: CleanUp
	Namespace: village
	Checksum: 0x336A9118
	Offset: 0x1580
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function CleanUp(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level notify("hash_b9a0c4f0");
	objectives::complete("cp_level_infection_gather_airlock");
}

/*
	Name: main
	Namespace: village
	Checksum: 0x9FCDBD6D
	Offset: 0x15D8
	Size: 0x4E3
	Parameters: 3
	Flags: None
*/
function main(str_objective, var_74cd64bc, var_75294396)
{
	if(!isdefined(var_75294396))
	{
		var_75294396 = 0;
	}
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		spawner_setup();
	}
	level thread namespace_36cbf523::function_c8d7e76("foy_reverse_anim");
	function_a8ccd78c();
	if(var_74cd64bc)
	{
		level thread scene::init("p7_fxanim_cp_infection_reverse_house_01_bundle");
		level thread scene::init("cin_inf_10_01_foy_aie_reversemortar");
		level thread scene::init("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor");
		level thread scene::init("cin_inf_10_01_foy_vign_intro");
		level util::function_d8eaed3d(7);
		objectives::set("cp_level_infection_follow_sarah");
	}
	level.var_d0d4a835 = 0;
	level.var_4fd72c4a = 0;
	level.var_acfc49b5 = 0;
	spawner::add_spawn_function_group("sp_foy_friendlies", "targetname", &function_6759312c);
	spawner::add_spawn_function_group("sp_foy_friendlies_respawn_1", "targetname", &function_63a38a35);
	spawner::add_spawn_function_group("sp_foy_friendlies_respawn_2", "targetname", &function_63a38a35);
	spawner::add_spawn_function_group("sp_foy_friendlies_respawn_3", "targetname", &function_63a38a35);
	if(isdefined(level.BZM_INFECTIONDialogue11Callback))
	{
		level thread [[level.BZM_INFECTIONDialogue11Callback]]();
	}
	if(!SessionModeIsCampaignZombiesGame())
	{
		function_714c5fbc();
		function_e353cef7();
		function_bd51548e();
	}
	namespace_36cbf523::function_1cdb9014();
	a_blockers = GetEntArray("foy_gather_point_debris_blocker", "targetname");
	level thread function_901bfe3e(a_blockers);
	level thread function_4c895b57();
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		level thread function_55081eb6(0);
	}
	else
	{
		level thread function_55081eb6(1);
	}
	level thread function_d52b4c08();
	level thread function_9bb4e7ef();
	if(!SessionModeIsCampaignZombiesGame())
	{
		level thread function_ed8c7500();
		level thread function_c217937d();
		level thread function_7d93c0c();
	}
	level thread function_5ba8c80b();
	level thread function_b7cb180c();
	level thread function_5b4650e2();
	level thread function_a3cd1770();
	level thread function_aa2056b4();
	level thread function_52900ba5();
	level thread function_631f7f5e();
	level thread function_5eb4b60c();
	level thread function_7fc734e2();
	level thread function_880a13df();
	level thread util::clear_streamer_hint();
}

/*
	Name: function_633271eb
	Namespace: village
	Checksum: 0x4369B750
	Offset: 0x1AC8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_633271eb()
{
	level thread namespace_36cbf523::function_f6d49772("t_salm_having_established_a_1", "salm_having_established_a_1", "end_salm_foy_dialog");
}

/*
	Name: function_4c895b57
	Namespace: village
	Checksum: 0x569F57A1
	Offset: 0x1B08
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_4c895b57()
{
	trigger::wait_till("t_allies_disadvantage");
	level.var_d0d4a835 = 1;
	a_ai_array = GetAITeamArray("allies");
	foreach(ai in a_ai_array)
	{
		if(isdefined(ai.targetname))
		{
			if(ai.targetname == "sp_foy_friendlies_ai")
			{
				ai.takedamage = 1;
			}
		}
	}
}

/*
	Name: function_9bb4e7ef
	Namespace: village
	Checksum: 0x8E4C7F0A
	Offset: 0x1C18
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_9bb4e7ef()
{
	trigger::wait_till("t_battlechatter_reclaim_foy");
	namespace_36cbf523::function_3c363cb3("company_move");
	wait(3);
	namespace_36cbf523::function_3c363cb3("reclaim_foy");
}

/*
	Name: function_714c5fbc
	Namespace: village
	Checksum: 0x1C34C531
	Offset: 0x1C78
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_714c5fbc()
{
	function_9b385ca5();
	level.var_eb740d59 = var_ce2d510;
	var_cb7ecfda = vehicle::simple_spawn_single("sp_foy_turret_01");
	function_66f910ed(level.var_eb740d59, var_cb7ecfda, "sp_foy_turret_01_gunner");
}

/*
	Name: function_e353cef7
	Namespace: village
	Checksum: 0xEEFC5416
	Offset: 0x1CE8
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_e353cef7()
{
	function_9b385ca5();
	level.var_117687c2 = var_ce2d510;
	var_a57c5571 = vehicle::simple_spawn_single("sp_foy_turret_02");
	function_66f910ed(level.var_117687c2, var_a57c5571, "sp_foy_turret_02_gunner");
}

/*
	Name: function_bd51548e
	Namespace: village
	Checksum: 0xEBCA01F1
	Offset: 0x1D50
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_bd51548e()
{
	function_9b385ca5();
	level.var_3779022b = var_ce2d510;
	var_7f79db08 = vehicle::simple_spawn_single("sp_foy_turret_03");
	var_7f79db08 SetCanDamage(1);
	var_7f79db08.health = 2000;
	function_66f910ed(level.var_3779022b, var_7f79db08, "sp_foy_turret_03_gunner");
}

/*
	Name: function_ed8c7500
	Namespace: village
	Checksum: 0xE2852183
	Offset: 0x1DE8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ed8c7500()
{
	trigger::wait_till("t_foy_turret_01_enable");
	function_2919200c();
	wait(2);
	namespace_36cbf523::function_3c363cb3("mg_middle");
}

/*
	Name: function_c217937d
	Namespace: village
	Checksum: 0x5EFEC310
	Offset: 0x1E40
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_c217937d()
{
	trigger::wait_till("t_foy_turret_02_spawn");
	level thread function_713ae2bf("turret_door");
	exploder::exploder("fx_expl_barn_window_open");
	wait(0.5);
	function_2919200c();
	wait(1);
	namespace_36cbf523::function_3c363cb3("mg_brick_building");
	level thread function_77321751();
	spawn_manager::enable("sm_turret_barn_door");
	level thread function_713ae2bf("turret_barn_door");
	exploder::exploder("fx_expl_barn_door_open");
}

/*
	Name: function_77321751
	Namespace: village
	Checksum: 0x75C05A7D
	Offset: 0x1F40
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_77321751()
{
	level waittill("hash_ec7a5edf");
	wait(1);
	namespace_36cbf523::function_3c363cb3("mg_down");
}

/*
	Name: function_7d93c0c
	Namespace: village
	Checksum: 0x3D568E2C
	Offset: 0x1F78
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_7d93c0c()
{
	trigger::wait_till("t_foy_turret_03_spawn");
	level thread function_713ae2bf("barn_door");
	wait(0.5);
	function_2919200c();
	exploder::exploder("fx_expl_mg_bullet_impacts_village01");
	wait(1.5);
	exploder::exploder("fx_expl_mg_bullet_impacts_village02");
	wait(1.5);
	exploder::exploder("fx_expl_mg_bullet_impacts_village03");
}

/*
	Name: function_d52b4c08
	Namespace: village
	Checksum: 0xEF182DD5
	Offset: 0x2038
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_d52b4c08()
{
	trigger::wait_till("t_sm_barn_house_1");
	function_713ae2bf("barn_lower_door");
	wait(0.25);
	spawn_manager::enable("sm_barn_house_1");
}

/*
	Name: function_618e1e4e
	Namespace: village
	Checksum: 0x7799FC02
	Offset: 0x2098
	Size: 0xDF
	Parameters: 2
	Flags: None
*/
function function_618e1e4e(var_62ebac00, n_wait)
{
	self endon("death");
	if(isdefined(var_62ebac00))
	{
		e_target = GetNode(var_62ebac00, "targetname");
	}
	while(isdefined(e_target))
	{
		self SetGoal(e_target);
		self waittill("goal");
		self.goalRadius = 64;
		if(isdefined(e_target.target))
		{
			wait(n_wait);
			e_target = GetNode(e_target.target, "targetname");
		}
		else
		{
			e_target = undefined;
		}
	}
}

/*
	Name: function_b7cb180c
	Namespace: village
	Checksum: 0x7094568E
	Offset: 0x2180
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b7cb180c()
{
	trigger::wait_till("t_sm_foy_town_waves");
	spawn_manager::enable("sm_foy_town_wave_1");
	spawn_manager::enable("sm_foy_town_wave_2");
	spawn_manager::enable("sm_foy_town_wave_3");
}

/*
	Name: function_5ba8c80b
	Namespace: village
	Checksum: 0xE4194B42
	Offset: 0x21F0
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_5ba8c80b()
{
	trigger::wait_till("t_retreat_sp_wall_fx_german");
	level thread namespace_36cbf523::function_642da963("foy_wall_fx_german_01_ai", "foy_goal_volume_2");
	level thread namespace_36cbf523::function_642da963("foy_wall_fx_german_02_ai", "foy_goal_volume_2");
	level thread namespace_36cbf523::function_642da963("foy_wall_fx_german_03_ai", "foy_goal_volume_2");
	level thread namespace_36cbf523::function_642da963("foy_wall_fx_german_04_ai", "foy_goal_volume_2");
	var_6768705a = spawner::simple_spawn_single("sp_retreat_01");
	var_6768705a thread function_618e1e4e("nd_retreat_01", 12);
	var_4165f5f1 = spawner::simple_spawn_single("sp_retreat_02");
	var_4165f5f1 thread function_618e1e4e("nd_retreat_02", 10);
	var_1b637b88 = spawner::simple_spawn_single("sp_retreat_03");
	var_1b637b88 thread function_618e1e4e("nd_retreat_03", 8);
}

/*
	Name: function_5b4650e2
	Namespace: village
	Checksum: 0x18ED870F
	Offset: 0x2390
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5b4650e2()
{
	trigger::wait_till("t_retreat_sp_foy_post_intro_formation_1_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_foy_post_intro_formation_1_ai", "foy_goal_volume_2");
}

/*
	Name: function_a3cd1770
	Namespace: village
	Checksum: 0xC570926D
	Offset: 0x23E0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_a3cd1770()
{
	trigger::wait_till("t_retreat_sp_barn_house_1_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_barn_house_1_ai", "t_sp_foy_town_wave_ai");
	level thread namespace_36cbf523::function_810ccf7("foy_goal_volume_2", "t_sp_foy_town_wave_ai");
}

/*
	Name: function_aa2056b4
	Namespace: village
	Checksum: 0xCE35C43E
	Offset: 0x2458
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_aa2056b4()
{
	trigger::wait_till("t_retreat_sp_foy_guys_right_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_foy_guys_right_ai", "foy_goal_volume_3");
}

/*
	Name: function_52900ba5
	Namespace: village
	Checksum: 0xE0D8BF73
	Offset: 0x24A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_52900ba5()
{
	trigger::wait_till("t_retreat_sp_foy_town_wave_ai");
	level thread namespace_36cbf523::function_810ccf7("t_sp_foy_town_wave_ai", "foy_goal_volume_3");
}

/*
	Name: function_631f7f5e
	Namespace: village
	Checksum: 0x6F3B0141
	Offset: 0x24F8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_631f7f5e()
{
	trigger::wait_till("t_sm_foy_post_fold");
	namespace_36cbf523::function_3c363cb3("fences_move");
	flag::wait_till("final_area_cleared");
	battlechatter::function_d9f49fba(0);
	wait(1);
	function_c79f9420();
}

/*
	Name: spawner_setup
	Namespace: village
	Checksum: 0xB4F8EF44
	Offset: 0x2580
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function spawner_setup()
{
	namespace_36cbf523::function_aa0ddbc3(1);
	spawner::add_global_spawn_function("axis", &namespace_36cbf523::function_dafed344);
}

/*
	Name: function_49eb92b9
	Namespace: village
	Checksum: 0x3D25958C
	Offset: 0x25D0
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_49eb92b9()
{
	scene::add_scene_func("cin_inf_10_01_foy_vign_walk", &namespace_36cbf523::function_c32dc5f6, "init");
	scene::add_scene_func("cin_inf_10_01_foy_vign_walk", &namespace_36cbf523::function_368baff9, "play");
	scene::add_scene_func("cin_inf_10_01_foy_vign_intro", &function_7ee91ee8, "play");
	scene::add_scene_func("cin_inf_10_01_foy_vign_intro", &function_fbf84bda, "play");
	scene::add_scene_func("cin_inf_10_01_foy_vign_intro", &function_f42e77de, "done");
	scene::add_scene_func("cin_inf_10_01_foy_vign_intro", &namespace_36cbf523::function_c32dc5f6, "done");
	scene::add_scene_func("cin_inf_10_01_foy_vign_intro", &namespace_36cbf523::function_23e59afd, "play");
	scene::add_scene_func("cin_inf_10_01_foy_vign_intro", &namespace_36cbf523::function_e2eba6da, "done");
	namespace_36cbf523::function_a3f21cef("p7_fxanim_cp_infection_reverse_wall_01_bundle", "fxanim_reverse_wall_explosion_trigger");
	scene::add_scene_func("p7_fxanim_cp_infection_reverse_wall_01_bundle", &function_26e55eb5, "play");
	scene::add_scene_func("cin_inf_06_03_bastogne_aie_reverse_soldier01hipshot_suppressor", &namespace_36cbf523::function_2a5e3b2a, "play");
	scene::add_scene_func("cin_inf_06_03_bastogne_aie_reverse_soldier02headshot_suppressor", &namespace_36cbf523::function_2a5e3b2a, "play");
	scene::add_scene_func("cin_inf_10_01_foy_aie_reversemortar_react", &namespace_36cbf523::function_2a5e3b2a, "play");
	scene::add_scene_func("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor", &namespace_36cbf523::function_2a5e3b2a, "play");
	scene::add_scene_func("p7_fxanim_cp_infection_fold_bundle", &function_8b16f470, "init");
	scene::add_scene_func("p7_fxanim_cp_infection_fold_bundle", &function_6ac10d8c, "play");
}

/*
	Name: function_6759312c
	Namespace: village
	Checksum: 0xC7A93DF
	Offset: 0x28D0
	Size: 0x17B
	Parameters: 0
	Flags: None
*/
function function_6759312c()
{
	self endon("death");
	self Hide();
	self.takedamage = 0;
	self ai::set_ignoreall(1);
	self.goalRadius = 256;
	self.script_accuracy = 0.25;
	self.overrideActorDamage = &function_cc841ab;
	self thread namespace_36cbf523::ai_camo(0);
	util::wait_network_frame();
	self show();
	var_cec80dd3 = RandomInt(2);
	var_e402f51e = undefined;
	switch(var_cec80dd3)
	{
		case 0:
		{
			var_e402f51e = "cin_inf_10_02_foy_vign_teleport_spawn";
			break;
		}
		case 1:
		{
			var_e402f51e = "cin_inf_10_02_foy_vign_teleport_spawn02";
			break;
		}
		case 2:
		{
			var_e402f51e = "cin_inf_10_02_foy_vign_teleport_spawn03";
			break;
		}
	}
	self scene::Play(var_e402f51e, self);
	self ai::set_ignoreall(0);
}

/*
	Name: function_63a38a35
	Namespace: village
	Checksum: 0xECFB8DB
	Offset: 0x2A58
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_63a38a35()
{
	self endon("death");
	self.goalRadius = 256;
	self.script_accuracy = 0.25;
	self.overrideActorDamage = &function_cc841ab;
}

/*
	Name: function_cc841ab
	Namespace: village
	Checksum: 0xF6C50E58
	Offset: 0x2AA8
	Size: 0x91
	Parameters: 12
	Flags: None
*/
function function_cc841ab(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime, bonename)
{
	if(isdefined(eAttacker) && isPlayer(eAttacker))
	{
		iDamage = 0;
	}
	return iDamage;
}

/*
	Name: function_26e55eb5
	Namespace: village
	Checksum: 0x91DB4766
	Offset: 0x2B48
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_26e55eb5(a_ents)
{
	level clientfield::set("village_mortar_index", 1);
	level thread scene::Play("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor");
	wait(1);
	spawn_manager::enable("sm_foy_friendlies");
	spawn_manager::function_347e835a("sm_foy_friendlies");
	spawn_manager::kill("sm_foy_friendlies");
}

/*
	Name: function_f42e77de
	Namespace: village
	Checksum: 0x75CA952F
	Offset: 0x2BF0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_f42e77de(a_ents)
{
	level thread namespace_36cbf523::function_efa09886(a_ents);
	namespace_36cbf523::function_3ea445de();
	util::wait_network_frame();
	namespace_36cbf523::function_1cdb9014();
	Array::thread_all(level.players, &namespace_36cbf523::function_e905c73c);
}

/*
	Name: function_a8ccd78c
	Namespace: village
	Checksum: 0xA1BF9B49
	Offset: 0x2C78
	Size: 0x423
	Parameters: 0
	Flags: None
*/
function function_a8ccd78c()
{
	level.var_1808e6f7 = GetEntArray("reverse_barn_01_corner", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_1808e6f7);
	level.var_e9ce649f = GetEntArray("m_reverse_fence_01", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_e9ce649f);
	level.var_77c6f564 = GetEntArray("m_reverse_fence_02", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_77c6f564);
	level.var_a8fa691f = GetEntArray("m_reverse_chciken_coop_01", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_a8fa691f);
	level.var_36f2f9e4 = GetEntArray("m_reverse_chciken_coop_02", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_36f2f9e4);
	level.var_e1c85461 = GetEntArray("m_reverse_house_01", "targetname");
	namespace_36cbf523::function_9d8bcc37(level.var_e1c85461);
	scene::add_scene_func("p7_fxanim_cp_infection_reverse_barn_01_bundle", &function_47317809, "done");
	scene::add_scene_func("p7_fxanim_cp_infection_reverse_fence_01_bundle", &function_1e97d97d, "done");
	scene::add_scene_func("p7_fxanim_cp_infection_reverse_fence_02_bundle", &function_449a53e6, "done");
	scene::add_scene_func("p7_fxanim_cp_infection_reverse_chciken_coop_01_bundle", &function_41ec98c5, "done");
	scene::add_scene_func("p7_fxanim_cp_infection_reverse_chciken_coop_02_bundle", &function_67ef132e, "done");
	if(!SessionModeIsCampaignZombiesGame())
	{
		scene::add_scene_func("p7_fxanim_cp_infection_reverse_house_01_bundle", &function_d4580490, "play");
		scene::add_scene_func("p7_fxanim_cp_infection_reverse_house_01_bundle", &function_e541046b, "done");
	}
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_barn_01_bundle", "s_infection_reverse_barn_01_bundle", "t_infection_reverse_barn_01_bundle_inner", "t_infection_reverse_barn_01_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_fence_01_bundle", "s_infection_reverse_fence_01_bundle", "t_infection_reverse_fence_01_bundle_inner", "t_infection_reverse_fence_01_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_fence_02_bundle", "s_infection_reverse_fence_02_bundle", "t_infection_reverse_fence_02_bundle_inner", "t_infection_reverse_fence_02_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_chciken_coop_01_bundle", "s_infection_reverse_chciken_coop_01_bundle", "t_infection_reverse_chciken_coop_01_bundle_inner", "t_infection_reverse_chciken_coop_01_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_chciken_coop_02_bundle", "s_infection_reverse_chciken_coop_02_bundle", "t_infection_reverse_chciken_coop_02_bundle_inner", "t_infection_reverse_chciken_coop_02_bundle_outter");
	namespace_36cbf523::function_1926d38d("p7_fxanim_cp_infection_reverse_telephone_pole_bundle", "s_infection_reverse_telephone_pole_bundle", "t_infection_reverse_telephone_pole_bundle_inner", "t_infection_reverse_telephone_pole_bundle_outter");
	level scene::init("p7_fxanim_cp_infection_reverse_transition_wall_bundle");
}

/*
	Name: function_47317809
	Namespace: village
	Checksum: 0x98F8C3E9
	Offset: 0x30A8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_47317809(a_ents)
{
	namespace_36cbf523::function_bdea6c61(level.var_1808e6f7);
}

/*
	Name: function_1e97d97d
	Namespace: village
	Checksum: 0xEDDAD262
	Offset: 0x30D8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_1e97d97d(a_ents)
{
	namespace_36cbf523::function_bdea6c61(level.var_e9ce649f);
}

/*
	Name: function_449a53e6
	Namespace: village
	Checksum: 0x4A7E4A79
	Offset: 0x3108
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_449a53e6(a_ents)
{
	namespace_36cbf523::function_bdea6c61(level.var_77c6f564);
}

/*
	Name: function_41ec98c5
	Namespace: village
	Checksum: 0x1CEE33D8
	Offset: 0x3138
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_41ec98c5(a_ents)
{
	namespace_36cbf523::function_bdea6c61(level.var_a8fa691f);
}

/*
	Name: function_67ef132e
	Namespace: village
	Checksum: 0xBE009287
	Offset: 0x3168
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_67ef132e(a_ents)
{
	namespace_36cbf523::function_bdea6c61(level.var_36f2f9e4);
}

/*
	Name: function_d4580490
	Namespace: village
	Checksum: 0xE625D014
	Offset: 0x3198
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_d4580490(a_ents)
{
	foreach(player in level.activePlayers)
	{
		player thread function_c7c1f146();
	}
	level waittill("hash_471dbb27");
	level thread scene::Play("cin_inf_10_01_foy_aie_reversemortar");
}

/*
	Name: function_e541046b
	Namespace: village
	Checksum: 0xFC9EDD
	Offset: 0x3260
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_e541046b(a_ents)
{
	namespace_36cbf523::function_bdea6c61(level.var_e1c85461);
	level notify("hash_be705059");
}

/*
	Name: function_1bf08d19
	Namespace: village
	Checksum: 0x1C40D08A
	Offset: 0x32A0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1bf08d19()
{
	spawner_setup();
	level thread scene::init("p7_fxanim_cp_infection_reverse_house_01_bundle");
	level thread scene::init("cin_inf_10_01_foy_aie_reversemortar");
	level thread scene::init("cin_inf_10_02_foy_aie_reversewallexplosion_suppressor");
	level thread scene::init("cin_inf_10_01_foy_vign_intro");
}

/*
	Name: function_55081eb6
	Namespace: village
	Checksum: 0xD748D1D6
	Offset: 0x3340
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_55081eb6(var_ea6e4b0d)
{
	if(var_ea6e4b0d)
	{
		level waittill("hash_6aa6dc33");
	}
	else
	{
		level scene::add_player_linked_scene("p7_fxanim_cp_infection_reverse_house_01_bundle");
		level scene::Play("cin_inf_10_01_foy_vign_intro");
	}
	scene::waittill_skip_sequence_completed();
	level flag::wait_till("sarah_anchor_post_scene_done");
	level thread namespace_36cbf523::function_3fe1f72("t_sarah_foy_objective_", 0, &function_3077f3dc);
	level.players[0] thread dialog::say("hall_this_is_the_path_i_0", 2);
	level clientfield::set("village_intro_mortar", 1);
	exploder::exploder("light_foy_introroom");
	level notify("hash_5b12bc4");
	level thread function_2af73f0e();
	level thread function_179f2a9c();
	level scene::init("p7_fxanim_cp_infection_fold_bundle");
}

/*
	Name: function_8b16f470
	Namespace: village
	Checksum: 0x167646FF
	Offset: 0x34C8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8b16f470(a_ents)
{
	level clientfield::set("init_fold", 1);
	a_ents["fold_skinned"] clientfield::set("fold_buildings", 1);
}

/*
	Name: function_6ac10d8c
	Namespace: village
	Checksum: 0x148B7F30
	Offset: 0x3530
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_6ac10d8c(a_ents)
{
	level clientfield::set("start_fold", 1);
}

/*
	Name: function_7ee91ee8
	Namespace: village
	Checksum: 0x8423F15F
	Offset: 0x3568
	Size: 0x113
	Parameters: 1
	Flags: None
*/
function function_7ee91ee8(a_ents)
{
	if(!scene::is_skipping_in_progress())
	{
		foreach(player in level.activePlayers)
		{
			player PlayRumbleOnEntity("infection2_tank_crash_rumble");
			player shellshock("default", 3.5);
		}
	}
	level waittill("hash_9459f59");
	level thread function_f632b4ee();
	level scene::Play("p7_fxanim_cp_infection_reverse_house_01_bundle");
}

/*
	Name: function_179f2a9c
	Namespace: village
	Checksum: 0x2E056DE0
	Offset: 0x3688
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_179f2a9c()
{
	self endon("hash_c2ceb0dd");
	trigger::wait_till("t_alert_german");
	if(level.var_4fd72c4a == 0)
	{
		var_4fd72c4a = 1;
		level notify("hash_c6b9fd97");
		function_4fd72c4a();
	}
}

/*
	Name: function_ac605917
	Namespace: village
	Checksum: 0xEB573BDD
	Offset: 0x36F8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_ac605917()
{
	self endon("disconnect");
	while(!self AttackButtonPressed() && !self throwbuttonpressed() && !self fragButtonPressed())
	{
		wait(0.05);
	}
	wait(0.2);
}

/*
	Name: function_8eb94bbb
	Namespace: village
	Checksum: 0x20DEC940
	Offset: 0x3770
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_8eb94bbb()
{
	self endon("disconnect");
	self function_ac605917();
	level notify("hash_4fd72c4a");
}

/*
	Name: function_2af73f0e
	Namespace: village
	Checksum: 0x308F7E3E
	Offset: 0x37B0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_2af73f0e()
{
	self endon("hash_c6b9fd97");
	Array::spread_all(level.players, &function_8eb94bbb);
	level waittill("hash_4fd72c4a");
	if(level.var_4fd72c4a == 0)
	{
		var_4fd72c4a = 1;
		level notify("hash_c2ceb0dd");
		function_4fd72c4a();
	}
}

/*
	Name: function_4fd72c4a
	Namespace: village
	Checksum: 0xF62B95D
	Offset: 0x3840
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_4fd72c4a()
{
	var_54ff35a3 = GetEnt("foy_intro_german_01_ai", "targetname");
	var_e2f7c668 = GetEnt("foy_intro_german_02_ai", "targetname");
	var_8fa40d1 = GetEnt("foy_intro_german_03_ai", "targetname");
	var_965b80d3 = Array(var_54ff35a3, var_e2f7c668, var_8fa40d1);
	level scene::stop("cin_inf_10_01_foy_aie_reversemortar");
	level thread scene::Play("cin_inf_10_01_foy_aie_reversemortar_react", var_965b80d3);
}

/*
	Name: function_3077f3dc
	Namespace: village
	Checksum: 0x76C30871
	Offset: 0x3940
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_3077f3dc()
{
	self scene::Play("cin_inf_10_01_foy_vign_walk", self);
	self thread scene::init("cin_inf_11_02_fold_1st_airlock_entrance", self);
	function_8e0f756c();
}

/*
	Name: function_f632b4ee
	Namespace: village
	Checksum: 0xCD9AEFBC
	Offset: 0x39A0
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_f632b4ee()
{
	playsoundatposition("evt_infection_record_reverse_event", (-66734, -9538, 491));
	playbackTime = soundgetplaybacktime("evt_infection_record_reverse_event");
	playbackTime = playbackTime * 0.001;
	playbackTime = playbackTime - 0.25;
	wait(playbackTime - 7);
	level util::clientNotify("sndREC");
}

/*
	Name: function_5eb4b60c
	Namespace: village
	Checksum: 0x199DA30F
	Offset: 0x3A48
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_5eb4b60c()
{
	trigger::wait_till("fold_start");
	playsoundatposition("evt_world_fold", (-67613, -4626, 755));
	function_37d87ef1();
}

/*
	Name: function_aa5ecc7
	Namespace: village
	Checksum: 0x9319B651
	Offset: 0x3AA8
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_aa5ecc7()
{
	self endon("death");
	while(1)
	{
		/#
			debugstar(self.origin, 2, (1, 0, 0));
		#/
		wait(0.1);
	}
}

/*
	Name: function_eceb8030
	Namespace: village
	Checksum: 0x8826B44D
	Offset: 0x3AF8
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_eceb8030(var_b196132a)
{
	var_1308049f = struct::get(var_b196132a, "targetname");
	v_offset = VectorScale((0, 0, -1), 500);
	t_radius = namespace_36cbf523::function_5ec7eb7d(var_1308049f.origin + v_offset, 128, 1024);
	t_radius waittill("trigger");
	t_radius delete();
}

/*
	Name: function_215ac586
	Namespace: village
	Checksum: 0x3DCFFCEE
	Offset: 0x3BB8
	Size: 0x265
	Parameters: 0
	Flags: None
*/
function function_215ac586()
{
	spawner::remove_global_spawn_function("axis", &namespace_36cbf523::function_dafed344);
	colors::kill_color_replacements();
	var_f7c28862 = GetAITeamArray("allies");
	for(i = 0; i < var_f7c28862.size; i++)
	{
		if(isdefined(var_f7c28862[i].targetname))
		{
			if(!IsSubStr(var_f7c28862[i].targetname, "sarah"))
			{
				var_f7c28862[i] DoDamage(var_f7c28862[i].health + 100, var_f7c28862[i].origin);
				wait(0.1);
			}
			continue;
		}
		var_f7c28862[i] DoDamage(var_f7c28862[i].health + 100, var_f7c28862[i].origin);
		wait(0.1);
	}
	var_dc4d1688 = GetAITeamArray("axis");
	for(i = 0; i < var_dc4d1688.size; i++)
	{
		if(isalive(var_dc4d1688[i]))
		{
			if(isdefined(var_dc4d1688[i].script_objective))
			{
				if(var_dc4d1688[i].script_objective == "village")
				{
					var_dc4d1688[i] DoDamage(var_dc4d1688[i].health + 100, var_dc4d1688[i].origin);
				}
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_8e0f756c
	Namespace: village
	Checksum: 0x5E886265
	Offset: 0x3E28
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_8e0f756c()
{
	function_c79f9420();
	trigger::wait_till("t_foy_house_regroup", "targetname");
	level thread util::screen_fade_out(1, "white", "foy_white");
	util::wait_network_frame();
	level thread function_215ac586();
	namespace_36cbf523::function_3ea445de();
	namespace_36cbf523::function_aa0ddbc3(0);
	a_blockers = GetEntArray("foy_gather_point_debris_blocker", "targetname");
	level thread function_6d98603d(a_blockers);
	level thread scene::Play("p7_fxanim_cp_infection_reverse_transition_wall_bundle");
	Array::thread_all(level.players, &namespace_36cbf523::function_9f10c537);
	if(isdefined(level.BZMUtil_WaitForAllZombiesToDie))
	{
		[[level.BZMUtil_WaitForAllZombiesToDie]]();
	}
	self thread scene::Play("cin_inf_11_02_fold_1st_airlock_entrance", self);
	level thread namespace_4e2074f4::function_a1dc825e();
	var_7d116593 = struct::get("s_village_inception_lighting_hint", "targetname");
	namespace_36cbf523::function_7aca917c(var_7d116593.origin);
	level thread util::function_d8eaed3d(11);
	wait(1.5);
	level thread skipto::function_be8adfb8("village");
}

/*
	Name: function_c79f9420
	Namespace: village
	Checksum: 0x5BDCD06
	Offset: 0x4048
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c79f9420()
{
	if(!isdefined(level.var_acfc49b5) || !level.var_acfc49b5)
	{
		level.var_acfc49b5 = 1;
		var_b20e84b = struct::get("s_foy_gather_point_blocker", "targetname");
		objectives::set("cp_level_infection_gather_airlock", var_b20e84b);
	}
}

/*
	Name: function_901bfe3e
	Namespace: village
	Checksum: 0x55FCB850
	Offset: 0x40C8
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_901bfe3e(a_blockers)
{
	foreach(blocker in a_blockers)
	{
		blocker Hide();
		blocker notsolid();
	}
}

/*
	Name: function_6d98603d
	Namespace: village
	Checksum: 0xCE9A5008
	Offset: 0x4180
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_6d98603d(a_blockers)
{
	foreach(blocker in a_blockers)
	{
		blocker show();
		blocker solid();
	}
}

/*
	Name: function_7fc734e2
	Namespace: village
	Checksum: 0xE385156B
	Offset: 0x4238
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_7fc734e2()
{
	trigger::wait_till("t_village_mortar_2");
	clientfield::set("village_mortar_index", 2);
	trigger::wait_till("t_village_mortar_3");
	clientfield::set("village_mortar_index", 3);
	trigger::wait_till("t_village_mortar_4");
	clientfield::set("village_mortar_index", 0);
}

/*
	Name: function_87c01d16
	Namespace: village
	Checksum: 0xE9139736
	Offset: 0x42E8
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_87c01d16(n_loops, n_wait)
{
	self endon("death");
	for(i = 0; i < n_loops; i++)
	{
		self PlayRumbleOnEntity("cp_infection_fold_start");
		wait(n_wait);
	}
}

/*
	Name: function_c7c1f146
	Namespace: village
	Checksum: 0xFCE408C9
	Offset: 0x4360
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_c7c1f146()
{
	self endon("death");
	level endon("hash_be705059");
	while(1)
	{
		self PlayRumbleOnEntity("cp_infection_fold_house");
		wait(0.5);
	}
}

/*
	Name: function_37d87ef1
	Namespace: village
	Checksum: 0x37D4C19A
	Offset: 0x43B0
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_37d87ef1()
{
	level thread scene::Play("p7_fxanim_cp_infection_fold_bundle");
	var_55f89057 = GetEnt("fold_earthquake_origin", "targetname");
	/#
		Assert(isdefined(var_55f89057), "Dev Block strings are not supported");
	#/
	foreach(player in level.activePlayers)
	{
		player thread function_87c01d16(3, 0.5);
	}
	wait(3);
	level thread function_ab0f0ce9(57, var_55f89057.origin);
	level thread namespace_36cbf523::function_7ad4dc15(var_55f89057, 3500, 57);
}

/*
	Name: function_ab0f0ce9
	Namespace: village
	Checksum: 0xE2FD464A
	Offset: 0x4508
	Size: 0x185
	Parameters: 2
	Flags: None
*/
function function_ab0f0ce9(n_duration, e_origin)
{
	Earthquake(0.1, n_duration, e_origin, 10000);
	var_3a881315 = 6;
	var_ae578142 = Int(n_duration / var_3a881315) - 1;
	var_1fde3d88 = 1.4;
	var_3ad36936 = 1.6;
	var_5aa5cb2c = 0.25;
	var_45872392 = 0.28;
	for(i = 0; i <= var_ae578142; i++)
	{
		wait(RandomFloatRange(var_3a881315 - 1, var_3a881315));
		var_163d97e9 = RandomFloatRange(var_1fde3d88, var_3ad36936);
		var_a77dfe85 = RandomFloatRange(var_5aa5cb2c, var_45872392);
		Earthquake(var_a77dfe85, var_163d97e9, e_origin, 10000);
	}
}

/*
	Name: function_713ae2bf
	Namespace: village
	Checksum: 0xBCED56B4
	Offset: 0x4698
	Size: 0x297
	Parameters: 1
	Flags: None
*/
function function_713ae2bf(str_door_name)
{
	a_doors = GetEntArray(str_door_name, "targetname");
	/#
		Assert(a_doors.size, "Dev Block strings are not supported");
	#/
	var_5c953c1c = [];
	foreach(m_door in a_doors)
	{
		/#
			Assert(isdefined(m_door.script_int), "Dev Block strings are not supported" + m_door.origin + "Dev Block strings are not supported");
		#/
		/#
			Assert(isdefined(m_door.target), "Dev Block strings are not supported" + m_door.origin + "Dev Block strings are not supported");
		#/
		var_2aa12782 = struct::get(m_door.target, "targetname");
		e_temp = spawn("script_origin", var_2aa12782.origin);
		m_door LinkTo(e_temp);
		e_temp RotateYaw(m_door.script_int, 0.75, 0.2, 0);
		if(!isdefined(var_5c953c1c))
		{
			var_5c953c1c = [];
		}
		else if(!IsArray(var_5c953c1c))
		{
			var_5c953c1c = Array(var_5c953c1c);
		}
		var_5c953c1c[var_5c953c1c.size] = e_temp;
	}
	wait(0.75);
}

/*
	Name: function_fbf84bda
	Namespace: village
	Checksum: 0xC6A6DDF2
	Offset: 0x4938
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_fbf84bda(a_ents)
{
	var_dc5e890e = a_ents["sarah"];
	if(isdefined(var_dc5e890e))
	{
		var_dc5e890e SetTeam("allies");
	}
	else
	{
		var_dc5e890e = level.players[0];
	}
	level waittill("hash_925bfe17");
}

/*
	Name: function_880a13df
	Namespace: village
	Checksum: 0xE88EDABF
	Offset: 0x49B0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_880a13df()
{
	level waittill("hash_5b12bc4");
	util::wait_network_frame();
	savegame::function_5d2cdd99();
	trigger::wait_till("foy_post_fold_spawn_trigger", "targetname");
	savegame::function_5d2cdd99();
}


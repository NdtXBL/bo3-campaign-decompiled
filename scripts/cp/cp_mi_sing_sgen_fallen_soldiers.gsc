#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_mapping_drone;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_sgen;
#using scripts\cp\cp_mi_sing_sgen_accolades;
#using scripts\cp\cp_mi_sing_sgen_enter_silo;
#using scripts\cp\cp_mi_sing_sgen_sound;
#using scripts\cp\cp_mi_sing_sgen_testing_lab_igc;
#using scripts\cp\cp_mi_sing_sgen_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_ed09da6e;

/*
	Name: function_73eb52a7
	Namespace: namespace_ed09da6e
	Checksum: 0xFAF602D4
	Offset: 0x1028
	Size: 0x323
	Parameters: 2
	Flags: None
*/
function function_73eb52a7(str_objective, var_74cd64bc)
{
	level flag::init("kane_robots_convo_done");
	level flag::init("fallen_soldiers_hendricks_ready_to_enter_dayroom");
	level thread function_68f0b726();
	spawner::add_spawn_function_group("fallen_soldiers_spawner", "script_noteworthy", &function_fbd51610);
	spawner::add_spawn_function_group("fallen_soldiers_start_awake", "script_noteworthy", &function_bebe324d);
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		SGEN::function_bff1a867(str_objective);
		var_d3556aed = GetNode("nd_post_jump_downs", "targetname");
		level.var_2fd26037 thread ai::force_goal(var_d3556aed, 32);
		level battlechatter::function_d9f49fba(0);
		level clientfield::set("w_underwater_state", 1);
		level clientfield::set("fallen_soldiers_client_fxanims", 1);
		objectives::complete("cp_level_sgen_enter_sgen_no_pointer");
		objectives::complete("cp_level_sgen_investigate_sgen");
		objectives::complete("cp_level_sgen_locate_emf");
		objectives::set("cp_level_sgen_find_recon_drone", level.var_ea764859);
		level thread namespace_d40478f6::function_71f06599();
		namespace_2afd69a::spawn_drone(undefined, 0);
		PlayFXOnTag(level._effect["drone_sparks"], level.var_ea764859, "tag_origin");
		load::function_a2995f22();
	}
	for(x = 0; x < 6; x++)
	{
		Array::run_all(GetEntArray("robot0" + x, "targetname"), &delete);
	}
	main();
	skipto::function_be8adfb8("fallen_soldiers");
}

/*
	Name: function_51f4af5d
	Namespace: namespace_ed09da6e
	Checksum: 0x118256A7
	Offset: 0x1358
	Size: 0x12B
	Parameters: 4
	Flags: None
*/
function function_51f4af5d(str_objective, var_d6b1856a, var_e4cd2b8b, player)
{
	for(x = 0; x < 6; x++)
	{
		Array::thread_all(GetEntArray("robot0" + x, "targetname"), &util::self_delete);
	}
	exploder::delete_exploder_on_clients("fallen_soldiers_decon_spray");
	struct::delete_script_bundle("scene", "cin_sgen_12_01_corvus_vign_secret_entrance_hendricks");
	struct::delete_script_bundle("scene", "cin_sgen_12_01_corvus_vign_dayroom");
	struct::delete_script_bundle("scene", "cin_sgen_13_01_fallensoldiers_vign_grab_start");
	struct::delete_script_bundle("scene", "cin_sgen_13_01_fallensoldiers_vign_grab_end");
}

/*
	Name: main
	Namespace: namespace_ed09da6e
	Checksum: 0xEABC67B3
	Offset: 0x1490
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function main()
{
	level.var_2fd26037.goalRadius = 16;
	level.var_2fd26037 colors::disable();
	level thread scene::init("cin_sgen_14_humanlab_3rd_sh005");
	level thread vo();
	level thread function_ab5cee74();
	level thread function_b2ddfb27();
	level thread namespace_d40478f6::function_973b77f9();
	function_6596c28b();
	level flag::wait_till_timeout(40, "fallen_soldiers_hendricks_ready_to_enter_dayroom");
	trigger::wait_or_timeout(5, "fallen_soldiers_encounter_clear_trig");
	level notify("hash_aa9b4587");
	level thread function_f7879f6f();
	function_edc1192b(20, "fallen_soldiers_robots_cleared");
	level.var_2fd26037 SetGoal(GetNode("fallen_soldiers_hendricks_dayroom_enter_node", "targetname"), 1);
	level flag::wait_till("fallen_soldiers_dayroom_started");
	spawner::waittill_ai_group_cleared("fallen_soldiers_extra_robots");
	level.var_2fd26037 waittill("goal");
	wait(0.5);
	function_5ed260ac();
	trigger::wait_till("fallen_soldiers_exit_zone_trig");
}

/*
	Name: function_99e352d9
	Namespace: namespace_ed09da6e
	Checksum: 0x70A88D21
	Offset: 0x16B8
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_99e352d9()
{
	level endon("hash_38e80c44");
	level.var_2fd26037 SetGoal(GetNode("fallen_soldiers_hendricks_decon_door_exit_node", "targetname"), 1);
	level.var_2fd26037 waittill("goal");
	level.var_2fd26037 function_2b5c3469("fallen_soldiers_hendricks_decon_exit_zone_aitrig");
	level.var_2fd26037 ai::set_ignoreme(0);
	level flag::wait_till("fallen_soldiers_lockerroom_second_spawn");
	level.var_2fd26037 function_2b5c3469("fallen_soldiers_hendricks_dayroom_approach_aitrig");
	level flag::set("fallen_soldiers_hendricks_ready_to_enter_dayroom");
}

/*
	Name: function_568e0f1b
	Namespace: namespace_ed09da6e
	Checksum: 0xB10041AB
	Offset: 0x17B8
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_568e0f1b()
{
	var_aaf02c35 = GetEnt("fallen_soldiers_left_first_spawn_trig", "targetname");
	var_d07fc618 = GetEnt("fallen_soldiers_right_first_spawn_trig", "targetname");
	var_aaf02c35 endon("death");
	var_d07fc618 waittill("death");
}

/*
	Name: function_2b5c3469
	Namespace: namespace_ed09da6e
	Checksum: 0x787E19DE
	Offset: 0x1840
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function function_2b5c3469(str_key, str_val)
{
	if(!isdefined(str_val))
	{
		str_val = "targetname";
	}
	self endon("death");
	level endon("hash_38e80c44");
	var_68d8f035 = GetEnt(str_key, str_val);
	var_12859611 = GetNode(var_68d8f035.target, "targetname");
	var_68d8f035 endon("death");
	do
	{
		var_68d8f035 waittill("trigger");
		var_f580cae3 = 0;
		var_64e85e6d = GetAISpeciesArray("team3", "robot");
		foreach(var_f6c5842 in var_64e85e6d)
		{
			if(isalive(var_f6c5842) && var_f6c5842 istouching(self))
			{
				var_f580cae3++;
			}
		}
		wait(1.5);
	}
	while(!var_f580cae3 > 0);
	self SetGoal(var_12859611);
}

/*
	Name: function_b2ddfb27
	Namespace: namespace_ed09da6e
	Checksum: 0x35BAC656
	Offset: 0x1A18
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_b2ddfb27()
{
	t_hack = GetEnt("trig_testing_lab_door", "targetname");
	t_hack TriggerEnable(0);
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_decon_hallway_door", "close");
	level scene::add_scene_func("cin_sgen_12_01_corvus_vign_secret_entrance_hendricks", &function_cc10b9af, "init");
	level scene::init("cin_sgen_12_01_corvus_vign_secret_entrance_hendricks");
	level flag::wait_till("player_entered_corvus");
	level flag::wait_till("hendricks_corvus_examination");
	if(isdefined(level.BZM_SGENDialogue5Callback))
	{
		level thread [[level.BZM_SGENDialogue5Callback]]();
	}
	level scene::add_scene_func("cin_sgen_12_01_corvus_vign_secret_entrance_hendricks", &function_1c39896e, "play");
	level scene::Play("cin_sgen_12_01_corvus_vign_secret_entrance_hendricks");
	level thread namespace_d40478f6::function_22982c6e();
	level.var_2fd26037 waittill("goal");
	wait(0.5);
	level scene::init("cin_sgen_13_01_fallensoldiers_vign_grab_start");
	trigger::wait_till("fallen_soldiers_enter_decon_trig");
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_enter_door", "open");
	level notify("hash_3b302c78");
	trigger::wait_till("fallen_soldiers_hendricks_grab_start", undefined, undefined, 0);
	level scene::Play("cin_sgen_13_01_fallensoldiers_vign_grab_start");
	var_3ab04d1b = GetEnt("decontamination_room_trigger", "targetname");
	var_3ab04d1b namespace_cba4cc55::function_36a6e271(1, Array(level.var_2fd26037));
	level notify("hash_b0f8d01");
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_enter_door", "close");
	level notify("hash_c74ae0a4");
	wait(1.3);
	scene::add_scene_func("cin_sgen_13_01_fallensoldiers_vign_grab_end", &function_2f485a41);
	level scene::Play("cin_sgen_13_01_fallensoldiers_vign_grab_end");
	level flag::set("fallen_soldiers_hendricks_ready");
}

/*
	Name: function_2f485a41
	Namespace: namespace_ed09da6e
	Checksum: 0x3AD078FA
	Offset: 0x1D88
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_2f485a41(a_ents)
{
	foreach(e_robot in a_ents)
	{
		if(e_robot.targetname == "fallen_soldiers_grab_robot")
		{
			e_robot thread function_d43d6872();
		}
	}
}

/*
	Name: function_d43d6872
	Namespace: namespace_ed09da6e
	Checksum: 0x77FFD898
	Offset: 0x1E40
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_d43d6872()
{
	self waittill("lights_on");
	self clientfield::set("play_cia_robot_rogue_control", 1);
	self waittill("lights_out");
	self clientfield::set("play_cia_robot_rogue_control", 0);
}

/*
	Name: function_1c39896e
	Namespace: namespace_ed09da6e
	Checksum: 0x3039620E
	Offset: 0x1EA8
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_1c39896e(a_ents)
{
	level waittill("hash_8fb37212");
	level flag::set("fallen_soldiers_hendricks_approaching_exit");
	level.var_2fd26037 SetGoal(GetNode("fallen_soldiers_hendricks_decon_ready_node", "targetname"), 1);
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_decon_hallway_door", "open");
	level notify("hash_b8163f70");
}

/*
	Name: function_6596c28b
	Namespace: namespace_ed09da6e
	Checksum: 0x87DC8442
	Offset: 0x1F60
	Size: 0x34B
	Parameters: 0
	Flags: None
*/
function function_6596c28b()
{
	var_3d011d2a = GetEntArray("fallen_soldiers_robot_trigger", "script_noteworthy");
	var_dc854c29 = GetEnt("fallen_soldiers_spawner", "targetname");
	var_99abfd05 = GetEntArray("fallen_soldiers_walkeup_looktrig", "targetname");
	Array::thread_all(var_99abfd05, &function_7d5168cb);
	foreach(var_10e4a34a in var_3d011d2a)
	{
		var_10e4a34a thread function_80a49394(var_dc854c29);
	}
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_enter_door", "close");
	level flag::wait_till("fallen_soldiers_hendricks_ready");
	level flag::set("fallen_soldiers_robots_wakeup_started");
	playsoundatposition("evt_decon_light_breaker", (828, -1411, -4552));
	exploder::exploder("fallen_soldiers_decon_spray");
	exploder::exploder("lgt_light_deconroom");
	level.var_2fd26037.goalRadius = 16;
	level.var_2fd26037 ai::set_ignoreme(1);
	level.var_2fd26037 SetGoal(GetNode("fallen_soldiers_hendricks_decon_battle_node", "targetname"), 1);
	var_59101dfd = GetEnt("fallen_soldiers_decon_room_wake_trig", "targetname");
	var_59101dfd waittill("death");
	function_edc1192b(7, "fallen_soldiers_robots_decon_room_cleared");
	spawn_manager::enable("fallen_soldiers_decon_room_door_rushers_spawnmanager");
	level notify("hash_2454d800");
	level thread namespace_cba4cc55::function_423cfae8("fallen_soldiers_exit_door", "open");
	spawn_manager::function_347e835a("fallen_soldiers_decon_room_door_rushers_spawnmanager");
	level thread function_99e352d9();
	trigger::wait_till("fallen_soldiers_decon_room_exit_trig");
}

/*
	Name: function_5ed260ac
	Namespace: namespace_ed09da6e
	Checksum: 0xBA69DE56
	Offset: 0x22B8
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_5ed260ac()
{
	level scene::add_scene_func("cin_sgen_12_01_corvus_vign_dayroom", &function_3dbe13f9, "play");
	level scene::Play("cin_sgen_12_01_corvus_vign_dayroom");
	level notify("hash_96a30d1b");
}

/*
	Name: function_3dbe13f9
	Namespace: namespace_ed09da6e
	Checksum: 0x302CFC14
	Offset: 0x2328
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_3dbe13f9(a_ents)
{
	level.var_2fd26037 colors::disable();
	level.var_2fd26037.goalRadius = 16;
	level.var_2fd26037 SetGoal(GetNode("fallen_soldiers_hendricks_hack_door_node", "targetname"), 1);
	level.var_2fd26037 waittill("goal");
	level.var_2fd26037 ClearForcedGoal();
}

/*
	Name: vo
	Namespace: namespace_ed09da6e
	Checksum: 0x294A0BB0
	Offset: 0x23D0
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function vo()
{
	util::waittill_any("player_saw_drone", "hendricks_approaching_drone");
	level thread namespace_d40478f6::function_55f6ee71();
	level dialog::function_13b3b16a("plyr_what_the_hell_happen_0");
	level notify("hash_d840edf1");
	level thread namespace_d40478f6::function_973b77f9();
	objectives::complete("cp_level_sgen_find_recon_drone");
	level waittill("hash_3b302c78");
	level dialog::function_13b3b16a("plyr_what_s_going_on_here_0", 1.5);
	level waittill("hash_c74ae0a4");
	playsoundatposition("evt_decon_alarm", (796, -1406, -4604));
	level thread namespace_d40478f6::function_3eb3d06();
	level waittill("hash_2b998700");
	level.var_2fd26037 dialog::say("hend_what_the_hell_0");
	level battlechatter::function_d9f49fba(1);
	level waittill("hash_2454d800");
	objectives::set("cp_level_sgen_goto_signal_source");
	level waittill("hash_2cbed988");
	level flag::wait_till("fallen_soldiers_robots_cleared");
	level battlechatter::function_d9f49fba(0);
	level thread namespace_d40478f6::function_973b77f9();
	level thread function_c1c96249();
	level.var_2fd26037 dialog::say("hend_area_clear_stay_ale_0", 1.5);
	level dialog::function_13b3b16a("plyr_kane_you_ever_see_a_0", 0.2);
	level dialog::remote("kane_i_ve_never_seen_any_0", 0.2);
	level thread function_fe403015();
	level flag::set("kane_robots_convo_done");
}

/*
	Name: function_fe403015
	Namespace: namespace_ed09da6e
	Checksum: 0xD66C1529
	Offset: 0x2678
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_fe403015()
{
	trigger::wait_till("fallen_soldiers_enter_reception_looktrig");
	level thread namespace_d40478f6::function_973b77f9();
	level flag::wait_till("kane_robots_convo_done");
	level dialog::remote("kane_according_to_the_gps_0");
}

/*
	Name: function_c1c96249
	Namespace: namespace_ed09da6e
	Checksum: 0x9ECA454E
	Offset: 0x26F8
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_c1c96249()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	level endon("hash_89d9c0f");
	level endon("hash_c1907e5d");
	var_337b3942 = GetEnt("dayroom_salim_speaker", "targetname");
	for(i = 1; i < 6; i++)
	{
		var_2050b70 = "vox_sgen_visual_extracts_00" + i + "_salm";
		var_337b3942 PlaySoundWithNotify(var_2050b70, "sounddone");
		var_337b3942 waittill("sounddone");
		wait(5);
	}
}

/*
	Name: function_68f0b726
	Namespace: namespace_ed09da6e
	Checksum: 0x5252143E
	Offset: 0x27E0
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_68f0b726()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	var_277885f5 = GetEntArray("trig_salim_journal_use", "targetname");
	level.var_38cfe33a = [];
	level.var_d0b26d28 = 0;
	foreach(trigger in var_277885f5)
	{
		level.var_38cfe33a[trigger.script_int] = util::function_14518e76(trigger, &"cp_prompt_dni_sgen_access_journal", &"CP_MI_SING_SGEN_ACCESS_JOURNAL", &function_a43abada);
	}
}

/*
	Name: function_88a16751
	Namespace: namespace_ed09da6e
	Checksum: 0xF97266F9
	Offset: 0x2900
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_88a16751()
{
	self stopsounds();
	wait(0.1);
	self playsound("evt_salim_speaker_destroy");
}

/*
	Name: function_a43abada
	Namespace: namespace_ed09da6e
	Checksum: 0xCA95EB43
	Offset: 0x2950
	Size: 0x213
	Parameters: 0
	Flags: None
*/
function function_a43abada()
{
	var_6a8436fc = self GetLinkedEnt();
	var_c50aa484 = spawn("script_origin", self.origin);
	level.var_d0b26d28++;
	level notify("hash_c1907e5d");
	var_337b3942 = GetEnt("dayroom_salim_speaker", "targetname");
	var_337b3942 thread function_88a16751();
	switch(level.var_d0b26d28)
	{
		case 1:
		{
			var_55df1164 = "vox_sgen_medical_logs_001_salm";
			break;
		}
		case 2:
		{
			var_55df1164 = "vox_sgen_medical_logs_002_salm";
			break;
		}
		case 3:
		{
			var_55df1164 = "vox_sgen_medical_logs_003_salm";
			break;
		}
		case 4:
		{
			var_55df1164 = "vox_sgen_medical_logs_004_salm";
			break;
		}
		case 5:
		{
			var_55df1164 = "vox_sgen_medical_logs_005_salm";
			break;
		}
		case 6:
		{
			var_55df1164 = "vox_sgen_medical_logs_006_salm";
			break;
		}
		case 7:
		{
			var_55df1164 = "vox_sgen_medical_logs_007_salm";
			break;
		}
	}
	if(isdefined(level.var_79b63714))
	{
		level.var_79b63714 stopsounds();
	}
	var_c50aa484 playsound(var_55df1164);
	level.var_79b63714 = var_c50aa484;
	if(level.var_d0b26d28 == 7)
	{
		namespace_99202726::function_c75f9c25();
	}
	self gameobjects::destroy_object(1);
	self delete();
}

/*
	Name: function_edc1192b
	Namespace: namespace_ed09da6e
	Checksum: 0x28D5A57D
	Offset: 0x2B70
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_edc1192b(n_timeout, str_flag)
{
	level thread function_516039af(str_flag);
	level flag::wait_till_timeout(n_timeout, str_flag);
	level flag::set(str_flag);
}

/*
	Name: function_7d5168cb
	Namespace: namespace_ed09da6e
	Checksum: 0xC18628B4
	Offset: 0x2BE0
	Size: 0xD7
	Parameters: 0
	Flags: None
*/
function function_7d5168cb()
{
	self endon("death");
	level endon("hash_aa9b4587");
	var_c9cf27c4 = struct::get(self.target, "targetname");
	var_7f788a1 = GetEnt(var_c9cf27c4.target, "targetname");
	var_7f788a1 endon("death");
	while(1)
	{
		self waittill("trigger");
		if(isdefined(var_7f788a1))
		{
			var_7f788a1 trigger::use();
		}
		else
		{
			self delete();
		}
	}
}

/*
	Name: function_80a49394
	Namespace: namespace_ed09da6e
	Checksum: 0xECD6999C
	Offset: 0x2CC0
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_80a49394(var_dc854c29)
{
	self endon("death");
	level endon("hash_aa9b4587");
	/#
		Assert(isdefined(self.target), "Dev Block strings are not supported" + self.origin);
	#/
	var_64e85e6d = [];
	var_b6944555 = struct::get_array(self.target);
	foreach(var_f3505fa in var_b6944555)
	{
		var_64e85e6d[n_count] = spawner::simple_spawn_single(var_dc854c29);
		var_f3505fa thread scene::init(var_64e85e6d[n_count]);
	}
	level flag::wait_till("fallen_soldiers_robots_wakeup_started");
	foreach(var_f3505fa in var_b6944555)
	{
		if(isalive(var_64e85e6d[n_count]))
		{
			self function_ae64ae2(var_64e85e6d[n_count], var_f3505fa);
		}
	}
	self delete();
}

/*
	Name: function_ae64ae2
	Namespace: namespace_ed09da6e
	Checksum: 0xD672CA75
	Offset: 0x2EC8
	Size: 0xB9
	Parameters: 2
	Flags: None
*/
function function_ae64ae2(var_f6c5842, var_f3505fa)
{
	level endon("hash_aa9b4587");
	var_f6c5842 endon("death");
	self endon("death");
	self util::waittill_any_ents(var_f6c5842, "damage", self, "trigger");
	wait(RandomFloatRange(0.1, 0.25));
	var_f6c5842 function_89ba9422();
	var_f3505fa scene::Play(var_f6c5842);
	level notify("hash_2cbed988");
}

/*
	Name: function_31e3341a
	Namespace: namespace_ed09da6e
	Checksum: 0x4765CFF8
	Offset: 0x2F90
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_31e3341a()
{
	n_min_wait = namespace_cba4cc55::function_411dc61b(1.3, -0.25);
	n_max_wait = namespace_cba4cc55::function_411dc61b(2.4, -0.51);
	if(n_min_wait < 0)
	{
		n_min_wait = 0;
	}
	if(n_max_wait <= 0)
	{
		n_max_wait = 0.2;
	}
	wait(RandomFloatRange(n_min_wait, n_max_wait));
}

/*
	Name: function_fbd51610
	Namespace: namespace_ed09da6e
	Checksum: 0xF194BC8
	Offset: 0x3060
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_fbd51610()
{
	self.team = "team3";
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self ai::set_behavior_attribute("robot_lights", 2);
}

/*
	Name: function_bebe324d
	Namespace: namespace_ed09da6e
	Checksum: 0xDA385CBE
	Offset: 0x30D0
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_bebe324d()
{
	self endon("death");
	self.team = "team3";
	self.var_164093db = 1;
	n_level = 2;
	if(isdefined(self.script_int))
	{
		n_level = self.script_int;
	}
	if(isdefined(self.script_string))
	{
		if(self.script_string == "crawler")
		{
			self.crawlerLifeTime = GetTime() + randomIntRange(20000, 30000);
			self ai::set_behavior_attribute("force_crawler", "remove_legs");
			self ai::set_behavior_attribute("rogue_control", "forced_level_1");
		}
	}
	else
	{
		self ai::set_behavior_attribute("rogue_control", "forced_level_" + n_level);
	}
}

/*
	Name: function_89ba9422
	Namespace: namespace_ed09da6e
	Checksum: 0x83EFBBFE
	Offset: 0x31F8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_89ba9422()
{
	self.var_164093db = 1;
	self playsound("evt_robot_ambush_arise");
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	self ai::set_behavior_attribute("robot_lights", 0);
	self ai::set_behavior_attribute("rogue_control", "forced_level_2");
}

/*
	Name: function_516039af
	Namespace: namespace_ed09da6e
	Checksum: 0x18F61498
	Offset: 0x32A8
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_516039af(str_flag)
{
	level endon(str_flag);
	var_64e85e6d = GetAISpeciesArray("team3", "robot");
	var_64e85e6d function_15debd57(str_flag);
	level flag::set(str_flag);
}

/*
	Name: function_15debd57
	Namespace: namespace_ed09da6e
	Checksum: 0xB09C994B
	Offset: 0x3328
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_15debd57(str_ender)
{
	level endon(str_ender);
	foreach(var_f6c5842 in self)
	{
		if(isalive(var_f6c5842) && (isdefined(var_f6c5842.var_164093db) && var_f6c5842.var_164093db))
		{
			var_f6c5842 waittill("death");
		}
	}
}

/*
	Name: function_f7879f6f
	Namespace: namespace_ed09da6e
	Checksum: 0x164FA10A
	Offset: 0x3400
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f7879f6f()
{
	trigger::wait_till("fallen_soldiers_encounter_clear_trig", undefined, undefined, 0);
	spawn_manager::kill("fallen_soldiers_mid_encounter_group");
}

/*
	Name: function_ab5cee74
	Namespace: namespace_ed09da6e
	Checksum: 0x9EA5E662
	Offset: 0x3448
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_ab5cee74()
{
	level waittill("hash_b8163f70");
	objectives::set("cp_level_sgen_goto_signal_source");
	level thread objectives::breadcrumb("fallen_soldiers_decon_breadcrumb");
	level waittill("hash_b0f8d01");
	objectives::complete("cp_waypoint_breadcrumb");
	level waittill("hash_2454d800");
	level thread objectives::breadcrumb("fallen_soldiers_decon_room_breadcrumb_start");
	level waittill("hash_96a30d1b");
	level thread objectives::breadcrumb("fallen_soldiers_end_breadcrumb_trig");
}

/*
	Name: function_cc10b9af
	Namespace: namespace_ed09da6e
	Checksum: 0x19253B3E
	Offset: 0x3518
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_cc10b9af(a_ents)
{
	objectives::set("cp_waypoint_breadcrumb", a_ents["mapping_drone"]);
	trigger::wait_till("fallen_soldiers_drone_intro_looktrig");
	objectives::complete("cp_waypoint_breadcrumb", a_ents["mapping_drone"]);
}


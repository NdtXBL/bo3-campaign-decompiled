#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_decorations;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_training_sim;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_loadout;
#using scripts\cp\gametypes\_save;
#using scripts\cp\voice\voice_safehouse;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\music_shared;
#using scripts\shared\player_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\weapons_shared;

#namespace namespace_a6816cde;

/*
	Name: function_2dc19561
	Namespace: namespace_a6816cde
	Checksum: 0x96CE0DB4
	Offset: 0x2630
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("safehouse", &function_8c87d8eb, &function_5b6b9132, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_a6816cde
	Checksum: 0xFD257A1F
	Offset: 0x2678
	Size: 0x8FB
	Parameters: 0
	Flags: Private
*/
function private function_8c87d8eb()
{
	level.var_3da0c335 = 1;
	var_ab91e00d = function_6f1ebe57("cp_queued_level", "");
	if(world.var_1048aced !== 0 && var_ab91e00d == "cp_mi_eth_prologue")
	{
		level.var_1048aced = 1;
	}
	if(!isdefined(world.var_33c691cb))
	{
		world.var_33c691cb = "cp_mi_eth_prologue";
	}
	if(!isdefined(world.var_a6f47549))
	{
		world.var_a6f47549 = "cp_mi_eth_prologue";
	}
	if(var_ab91e00d != "")
	{
	}
	else
	{
	}
	level.var_a6f47549 = world.var_a6f47549;
	level.var_80f3ca12 = world.var_80f3ca12;
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			world.var_33c691cb = "Dev Block strings are not supported";
		}
		var_de99b1ca = function_6f1ebe57("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(var_de99b1ca != "Dev Block strings are not supported")
		{
			level.var_80f3ca12 = var_de99b1ca;
		}
		function_d0eaf029("Dev Block strings are not supported" + level.var_a6f47549, (1, 1, 1), -1);
	#/
	if(isdefined(world.var_2c7a40d3) && world.var_2c7a40d3 && isdefined(level.var_80f3ca12))
	{
		level.var_2c7a40d3 = 1;
		world.var_2c7a40d3 = undefined;
	}
	world.var_1048aced = 0;
	namespace_82b91a51::function_ee915e11("start_player");
	namespace_b7f87735::function_e230521c();
	function_769e64f9();
	function_cf4c3bd8();
	namespace_cc27597::function_8f9f34e0("cin_saf_ram_readyroom_3rd_pre100_player01", &function_51970da0, "play");
	namespace_cc27597::function_8f9f34e0("cin_saf_ram_readyroom_3rd_pre100_player01_enter", &function_51970da0, "play");
	namespace_cc27597::function_8f9f34e0("cin_saf_ram_readyroom_3rd_pre100_player02", &function_51970da0, "play");
	namespace_cc27597::function_8f9f34e0("cin_saf_ram_readyroom_3rd_pre100_player02_enter", &function_51970da0, "play");
	namespace_cc27597::function_8f9f34e0("cin_saf_ram_readyroom_3rd_pre100_player03", &function_51970da0, "play");
	namespace_cc27597::function_8f9f34e0("cin_saf_ram_readyroom_3rd_pre100_player03_enter", &function_51970da0, "play");
	namespace_cc27597::function_8f9f34e0("cin_saf_ram_readyroom_3rd_pre100_player04", &function_51970da0, "play");
	namespace_cc27597::function_8f9f34e0("cin_saf_ram_readyroom_3rd_pre100_player04_enter", &function_51970da0, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_safehouse_crates_plastic_tech_bundle", &function_a35cc107, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_safehouse_crates_plastic_tech_close_bundle", &function_6ca97001, "done");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_safehouse_locker_metal_barrack_bundle", &function_2cafba2, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_safehouse_locker_metal_barrack_close_bundle", &function_ffeaa7c4, "done");
	namespace_71e9cb84::function_50f16166("world", "nextMap", 1, 6, "int");
	namespace_71e9cb84::function_50f16166("world", "near_gun_rack", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_console_1", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_console_2", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_console_3", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_console_4", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "player_clone", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "training_sim_extracam", 1, function_eaa48678(4), "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "gun_rack_init", 1, function_eaa48678(1), "int");
	namespace_71e9cb84::function_50f16166("toplayer", "sh_exit_duck_active", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "safehouse.inClientBunk", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "safehouse.inTrainingSim", 1, 1, "int");
	level namespace_ad23e503::function_c35e6aab("player_entering_ready_room");
	level namespace_ad23e503::function_c35e6aab("player_exiting_ready_room");
	level namespace_ad23e503::function_c35e6aab("player_near_gun_rack");
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_dabbe128::function_95670def(&function_7d27aacb);
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_1b292fa6(&function_1b292fa6);
	namespace_dabbe128::function_aa179d1b(&function_bcfa7205);
	namespace_dabbe128::function_aa179d1b(&function_c6f2aa2b);
	function_9e3608e3("training_sim_extracam_screen_on1");
	function_9e3608e3("training_sim_extracam_screen_on2");
	function_9e3608e3("training_sim_extracam_screen_on3");
	function_9e3608e3("training_sim_extracam_screen_on4");
	if(!isdefined(level.var_b57a1b14))
	{
		level.var_b57a1b14 = [];
	}
	function_3d4973d1();
	namespace_d0ef8521::function_74d6b22f("cp_safehouse_ready_room");
	namespace_d0ef8521::function_74d6b22f("cp_safehouse_training_start");
	namespace_d0ef8521::function_74d6b22f("cp_safehouse_training_nextround");
	level thread function_6eee8df0();
	level thread function_23a33dca();
}

/*
	Name: function_3d4973d1
	Namespace: namespace_a6816cde
	Checksum: 0x554072E6
	Offset: 0x2F80
	Size: 0x1745
	Parameters: 0
	Flags: None
*/
function function_3d4973d1()
{
	level.var_7f97650d = function_6ada35ba("ambient_vo_ent", "targetname");
	switch(level.var_a6f47549)
	{
		case "cp_mi_eth_prologue":
		{
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_4a26a148 = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			function_77cfa54b(var_4a26a148 + "_this_morning_member_0", undefined, "ambient");
			function_77cfa54b(var_4a26a148 + "_this_administration_0", 2, "ambient");
			function_77cfa54b(var_4a26a148 + "_we_will_continue_to_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_in_just_a_few_short_0", undefined, "ambient");
			function_77cfa54b(var_b3950cbc + "_with_the_capture_of_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_the_wa_have_denied_s_0", 2, "ambient");
			break;
		}
		case "cp_mi_zurich_newworld":
		{
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_80bd48dc = "m" + "f";
			function_77cfa54b(var_b3950cbc + "_though_a_spokesperso_0", undefined, "ambient");
			function_77cfa54b(var_b3950cbc + "_with_the_minister_no_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_certainly_many_are_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_there_s_no_doubt_tha_0", undefined, "ambient");
			function_77cfa54b(var_80bd48dc + "_the_increasing_preva_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_the_development_of_d_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_ironically_however_0", 2, "ambient");
			break;
		}
		case "cp_mi_sing_blackstation":
		{
			function_77cfa54b("plyr_hey_hendricks_beat_0", 1, "player");
			function_77cfa54b("hend_singapore_one_of_my_0", 1, "remote");
			function_77cfa54b("plyr_oh_yeah_this_is_a_0", 1, "player");
			function_77cfa54b("hend_glad_you_remember_0", 1, "remote");
			function_77cfa54b("plyr_ah_they_re_always_w_0", 1, "player");
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_4a26a148 = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_80bd48dc = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			function_77cfa54b(var_4a26a148 + "_while_it_is_true_tha_0", undefined, "ambient");
			function_77cfa54b(var_4a26a148 + "_though_the_cause_of_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_one_of_the_key_probl_0", undefined, "ambient");
			function_77cfa54b(var_80bd48dc + "_in_the_chaos_of_the_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_what_we_do_know_for_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_on_the_anniversary_o_0", undefined, "ambient");
			function_77cfa54b(var_b3950cbc + "_despite_the_many_eff_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_the_emergence_of_cri_0", 2, "ambient");
			break;
		}
		case "cp_mi_sing_biodomes":
		case "cp_mi_sing_biodomes2":
		{
			function_77cfa54b("hend_so_i_wanted_to_ask_0", 1, "remote");
			function_77cfa54b("plyr_kane_said_they_re_of_0", 1, "player");
			function_77cfa54b("hend_i_m_not_so_sure_i_t_0", 1, "remote");
			function_77cfa54b("plyr_i_think_you_re_being_0", 1, "player");
			function_77cfa54b("hend_i_guess_we_ll_see_0", 1, "remote");
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_4a26a148 = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			function_77cfa54b(var_4a26a148 + "_in_light_of_today_s_0", undefined, "ambient");
			function_77cfa54b(var_4a26a148 + "_we_are_coordinating_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_the_scale_of_these_i_0", undefined, "ambient");
			function_77cfa54b(var_b3950cbc + "_hundreds_of_thousand_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_it_s_going_to_take_a_0", 2, "ambient");
			break;
		}
		case "cp_mi_sing_sgen":
		{
			function_77cfa54b("hend_so_according_to_kan_0", 1, "remote");
			function_77cfa54b("plyr_about_what_i_did_to_0", 1, "player");
			function_77cfa54b("hend_i_know_beat_i_a_0", 1, "remote");
			function_77cfa54b("plyr_kane_said_that_whate_0", 1, "player");
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_4a26a148 = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			function_77cfa54b(var_4a26a148 + "_in_recent_days_we_ha_0", undefined, "ambient");
			function_77cfa54b(var_4a26a148 + "_however_the_allega_0", 2, "ambient");
			function_77cfa54b(var_4a26a148 + "_the_inflammatory_acc_0", 2, "ambient");
			function_77cfa54b(var_4a26a148 + "_i_ask_that_members_o_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_while_we_do_not_know_0", 3, "ambient");
			break;
		}
		case "cp_mi_sing_vengeance":
		{
			function_77cfa54b("hend_i_m_telling_you_now_0", 1, "remote");
			function_77cfa54b("plyr_this_isn_t_up_for_di_0", 1, "player");
			function_77cfa54b("hend_you_know_they_want_u_0", 1, "remote");
			function_77cfa54b("plyr_it_s_not_our_actions_0", 1, "player");
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_4a26a148 = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_80bd48dc = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			function_77cfa54b(var_4a26a148 + "_as_i_said_before_w_0", undefined, "ambient");
			function_77cfa54b(var_b3950cbc + "_it_s_hard_to_imagine_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_the_suggestion_that_0", undefined, "ambient");
			function_77cfa54b(var_80bd48dc + "_certainly_various_r_0", 2, "ambient");
			break;
		}
		case "cp_mi_cairo_ramses":
		case "cp_mi_cairo_ramses2":
		{
			function_77cfa54b("hend_how_is_she_1", 1, "remote");
			function_77cfa54b("plyr_she_s_strong_meds_0", 1, "player");
			function_77cfa54b("hend_so_you_re_okay_wit_0", 1, "remote");
			function_77cfa54b("plyr_okay_with_what_hend_0", 1, "player");
			function_77cfa54b("hend_okay_with_the_fact_t_0", 1, "remote");
			function_77cfa54b("plyr_they_leaked_classifi_0", 1, "player");
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_4a26a148 = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			function_77cfa54b(var_4a26a148 + "_the_actions_perpetra_0", undefined, "ambient");
			function_77cfa54b(var_4a26a148 + "_at_this_time_we_are_0", 2, "ambient");
			function_77cfa54b(var_4a26a148 + "_as_this_time_those_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_ground_forces_contin_0", undefined, "ambient");
			function_77cfa54b(var_b3950cbc + "_already_suffering_un_0", 2, "ambient");
			break;
		}
		case "cp_mi_cairo_infection":
		case "cp_mi_cairo_infection2":
		case "cp_mi_cairo_infection3":
		{
			function_77cfa54b("kane_wake_up_beat_ther_0", 1, "remote");
			function_77cfa54b("plyr_where_s_hendricks_0", 1, "player");
			function_77cfa54b("kane_he_s_asleep_i_m_run_0", 1, "remote");
			function_77cfa54b("plyr_can_i_trust_you_0", 1, "player");
			function_77cfa54b("kane_how_about_i_tell_you_0", 1, "remote");
			function_77cfa54b("plyr_taylor_s_still_speak_0", 1, "player");
			function_77cfa54b("kane_i_think_his_dni_ha_0", 1, "remote");
			function_77cfa54b("plyr_but_we_can_track_the_0", 1, "player");
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_80bd48dc = "m" + "f";
			function_77cfa54b(var_b3950cbc + "_yesterday_saw_some_o_0", undefined, "ambient");
			function_77cfa54b(var_b3950cbc + "_ramses_station_one_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_while_allied_forces_0", 2, "ambient");
			function_77cfa54b(var_b3950cbc + "_the_outcome_was_perh_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_there_s_a_long_histo_0", undefined, "ambient");
			function_77cfa54b(var_80bd48dc + "_there_is_every_reaso_0", 2, "ambient");
			break;
		}
		case "cp_mi_cairo_aquifer":
		{
			function_77cfa54b("kane_prep_to_move_out_0", 1, "remote");
			function_77cfa54b("kane_once_again_we_ve_go_0", 1, "remote");
			function_77cfa54b("plyr_how_do_they_do_it_k_0", 1, "player");
			function_77cfa54b("kane_maybe_one_day_the_wa_0", 1, "remote");
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_4a26a148 = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_80bd48dc = "m" + "f";
			function_77cfa54b(var_4a26a148 + "_in_coordination_with_0", undefined, "ambient");
			function_77cfa54b(var_4a26a148 + "_at_this_moment_we_a_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_having_personally_re_0", undefined, "ambient");
			function_77cfa54b(var_80bd48dc + "_the_use_of_human_exp_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_doctor_salim_s_resea_0", 2, "ambient");
			function_77cfa54b(var_80bd48dc + "_in_terms_of_ethics_0", 2, "ambient");
			break;
		}
		case "cp_mi_cairo_lotus":
		case "cp_mi_cairo_lotus2":
		case "cp_mi_cairo_lotus3":
		{
			function_77cfa54b("plyr_kane_about_what_ha_0", 1, "player");
			function_77cfa54b("kane_we_can_t_focus_on_th_0", 1, "remote");
			function_77cfa54b("plyr_the_infection_the_0", 1, "player");
			function_77cfa54b("kane_all_we_can_do_is_hop_0", 1, "remote");
			function_77cfa54b("plyr_it_may_not_be_offici_0", 1, "player");
			function_77cfa54b("kane_his_heart_s_in_the_r_0", 1, "remote");
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_4a26a148 = "m" + "f";
			if(namespace_d73b9283::function_d2c92ee7())
			{
			}
			else
			{
			}
			var_b3950cbc = "m" + "f";
			function_77cfa54b(var_b3950cbc + "_today_we_received_a_0", undefined, "ambient");
			function_77cfa54b(var_b3950cbc + "_it_quickly_became_ev_0", 2, "ambient");
			function_77cfa54b(var_4a26a148 + "_today_we_pledge_our_0", undefined, "ambient");
			function_77cfa54b(var_4a26a148 + "_their_bravery_in_the_0", 2, "ambient");
			break;
		}
		case "cp_mi_zurich_coalescence":
		{
			function_77cfa54b("corv_listen_only_to_the_s_3", 1, "player");
			function_77cfa54b("corv_let_your_mind_relax_3", 1, "player");
			function_77cfa54b("corv_let_your_thoughts_dr_1", 1, "player");
			function_77cfa54b("corv_let_the_bad_memories_0", 1, "player");
			function_77cfa54b("corv_let_peace_be_upon_yo_0", 1, "player");
			function_77cfa54b("corv_you_are_in_control_0", 1, "player");
			function_77cfa54b("corv_imagine_yourself_1", 1, "player");
			break;
		}
	}
}

/*
	Name: function_9423672b
	Namespace: namespace_a6816cde
	Checksum: 0xFEA9F2FB
	Offset: 0x46D0
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_9423672b()
{
	self endon("hash_643a7daf");
	namespace_4dbf3ae3::function_1ab5ebec("main_room_trigger", "targetname", self);
	if(function_6e2770d8(level.var_836d6d34))
	{
		foreach(var_39b18b57 in level.var_836d6d34)
		{
			var_46639773 = var_39b18b57[0];
			var_506b336f = var_39b18b57[1];
			var_7b81749 = var_39b18b57[2];
			function_3913c855(var_506b336f);
			if(var_7b81749 == "remote")
			{
				level namespace_71b8dba1::function_a463d127(var_46639773, 0, undefined, self);
				continue;
			}
			if(var_7b81749 == "ambient")
			{
				level.var_7f97650d namespace_71b8dba1::function_81141386(var_46639773, 0, 1, self);
				continue;
			}
			if(var_7b81749 == "player")
			{
				self namespace_71b8dba1::function_13b3b16a(var_46639773);
			}
		}
	}
}

/*
	Name: function_3913c855
	Namespace: namespace_a6816cde
	Checksum: 0xBAD3101E
	Offset: 0x4890
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_3913c855(var_506b336f)
{
	var_3784d0f4 = function_84970cc4("in_ready_room", "in_aar", "in_training_sim", "interacting", "safehouse_menu_open");
	if(!isdefined(var_506b336f))
	{
		var_506b336f = function_72a94f05(5, 10);
	}
	do
	{
		wait(var_506b336f);
	}
	while(!(!function_5b49d38c(self) || namespace_ad23e503::function_b9f719ec(var_3784d0f4)));
}

/*
	Name: function_77cfa54b
	Namespace: namespace_a6816cde
	Checksum: 0x5D59FE70
	Offset: 0x4948
	Size: 0xA5
	Parameters: 3
	Flags: None
*/
function function_77cfa54b(var_46639773, var_506b336f, var_7b81749)
{
	if(!isdefined(level.var_836d6d34))
	{
		level.var_836d6d34 = [];
	}
	else if(!function_6e2770d8(level.var_836d6d34))
	{
		level.var_836d6d34 = function_84970cc4(level.var_836d6d34);
	}
	level.var_836d6d34[level.var_836d6d34.size] = function_84970cc4(var_46639773, var_506b336f, var_7b81749);
}

/*
	Name: function_51970da0
	Namespace: namespace_a6816cde
	Checksum: 0x962D1126
	Offset: 0x49F8
	Size: 0x28B
	Parameters: 1
	Flags: None
*/
function function_51970da0(var_c77d2837)
{
	var_6bfe1586 = var_c77d2837["player 1"];
	/#
		if(function_5dbf7eca(var_6bfe1586.var_67c7c241, "Dev Block strings are not supported"))
		{
			var_4bc288a0 = 1;
		}
		else if(function_5dbf7eca(var_6bfe1586.var_67c7c241, "Dev Block strings are not supported"))
		{
			var_4bc288a0 = 2;
		}
		else if(function_5dbf7eca(var_6bfe1586.var_67c7c241, "Dev Block strings are not supported"))
		{
			var_4bc288a0 = 3;
		}
		else if(function_5dbf7eca(var_6bfe1586.var_67c7c241, "Dev Block strings are not supported"))
		{
			var_4bc288a0 = 4;
		}
	#/
	if(!isdefined(var_4bc288a0))
	{
		var_4bc288a0 = var_6bfe1586.var_8d3631f4 + 1;
	}
	if(isdefined(var_6bfe1586.var_3ec4eaaf))
	{
		var_dc55e899 = var_c77d2837["player" + var_4bc288a0 + "_ready_room_weapon"];
		var_dc55e899 function_e48f905e(var_6bfe1586.var_3ec4eaaf.var_7c2864e6);
	}
	var_12aba86 = function_6ada35ba("player_" + var_4bc288a0 + "_sidearm", "targetname");
	if(namespace_f996a5bc::function_7e589a1e(var_6bfe1586.var_24c0bfb.var_8c02d299))
	{
		var_12aba86 function_e48f905e(var_6bfe1586.var_24c0bfb.var_7c2864e6);
		var_12aba86 function_48f26766();
	}
	else
	{
		var_12aba86 function_50ccee8d();
	}
	var_6bfe1586 namespace_82b91a51::function_564f2d81("left_ready_room", "disconnect");
	var_12aba86 function_50ccee8d();
}

/*
	Name: function_5b6b9132
	Namespace: namespace_a6816cde
	Checksum: 0x1F5BC0F7
	Offset: 0x4C90
	Size: 0x93
	Parameters: 0
	Flags: Private
*/
function private function_5b6b9132()
{
	level thread function_4dff3e80();
	function_43e79c92();
	function_ed174df5();
	namespace_dabbe128::function_eb99da89(&function_c891fb17);
	namespace_dabbe128::function_95670def(&function_554b2d7e);
	level thread function_124e0cdc();
}

/*
	Name: function_124e0cdc
	Namespace: namespace_a6816cde
	Checksum: 0x7833B4ED
	Offset: 0x4D30
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_124e0cdc()
{
	wait(0.05);
	level namespace_71e9cb84::function_74d6b22f("nextMap", function_59c5ca75(level.var_a6f47549));
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_a6816cde
	Checksum: 0xAD58332B
	Offset: 0x4D78
	Size: 0xCB
	Parameters: 0
	Flags: Private
*/
function private function_fb4f96b5()
{
	self.var_83a2ce8d = 1;
	self namespace_ad23e503::function_c35e6aab("in_ready_room");
	self namespace_ad23e503::function_c35e6aab("in_aar");
	self namespace_ad23e503::function_c35e6aab("in_training_sim");
	self namespace_ad23e503::function_c35e6aab("loadout_dirty");
	self namespace_ad23e503::function_c35e6aab("interacting");
	self namespace_ad23e503::function_c35e6aab("safehouse_menu_open");
}

/*
	Name: function_7d27aacb
	Namespace: namespace_a6816cde
	Checksum: 0x2E310925
	Offset: 0x4E50
	Size: 0x83
	Parameters: 0
	Flags: Private
*/
function private function_7d27aacb()
{
	if(namespace_ad23e503::function_7922262b("in_ready_room"))
	{
		namespace_ad23e503::function_9d134160("in_ready_room");
		function_f4851bfc();
	}
	function_680cf465();
	if(isdefined(self.var_bcf382f5) && self.var_bcf382f5)
	{
		level.var_f0ba161d function_a8271940();
	}
}

/*
	Name: function_10650e35
	Namespace: namespace_a6816cde
	Checksum: 0x2421C5FB
	Offset: 0x4EE0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_10650e35()
{
	var_4fb0aa1e = self function_e9022fe("MissionRecordVaultScreens");
	if(!isdefined(var_4fb0aa1e))
	{
		self function_2f6b6a4c("MissionRecordVaultScreens");
	}
}

/*
	Name: function_b439510f
	Namespace: namespace_a6816cde
	Checksum: 0xDB892397
	Offset: 0x4F40
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b439510f()
{
	var_4fb0aa1e = self function_e9022fe("MissionRecordVaultScreens");
	if(isdefined(var_4fb0aa1e))
	{
		self function_2b74b70a(var_4fb0aa1e);
	}
}

/*
	Name: function_9f9f6524
	Namespace: namespace_a6816cde
	Checksum: 0xDEABC6CD
	Offset: 0x4FA0
	Size: 0x315
	Parameters: 0
	Flags: None
*/
function function_9f9f6524()
{
	var_c02de660 = namespace_1d795d47::function_23eda99c();
	var_2c222f16 = 4;
	foreach(var_1a443ebd in var_c02de660)
	{
		var_a4b6fa1f = self function_84368297("PlayerStatsByMap", var_1a443ebd, "highestStats", "HIGHEST_DIFFICULTY");
		if(var_a4b6fa1f < var_2c222f16)
		{
			var_2c222f16 = var_a4b6fa1f;
		}
	}
	var_b60694c2 = var_c02de660.size;
	if(var_b60694c2 > 0)
	{
		switch(var_2c222f16)
		{
			case 4:
			{
				if(self function_84368297("PlayerStatsList", "CAREER_DIFFICULTY_REAL", "statValue") < var_b60694c2)
				{
					self function_8f67433b("PlayerStatsList", "CAREER_DIFFICULTY_REAL", "statValue", var_b60694c2 - 1);
					self namespace_f74b04eb::function_96ed590f("CAREER_DIFFICULTY_REAL");
					self.var_3e93cde7 = 1;
				}
			}
			case 3:
			{
				if(self function_84368297("PlayerStatsList", "CAREER_DIFFICULTY_VET", "statValue") < var_b60694c2)
				{
					self function_8f67433b("PlayerStatsList", "CAREER_DIFFICULTY_VET", "statValue", var_b60694c2 - 1);
					self namespace_f74b04eb::function_96ed590f("CAREER_DIFFICULTY_VET");
					self.var_3e93cde7 = 1;
				}
			}
			case 2:
			{
				if(self function_84368297("PlayerStatsList", "CAREER_DIFFICULTY_HARD", "statValue") < var_b60694c2)
				{
					self function_8f67433b("PlayerStatsList", "CAREER_DIFFICULTY_HARD", "statValue", var_b60694c2 - 1);
					self namespace_f74b04eb::function_96ed590f("CAREER_DIFFICULTY_HARD");
					self.var_3e93cde7 = 1;
				}
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
	Name: function_e32f1d3f
	Namespace: namespace_a6816cde
	Checksum: 0xC6434E7F
	Offset: 0x52C0
	Size: 0x217
	Parameters: 0
	Flags: None
*/
function function_e32f1d3f()
{
	var_c02de660 = namespace_1d795d47::function_23eda99c();
	var_8466305e = 1;
	var_c88e4145 = 0;
	foreach(var_1a443ebd in var_c02de660)
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < 19; var_c957f6b6++)
		{
			if(self function_84368297("PlayerStatsByMap", var_1a443ebd, "accolades", var_c957f6b6, "state"))
			{
				var_c88e4145++;
			}
		}
		var_58ce61a8 = 16;
		if(var_1a443ebd == "cp_mi_cairo_ramses")
		{
			var_58ce61a8 = 17;
		}
		else if(var_1a443ebd == "cp_mi_cairo_aquifer")
		{
			var_58ce61a8 = 15;
		}
		if(var_c88e4145 < var_58ce61a8)
		{
			var_8466305e = 0;
		}
	}
	var_80abe1b = self function_84368297("PlayerStatsList", "CAREER_ACCOLADES", "ChallengeValue");
	if(var_80abe1b < var_c88e4145)
	{
		self namespace_f74b04eb::function_96ed590f("CAREER_ACCOLADES", var_c88e4145 - var_80abe1b);
	}
	if(var_8466305e)
	{
		self function_f07412c0("cp_medal_all_accolades");
		self.var_3e93cde7 = 1;
	}
}

/*
	Name: function_8c92e6bf
	Namespace: namespace_a6816cde
	Checksum: 0x7DDE5A61
	Offset: 0x54E0
	Size: 0x1D3
	Parameters: 0
	Flags: None
*/
function function_8c92e6bf()
{
	var_fa172d86 = 512;
	var_95e2df39 = 588;
	if(self namespace_8f94416a::function_25328f50("cp_medal_all_calling_cards"))
	{
		return;
	}
	if(self function_84368297("PlayerStatsList", "koth_gamemode_mastery", "challengeValue") < 2)
	{
		return;
	}
	var_b6b6d8ed = 1;
	for(var_5e76f0af = var_fa172d86; var_5e76f0af <= var_95e2df39; var_5e76f0af++)
	{
		var_4259ae32 = function_d4cc1345("gamedata/stats/cp/statsmilestones3.csv", 0, var_5e76f0af, 4);
		var_ded5581 = function_b6b79a0(function_d4cc1345("gamedata/stats/cp/statsmilestones3.csv", 0, var_5e76f0af, 2));
		if(var_4259ae32 == "career_decorations" || var_4259ae32 == "career_mastery")
		{
			var_ded5581 = var_ded5581 - 1;
		}
		var_5a18ba9e = self function_84368297("PlayerStatsList", var_4259ae32, "challengeValue");
		if(var_5a18ba9e < var_ded5581)
		{
			var_b6b6d8ed = 0;
			break;
		}
	}
	if(var_b6b6d8ed)
	{
		self function_f07412c0("cp_medal_all_calling_cards");
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_a6816cde
	Checksum: 0x91CFB2F1
	Offset: 0x56C0
	Size: 0x473
	Parameters: 0
	Flags: Private
*/
function private function_aebcf025()
{
	self.var_83a2ce8d = 0;
	self.var_32218fc7 = 1;
	function_b11df48f();
	self thread function_9423672b();
	if(isdefined(self.var_e162a28e))
	{
		self thread function_1a70861a();
	}
	else
	{
		function_10650e35();
		self namespace_b976075a::function_7bdf5497();
		if(self namespace_8f94416a::function_e72fc18() && !self namespace_8f94416a::function_25328f50("cp_medal_all_accolades"))
		{
			self function_f07412c0("cp_medal_all_accolades");
			self.var_3e93cde7 = 1;
		}
		if(self function_93f28fc8())
		{
			self.var_3e93cde7 = 1;
		}
		var_62f6e136 = self function_84368297("unlocks", 0);
		var_7f6b97ce = self function_84368297("PlayerStatsList", "CAREER_TOKENS", "statValue");
		if(var_62f6e136 > var_7f6b97ce)
		{
			self function_aa67c13b("career_tokens", var_62f6e136 - var_7f6b97ce);
			self.var_3e93cde7 = 1;
		}
		if(self namespace_8f94416a::function_bea4ff57())
		{
			self function_f07412c0("cp_medal_all_weapon_unlocks");
		}
		self function_9f9f6524();
		self function_e32f1d3f();
		self function_8c92e6bf();
		function_9a7ed193(self);
		if(isdefined(self.var_3e93cde7) && self.var_3e93cde7)
		{
			self namespace_82b91a51::function_c9aa1ff("stats_changed", 2);
			self.var_3e93cde7 = undefined;
		}
		if(isdefined(self namespace_9f824288::function_36adbb9c("show_aar")) && self namespace_9f824288::function_36adbb9c("show_aar"))
		{
			function_6c1294b8("last_map", level.var_80f3ca12);
			self namespace_9f824288::function_bee608f0("show_aar", undefined);
			self thread function_c2ba6d68();
		}
		else
		{
			self thread function_390094e6();
		}
		self thread function_a24e854d();
		var_162c6190 = function_99201f25("m_terminal_asleep", "targetname");
		if(var_162c6190.size > 0)
		{
			var_69c1a63b = function_e7bdc1a1(self.var_722885f3, var_162c6190);
			var_69c1a63b function_48f26766();
		}
		var_162c6190 = function_99201f25("m_terminal_awake", "targetname");
		if(var_162c6190.size > 0)
		{
			var_cdc7765d = function_e7bdc1a1(self.var_722885f3, var_162c6190);
			var_cdc7765d function_50ccee8d();
		}
	}
	namespace_16f9ecd3::function_1c59df50(0);
	namespace_16f9ecd3::function_12a9df06(0);
}

/*
	Name: function_1b292fa6
	Namespace: namespace_a6816cde
	Checksum: 0x23863FF5
	Offset: 0x5B40
	Size: 0x1B
	Parameters: 0
	Flags: Private
*/
function private function_1b292fa6()
{
	self function_2fe6d6e1();
}

/*
	Name: function_a85e8026
	Namespace: namespace_a6816cde
	Checksum: 0x6ED6C0D1
	Offset: 0x5B68
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_a85e8026(var_aaf585dc)
{
	var_fb7bdf69 = function_84970cc4("pdv_screens_1", "pdv_screens_2", "pdv_screens_3");
	foreach(var_3c359681 in var_fb7bdf69)
	{
		if(function_77fdb408(var_3c359681, var_aaf585dc))
		{
			namespace_84970cc4::function_eaab05dc(function_99201f25(var_3c359681, "targetname"), &function_48f26766);
			continue;
		}
		namespace_84970cc4::function_eaab05dc(function_99201f25(var_3c359681, "targetname"), &function_50ccee8d);
	}
}

/*
	Name: function_f380969b
	Namespace: namespace_a6816cde
	Checksum: 0xFF6F4AFF
	Offset: 0x5CB8
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_f380969b()
{
	var_67bda5a5 = self function_84368297("currentRankXP");
	var_72c4032 = self namespace_f3970517::function_a76b42cb();
	var_9e54448b = self function_84368297("hasSeenMaxLevelNotification");
	if(var_9e54448b != 1 && var_72c4032 >= namespace_f3970517::function_1f2cf483(level.var_18b023e5.size - 1))
	{
		var_c2dc2b72 = self function_2f6b6a4c("CPMaxLevelNotification");
		self function_8f67433b("hasSeenMaxLevelNotification", 1);
		function_9a7ed193(self);
	}
	else
	{
		var_c2dc2b72 = self function_2f6b6a4c("RewardsOverlayCP");
	}
	level.var_ac964c36 = 0;
	self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	while(var_d62110b4 != "closed")
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	self function_2b74b70a(var_c2dc2b72);
	self thread function_390094e6();
	self namespace_b976075a::function_4cef9872(function_9065d6ea());
	self namespace_b976075a::function_a5ac6877();
	level.var_ac964c36 = 1;
}

/*
	Name: function_c2ba6d68
	Namespace: namespace_a6816cde
	Checksum: 0xF755FE2F
	Offset: 0x5ED0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_c2ba6d68()
{
	self namespace_ad23e503::function_74d6b22f("in_aar");
	var_1cbcb46d = namespace_14b42b8a::function_7922262b("aar_camera", "targetname");
	var_525aea1a = namespace_14b42b8a::function_b7af54ae("scene", var_1cbcb46d.var_1157a889);
	var_ea2f4efc = namespace_cc27597::function_af9fe39b(var_525aea1a.var_5e95bd47, 0, 1);
	namespace_ccb8d056::function_c1cdedfb("aar", self);
	function_8d0f083b(self, var_525aea1a.var_751c7781, GetTime(), var_ea2f4efc.var_722885f3, var_ea2f4efc.var_6ab6f4fd);
	self function_f380969b();
	function_d59a1980(self);
	self namespace_ad23e503::function_9d134160("in_aar");
}

/*
	Name: function_b11df48f
	Namespace: namespace_a6816cde
	Checksum: 0x9E877CF8
	Offset: 0x6038
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b11df48f()
{
	self namespace_82b91a51::function_16c71b8(1);
}

/*
	Name: function_bcfa7205
	Namespace: namespace_a6816cde
	Checksum: 0x76E0A0C3
	Offset: 0x6060
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_bcfa7205()
{
	var_4da6a075 = self function_21995b5a();
	foreach(var_dfcc01fd in var_4da6a075)
	{
		if(isdefined(var_dfcc01fd.var_84690dfd) && var_dfcc01fd.var_84690dfd)
		{
			self function_1f3745c0(var_dfcc01fd);
		}
	}
}

/*
	Name: function_c6f2aa2b
	Namespace: namespace_a6816cde
	Checksum: 0x5EE6CC15
	Offset: 0x6140
	Size: 0x241
	Parameters: 0
	Flags: None
*/
function function_c6f2aa2b()
{
	if(!function_4bd0142f("tu1_safehouseDisableVarixScope", 1))
	{
		return;
	}
	if(isdefined(self.var_8201758a) && self.var_8201758a)
	{
		return;
	}
	var_bd84cc55 = self function_21995b5a();
	foreach(var_dfcc01fd in var_bd84cc55)
	{
		if(!isdefined(var_dfcc01fd))
		{
			continue;
		}
		var_4a294ea1 = [];
		var_b0d06620 = 0;
		foreach(var_b000b0be in var_dfcc01fd.var_4a294ea1)
		{
			if(var_b000b0be != "dualoptic")
			{
				var_4a294ea1[var_4a294ea1.size] = var_b000b0be;
				continue;
			}
			var_b0d06620 = 1;
		}
		if(var_b0d06620)
		{
			if(isdefined(var_dfcc01fd.var_8c02d299))
			{
				var_c00374fd = function_c4d5ec1f(var_dfcc01fd.var_8c02d299.var_4be20d44, var_4a294ea1);
				self function_1f3745c0(var_dfcc01fd);
				self function_860a040a(var_c00374fd);
				self function_cb53a41e(var_c00374fd);
			}
		}
	}
}

/*
	Name: function_cf4c3bd8
	Namespace: namespace_a6816cde
	Checksum: 0x1C194014
	Offset: 0x6390
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_cf4c3bd8()
{
	var_162c6190 = function_99201f25("m_terminal_asleep", "targetname");
	foreach(var_81d7a2b9 in var_162c6190)
	{
		var_81d7a2b9 function_48f26766();
	}
	var_162c6190 = function_99201f25("m_terminal_awake", "targetname");
	foreach(var_81d7a2b9 in var_162c6190)
	{
		var_81d7a2b9 function_50ccee8d();
	}
}

/*
	Name: function_a8960cf7
	Namespace: namespace_a6816cde
	Checksum: 0x7467738F
	Offset: 0x64F0
	Size: 0x1DF
	Parameters: 5
	Flags: None
*/
function function_a8960cf7(var_4dbf3ae3, var_79f5c705, var_5567500d, var_e6ffaa89, var_72fcb946)
{
	if(!isdefined(var_72fcb946))
	{
		var_72fcb946 = 1;
	}
	var_4dbf3ae3 function_d5eb00e3(var_5567500d);
	var_4dbf3ae3 function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	var_38c85157 = namespace_a230c2b1::function_be21f511("any", var_4dbf3ae3, function_84970cc4(var_4dbf3ae3), (0, 0, 0), var_79f5c705);
	var_38c85157 namespace_a230c2b1::function_1e5cb2cc("any");
	var_38c85157 namespace_a230c2b1::function_df0e9e69(0.35);
	var_38c85157 namespace_a230c2b1::function_a09b1ac1("allies");
	var_38c85157 namespace_a230c2b1::function_bd903f5c("any");
	var_38c85157.var_db0f901 = 0;
	var_38c85157.var_4dbf3ae3 function_1f80b3d5();
	var_38c85157.var_722885f3 = var_38c85157.var_722885f3;
	var_38c85157.var_6ab6f4fd = var_38c85157.var_6ab6f4fd;
	if(isdefined(var_e6ffaa89))
	{
		if(var_72fcb946)
		{
			var_38c85157.var_2fc89bb6 = 1;
		}
		var_38c85157.var_3c8ea097 = var_e6ffaa89;
	}
	return var_38c85157;
}

/*
	Name: function_e04cba0f
	Namespace: namespace_a6816cde
	Checksum: 0x7420001D
	Offset: 0x66D8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_e04cba0f(var_6bfe1586)
{
	self namespace_a230c2b1::function_5815ab75(var_6bfe1586);
	if(isdefined(var_6bfe1586))
	{
		self.var_4dbf3ae3 function_64218ffc(var_6bfe1586);
	}
	else
	{
		self.var_4dbf3ae3 function_8c1f7070();
	}
}

/*
	Name: function_a8271940
	Namespace: namespace_a6816cde
	Checksum: 0xF8DD8BD1
	Offset: 0x6750
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_a8271940(var_6bfe1586)
{
	self namespace_a230c2b1::function_76a3ab20(var_6bfe1586);
	if(isdefined(var_6bfe1586))
	{
		self.var_4dbf3ae3 function_858ac43f(var_6bfe1586);
	}
	else
	{
		self.var_4dbf3ae3 function_bb863f19();
	}
}

/*
	Name: function_4dff3e80
	Namespace: namespace_a6816cde
	Checksum: 0x86E06951
	Offset: 0x67C8
	Size: 0xD3
	Parameters: 0
	Flags: Private
*/
function private function_4dff3e80()
{
	level thread function_ed69417e();
	function_ca93dc45();
	level namespace_ad23e503::function_1ab5ebec("first_player_spawned");
	wait(5);
	var_8b856a66 = function_6ada35ba("trig_start_level", "targetname");
	level.var_f0ba161d = function_a8960cf7(var_8b856a66, &"cp_safehouse_ready_room", &"CP_SH_CAIRO_READY_ROOM2", &function_431ca329);
	level thread function_4fade07a();
}

/*
	Name: function_2c93055
	Namespace: namespace_a6816cde
	Checksum: 0xD5A2A46D
	Offset: 0x68A8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_2c93055()
{
	if(!isdefined(level.var_669268d8))
	{
		level.var_669268d8 = 0;
	}
	if(!level namespace_ad23e503::function_dbca4c5d("players_received_stats"))
	{
		level namespace_ad23e503::function_c35e6aab("players_received_stats");
	}
	self namespace_82b91a51::function_c9aa1ff("stats_changed", 2);
	level.var_669268d8++;
	var_4b7ccfd8 = function_6c6e7b10();
	if(level.var_669268d8 >= var_4b7ccfd8)
	{
		level namespace_ad23e503::function_74d6b22f("players_received_stats");
	}
}

/*
	Name: function_fdaf55aa
	Namespace: namespace_a6816cde
	Checksum: 0x7B75AF62
	Offset: 0x6988
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_fdaf55aa()
{
	level namespace_ad23e503::function_d266a8b4(3, "players_received_stats");
}

/*
	Name: function_ed69417e
	Namespace: namespace_a6816cde
	Checksum: 0x2890EF8E
	Offset: 0x69C0
	Size: 0x54B
	Parameters: 0
	Flags: None
*/
function function_ed69417e()
{
	level namespace_ad23e503::function_c35e6aab("all_players_ready");
	level namespace_ad23e503::function_1ab5ebec("all_players_ready");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 0);
	function_d94f39ab(0);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_9f824288::function_bee608f0(function_6d71dab7(level.var_a6f47549) + "_class", var_5dc5e20a.var_808c68ef);
	}
	namespace_82b91a51::function_76f13293(3);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_cc27597::function_fcf56ab5();
	}
	var_5ddef2e5 = [];
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5ddef2e5["player " + var_5dc5e20a.var_8d3631f4 + 1] = var_5dc5e20a;
	}
	level thread namespace_cc27597::function_43718187("cin_saf_ram_readyroom_3rd_pre200", var_5ddef2e5);
	if(isdefined(level.var_f3db725a))
	{
		namespace_84970cc4::function_eaab05dc(level.var_2395e945, level.var_f3db725a);
	}
	namespace_82b91a51::function_76f13293(3);
	level thread namespace_ce7c3ed5::function_593c2af4(0.2);
	level waittill("hash_44c344f7");
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("sh_exit_duck_active", 1);
	}
	level namespace_ce7c3ed5::function_7e61de2b(0);
	namespace_1d795d47::function_677539fe("");
	/#
		function_d0eaf029("Dev Block strings are not supported" + level.var_a6f47549, (1, 1, 1));
	#/
	var_10118d73 = function_1a7f8d9(level.var_a6f47549);
	if(isdefined(var_10118d73))
	{
		function_6df659a8(var_10118d73);
	}
	function_ad95a4a4(level.var_a6f47549);
	wait(1);
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 namespace_b976075a::function_4cef9872(function_9065d6ea(level.var_a6f47549));
		var_6bfe1586 thread function_2c93055();
	}
	function_fdaf55aa();
	function_6c1294b8("cp_queued_level", "");
	function_a63aee74();
}

/*
	Name: function_2c4da22
	Namespace: namespace_a6816cde
	Checksum: 0xF174228E
	Offset: 0x6F18
	Size: 0x33
	Parameters: 2
	Flags: Private
*/
function private function_2c4da22(var_67520c6a, var_c2dc2b72)
{
	wait(var_67520c6a);
	self function_2b74b70a(var_c2dc2b72);
}

/*
	Name: function_6d71dab7
	Namespace: namespace_a6816cde
	Checksum: 0xDE0130A9
	Offset: 0x6F58
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_6d71dab7(var_76d85d44)
{
	switch(var_76d85d44)
	{
		case "cp_mi_cairo_infection":
		case "cp_mi_cairo_infection2":
		case "cp_mi_cairo_infection3":
		{
			return "infection";
		}
		case "cp_mi_cairo_lotus":
		case "cp_mi_cairo_lotus2":
		case "cp_mi_cairo_lotus3":
		{
			return "lotus";
		}
		case "cp_mi_cairo_ramses":
		case "cp_mi_cairo_ramses2":
		{
			return "ramses";
		}
		case "cp_mi_sing_biodomes":
		case "cp_mi_sing_biodomes2":
		{
			return "biodomes";
		}
	}
	return var_76d85d44;
}

/*
	Name: function_109cf997
	Namespace: namespace_a6816cde
	Checksum: 0x87A82D73
	Offset: 0x6FF8
	Size: 0x39F
	Parameters: 1
	Flags: None
*/
function function_109cf997(var_5f8bd4b9)
{
	if(!isdefined(var_5f8bd4b9))
	{
		var_5f8bd4b9 = game["menu_changeclass"];
	}
	self.var_3ae8773c = 1;
	self.var_8201758a = undefined;
	self namespace_71e9cb84::function_cc4d5165("hudItems.cybercoreSelectMenuDisabled", 0);
	if(var_5f8bd4b9 != "chooseClass_TrainingSim" && (level.var_a6f47549 == "cp_mi_zurich_newworld" || level.var_a6f47549 == "cp_mi_eth_prologue"))
	{
		if(self function_e025daa7())
		{
			var_6a7a1c33 = self function_84368297("highestMapReached") > function_59c5ca75(level.var_a6f47549);
		}
		else
		{
			var_6a7a1c33 = self function_84368297("PlayerStatsByMap", level.var_a6f47549, "hasBeenCompleted");
		}
		if(!var_6a7a1c33)
		{
			self namespace_71e9cb84::function_cc4d5165("hudItems.cybercoreSelectMenuDisabled", 1);
		}
	}
	if(var_5f8bd4b9 === "chooseClass_TrainingSim")
	{
		var_98e4816d = self function_2f6b6a4c(var_5f8bd4b9);
	}
	else
	{
		var_98e4816d = self function_4aa9caac(var_5f8bd4b9);
	}
	var_17b2131d = 1;
	while(1)
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		if(var_1df81780 == var_5f8bd4b9)
		{
			if(var_d62110b4 == "cancel")
			{
				var_17b2131d = 0;
			}
			else
			{
				var_5dc22ce3 = function_d6df1f20(var_d62110b4, ",");
				if(var_5dc22ce3.size > 1)
				{
					var_bd5d3f48 = var_5dc22ce3[0];
					var_cf6fe380 = function_b6b79a0(var_5dc22ce3[1]);
					var_5a13c491 = namespace_82b91a51::function_292b6cbb(var_cf6fe380);
				}
				else
				{
					var_bd5d3f48 = var_d62110b4;
				}
				var_de6a4e4f = self namespace_a249d1db::function_29da5080(var_bd5d3f48);
				self namespace_ad23e503::function_d3de6822("loadout_dirty");
				if(var_5f8bd4b9 == "chooseClass_TrainingSim")
				{
					self.var_8201758a = 1;
				}
				function_5b426a60(var_de6a4e4f, var_5a13c491);
				if(var_5f8bd4b9 == "chooseClass_TrainingSim")
				{
					self thread function_cbe945e8(var_de6a4e4f, var_5a13c491);
					self function_49876a9e(var_5f8bd4b9);
				}
			}
			break;
		}
	}
	self thread function_a20a5ae3();
	return var_17b2131d;
}

/*
	Name: function_cbe945e8
	Namespace: namespace_a6816cde
	Checksum: 0x65EBA6F8
	Offset: 0x73A0
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function function_cbe945e8(var_de6a4e4f, var_5a13c491)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_60db70fa = GetTime();
	while(GetTime() < var_60db70fa + 7000)
	{
		var_813fc428 = self namespace_82b91a51::function_9fcf3cd8(1, "loadout_changed");
		if(var_813fc428 === "loadout_changed")
		{
			function_5b426a60(var_de6a4e4f, var_5a13c491);
		}
	}
}

/*
	Name: function_5b426a60
	Namespace: namespace_a6816cde
	Checksum: 0x4E85AD54
	Offset: 0x7458
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_5b426a60(var_de6a4e4f, var_5a13c491)
{
	self namespace_9f824288::function_bee608f0("playerClass", var_de6a4e4f);
	if(isdefined(var_5a13c491))
	{
		var_eb07a0c7 = var_5a13c491 function_f49dd4fd();
		self namespace_9f824288::function_bee608f0("altPlayerID", var_eb07a0c7);
	}
	else
	{
		self namespace_9f824288::function_bee608f0("altPlayerID", undefined);
	}
	self namespace_a249d1db::function_93a49c9d(var_de6a4e4f);
	self.var_8129ead4 = undefined;
	self.var_6c3ed028 = undefined;
	self namespace_a249d1db::function_a61641c6(self.var_44fb8955["team"], var_de6a4e4f, undefined, var_5a13c491);
}

/*
	Name: function_a20a5ae3
	Namespace: namespace_a6816cde
	Checksum: 0xEE189486
	Offset: 0x7560
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a20a5ae3()
{
	self endon("hash_128f8789");
	wait(0.05);
	self.var_3ae8773c = 0;
}

/*
	Name: function_4fade07a
	Namespace: namespace_a6816cde
	Checksum: 0xE9061AC4
	Offset: 0x7590
	Size: 0x55F
	Parameters: 0
	Flags: None
*/
function function_4fade07a()
{
	level endon("hash_a7ea64dd");
	var_f38ba567 = 60;
	var_42bb7bd2 = var_f38ba567;
	while(1)
	{
		if(!isdefined(level.var_9b1393e7) || level.var_9b1393e7.size <= 1)
		{
			wait(1);
			continue;
		}
		var_ac5bcf56 = 0;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a namespace_ad23e503::function_7922262b("in_ready_room"))
			{
				var_ac5bcf56++;
			}
			var_bfb3493 = var_5dc5e20a function_e9022fe("MissionStarting");
			if(!isdefined(var_bfb3493))
			{
				var_5dc5e20a function_2f6b6a4c("MissionStarting");
			}
		}
		if(var_ac5bcf56 >= level.var_9b1393e7.size * 0.5)
		{
			var_42bb7bd2 = var_42bb7bd2 - 1;
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				var_5dc5e20a function_5b7e454a(&"mission_starting_countdown", 1, function_b6b79a0(function_aaeec8c5(0, var_42bb7bd2)));
				var_5dc5e20a function_921a1574("uin_timer");
			}
			break;
		}
		var_42bb7bd2 = var_f38ba567;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			var_5dc5e20a function_5b7e454a(&"mission_starting_hide", 0);
		}
		if(var_42bb7bd2 < -1)
		{
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				if(!isdefined(var_5dc5e20a.var_8d3631f4))
				{
					var_5dc5e20a function_9152f342();
					var_5dc5e20a function_49876a9e(game["menu_changeclass"]);
					var_bfb3493 = var_5dc5e20a function_e9022fe("chooseClass_TrainingSim");
					if(isdefined(var_bfb3493))
					{
						var_5dc5e20a function_2b74b70a(var_bfb3493);
					}
					var_bfb3493 = var_5dc5e20a function_e9022fe("MissionStarting");
					if(isdefined(var_bfb3493))
					{
						var_5dc5e20a function_2b74b70a(var_bfb3493);
					}
				}
				var_6b05d4a = var_5dc5e20a namespace_9f824288::function_36adbb9c("playerClass", undefined);
				if(!isdefined(var_6b05d4a) || var_6b05d4a == "CLASS_CUSTOM10")
				{
					var_de6a4e4f = var_5dc5e20a namespace_a249d1db::function_29da5080("custom0");
					var_5dc5e20a function_5b426a60(var_de6a4e4f, var_5dc5e20a);
				}
				if(var_5dc5e20a.var_148d9374 === 1)
				{
					function_f97da4(var_5dc5e20a);
				}
			}
			level thread function_56c8845e();
			level thread namespace_ce7c3ed5::function_7e61de2b(0);
			level namespace_ad23e503::function_74d6b22f("all_players_ready");
			var_42bb7bd2 = var_f38ba567;
		}
		wait(1);
	}
}

/*
	Name: function_431ca329
	Namespace: namespace_a6816cde
	Checksum: 0xE6EF4EBF
	Offset: 0x7AF8
	Size: 0x23
	Parameters: 1
	Flags: Private
*/
function private function_431ca329(var_5dc5e20a)
{
	var_5dc5e20a function_3361cf6a();
}

/*
	Name: function_26cb0f6b
	Namespace: namespace_a6816cde
	Checksum: 0xC068DC2E
	Offset: 0x7B28
	Size: 0x4B
	Parameters: 1
	Flags: Private
*/
function private function_26cb0f6b(var_39dfa0b1)
{
	self endon("hash_643a7daf");
	self endon("hash_8b8ae130");
	level waittill("hash_a7ea64dd");
	self function_2b74b70a(var_39dfa0b1);
}

/*
	Name: function_3361cf6a
	Namespace: namespace_a6816cde
	Checksum: 0xB474A
	Offset: 0x7B80
	Size: 0x74B
	Parameters: 0
	Flags: Private
*/
function private function_3361cf6a()
{
	level endon("hash_a7ea64dd");
	self endon("hash_643a7daf");
	if(self function_e025daa7() && level.var_a6f47549 == function_d0baa7f4())
	{
		var_98e4816d = self function_2f6b6a4c("OverwriteProgressWarning");
		var_4a0f7886 = 1;
		while(1)
		{
			self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
			if(var_1df81780 == "OverwriteProgressWarning")
			{
				if(var_d62110b4 == "cancel")
				{
					var_4a0f7886 = 0;
				}
				break;
			}
		}
		self function_2b74b70a(var_98e4816d);
		if(!var_4a0f7886)
		{
			return;
		}
		function_6c1294b8("ui_blocksaves", "0");
	}
	if(1)
	{
		self.var_bcf382f5 = 1;
		level.var_f0ba161d function_e04cba0f();
		self namespace_82b91a51::function_67520c6a(2, undefined, &namespace_ce7c3ed5::function_7e61de2b, 0.2);
		var_c248e0ab = namespace_14b42b8a::function_7922262b("scene_enter_readyroom", "targetname");
		function_8d0f083b(self, var_c248e0ab.var_db7bb468, GetTime(), var_c248e0ab.var_722885f3, var_c248e0ab.var_6ab6f4fd);
		var_c248e0ab namespace_cc27597::function_43718187(self);
		level.var_f0ba161d function_a8271940();
		self.var_bcf382f5 = undefined;
	}
	else
	{
		self.var_16b21c9 = self.var_722885f3;
		self.var_1b4f3317 = self function_89c87c9c();
		self function_50ccee8d();
		level.var_f0ba161d function_e04cba0f(self);
		self.var_bcf382f5 = 1;
		function_f39fff1a();
	}
	self thread function_7a07bdbf();
	if(self.var_148d9374 === 1)
	{
		function_f97da4(self);
	}
	if(function_109cf997())
	{
		function_a0cce87c();
		self namespace_82b91a51::function_c72856fc(0);
		var_3a62bf5d = self function_2f6b6a4c("MissionOverviewScreen");
		self function_3a9588ea(var_3a62bf5d, "showMissionOverview", 1);
		self function_3a9588ea(var_3a62bf5d, "showMissionSelect", 0);
		self thread function_26cb0f6b(var_3a62bf5d);
		while(1)
		{
			self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
			if(var_1df81780 == "MissionRecordVaultMenu" && var_d62110b4 == "closed")
			{
				break;
			}
		}
		function_f39fff1a();
		while(level namespace_ad23e503::function_7922262b("player_exiting_ready_room"))
		{
			wait(0.05);
		}
		level namespace_ad23e503::function_74d6b22f("player_exiting_ready_room");
		self thread function_390094e6();
		self namespace_cc27597::function_fcf56ab5();
		var_c821d9d1 = self function_2b74b70a(var_3a62bf5d);
		self namespace_82b91a51::function_c72856fc(1);
		self notify("hash_8b8ae130");
		self namespace_ad23e503::function_9d134160("in_ready_room");
		self function_f4851bfc();
		function_d59a1980(self);
	}
	if(isdefined(level.var_58373e3b))
	{
		[[level.var_f3db725a]]();
	}
	if(1)
	{
		level.var_f0ba161d function_e04cba0f();
		self.var_bcf382f5 = 1;
		self thread function_390094e6();
		var_c248e0ab = namespace_14b42b8a::function_7922262b("scene_exit_readyroom", "targetname");
		var_c248e0ab namespace_cc27597::function_c35e6aab(self);
		wait(0.3);
		function_207b5ccf(0.3);
		function_8d0f083b(self, var_c248e0ab.var_db7bb468, GetTime(), var_c248e0ab.var_722885f3, var_c248e0ab.var_6ab6f4fd);
		var_c248e0ab namespace_cc27597::function_43718187(self);
		function_d59a1980(self);
		level.var_f0ba161d function_a8271940();
		self.var_bcf382f5 = undefined;
	}
	else if(isdefined(self.var_16b21c9))
	{
		function_f39fff1a();
		self function_a30814d(self.var_16b21c9);
		self function_eda2be50(self.var_1b4f3317);
	}
	else
	{
		function_c2bd8252();
	}
	function_207b5ccf(0.3);
	level.var_f0ba161d function_a8271940(self);
	level namespace_ad23e503::function_9d134160("player_exiting_ready_room");
}

/*
	Name: function_a0cce87c
	Namespace: namespace_a6816cde
	Checksum: 0x71FA9441
	Offset: 0x82D8
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_a0cce87c()
{
	self endon("hash_643a7daf");
	self endon("hash_8b8ae130");
	level endon("hash_a7ea64dd");
	self namespace_ad23e503::function_74d6b22f("in_ready_room");
	function_f39fff1a(0);
	if(isdefined(level.var_8ea79b65))
	{
		[[level.var_8ea79b65]]();
	}
	self function_9152f342();
	do
	{
		wait(0.05);
	}
	while(!level namespace_ad23e503::function_7922262b("player_entering_ready_room"));
	level namespace_ad23e503::function_74d6b22f("player_entering_ready_room");
	self function_54a3b25a();
	self function_48f26766();
	function_207b5ccf();
	var_4ebceea0 = level.var_45f1e4ac[self.var_8d3631f4].var_b156618f;
	var_1cbcb46d = namespace_14b42b8a::function_b7af54ae("scene", var_4ebceea0);
	var_ea2f4efc = namespace_cc27597::function_af9fe39b(var_1cbcb46d.var_5e95bd47, 0, 1);
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a namespace_ad23e503::function_7922262b("in_ready_room"))
		{
			function_8d0f083b(var_5dc5e20a, var_1cbcb46d.var_751c7781, GetTime(), var_ea2f4efc.var_722885f3, var_ea2f4efc.var_6ab6f4fd);
		}
	}
	self namespace_cc27597::function_43718187(level.var_45f1e4ac[self.var_8d3631f4].var_1fffaf0, self);
	level namespace_ad23e503::function_9d134160("player_entering_ready_room");
	self thread function_3495bf85();
}

/*
	Name: function_23a33dca
	Namespace: namespace_a6816cde
	Checksum: 0xBF76CC92
	Offset: 0x85B0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_23a33dca()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	level namespace_71e9cb84::function_74d6b22f("gameplay_started", 1);
}

/*
	Name: function_6eee8df0
	Namespace: namespace_a6816cde
	Checksum: 0x4DDF3B1F
	Offset: 0x8600
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_6eee8df0()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	while(1)
	{
		wait(0.05);
		var_266deb89 = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a namespace_ad23e503::function_7922262b("in_ready_room"))
			{
				var_266deb89++;
			}
		}
		if(var_266deb89 == function_b2df7c6d() && !function_4bd0142f("scr_safehouse_test", 0))
		{
			level thread function_56c8845e();
			level thread namespace_ce7c3ed5::function_7e61de2b(0);
			level namespace_ad23e503::function_74d6b22f("all_players_ready");
			return;
		}
	}
}

/*
	Name: function_3495bf85
	Namespace: namespace_a6816cde
	Checksum: 0x5B02D7ED
	Offset: 0x8778
	Size: 0x245
	Parameters: 0
	Flags: None
*/
function function_3495bf85()
{
	self endon("hash_643a7daf");
	self endon("hash_8b8ae130");
	level endon("hash_a7ea64dd");
	self thread namespace_cc27597::function_43718187(level.var_45f1e4ac[self.var_8d3631f4].var_60e51667, self);
	var_6347c9e0 = 0;
	while(1)
	{
		level namespace_ad23e503::function_d3de6822("player_entering_ready_room");
		var_4ebceea0 = level.var_45f1e4ac[self.var_8d3631f4].var_18762b00[var_6347c9e0];
		var_1cbcb46d = namespace_14b42b8a::function_b7af54ae("scene", var_4ebceea0);
		var_ea2f4efc = namespace_cc27597::function_af9fe39b(var_1cbcb46d.var_5e95bd47, 0, 1);
		function_8d0f083b(self, var_1cbcb46d.var_751c7781, GetTime(), var_ea2f4efc.var_722885f3, var_ea2f4efc.var_6ab6f4fd);
		var_78962fff = function_5f3e774c(var_4ebceea0);
		if(var_78962fff < 0.05)
		{
			var_78962fff = 5;
		}
		else
		{
			var_78962fff = var_78962fff / 0.05;
			var_78962fff = var_78962fff + 0.0001;
			var_78962fff = function_ed96839(var_78962fff);
			var_78962fff = var_78962fff * 0.05;
		}
		level namespace_ad23e503::function_d266a8b4(var_78962fff, "player_entering_ready_room");
		var_6347c9e0++;
		if(var_6347c9e0 == level.var_45f1e4ac[self.var_8d3631f4].var_18762b00.size)
		{
			var_6347c9e0 = 0;
		}
	}
}

/*
	Name: function_769e64f9
	Namespace: namespace_a6816cde
	Checksum: 0xFF456B30
	Offset: 0x89C8
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_769e64f9()
{
	for(var_c957f6b6 = 1; var_c957f6b6 <= 4; var_c957f6b6++)
	{
		var_12aba86 = function_6ada35ba("player_" + var_c957f6b6 + "_sidearm", "targetname");
		if(isdefined(var_12aba86))
		{
			var_12aba86 function_50ccee8d();
		}
	}
}

/*
	Name: function_54a3b25a
	Namespace: namespace_a6816cde
	Checksum: 0x533A2333
	Offset: 0x8A60
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_54a3b25a()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(var_5dc5e20a != self && !var_5dc5e20a namespace_ad23e503::function_7922262b("in_ready_room"))
		{
			var_c10220c5 = self function_c7f3ce11();
			var_5dc5e20a function_5b7e454a(&"comms_event_message", 2, &"CP_SH_CAIRO_PLAYER_READY", var_c10220c5);
		}
	}
}

/*
	Name: function_ca93dc45
	Namespace: namespace_a6816cde
	Checksum: 0x6BA2C01D
	Offset: 0x8B58
	Size: 0x425
	Parameters: 0
	Flags: None
*/
function function_ca93dc45()
{
	level.var_45f1e4ac[0] = function_a8fb77bd();
	level.var_45f1e4ac[0].var_ab85a1cc = 0;
	level.var_45f1e4ac[0].var_60e51667 = "cin_saf_ram_readyroom_3rd_pre100_player01";
	level.var_45f1e4ac[0].var_1fffaf0 = "cin_saf_ram_readyroom_3rd_pre100_player01_enter";
	level.var_45f1e4ac[0].var_b156618f = "cin_saf_ram_readyroom_3rd_pre100_p1_entrance_cam";
	level.var_45f1e4ac[0].var_18762b00[0] = "cin_saf_ram_readyroom_3rd_pre100_p1_cam01";
	level.var_45f1e4ac[0].var_18762b00[1] = "cin_saf_ram_readyroom_3rd_pre100_p1_cam02";
	level.var_45f1e4ac[0].var_18762b00[2] = "cin_saf_ram_readyroom_3rd_pre100_p1_cam03";
	level.var_45f1e4ac[1] = function_a8fb77bd();
	level.var_45f1e4ac[1].var_ab85a1cc = 0;
	level.var_45f1e4ac[1].var_60e51667 = "cin_saf_ram_readyroom_3rd_pre100_player02";
	level.var_45f1e4ac[1].var_1fffaf0 = "cin_saf_ram_readyroom_3rd_pre100_player02_enter";
	level.var_45f1e4ac[1].var_b156618f = "cin_saf_ram_readyroom_3rd_pre100_p2_entrance_cam";
	level.var_45f1e4ac[1].var_18762b00[0] = "cin_saf_ram_readyroom_3rd_pre100_p2_cam01";
	level.var_45f1e4ac[1].var_18762b00[1] = "cin_saf_ram_readyroom_3rd_pre100_p2_cam02";
	level.var_45f1e4ac[1].var_18762b00[2] = "cin_saf_ram_readyroom_3rd_pre100_p2_cam03";
	level.var_45f1e4ac[2] = function_a8fb77bd();
	level.var_45f1e4ac[2].var_ab85a1cc = 0;
	level.var_45f1e4ac[2].var_60e51667 = "cin_saf_ram_readyroom_3rd_pre100_player03";
	level.var_45f1e4ac[2].var_1fffaf0 = "cin_saf_ram_readyroom_3rd_pre100_player03_enter";
	level.var_45f1e4ac[2].var_b156618f = "cin_saf_ram_readyroom_3rd_pre100_p3_entrance_cam";
	level.var_45f1e4ac[2].var_18762b00[0] = "cin_saf_ram_readyroom_3rd_pre100_p3_cam01";
	level.var_45f1e4ac[2].var_18762b00[1] = "cin_saf_ram_readyroom_3rd_pre100_p3_cam02";
	level.var_45f1e4ac[2].var_18762b00[2] = "cin_saf_ram_readyroom_3rd_pre100_p3_cam03";
	level.var_45f1e4ac[3] = function_a8fb77bd();
	level.var_45f1e4ac[3].var_ab85a1cc = 0;
	level.var_45f1e4ac[3].var_60e51667 = "cin_saf_ram_readyroom_3rd_pre100_player04";
	level.var_45f1e4ac[3].var_1fffaf0 = "cin_saf_ram_readyroom_3rd_pre100_player04_enter";
	level.var_45f1e4ac[3].var_b156618f = "cin_saf_ram_readyroom_3rd_pre100_p4_entrance_cam";
	level.var_45f1e4ac[3].var_18762b00[0] = "cin_saf_ram_readyroom_3rd_pre100_p4_cam01";
	level.var_45f1e4ac[3].var_18762b00[1] = "cin_saf_ram_readyroom_3rd_pre100_p4_cam02";
	level.var_45f1e4ac[3].var_18762b00[2] = "cin_saf_ram_readyroom_3rd_pre100_p4_cam03";
}

/*
	Name: function_9152f342
	Namespace: namespace_a6816cde
	Checksum: 0xDF78ABC5
	Offset: 0x8F88
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_9152f342()
{
	if(function_4bd0142f("scr_safehouse_test", 0))
	{
		if(!isdefined(level.var_f2db68b2))
		{
			level.var_f2db68b2 = 0;
		}
		else
		{
			level.var_f2db68b2++;
			if(level.var_f2db68b2 == level.var_45f1e4ac.size)
			{
				level.var_f2db68b2 = 0;
			}
		}
		self.var_8d3631f4 = level.var_f2db68b2;
		return level.var_f2db68b2;
		break;
	}
	for(var_4bc288a0 = 0; var_4bc288a0 < level.var_45f1e4ac.size; var_4bc288a0++)
	{
		if(level.var_45f1e4ac[var_4bc288a0].var_ab85a1cc == 0)
		{
			level.var_45f1e4ac[var_4bc288a0].var_ab85a1cc = 1;
			self.var_8d3631f4 = var_4bc288a0;
			return var_4bc288a0;
		}
	}
}

/*
	Name: function_f4851bfc
	Namespace: namespace_a6816cde
	Checksum: 0x4AC1FDDE
	Offset: 0x9090
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_f4851bfc()
{
	level.var_45f1e4ac[self.var_8d3631f4].var_ab85a1cc = 0;
	self.var_8d3631f4 = undefined;
}

/*
	Name: function_43e79c92
	Namespace: namespace_a6816cde
	Checksum: 0x1628C932
	Offset: 0x90C8
	Size: 0x4FB
	Parameters: 0
	Flags: None
*/
function function_43e79c92()
{
	level.var_f2434cd3 = [];
	for(var_ecc65052 = 0; var_ecc65052 < 4; var_ecc65052++)
	{
		level.var_f2434cd3[var_ecc65052] = function_a8fb77bd();
		level.var_f2434cd3[var_ecc65052].var_afe3e55f = 0;
		var_14f1f567 = function_99201f25("player_bunk_" + var_ecc65052, "targetname");
		foreach(var_6e887f87 in var_14f1f567)
		{
			switch(var_6e887f87.var_caae374e)
			{
				case "data_vault":
				{
					level.var_f2434cd3[var_ecc65052].var_9860be12 = var_6e887f87;
					level.var_f2434cd3[var_ecc65052].var_71dcdd3e = function_a8960cf7(var_6e887f87, &"cp_safehouse_data_vault", &"CP_SH_CAIRO_DATA_VAULT2", &function_18e7bb4a, 0);
					level.var_f2434cd3[var_ecc65052].var_71dcdd3e.var_ecc65052 = var_ecc65052;
					level.var_f2434cd3[var_ecc65052].var_71dcdd3e function_e04cba0f();
					break;
				}
				case "wardrobe":
				{
					level.var_f2434cd3[var_ecc65052].var_4090852 = var_6e887f87;
					level.var_f2434cd3[var_ecc65052].var_a0711246 = function_a8960cf7(var_6e887f87, &"cp_safehouse_wardrobe", &"CP_SH_CAIRO_WARDROBE2", &function_e2d08944, 0);
					level.var_f2434cd3[var_ecc65052].var_a0711246.var_ecc65052 = var_ecc65052;
					level.var_f2434cd3[var_ecc65052].var_a0711246 function_e04cba0f();
					break;
				}
				case "foot_locker":
				{
					level.var_f2434cd3[var_ecc65052].var_28e7a252 = var_6e887f87;
					level.var_f2434cd3[var_ecc65052].var_6caeba6e = function_a8960cf7(var_6e887f87, &"cp_safehouse_collectibles", &"CP_SH_CAIRO_COLLECTIBLES2", &function_1f7af538, 1);
					level.var_f2434cd3[var_ecc65052].var_6caeba6e.var_ecc65052 = var_ecc65052;
					level.var_f2434cd3[var_ecc65052].var_6caeba6e function_e04cba0f();
					break;
				}
				case "medal_case":
				{
					level.var_f2434cd3[var_ecc65052].var_b8276d03 = var_6e887f87;
					level.var_f2434cd3[var_ecc65052].var_46f52946 = function_a8960cf7(var_6e887f87, &"cp_safehouse_medal_case", &"CP_SH_CAIRO_MEDAL_CASE2", &function_7e1ee6bb, 1);
					level.var_f2434cd3[var_ecc65052].var_46f52946.var_ecc65052 = var_ecc65052;
					level.var_f2434cd3[var_ecc65052].var_46f52946 function_e04cba0f();
					break;
				}
				case "bunk_volume":
				{
					level.var_f2434cd3[var_ecc65052].var_67825717 = var_6e887f87;
					break;
				}
				case "bunk_door_clip":
				{
					level.var_f2434cd3[var_ecc65052].var_ac769486 = var_6e887f87;
					break;
				}
			}
		}
	}
	level.var_17196e81 = function_6ada35ba("t_mission_vault", "targetname");
	function_a8960cf7(level.var_17196e81, &"cp_safehouse_mission_data", &"CP_SH_CAIRO_MISSION_DATA2", &function_495a58b6, 1);
}

/*
	Name: function_ed174df5
	Namespace: namespace_a6816cde
	Checksum: 0x717E880E
	Offset: 0x95D0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_ed174df5()
{
	level thread function_5454cdd2();
	level thread function_d38001d0();
	level thread function_9c8f7a4d();
	level thread function_2b0247d1();
}

/*
	Name: function_5454cdd2
	Namespace: namespace_a6816cde
	Checksum: 0xD3A49566
	Offset: 0x9640
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_5454cdd2()
{
	thread function_980a453e();
	var_53d1df2a[0] = "p7_fxanim_gp_3d_printer_object01_01_bundle";
	var_53d1df2a[1] = "p7_fxanim_gp_3d_printer_object01_02_bundle";
	var_53d1df2a[2] = "p7_fxanim_gp_3d_printer_object01_03_bundle";
	var_8aa9ef07 = function_6ada35ba("printer", "targetname");
	while(1)
	{
		var_53d1df2a = namespace_84970cc4::function_8332f7f6(var_53d1df2a);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_53d1df2a.size; var_c957f6b6++)
		{
			var_8aa9ef07 namespace_cc27597::function_43718187(var_53d1df2a[var_c957f6b6]);
		}
	}
}

/*
	Name: function_980a453e
	Namespace: namespace_a6816cde
	Checksum: 0xF45E94AF
	Offset: 0x9740
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_980a453e()
{
	var_10b73d4a = function_6ada35ba("t_printer", "targetname");
	if(isdefined(var_10b73d4a))
	{
		if(function_bac7e7e9())
		{
			function_a8960cf7(var_10b73d4a, &"cp_safehouse_printer", &"CP_SH_CAIRO_PRINTER2", &function_d116f488, 1);
		}
		else
		{
			var_10b73d4a function_dc8c8404();
		}
	}
}

/*
	Name: function_2fad03f
	Namespace: namespace_a6816cde
	Checksum: 0x9339E741
	Offset: 0x97E8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_2fad03f()
{
	var_f531e9c8 = self namespace_8f94416a::function_7006b9ad();
	var_5b1e85ea = self namespace_8f94416a::function_45ddfa6();
	if(var_f531e9c8 && var_5b1e85ea)
	{
		self function_f07412c0("cp_medal_all_tokens");
	}
}

/*
	Name: function_d116f488
	Namespace: namespace_a6816cde
	Checksum: 0x3108FBF0
	Offset: 0x9868
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_d116f488(var_5dc5e20a)
{
	var_5dc5e20a function_711d3c1("WeaponDesigner");
}

/*
	Name: function_2b0247d1
	Namespace: namespace_a6816cde
	Checksum: 0x7C180A43
	Offset: 0x98A0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_2b0247d1()
{
	thread function_36069a7();
	var_53d1df2a[0] = "p7_fxanim_gp_robot_arm_doctor_01_bundle";
	var_53d1df2a[1] = "p7_fxanim_gp_robot_arm_doctor_02_bundle";
	var_53d1df2a[2] = "p7_fxanim_gp_robot_arm_doctor_03_bundle";
	var_ecf502d = function_6ada35ba("arm_doctor", "targetname");
	while(1)
	{
		var_53d1df2a = namespace_84970cc4::function_8332f7f6(var_53d1df2a);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_53d1df2a.size; var_c957f6b6++)
		{
			var_ecf502d namespace_cc27597::function_43718187(var_53d1df2a[var_c957f6b6]);
		}
	}
}

/*
	Name: function_36069a7
	Namespace: namespace_a6816cde
	Checksum: 0x5E8290D
	Offset: 0x99A0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_36069a7()
{
	var_490ddbf0 = function_6ada35ba("t_cybercore", "targetname");
	if(isdefined(var_490ddbf0))
	{
		function_a8960cf7(var_490ddbf0, &"cp_safehouse_cybercore", &"CP_SH_CAIRO_CYBERCORE2", &function_b34dec6f, 1);
	}
}

/*
	Name: function_e17b7386
	Namespace: namespace_a6816cde
	Checksum: 0x4BD20F55
	Offset: 0x9A18
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_e17b7386()
{
	self endon("hash_643a7daf");
	if(!self namespace_ad23e503::function_dbca4c5d("cybercom_upgrade_check"))
	{
		self namespace_ad23e503::function_c35e6aab("cybercom_upgrade_check");
	}
	if(self namespace_ad23e503::function_7922262b("cybercom_upgrade_check"))
	{
		return;
	}
	self namespace_ad23e503::function_74d6b22f("cybercom_upgrade_check");
	self namespace_82b91a51::function_c9aa1ff("stats_changed", 5);
	if(self namespace_8f94416a::function_45ddfa6())
	{
		self function_f07412c0("cp_medal_all_cybercores");
		self function_2fad03f();
	}
	self namespace_ad23e503::function_9d134160("cybercom_upgrade_check");
}

/*
	Name: function_b34dec6f
	Namespace: namespace_a6816cde
	Checksum: 0x7797F5F0
	Offset: 0x9B48
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_b34dec6f(var_5dc5e20a)
{
	var_5dc5e20a function_711d3c1("CybercoreUpgrade");
	var_5dc5e20a thread function_e17b7386();
}

/*
	Name: function_d38001d0
	Namespace: namespace_a6816cde
	Checksum: 0xB9681AA2
	Offset: 0x9B98
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d38001d0()
{
	wait(0.05);
	var_d880a1f1 = function_6ada35ba("gunrack", "targetname");
	var_d880a1f1 namespace_71e9cb84::function_74d6b22f("gun_rack_init", 1);
	var_8cdc8686 = function_6ada35ba("t_gun_rack", "targetname");
	function_a8960cf7(var_8cdc8686, &"cp_safehouse_gun_rack", &"CP_SH_CAIRO_GUN_RACK2", &function_b0863559);
	var_8cdc8686 thread function_84b269ce();
}

/*
	Name: function_862aff95
	Namespace: namespace_a6816cde
	Checksum: 0x3ED149F6
	Offset: 0x9C78
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_862aff95(var_6bfe1586)
{
	var_6bfe1586 endon("hash_128f8789");
	var_6bfe1586 namespace_82b91a51::function_5b7e3888("loadout_changed_timeout", "loadout_changed");
	var_6bfe1586 namespace_ad23e503::function_9d134160("loadout_dirty");
	var_6bfe1586 namespace_a249d1db::function_a61641c6(var_6bfe1586.var_3e94206a, var_6bfe1586.var_808c68ef, var_6bfe1586.var_dc236bc8);
	var_6bfe1586 namespace_82b91a51::function_9fcf3cd8(2, "stats_changed");
	var_6bfe1586 function_2fad03f();
	var_6bfe1586 notify("hash_bcf22596");
}

/*
	Name: function_b0863559
	Namespace: namespace_a6816cde
	Checksum: 0x22604E9B
	Offset: 0x9D68
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_b0863559(var_6bfe1586)
{
	var_6bfe1586 namespace_ad23e503::function_2698b54f("loadout_dirty", 1);
	thread function_862aff95(var_6bfe1586);
	var_6bfe1586 function_711d3c1("chooseClass");
	var_6bfe1586 function_f25877d2();
	var_58b8cb81 = var_6bfe1586 namespace_82b91a51::function_9fcf3cd8(7, "gun_rack_loadout_changed_handled");
	if(var_58b8cb81 == "timeout")
	{
		var_6bfe1586 notify("hash_73dacb2");
	}
}

/*
	Name: function_711d3c1
	Namespace: namespace_a6816cde
	Checksum: 0xB13F46AE
	Offset: 0x9E40
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_711d3c1(var_60bb1927)
{
	self endon("hash_128f8789");
	self namespace_ad23e503::function_74d6b22f("safehouse_menu_open");
	self function_3c3596e5();
	var_f0a31618 = self function_2f6b6a4c(var_60bb1927);
	level.var_ac964c36 = 0;
	do
	{
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	while(!var_d62110b4 != "closed");
	self function_859d37b8();
	self namespace_ad23e503::function_9d134160("safehouse_menu_open");
	self thread function_2c4da22(0.5, var_f0a31618);
	level.var_ac964c36 = 1;
}

/*
	Name: function_84b269ce
	Namespace: namespace_a6816cde
	Checksum: 0xB408DE2F
	Offset: 0x9F58
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_84b269ce()
{
	var_2abb5b57 = 0;
	var_30399f19 = function_6ada35ba("gunrack", "targetname");
	while(1)
	{
		if(level namespace_ad23e503::function_7922262b("player_near_gun_rack") && !var_2abb5b57)
		{
			level namespace_71e9cb84::function_74d6b22f("near_gun_rack", 1);
			var_30399f19 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_cairo_gunrack_open_bundle");
			var_2abb5b57 = 1;
			wait(6);
		}
		else if(!level namespace_ad23e503::function_7922262b("player_near_gun_rack") && var_2abb5b57)
		{
			level namespace_71e9cb84::function_74d6b22f("near_gun_rack", 0);
			var_30399f19 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_cairo_gunrack_close_bundle");
			var_2abb5b57 = 0;
			wait(4);
		}
		wait(0.05);
	}
}

/*
	Name: function_9c8f7a4d
	Namespace: namespace_a6816cde
	Checksum: 0x53410373
	Offset: 0xA0A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_9c8f7a4d()
{
	namespace_84970cc4::function_966ecb29(function_99201f25("chair", "script_noteworthy"), &function_df2a7519);
}

/*
	Name: function_df2a7519
	Namespace: namespace_a6816cde
	Checksum: 0x487B5EEC
	Offset: 0xA0F8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_df2a7519()
{
	self namespace_ad23e503::function_c35e6aab("player_in_chair");
	var_da697227 = function_6ada35ba("training_trig" + self.var_8202763a, "targetname");
	var_da697227 function_1f80b3d5();
	var_50792995 = function_9b7fda5e("trigger_radius", self.var_722885f3, 0, 150, 128);
	var_a1899e9f = function_a8960cf7(var_da697227, &"cp_safehouse_training", &"CP_SH_CAIRO_TRAINING2", &function_fda1c8b5);
	var_a1899e9f.var_524f5f14 = self;
	self.var_10c03d0c = 0;
	while(1)
	{
		self namespace_ad23e503::function_d3de6822("player_in_chair");
		var_a1899e9f function_a8271940();
		var_df983850 = 0;
		foreach(var_6bfe1586 in level.var_2395e945)
		{
			if(var_6bfe1586 function_32fa5072(var_50792995) && var_6bfe1586 namespace_82b91a51::function_d61b846f(self.var_722885f3, 0.5, 0))
			{
				var_df983850 = 1;
			}
		}
		if(var_df983850 && !self.var_10c03d0c)
		{
			self namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_chair_console_" + self.var_8202763a + "_open_bundle");
			self.var_10c03d0c = 1;
			var_da697227 function_bb863f19();
		}
		else if(!var_df983850 && self.var_10c03d0c)
		{
			var_da697227 function_8c1f7070();
			self namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_chair_console_" + self.var_8202763a + "_close_bundle");
			self.var_10c03d0c = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_fda1c8b5
	Namespace: namespace_a6816cde
	Checksum: 0xAC674738
	Offset: 0xA420
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_fda1c8b5(var_6bfe1586)
{
	var_695fdfde = "left";
	if(self.var_524f5f14.var_8202763a < 3)
	{
		var_695fdfde = "right";
	}
	level.var_f0ba161d function_e04cba0f(var_6bfe1586);
	namespace_d0ef8521::function_50ccee8d("cp_safehouse_ready_room", var_6bfe1586);
	var_6bfe1586.var_597c2939 = self.var_524f5f14;
	var_6bfe1586.var_8ea3df31 = var_695fdfde;
	self.var_524f5f14.var_a1899e9f = self;
	self.var_524f5f14 namespace_ad23e503::function_74d6b22f("player_in_chair");
	self function_e04cba0f();
	self.var_524f5f14 namespace_cc27597::function_43718187("cin_saf_ram_training_1st_getin_" + var_695fdfde, var_6bfe1586);
	level namespace_71e9cb84::function_74d6b22f("toggle_console_" + self.var_524f5f14.var_8202763a, 1);
	self.var_524f5f14 namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_chair_console_" + self.var_524f5f14.var_8202763a + "_close_bundle");
	self.var_524f5f14.var_10c03d0c = 0;
	var_6bfe1586 namespace_ce7c3ed5::function_7e61de2b(0.6, "black");
	var_6bfe1586.var_67b6f3d0 = var_6bfe1586.var_808c68ef;
	var_6bfe1586 namespace_ce7c3ed5::function_593c2af4(0, "black");
	var_6bfe1586 thread function_ecca1245();
}

/*
	Name: function_a153016
	Namespace: namespace_a6816cde
	Checksum: 0xE443AD33
	Offset: 0xA648
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_a153016()
{
	for(var_c957f6b6 = 0; var_c957f6b6 < 6; var_c957f6b6++)
	{
		var_b53e21eb = self function_84368297("PlayerStatsByMap", "cp_sh_cairo", "completedDifficulties", var_c957f6b6);
		self function_8f67433b("PlayerStatsByMap", "cp_sh_cairo", "previousCompletedDifficulties", var_c957f6b6, var_b53e21eb);
	}
}

/*
	Name: function_ecca1245
	Namespace: namespace_a6816cde
	Checksum: 0x66054996
	Offset: 0xA6F0
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_ecca1245()
{
	self endon("hash_643a7daf");
	var_134a15b0 = self function_48c6a3a2();
	self namespace_ad23e503::function_74d6b22f("in_training_sim");
	self thread namespace_ce7c3ed5::function_593c2af4(0, "black");
	if(self function_109cf997("chooseClass_TrainingSim"))
	{
		self thread namespace_ce7c3ed5::function_7e61de2b(0, "white");
		self namespace_b976075a::function_4cef9872(function_9065d6ea());
		self function_a153016();
		self.var_597c2939 function_29532574(self, self.var_8ea3df31, var_134a15b0);
		self namespace_71e9cb84::function_cc4d5165("safehouse.inTrainingSim", 1);
		self function_c550ee23(self.var_597c2939.var_8202763a);
	}
	else
	{
		self function_49876a9e("chooseClass_TrainingSim");
		self function_49876a9e("FullBlack");
		self thread namespace_ce7c3ed5::function_593c2af4(1, "black");
		self function_6ebf2134();
		if(function_5b49d38c(self))
		{
			self namespace_ad23e503::function_9d134160("in_training_sim");
		}
	}
}

/*
	Name: function_1a70861a
	Namespace: namespace_a6816cde
	Checksum: 0xFC272B07
	Offset: 0xA920
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_1a70861a()
{
	self endon("hash_643a7daf");
	self function_50ccee8d();
	var_17c60336 = "cin_saf_ram_training_1st_sit_" + self.var_8ea3df31;
	var_525aea1a = namespace_14b42b8a::function_b7af54ae("scene", var_17c60336);
	if(isdefined(var_525aea1a) && isdefined(var_525aea1a.var_485299d7) && var_525aea1a.var_485299d7.size > 0)
	{
		var_525aea1a.var_485299d7[0].var_6b7e11cd = 0;
		var_525aea1a.var_485299d7[0].var_4d56e41d = 0;
		var_525aea1a.var_485299d7[0].var_7f08e977 = 0.01;
	}
	self.var_597c2939 thread namespace_cc27597::function_43718187(var_17c60336, self);
	wait(0.05);
	self function_48f26766();
	wait(0.05);
	self.var_e162a28e function_dc8c8404();
	self.var_f5434f17 function_dc8c8404();
	namespace_c550ee23::function_3206b93a();
	self function_49876a9e("FullBlack");
	self thread function_ecca1245();
}

/*
	Name: function_680cf465
	Namespace: namespace_a6816cde
	Checksum: 0x3CC9A179
	Offset: 0xAAE8
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_680cf465()
{
	if(isdefined(self.var_597c2939))
	{
		self.var_597c2939.var_a1899e9f function_a8271940();
		self.var_597c2939.var_10c03d0c = 1;
		self.var_597c2939 namespace_ad23e503::function_9d134160("player_in_chair");
		level namespace_71e9cb84::function_74d6b22f("toggle_console_" + self.var_597c2939.var_8202763a, 0);
	}
	if(isdefined(self.var_e162a28e))
	{
		self.var_e162a28e function_dc8c8404();
		self.var_f5434f17 function_dc8c8404();
	}
}

/*
	Name: function_6ebf2134
	Namespace: namespace_a6816cde
	Checksum: 0x46CC9BFC
	Offset: 0xABD0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_6ebf2134()
{
	function_5b426a60(self.var_67b6f3d0);
	self.var_597c2939 namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_chair_console_" + self.var_597c2939.var_8202763a + "_open_bundle");
	self.var_597c2939 namespace_cc27597::function_43718187("cin_saf_ram_training_1st_getout_" + self.var_8ea3df31, self);
	self namespace_71e9cb84::function_cc4d5165("safehouse.inTrainingSim", 0);
	self function_680cf465();
	wait(1);
	function_10650e35();
	level.var_f0ba161d function_a8271940(self);
	namespace_d0ef8521::function_48f26766("cp_safehouse_ready_room", self);
}

/*
	Name: function_29532574
	Namespace: namespace_a6816cde
	Checksum: 0xACA81059
	Offset: 0xACD8
	Size: 0x1AB
	Parameters: 3
	Flags: None
*/
function function_29532574(var_6bfe1586, var_695fdfde, var_134a15b0)
{
	var_6bfe1586.var_e162a28e = namespace_82b91a51::function_f7337c08(var_6bfe1586);
	var_6bfe1586.var_e162a28e namespace_71e9cb84::function_74d6b22f("player_clone", 1);
	var_6bfe1586.var_f5434f17 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_6bfe1586.var_e162a28e function_d48f2ab3("tag_weapon_right"), var_6bfe1586.var_e162a28e function_cd1d99bd("tag_weapon_right"));
	var_6bfe1586.var_f5434f17 function_97877619(var_134a15b0, var_134a15b0.var_7c2864e6, var_6bfe1586 function_16a63cbf(var_134a15b0));
	var_6bfe1586.var_f5434f17 function_37f7858a(var_6bfe1586.var_e162a28e, "tag_weapon_right");
	var_6bfe1586.var_10aaa336 = (0, 0, var_6bfe1586.var_722885f3[2] - 10000);
	self thread namespace_cc27597::function_43718187("cin_saf_ram_training_1st_sit_fake_" + var_695fdfde, var_6bfe1586.var_e162a28e);
}

/*
	Name: function_c550ee23
	Namespace: namespace_a6816cde
	Checksum: 0xAE4AC2D7
	Offset: 0xAE90
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_c550ee23(var_aaf585dc)
{
	self endon("hash_643a7daf");
	function_b439510f();
	namespace_82b91a51::function_76f13293();
	self thread function_d850faa0(var_aaf585dc);
	self function_49876a9e("FullBlack");
	namespace_c550ee23::function_4f28b6f8("training_sim_" + var_aaf585dc);
	var_bc7395fb = 1;
	if(!function_5b49d38c(self))
	{
		var_bc7395fb = 0;
		self namespace_82b91a51::function_564f2d81("cp_deathcam_ended", "spawned");
	}
	self function_4aa9caac("FullBlack");
	/#
		while(self function_b6b4f2ae("Dev Block strings are not supported", "Dev Block strings are not supported"))
		{
			wait(0.05);
		}
	#/
	if(var_bc7395fb)
	{
		function_b11df48f();
		self thread function_1a70861a();
	}
}

/*
	Name: function_d850faa0
	Namespace: namespace_a6816cde
	Checksum: 0xA7C12937
	Offset: 0xB010
	Size: 0x2C3
	Parameters: 1
	Flags: None
*/
function function_d850faa0(var_aaf585dc)
{
	self waittill("hash_ce89933d");
	var_c6f2fa46 = self function_d3197299((-45, -15, 60));
	var_9012dd1e = namespace_82b91a51::function_b9fd52a4("tag_origin", var_c6f2fa46, function_35495468(self.var_6ab6f4fd, (-10, 5, 0)));
	var_9012dd1e function_37f7858a(self);
	function_9e3608e3("training_sim_extracam_screen_off" + var_aaf585dc);
	function_6ddd4fa4("training_sim_extracam_screen_on" + var_aaf585dc);
	function_f7f318a5(var_aaf585dc, 1);
	while(isdefined(self) && (isdefined(self.var_24c69c09) && self.var_24c69c09))
	{
		var_4f93c6de = 0;
		foreach(var_5dc5e20a in level.var_9b1393e7)
		{
			if(var_5dc5e20a != self && (!isdefined(var_5dc5e20a.var_24c69c09) && var_5dc5e20a.var_24c69c09))
			{
				var_4f93c6de = 1;
				break;
			}
		}
		if(var_4f93c6de)
		{
		}
		else
		{
		}
		var_9012dd1e namespace_71e9cb84::function_74d6b22f("training_sim_extracam", 0);
		namespace_82b91a51::function_76f13293();
	}
	var_9012dd1e namespace_71e9cb84::function_74d6b22f("training_sim_extracam", 0);
	function_f7f318a5(var_aaf585dc, 0);
	namespace_82b91a51::function_76f13293();
	var_9012dd1e function_dc8c8404();
	function_9e3608e3("training_sim_extracam_screen_on" + var_aaf585dc);
	function_6ddd4fa4("training_sim_extracam_screen_off" + var_aaf585dc);
}

/*
	Name: function_f7f318a5
	Namespace: namespace_a6816cde
	Checksum: 0x3869ACB7
	Offset: 0xB2E0
	Size: 0x167
	Parameters: 2
	Flags: None
*/
function function_f7f318a5(var_aaf585dc, var_c1e63f13)
{
	level.var_b57a1b14[var_aaf585dc] = var_c1e63f13;
	var_fa621f28 = [];
	var_fa621f28[1] = 0;
	var_fa621f28[2] = 0;
	var_fa621f28[3] = 0;
	var_fa621f28[4] = 0;
	for(var_102e276d = 1; var_102e276d <= 4; var_102e276d++)
	{
		for(var_c1a733c2 = 1; var_c1a733c2 <= 4; var_c1a733c2++)
		{
			if(isdefined(level.var_b57a1b14[var_c1a733c2]) && level.var_b57a1b14[var_c1a733c2] && (!isdefined(var_fa621f28[var_102e276d]) && var_fa621f28[var_102e276d]))
			{
				function_6ddd4fa4("wall_extracam" + var_102e276d + var_c1a733c2);
				var_fa621f28[var_102e276d] = 1;
				continue;
			}
			function_9e3608e3("wall_extracam" + var_102e276d + var_c1a733c2);
		}
	}
}

/*
	Name: function_1f7af538
	Namespace: namespace_a6816cde
	Checksum: 0xA058E578
	Offset: 0xB450
	Size: 0x2C7
	Parameters: 1
	Flags: None
*/
function function_1f7af538(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a namespace_71e9cb84::function_cc4d5165("safehouse.inClientBunk", self.var_4dbf3ae3.var_28a08272 function_c7f3ce11());
	var_5dc5e20a function_2cc92070();
	var_a758a79e = function_342806c6("scriptbundle_collectibles", "script_noteworthy", self.var_ecc65052);
	if(isdefined(var_a758a79e))
	{
		if(!isdefined(var_a758a79e.var_c20d98a0))
		{
			var_a758a79e.var_c20d98a0 = 0;
		}
		if(!isdefined(var_a758a79e.var_78c06f4d))
		{
			var_a758a79e.var_78c06f4d = 0;
		}
		var_a758a79e.var_c20d98a0++;
		var_a758a79e thread function_46e83736(var_5dc5e20a);
		if(var_a758a79e.var_c20d98a0 == 1)
		{
			while(var_a758a79e.var_78c06f4d)
			{
				var_a758a79e waittill("hash_e959ad99");
			}
			var_a758a79e namespace_cc27597::function_43718187();
		}
	}
	self.var_4dbf3ae3 function_64218ffc(var_5dc5e20a);
	var_a467390a = undefined;
	if(var_5dc5e20a === self.var_4dbf3ae3.var_28a08272)
	{
		var_a467390a = "BrowseCollectibles";
	}
	else
	{
		var_a467390a = "InspectingCollectibles";
	}
	var_5dc5e20a function_2f6b6a4c(var_a467390a);
	var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
	level.var_ac964c36 = 0;
	do
	{
		var_5dc5e20a waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	while(!(var_1df81780 != var_a467390a && var_d62110b4 != "closed"));
	var_5dc5e20a namespace_82b91a51::function_c72856fc(1);
	self.var_4dbf3ae3 function_858ac43f(var_5dc5e20a);
	var_5dc5e20a function_24f12dbc();
	var_5dc5e20a notify("hash_46e83736");
	level.var_ac964c36 = 1;
}

/*
	Name: function_a35cc107
	Namespace: namespace_a6816cde
	Checksum: 0xE16FD60E
	Offset: 0xB720
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_a35cc107(var_c77d2837)
{
	while(self.var_c20d98a0)
	{
		self waittill("hash_b5a4f84f");
	}
	self.var_78c06f4d = 1;
	self namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_crates_plastic_tech_close_bundle", var_c77d2837);
}

/*
	Name: function_6ca97001
	Namespace: namespace_a6816cde
	Checksum: 0x7BF36852
	Offset: 0xB780
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_6ca97001(var_c77d2837)
{
	self.var_78c06f4d = 0;
	self notify("hash_e959ad99");
	self namespace_cc27597::function_c35e6aab("p7_fxanim_cp_safehouse_crates_plastic_tech_bundle");
}

/*
	Name: function_46e83736
	Namespace: namespace_a6816cde
	Checksum: 0x4BD7102
	Offset: 0xB7D0
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_46e83736(var_5dc5e20a)
{
	var_5dc5e20a namespace_82b91a51::function_564f2d81("death", "close_locker");
	self.var_c20d98a0--;
	if(self.var_c20d98a0 == 0)
	{
		self notify("hash_b5a4f84f");
	}
}

/*
	Name: function_7e1ee6bb
	Namespace: namespace_a6816cde
	Checksum: 0xCE52F7C7
	Offset: 0xB830
	Size: 0x197
	Parameters: 1
	Flags: None
*/
function function_7e1ee6bb(var_5dc5e20a)
{
	self.var_4dbf3ae3 endon("hash_128f8789");
	self.var_4dbf3ae3 function_175e6b8e(0);
	self function_e04cba0f();
	var_5dc5e20a namespace_71e9cb84::function_cc4d5165("safehouse.inClientBunk", self.var_4dbf3ae3.var_28a08272 function_c7f3ce11());
	var_5dc5e20a function_2f6b6a4c("InspectMedalCase");
	var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
	level.var_ac964c36 = 0;
	var_5dc5e20a function_2cc92070();
	do
	{
		var_5dc5e20a waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	while(!(var_1df81780 != "InspectMedalCase" && var_d62110b4 != "closed"));
	var_5dc5e20a function_24f12dbc();
	self.var_4dbf3ae3 function_175e6b8e(1);
	var_5dc5e20a namespace_82b91a51::function_c72856fc(1);
	self function_a8271940();
	level.var_ac964c36 = 1;
}

/*
	Name: function_495a58b6
	Namespace: namespace_a6816cde
	Checksum: 0xAC992687
	Offset: 0xB9D0
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_495a58b6(var_5dc5e20a)
{
	self.var_4dbf3ae3 function_64218ffc(var_5dc5e20a);
	var_5dc5e20a function_3c3596e5();
	var_5dc5e20a function_2cc92070();
	var_5dc5e20a function_c26d52c3();
	self.var_4dbf3ae3 function_858ac43f(var_5dc5e20a);
	var_5dc5e20a function_859d37b8();
	var_5dc5e20a function_24f12dbc();
}

/*
	Name: function_c26d52c3
	Namespace: namespace_a6816cde
	Checksum: 0x9EBAA5C2
	Offset: 0xBAA0
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_c26d52c3()
{
	var_c2dc2b72 = self function_2f6b6a4c("MissionRecordVaultMenu");
	self namespace_82b91a51::function_c72856fc(0);
	level.var_ac964c36 = 0;
	self function_3a9588ea(var_c2dc2b72, "highestMapReached", world.var_33c691cb);
	self function_3a9588ea(var_c2dc2b72, "showMissionSelect", self function_e025daa7());
	self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	while(var_d62110b4 != "closed")
	{
		level.var_a6f47549 = var_d62110b4;
		level namespace_71e9cb84::function_74d6b22f("nextMap", function_59c5ca75(level.var_a6f47549));
		level notify("hash_2456008");
		self waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	self namespace_82b91a51::function_c72856fc(1);
	self function_2b74b70a(var_c2dc2b72);
	level.var_ac964c36 = 1;
}

/*
	Name: function_3374f9fe
	Namespace: namespace_a6816cde
	Checksum: 0x71C608F8
	Offset: 0xBC30
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3374f9fe()
{
	level waittill("hash_677ac410");
	function_a63aee74();
}

/*
	Name: function_f97da4
	Namespace: namespace_a6816cde
	Checksum: 0xA942D200
	Offset: 0xBC60
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_f97da4(var_5dc5e20a)
{
	if(!isdefined(var_5dc5e20a))
	{
		return;
	}
	var_5dc5e20a function_f2e7970f("MusicPlayer.state", "stop");
	var_5dc5e20a notify("hash_fb4d907d");
	var_5dc5e20a.var_148d9374 = 0;
	if(isdefined(var_5dc5e20a.var_c6ff6155))
	{
		var_48b937ab = function_5a31ce6c("gamedata/tables/common/music_player.csv", var_5dc5e20a.var_c6ff6155, 1);
		var_5dc5e20a function_356a1c2a(var_48b937ab);
	}
}

/*
	Name: function_648c6218
	Namespace: namespace_a6816cde
	Checksum: 0xF916C62F
	Offset: 0xBD30
	Size: 0x2B3
	Parameters: 2
	Flags: None
*/
function function_648c6218(var_5dc5e20a, var_d60677e0)
{
	if(!isdefined(var_d60677e0))
	{
		var_d60677e0 = 0;
	}
	if(!isdefined(var_5dc5e20a.var_c6ff6155))
	{
		var_5dc5e20a.var_c6ff6155 = 0;
	}
	var_ccb4b066 = function_1556496c("gamedata/tables/common/music_player.csv");
	while(var_5dc5e20a.var_c6ff6155 < 0)
	{
		var_5dc5e20a.var_c6ff6155 = var_5dc5e20a.var_c6ff6155 + var_ccb4b066;
	}
	var_5dc5e20a.var_c6ff6155 = var_5dc5e20a.var_c6ff6155 % var_ccb4b066;
	for(var_48b937ab = function_5a31ce6c("gamedata/tables/common/music_player.csv", var_5dc5e20a.var_c6ff6155, 1); !var_5dc5e20a function_8ab5656e(var_48b937ab);  = function_5a31ce6c("gamedata/tables/common/music_player.csv", var_5dc5e20a.var_c6ff6155, 1))
	{
		if(var_d60677e0)
		{
		}
		else
		{
		}
		var_5dc5e20a.var_c6ff6155 = -1 + 1;
		var_5dc5e20a.var_c6ff6155 = var_5dc5e20a.var_c6ff6155 % var_ccb4b066;
	}
	var_a9f4c2c5 = function_5a31ce6c("gamedata/tables/common/music_player.csv", var_5dc5e20a.var_c6ff6155, 2);
	var_93be7628 = function_5a31ce6c("gamedata/tables/common/music_player.csv", var_5dc5e20a.var_c6ff6155, 3);
	var_e862021a = function_5a31ce6c("gamedata/tables/common/music_player.csv", var_5dc5e20a.var_c6ff6155, 4);
	var_5dc5e20a function_f2e7970f("MusicPlayer.title", var_a9f4c2c5);
	var_5dc5e20a function_f2e7970f("MusicPlayer.artist", var_93be7628);
	var_5dc5e20a function_f2e7970f("MusicPlayer.artist2", var_e862021a);
}

/*
	Name: function_2ce69251
	Namespace: namespace_a6816cde
	Checksum: 0x5D64E662
	Offset: 0xBFF0
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_2ce69251()
{
	self endon("hash_fb4d907d");
	self endon("hash_643a7daf");
	while(1)
	{
		function_648c6218(self);
		var_48b937ab = function_5a31ce6c("gamedata/tables/common/music_player.csv", self.var_c6ff6155, 1);
		self function_f2e7970f("MusicPlayer.state", "play");
		self function_b8862210(var_48b937ab, self);
		var_ccbbd30a = function_33724181(function_799102f2(var_48b937ab)) / 1000;
		namespace_82b91a51::function_c9aa1ff("music_change", var_ccbbd30a + 3);
		self function_356a1c2a(var_48b937ab);
		self.var_c6ff6155 = self.var_c6ff6155 + 1;
	}
}

/*
	Name: function_18e7bb4a
	Namespace: namespace_a6816cde
	Checksum: 0xA3E5C82D
	Offset: 0xC130
	Size: 0x7B7
	Parameters: 1
	Flags: None
*/
function function_18e7bb4a(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a function_3c3596e5();
	var_162c6190 = function_99201f25("m_terminal_asleep", "targetname");
	var_2f902017 = function_99201f25("m_terminal_awake", "targetname");
	var_69c1a63b = function_e7bdc1a1(var_5dc5e20a.var_722885f3, var_162c6190);
	var_cdc7765d = function_e7bdc1a1(var_5dc5e20a.var_722885f3, var_2f902017);
	var_cdc7765d function_48f26766();
	var_69c1a63b function_50ccee8d();
	var_5dc5e20a function_b439510f();
	var_c2dc2b72 = var_5dc5e20a function_2f6b6a4c("PersonalDataVaultMenu");
	var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
	level.var_ac964c36 = 0;
	var_5dc5e20a function_2cc92070();
	function_648c6218(var_5dc5e20a);
	var_6d010658 = namespace_14b42b8a::function_7922262b("tag_align_desk_0" + self.var_ecc65052 + 1, "targetname");
	function_8d0f083b(var_5dc5e20a, "c_saf_collectible_computer_in", GetTime(), var_6d010658.var_722885f3, var_6d010658.var_6ab6f4fd);
	var_4f81b21 = "";
	do
	{
		var_5dc5e20a waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
		switch(var_d62110b4)
		{
			case "doa2":
			{
				foreach(var_5dc5e20a in function_3f10449f())
				{
					function_f97da4(var_5dc5e20a);
				}
				level thread function_973b77f9();
				function_6df659a8("cp_doa_bo3_load_loadingmovie");
				function_ad95a4a4("cp_doa_bo3", "doa");
				wait(8);
				function_a63aee74();
				foreach(var_5dc5e20a in function_3f10449f())
				{
					var_4b7162db = var_5dc5e20a function_c7f3ce11();
					var_5dc5e20a function_62c34a4c(0, 0);
					var_5dc5e20a function_431b00f3(0);
					var_5dc5e20a function_c6e2ea52(0);
				}
				break;
			}
			case "musicTrackBack":
			{
				if(var_5dc5e20a.var_148d9374 === 1)
				{
					var_5dc5e20a.var_c6ff6155 = var_5dc5e20a.var_c6ff6155 - 1;
					function_648c6218(var_5dc5e20a, 1);
					var_5dc5e20a.var_c6ff6155 = var_5dc5e20a.var_c6ff6155 - 1;
					var_5dc5e20a notify("hash_f922f329");
				}
				else
				{
					var_5dc5e20a.var_c6ff6155 = var_5dc5e20a.var_c6ff6155 - 1;
					function_648c6218(var_5dc5e20a, 1);
				}
				break;
			}
			case "musicTrackPlay":
			{
				if(!isdefined(var_5dc5e20a.var_c6ff6155))
				{
					var_5dc5e20a.var_c6ff6155 = 0;
					var_5dc5e20a.var_148d9374 = 0;
				}
				if(var_5dc5e20a.var_148d9374 === 1)
				{
					var_48b937ab = function_5a31ce6c("gamedata/tables/common/music_player.csv", var_5dc5e20a.var_c6ff6155, 1);
					var_5dc5e20a function_f2e7970f("MusicPlayer.state", "stop");
					var_5dc5e20a function_356a1c2a(var_48b937ab);
					var_5dc5e20a notify("hash_fb4d907d");
					var_5dc5e20a.var_148d9374 = 0;
					var_5dc5e20a thread function_390094e6();
				}
				else
				{
					var_5dc5e20a notify("hash_fb4d907d");
					var_5dc5e20a thread function_2ce69251();
					var_5dc5e20a.var_148d9374 = 1;
					level thread function_973b77f9(var_5dc5e20a);
				}
				break;
			}
			case "musicTrackNext":
			{
				if(var_5dc5e20a.var_148d9374 === 1)
				{
					var_5dc5e20a notify("hash_f922f329");
				}
				else
				{
					var_5dc5e20a.var_c6ff6155 = var_5dc5e20a.var_c6ff6155 + 1;
					function_648c6218(var_5dc5e20a);
				}
				break;
			}
		}
	}
	while(!var_d62110b4 != "closed");
	var_5dc5e20a function_10650e35();
	var_5dc5e20a namespace_82b91a51::function_c72856fc(1);
	var_5dc5e20a function_2b74b70a(var_c2dc2b72);
	function_d59a1980(var_5dc5e20a);
	var_69c1a63b function_48f26766();
	var_cdc7765d function_50ccee8d();
	var_5dc5e20a function_859d37b8();
	var_5dc5e20a function_24f12dbc();
	level.var_ac964c36 = 1;
}

/*
	Name: function_e2d08944
	Namespace: namespace_a6816cde
	Checksum: 0xE20FC1DE
	Offset: 0xC8F0
	Size: 0x237
	Parameters: 1
	Flags: None
*/
function function_e2d08944(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_128f8789");
	self.var_4dbf3ae3 function_175e6b8e(0);
	var_5dc5e20a function_2cc92070();
	level.var_f0ba161d function_e04cba0f(var_5dc5e20a);
	var_394acf93 = function_342806c6("scriptbundle_wardrobe", "script_noteworthy", self.var_ecc65052);
	var_394acf93 thread function_2049a4ce(var_5dc5e20a);
	var_394acf93 namespace_cc27597::function_43718187();
	var_5dc5e20a namespace_ce7c3ed5::function_7e61de2b(0);
	var_5dc5e20a namespace_82b91a51::function_67520c6a(0.5, "disconnect", &namespace_ce7c3ed5::function_593c2af4, 0.5);
	var_5dc5e20a function_2f6b6a4c("PersonalizeCharacter");
	var_5dc5e20a namespace_82b91a51::function_c72856fc(0);
	level.var_ac964c36 = 0;
	do
	{
		var_5dc5e20a waittill("hash_d2c577ed", var_1df81780, var_d62110b4);
	}
	while(!(var_1df81780 != "PersonalizeCharacter" || var_d62110b4 != "closed"));
	var_5dc5e20a function_b3b5416e();
	var_5dc5e20a function_24f12dbc();
	self.var_4dbf3ae3 function_175e6b8e(1);
	level.var_f0ba161d function_a8271940(var_5dc5e20a);
	var_5dc5e20a notify("hash_2049a4ce");
	level.var_ac964c36 = 1;
}

/*
	Name: function_2cafba2
	Namespace: namespace_a6816cde
	Checksum: 0xA9ED4D5F
	Offset: 0xCB30
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2cafba2(var_c77d2837)
{
	self waittill("hash_b5a4f84f");
	self namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_locker_metal_barrack_close_bundle", var_c77d2837);
}

/*
	Name: function_ffeaa7c4
	Namespace: namespace_a6816cde
	Checksum: 0x532C0F9C
	Offset: 0xCB78
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_ffeaa7c4(var_c77d2837)
{
	self namespace_cc27597::function_c35e6aab("p7_fxanim_cp_safehouse_locker_metal_barrack_bundle");
}

/*
	Name: function_2049a4ce
	Namespace: namespace_a6816cde
	Checksum: 0x418FEE22
	Offset: 0xCBB0
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_2049a4ce(var_5dc5e20a)
{
	var_5dc5e20a namespace_82b91a51::function_564f2d81("death", "close_wardrobe");
	self notify("hash_b5a4f84f");
}

/*
	Name: function_c891fb17
	Namespace: namespace_a6816cde
	Checksum: 0x9CBB4D68
	Offset: 0xCC00
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_c891fb17()
{
	var_71d7943b = self function_c7f3ce11();
	level.var_f2434cd3[var_71d7943b].var_afe3e55f = 1;
	level.var_f2434cd3[var_71d7943b].var_28e7a252.var_28a08272 = self;
	level.var_f2434cd3[var_71d7943b].var_b8276d03.var_28a08272 = self;
	level.var_f2434cd3[var_71d7943b].var_71dcdd3e function_a8271940(self);
	level.var_f2434cd3[var_71d7943b].var_a0711246 function_a8271940(self);
	level.var_f2434cd3[var_71d7943b].var_6caeba6e function_a8271940();
	level.var_f2434cd3[var_71d7943b].var_46f52946 function_a8271940();
	level.var_f2434cd3[var_71d7943b].var_9860be12 function_175e6b8e(1);
	level.var_f2434cd3[var_71d7943b].var_4090852 function_175e6b8e(1);
	level.var_f2434cd3[var_71d7943b].var_28e7a252 function_175e6b8e(1);
	level.var_f2434cd3[var_71d7943b].var_b8276d03 function_175e6b8e(1);
	self thread function_e1f7d265(var_71d7943b);
}

/*
	Name: function_e1f7d265
	Namespace: namespace_a6816cde
	Checksum: 0xE28DB1B5
	Offset: 0xCE10
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function function_e1f7d265(var_71d7943b)
{
	while(1)
	{
		var_29c18c11 = function_99201f25("medals", "script_noteworthy");
		var_29c18c11 = function_ca448a30(var_29c18c11, "player_bunk_" + var_71d7943b, "targetname");
		var_3e91b40a = self function_e5e45ad4();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_29c18c11.size; var_c957f6b6++)
		{
			var_889a5942 = var_29c18c11[var_c957f6b6];
			var_292c51bd = var_3e91b40a[var_c957f6b6];
			if(isdefined(var_292c51bd) && (isdefined(var_292c51bd.var_e59adbef) && var_292c51bd.var_e59adbef))
			{
				var_889a5942 function_e48f905e(var_292c51bd.var_6df9264);
				var_889a5942 function_48f26766();
				continue;
			}
			var_889a5942 function_50ccee8d();
		}
		level waittill("hash_6b0e4272");
	}
}

/*
	Name: function_a24e854d
	Namespace: namespace_a6816cde
	Checksum: 0x8190806F
	Offset: 0xCF98
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_a24e854d()
{
	self endon("hash_128f8789");
	if(level.var_2e24ecad === 1)
	{
		return;
	}
	var_71d7943b = self function_c7f3ce11();
	if(world.var_3dcac2e2 === 1)
	{
		var_ce111e02 = function_342806c6("getup_desk", "script_noteworthy", var_71d7943b);
	}
	else
	{
		var_ce111e02 = function_342806c6("getup_bed", "script_noteworthy", var_71d7943b);
	}
	var_ce111e02 namespace_cc27597::function_c35e6aab(self);
	self function_50ccee8d();
	self namespace_82b91a51::function_11a89b44(undefined, 0, 10);
	function_6c1294b8("ui_allowDisplayContinue", 1);
	if(function_d555ecb8())
	{
		do
		{
			wait(0.05);
		}
		while(!function_d555ecb8());
	}
	else
	{
		wait(1);
	}
	self namespace_82b91a51::function_11a89b44(undefined, 0, 10);
	self namespace_ad23e503::function_d3de6822("in_aar");
	self function_48f26766();
	var_ace72246 = function_6ada35ba("bunk_" + var_71d7943b + 1 + "_door", "targetname");
	if(isdefined(var_ace72246))
	{
		var_ace72246 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_door_bunk_" + var_71d7943b + 1 + "_open_bundle");
	}
	wait(1.8);
	if(isdefined(level.var_f2434cd3[var_71d7943b].var_ac769486))
	{
		level.var_f2434cd3[var_71d7943b].var_ac769486 function_422037f5();
	}
	self namespace_ad23e503::function_74d6b22f("start_player");
	var_ce111e02 namespace_cc27597::function_43718187(self);
	self namespace_82b91a51::function_c72856fc(1);
	namespace_d0ef8521::function_50ccee8d("cp_safehouse_training_start", self);
	namespace_d0ef8521::function_50ccee8d("cp_safehouse_training_nextround", self);
}

/*
	Name: function_554b2d7e
	Namespace: namespace_a6816cde
	Checksum: 0x722DB1C
	Offset: 0xD2B0
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_554b2d7e()
{
	var_71d7943b = self function_c7f3ce11();
	level.var_f2434cd3[var_71d7943b].var_ac769486 function_4083a98e();
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		if(var_6bfe1586 != self && var_6bfe1586 function_32fa5072(level.var_f2434cd3[var_71d7943b].var_67825717))
		{
			var_6bfe1586 thread function_c2bd8252();
		}
	}
	level.var_f2434cd3[var_71d7943b].var_afe3e55f = 0;
	level.var_f2434cd3[var_71d7943b].var_28e7a252.var_28a08272 = undefined;
	level.var_f2434cd3[var_71d7943b].var_b8276d03.var_28a08272 = undefined;
	level.var_f2434cd3[var_71d7943b].var_71dcdd3e function_e04cba0f();
	level.var_f2434cd3[var_71d7943b].var_a0711246 function_e04cba0f();
	level.var_f2434cd3[var_71d7943b].var_6caeba6e function_e04cba0f();
	level.var_f2434cd3[var_71d7943b].var_46f52946 function_e04cba0f();
	var_ace72246 = function_6ada35ba("bunk_" + var_71d7943b + 1 + "_door", "targetname");
	if(isdefined(var_ace72246))
	{
		var_ace72246 thread namespace_cc27597::function_43718187("p7_fxanim_cp_safehouse_door_bunk_" + var_71d7943b + 1 + "_close_bundle");
		wait(2.5);
	}
}

/*
	Name: function_c2bd8252
	Namespace: namespace_a6816cde
	Checksum: 0xEC92333C
	Offset: 0xD550
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_c2bd8252()
{
	self endon("hash_643a7daf");
	var_512dfdf0 = function_84970cc4("InspectMedalCase", "InspectingCollectibles");
	foreach(var_5f8bd4b9 in var_512dfdf0)
	{
		var_f0a31618 = self function_e9022fe(var_5f8bd4b9);
		if(isdefined(var_f0a31618))
		{
			self function_49876a9e(var_5f8bd4b9);
			self notify("hash_d2c577ed", var_5f8bd4b9, "cancel");
		}
	}
	function_f39fff1a();
	self namespace_cc27597::function_fcf56ab5();
	self namespace_5dc5e20a::function_8ce837a2();
	self thread namespace_a249d1db::function_a61641c6(self.var_3e94206a, self.var_808c68ef, level.var_dc236bc8);
	self function_b11df48f();
	function_207b5ccf();
}

/*
	Name: function_f39fff1a
	Namespace: namespace_a6816cde
	Checksum: 0x43E0682F
	Offset: 0xD700
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_f39fff1a(var_78962fff)
{
	if(!isdefined(var_78962fff))
	{
		var_78962fff = 0.5;
	}
	namespace_ce7c3ed5::function_7e61de2b(var_78962fff);
}

/*
	Name: function_207b5ccf
	Namespace: namespace_a6816cde
	Checksum: 0xFB60BC3D
	Offset: 0xD748
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_207b5ccf(var_78962fff)
{
	if(!isdefined(var_78962fff))
	{
		var_78962fff = 0.5;
	}
	self thread namespace_ce7c3ed5::function_593c2af4(var_78962fff);
}

/*
	Name: function_2cc92070
	Namespace: namespace_a6816cde
	Checksum: 0xB1B4E8F5
	Offset: 0xD790
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2cc92070()
{
	self namespace_ad23e503::function_74d6b22f("interacting");
	self thread function_dd07584d();
}

/*
	Name: function_dd07584d
	Namespace: namespace_a6816cde
	Checksum: 0xF7E4952E
	Offset: 0xD7D8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_dd07584d()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_64218ffc(self);
	}
	namespace_cc27597::function_c35e6aab("player_inspection", self);
}

/*
	Name: function_24f12dbc
	Namespace: namespace_a6816cde
	Checksum: 0xBF87CCBE
	Offset: 0xD888
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_24f12dbc()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_858ac43f(self);
	}
	self thread namespace_cc27597::function_43718187("player_inspection", self);
	self namespace_ad23e503::function_9d134160("interacting");
}

/*
	Name: function_6dacc745
	Namespace: namespace_a6816cde
	Checksum: 0x726AB99C
	Offset: 0xD960
	Size: 0x13B
	Parameters: 3
	Flags: None
*/
function function_6dacc745(var_b8da2278, var_5e953b6, var_27cdf02a)
{
	var_2dafe517 = [];
	var_9cc495a4 = namespace_14b42b8a::function_7faf4c39(var_b8da2278, var_5e953b6);
	foreach(var_c248e0ab in var_9cc495a4)
	{
		if(var_c248e0ab.var_170527fb === "player_bunk_" + var_27cdf02a)
		{
			if(!isdefined(var_2dafe517))
			{
				var_2dafe517 = [];
			}
			else if(!function_6e2770d8(var_2dafe517))
			{
				var_2dafe517 = function_84970cc4(var_2dafe517);
			}
			var_2dafe517[var_2dafe517.size] = var_c248e0ab;
		}
	}
	return var_2dafe517;
}

/*
	Name: function_342806c6
	Namespace: namespace_a6816cde
	Checksum: 0xC7B340B1
	Offset: 0xDAA8
	Size: 0x8D
	Parameters: 3
	Flags: None
*/
function function_342806c6(var_b8da2278, var_5e953b6, var_27cdf02a)
{
	var_2dafe517 = function_6dacc745(var_b8da2278, var_5e953b6, var_27cdf02a);
	/#
		namespace_33b293fd::function_a7ee953(var_2dafe517.size < 2, "Dev Block strings are not supported");
	#/
	if(var_2dafe517.size == 1)
	{
		return var_2dafe517[0];
	}
}

/*
	Name: function_390094e6
	Namespace: namespace_a6816cde
	Checksum: 0x3CE97E2
	Offset: 0xDB40
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_390094e6()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_3a6467f0");
	wait(2);
	namespace_ccb8d056::function_c1cdedfb("underscore", self);
}

/*
	Name: function_973b77f9
	Namespace: namespace_a6816cde
	Checksum: 0x8AFBB7F9
	Offset: 0xDB90
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_973b77f9(var_643a4c5)
{
	if(isdefined(var_643a4c5))
	{
		var_643a4c5 notify("hash_3a6467f0");
		namespace_ccb8d056::function_c1cdedfb("none", var_643a4c5);
		break;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a notify("hash_3a6467f0");
		namespace_ccb8d056::function_c1cdedfb("none", var_5dc5e20a);
	}
}

/*
	Name: function_7a07bdbf
	Namespace: namespace_a6816cde
	Checksum: 0x7DB3629A
	Offset: 0xDC80
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7a07bdbf()
{
	namespace_ccb8d056::function_c1cdedfb("ready_room", self);
}

/*
	Name: function_56c8845e
	Namespace: namespace_a6816cde
	Checksum: 0xBB7C709F
	Offset: 0xDCA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_56c8845e()
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a notify("hash_3a6467f0");
	}
	wait(1);
	namespace_ccb8d056::function_c1cdedfb("next_mission");
}


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

#namespace safehouse;

/*
	Name: __init__sytem__
	Namespace: safehouse
	Checksum: 0x96CE0DB4
	Offset: 0x2630
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("safehouse", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: safehouse
	Checksum: 0xFD257A1F
	Offset: 0x2678
	Size: 0x8FB
	Parameters: 0
	Flags: Private
*/
function private __init__()
{
	level.is_safehouse = 1;
	var_ab91e00d = GetDvarString("cp_queued_level", "");
	if(world.is_first_time_flow !== 0 && var_ab91e00d == "cp_mi_eth_prologue")
	{
		level.is_first_time_flow = 1;
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
	level.last_map = world.last_map;
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			world.var_33c691cb = "Dev Block strings are not supported";
		}
		var_de99b1ca = GetDvarString("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(var_de99b1ca != "Dev Block strings are not supported")
		{
			level.last_map = var_de99b1ca;
		}
		PrintTopRightln("Dev Block strings are not supported" + level.var_a6f47549, (1, 1, 1), -1);
	#/
	if(isdefined(world.var_2c7a40d3) && world.var_2c7a40d3 && isdefined(level.last_map))
	{
		level.var_2c7a40d3 = 1;
		world.var_2c7a40d3 = undefined;
	}
	world.is_first_time_flow = 0;
	util::function_ee915e11("start_player");
	namespace_b7f87735::init_voice();
	function_769e64f9();
	function_cf4c3bd8();
	scene::add_scene_func("cin_saf_ram_readyroom_3rd_pre100_player01", &function_51970da0, "play");
	scene::add_scene_func("cin_saf_ram_readyroom_3rd_pre100_player01_enter", &function_51970da0, "play");
	scene::add_scene_func("cin_saf_ram_readyroom_3rd_pre100_player02", &function_51970da0, "play");
	scene::add_scene_func("cin_saf_ram_readyroom_3rd_pre100_player02_enter", &function_51970da0, "play");
	scene::add_scene_func("cin_saf_ram_readyroom_3rd_pre100_player03", &function_51970da0, "play");
	scene::add_scene_func("cin_saf_ram_readyroom_3rd_pre100_player03_enter", &function_51970da0, "play");
	scene::add_scene_func("cin_saf_ram_readyroom_3rd_pre100_player04", &function_51970da0, "play");
	scene::add_scene_func("cin_saf_ram_readyroom_3rd_pre100_player04_enter", &function_51970da0, "play");
	scene::add_scene_func("p7_fxanim_cp_safehouse_crates_plastic_tech_bundle", &function_a35cc107, "play");
	scene::add_scene_func("p7_fxanim_cp_safehouse_crates_plastic_tech_close_bundle", &function_6ca97001, "done");
	scene::add_scene_func("p7_fxanim_cp_safehouse_locker_metal_barrack_bundle", &function_2cafba2, "play");
	scene::add_scene_func("p7_fxanim_cp_safehouse_locker_metal_barrack_close_bundle", &function_ffeaa7c4, "done");
	clientfield::register("world", "nextMap", 1, 6, "int");
	clientfield::register("world", "near_gun_rack", 1, 1, "int");
	clientfield::register("world", "toggle_console_1", 1, 1, "int");
	clientfield::register("world", "toggle_console_2", 1, 1, "int");
	clientfield::register("world", "toggle_console_3", 1, 1, "int");
	clientfield::register("world", "toggle_console_4", 1, 1, "int");
	clientfield::register("scriptmover", "player_clone", 1, 1, "int");
	clientfield::register("scriptmover", "training_sim_extracam", 1, GetMinBitCountForNum(4), "int");
	clientfield::register("scriptmover", "gun_rack_init", 1, GetMinBitCountForNum(1), "int");
	clientfield::register("toplayer", "sh_exit_duck_active", 1, 1, "int");
	clientfield::register("clientuimodel", "safehouse.inClientBunk", 1, 2, "int");
	clientfield::register("clientuimodel", "safehouse.inTrainingSim", 1, 1, "int");
	level flag::init("player_entering_ready_room");
	level flag::init("player_exiting_ready_room");
	level flag::init("player_near_gun_rack");
	callback::on_connect(&on_player_connect);
	callback::on_disconnect(&on_player_disconnect);
	callback::on_spawned(&on_player_spawned);
	callback::on_player_killed(&on_player_killed);
	callback::on_loadout(&function_bcfa7205);
	callback::on_loadout(&function_c6f2aa2b);
	function_9e3608e3("training_sim_extracam_screen_on1");
	function_9e3608e3("training_sim_extracam_screen_on2");
	function_9e3608e3("training_sim_extracam_screen_on3");
	function_9e3608e3("training_sim_extracam_screen_on4");
	if(!isdefined(level.var_b57a1b14))
	{
		level.var_b57a1b14 = [];
	}
	function_3d4973d1();
	objectives::set("cp_safehouse_ready_room");
	objectives::set("cp_safehouse_training_start");
	objectives::set("cp_safehouse_training_nextround");
	level thread function_6eee8df0();
	level thread function_23a33dca();
}

/*
	Name: function_3d4973d1
	Namespace: safehouse
	Checksum: 0x554072E6
	Offset: 0x2F80
	Size: 0x1745
	Parameters: 0
	Flags: None
*/
function function_3d4973d1()
{
	level.var_7f97650d = GetEnt("ambient_vo_ent", "targetname");
	switch(level.var_a6f47549)
	{
		case "cp_mi_eth_prologue":
		{
			if(math::cointoss())
			{
			}
			else
			{
			}
			pre = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			function_77cfa54b(pre + "_this_morning_member_0", undefined, "ambient");
			function_77cfa54b(pre + "_this_administration_0", 2, "ambient");
			function_77cfa54b(pre + "_we_will_continue_to_0", 2, "ambient");
			function_77cfa54b(news + "_in_just_a_few_short_0", undefined, "ambient");
			function_77cfa54b(news + "_with_the_capture_of_0", 2, "ambient");
			function_77cfa54b(news + "_the_wa_have_denied_s_0", 2, "ambient");
			break;
		}
		case "cp_mi_zurich_newworld":
		{
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			sci = "m" + "f";
			function_77cfa54b(news + "_though_a_spokesperso_0", undefined, "ambient");
			function_77cfa54b(news + "_with_the_minister_no_0", 2, "ambient");
			function_77cfa54b(news + "_certainly_many_are_0", 2, "ambient");
			function_77cfa54b(sci + "_there_s_no_doubt_tha_0", undefined, "ambient");
			function_77cfa54b(sci + "_the_increasing_preva_0", 2, "ambient");
			function_77cfa54b(sci + "_the_development_of_d_0", 2, "ambient");
			function_77cfa54b(sci + "_ironically_however_0", 2, "ambient");
			break;
		}
		case "cp_mi_sing_blackstation":
		{
			function_77cfa54b("plyr_hey_hendricks_beat_0", 1, "player");
			function_77cfa54b("hend_singapore_one_of_my_0", 1, "remote");
			function_77cfa54b("plyr_oh_yeah_this_is_a_0", 1, "player");
			function_77cfa54b("hend_glad_you_remember_0", 1, "remote");
			function_77cfa54b("plyr_ah_they_re_always_w_0", 1, "player");
			if(math::cointoss())
			{
			}
			else
			{
			}
			pre = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			sci = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			function_77cfa54b(pre + "_while_it_is_true_tha_0", undefined, "ambient");
			function_77cfa54b(pre + "_though_the_cause_of_0", 2, "ambient");
			function_77cfa54b(sci + "_one_of_the_key_probl_0", undefined, "ambient");
			function_77cfa54b(sci + "_in_the_chaos_of_the_0", 2, "ambient");
			function_77cfa54b(sci + "_what_we_do_know_for_0", 2, "ambient");
			function_77cfa54b(news + "_on_the_anniversary_o_0", undefined, "ambient");
			function_77cfa54b(news + "_despite_the_many_eff_0", 2, "ambient");
			function_77cfa54b(news + "_the_emergence_of_cri_0", 2, "ambient");
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
			if(math::cointoss())
			{
			}
			else
			{
			}
			pre = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			function_77cfa54b(pre + "_in_light_of_today_s_0", undefined, "ambient");
			function_77cfa54b(pre + "_we_are_coordinating_0", 2, "ambient");
			function_77cfa54b(news + "_the_scale_of_these_i_0", undefined, "ambient");
			function_77cfa54b(news + "_hundreds_of_thousand_0", 2, "ambient");
			function_77cfa54b(news + "_it_s_going_to_take_a_0", 2, "ambient");
			break;
		}
		case "cp_mi_sing_sgen":
		{
			function_77cfa54b("hend_so_according_to_kan_0", 1, "remote");
			function_77cfa54b("plyr_about_what_i_did_to_0", 1, "player");
			function_77cfa54b("hend_i_know_beat_i_a_0", 1, "remote");
			function_77cfa54b("plyr_kane_said_that_whate_0", 1, "player");
			if(math::cointoss())
			{
			}
			else
			{
			}
			pre = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			function_77cfa54b(pre + "_in_recent_days_we_ha_0", undefined, "ambient");
			function_77cfa54b(pre + "_however_the_allega_0", 2, "ambient");
			function_77cfa54b(pre + "_the_inflammatory_acc_0", 2, "ambient");
			function_77cfa54b(pre + "_i_ask_that_members_o_0", 2, "ambient");
			function_77cfa54b(news + "_while_we_do_not_know_0", 3, "ambient");
			break;
		}
		case "cp_mi_sing_vengeance":
		{
			function_77cfa54b("hend_i_m_telling_you_now_0", 1, "remote");
			function_77cfa54b("plyr_this_isn_t_up_for_di_0", 1, "player");
			function_77cfa54b("hend_you_know_they_want_u_0", 1, "remote");
			function_77cfa54b("plyr_it_s_not_our_actions_0", 1, "player");
			if(math::cointoss())
			{
			}
			else
			{
			}
			pre = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			sci = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			function_77cfa54b(pre + "_as_i_said_before_w_0", undefined, "ambient");
			function_77cfa54b(news + "_it_s_hard_to_imagine_0", 2, "ambient");
			function_77cfa54b(sci + "_the_suggestion_that_0", undefined, "ambient");
			function_77cfa54b(sci + "_certainly_various_r_0", 2, "ambient");
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
			if(math::cointoss())
			{
			}
			else
			{
			}
			pre = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			function_77cfa54b(pre + "_the_actions_perpetra_0", undefined, "ambient");
			function_77cfa54b(pre + "_at_this_time_we_are_0", 2, "ambient");
			function_77cfa54b(pre + "_as_this_time_those_0", 2, "ambient");
			function_77cfa54b(news + "_ground_forces_contin_0", undefined, "ambient");
			function_77cfa54b(news + "_already_suffering_un_0", 2, "ambient");
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
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			sci = "m" + "f";
			function_77cfa54b(news + "_yesterday_saw_some_o_0", undefined, "ambient");
			function_77cfa54b(news + "_ramses_station_one_0", 2, "ambient");
			function_77cfa54b(news + "_while_allied_forces_0", 2, "ambient");
			function_77cfa54b(news + "_the_outcome_was_perh_0", 2, "ambient");
			function_77cfa54b(sci + "_there_s_a_long_histo_0", undefined, "ambient");
			function_77cfa54b(sci + "_there_is_every_reaso_0", 2, "ambient");
			break;
		}
		case "cp_mi_cairo_aquifer":
		{
			function_77cfa54b("kane_prep_to_move_out_0", 1, "remote");
			function_77cfa54b("kane_once_again_we_ve_go_0", 1, "remote");
			function_77cfa54b("plyr_how_do_they_do_it_k_0", 1, "player");
			function_77cfa54b("kane_maybe_one_day_the_wa_0", 1, "remote");
			if(math::cointoss())
			{
			}
			else
			{
			}
			pre = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			sci = "m" + "f";
			function_77cfa54b(pre + "_in_coordination_with_0", undefined, "ambient");
			function_77cfa54b(pre + "_at_this_moment_we_a_0", 2, "ambient");
			function_77cfa54b(sci + "_having_personally_re_0", undefined, "ambient");
			function_77cfa54b(sci + "_the_use_of_human_exp_0", 2, "ambient");
			function_77cfa54b(sci + "_doctor_salim_s_resea_0", 2, "ambient");
			function_77cfa54b(sci + "_in_terms_of_ethics_0", 2, "ambient");
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
			if(math::cointoss())
			{
			}
			else
			{
			}
			pre = "m" + "f";
			if(math::cointoss())
			{
			}
			else
			{
			}
			news = "m" + "f";
			function_77cfa54b(news + "_today_we_received_a_0", undefined, "ambient");
			function_77cfa54b(news + "_it_quickly_became_ev_0", 2, "ambient");
			function_77cfa54b(pre + "_today_we_pledge_our_0", undefined, "ambient");
			function_77cfa54b(pre + "_their_bravery_in_the_0", 2, "ambient");
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
	Namespace: safehouse
	Checksum: 0xFEA9F2FB
	Offset: 0x46D0
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_9423672b()
{
	self endon("disconnect");
	trigger::wait_till("main_room_trigger", "targetname", self);
	if(IsArray(level.var_836d6d34))
	{
		foreach(var_39b18b57 in level.var_836d6d34)
		{
			str_line = var_39b18b57[0];
			n_wait = var_39b18b57[1];
			str_type = var_39b18b57[2];
			function_3913c855(n_wait);
			if(str_type == "remote")
			{
				level dialog::remote(str_line, 0, undefined, self);
				continue;
			}
			if(str_type == "ambient")
			{
				level.var_7f97650d dialog::say(str_line, 0, 1, self);
				continue;
			}
			if(str_type == "player")
			{
				self dialog::function_13b3b16a(str_line);
			}
		}
	}
}

/*
	Name: function_3913c855
	Namespace: safehouse
	Checksum: 0xBAD3101E
	Offset: 0x4890
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_3913c855(n_wait)
{
	var_3784d0f4 = Array("in_ready_room", "in_aar", "in_training_sim", "interacting", "safehouse_menu_open");
	if(!isdefined(n_wait))
	{
		n_wait = RandomFloatRange(5, 10);
	}
	do
	{
		wait(n_wait);
	}
	while(!(!isalive(self) || flag::get_any(var_3784d0f4)));
}

/*
	Name: function_77cfa54b
	Namespace: safehouse
	Checksum: 0x5D59FE70
	Offset: 0x4948
	Size: 0xA5
	Parameters: 3
	Flags: None
*/
function function_77cfa54b(str_line, n_wait, str_type)
{
	if(!isdefined(level.var_836d6d34))
	{
		level.var_836d6d34 = [];
	}
	else if(!IsArray(level.var_836d6d34))
	{
		level.var_836d6d34 = Array(level.var_836d6d34);
	}
	level.var_836d6d34[level.var_836d6d34.size] = Array(str_line, n_wait, str_type);
}

/*
	Name: function_51970da0
	Namespace: safehouse
	Checksum: 0x962D1126
	Offset: 0x49F8
	Size: 0x28B
	Parameters: 1
	Flags: None
*/
function function_51970da0(a_ents)
{
	e_player = a_ents["player 1"];
	/#
		if(IsSubStr(e_player.current_scene, "Dev Block strings are not supported"))
		{
			n_index = 1;
		}
		else if(IsSubStr(e_player.current_scene, "Dev Block strings are not supported"))
		{
			n_index = 2;
		}
		else if(IsSubStr(e_player.current_scene, "Dev Block strings are not supported"))
		{
			n_index = 3;
		}
		else if(IsSubStr(e_player.current_scene, "Dev Block strings are not supported"))
		{
			n_index = 4;
		}
	#/
	if(!isdefined(n_index))
	{
		n_index = e_player.var_8d3631f4 + 1;
	}
	if(isdefined(e_player.primaryLoadoutWeapon))
	{
		mdl_weapon = a_ents["player" + n_index + "_ready_room_weapon"];
		mdl_weapon SetModel(e_player.primaryLoadoutWeapon.worldmodel);
	}
	var_12aba86 = GetEnt("player_" + n_index + "_sidearm", "targetname");
	if(weapons::is_side_arm(e_player.secondaryLoadoutWeapon.rootweapon))
	{
		var_12aba86 SetModel(e_player.secondaryLoadoutWeapon.worldmodel);
		var_12aba86 show();
	}
	else
	{
		var_12aba86 Hide();
	}
	e_player util::waittill_either("left_ready_room", "disconnect");
	var_12aba86 Hide();
}

/*
	Name: __main__
	Namespace: safehouse
	Checksum: 0x1F5BC0F7
	Offset: 0x4C90
	Size: 0x93
	Parameters: 0
	Flags: Private
*/
function private __main__()
{
	level thread function_4dff3e80();
	function_43e79c92();
	function_ed174df5();
	callback::on_connect(&function_c891fb17);
	callback::on_disconnect(&function_554b2d7e);
	level thread function_124e0cdc();
}

/*
	Name: function_124e0cdc
	Namespace: safehouse
	Checksum: 0x7833B4ED
	Offset: 0x4D30
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_124e0cdc()
{
	wait(0.05);
	level clientfield::set("nextMap", function_59c5ca75(level.var_a6f47549));
}

/*
	Name: on_player_connect
	Namespace: safehouse
	Checksum: 0xAD58332B
	Offset: 0x4D78
	Size: 0xCB
	Parameters: 0
	Flags: Private
*/
function private on_player_connect()
{
	self.disableClassSelection = 1;
	self flag::init("in_ready_room");
	self flag::init("in_aar");
	self flag::init("in_training_sim");
	self flag::init("loadout_dirty");
	self flag::init("interacting");
	self flag::init("safehouse_menu_open");
}

/*
	Name: on_player_disconnect
	Namespace: safehouse
	Checksum: 0x2E310925
	Offset: 0x4E50
	Size: 0x83
	Parameters: 0
	Flags: Private
*/
function private on_player_disconnect()
{
	if(flag::get("in_ready_room"))
	{
		flag::clear("in_ready_room");
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
	Namespace: safehouse
	Checksum: 0x2421C5FB
	Offset: 0x4EE0
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_10650e35()
{
	var_4fb0aa1e = self GetLuiMenu("MissionRecordVaultScreens");
	if(!isdefined(var_4fb0aa1e))
	{
		self OpenLUIMenu("MissionRecordVaultScreens");
	}
}

/*
	Name: function_b439510f
	Namespace: safehouse
	Checksum: 0xDB892397
	Offset: 0x4F40
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_b439510f()
{
	var_4fb0aa1e = self GetLuiMenu("MissionRecordVaultScreens");
	if(isdefined(var_4fb0aa1e))
	{
		self CloseLUIMenu(var_4fb0aa1e);
	}
}

/*
	Name: function_9f9f6524
	Namespace: safehouse
	Checksum: 0xDEABC6CD
	Offset: 0x4FA0
	Size: 0x315
	Parameters: 0
	Flags: None
*/
function function_9f9f6524()
{
	mission_names = skipto::function_23eda99c();
	var_2c222f16 = 4;
	foreach(mission in mission_names)
	{
		var_a4b6fa1f = self GetDStat("PlayerStatsByMap", mission, "highestStats", "HIGHEST_DIFFICULTY");
		if(var_a4b6fa1f < var_2c222f16)
		{
			var_2c222f16 = var_a4b6fa1f;
		}
	}
	var_b60694c2 = mission_names.size;
	if(var_b60694c2 > 0)
	{
		switch(var_2c222f16)
		{
			case 4:
			{
				if(self GetDStat("PlayerStatsList", "CAREER_DIFFICULTY_REAL", "statValue") < var_b60694c2)
				{
					self SetDStat("PlayerStatsList", "CAREER_DIFFICULTY_REAL", "statValue", var_b60694c2 - 1);
					self challenges::function_96ed590f("CAREER_DIFFICULTY_REAL");
					self.var_3e93cde7 = 1;
				}
			}
			case 3:
			{
				if(self GetDStat("PlayerStatsList", "CAREER_DIFFICULTY_VET", "statValue") < var_b60694c2)
				{
					self SetDStat("PlayerStatsList", "CAREER_DIFFICULTY_VET", "statValue", var_b60694c2 - 1);
					self challenges::function_96ed590f("CAREER_DIFFICULTY_VET");
					self.var_3e93cde7 = 1;
				}
			}
			case 2:
			{
				if(self GetDStat("PlayerStatsList", "CAREER_DIFFICULTY_HARD", "statValue") < var_b60694c2)
				{
					self SetDStat("PlayerStatsList", "CAREER_DIFFICULTY_HARD", "statValue", var_b60694c2 - 1);
					self challenges::function_96ed590f("CAREER_DIFFICULTY_HARD");
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
	Namespace: safehouse
	Checksum: 0xC6434E7F
	Offset: 0x52C0
	Size: 0x217
	Parameters: 0
	Flags: None
*/
function function_e32f1d3f()
{
	mission_names = skipto::function_23eda99c();
	var_8466305e = 1;
	var_c88e4145 = 0;
	foreach(mission in mission_names)
	{
		for(i = 0; i < 19; i++)
		{
			if(self GetDStat("PlayerStatsByMap", mission, "accolades", i, "state"))
			{
				var_c88e4145++;
			}
		}
		var_58ce61a8 = 16;
		if(mission == "cp_mi_cairo_ramses")
		{
			var_58ce61a8 = 17;
		}
		else if(mission == "cp_mi_cairo_aquifer")
		{
			var_58ce61a8 = 15;
		}
		if(var_c88e4145 < var_58ce61a8)
		{
			var_8466305e = 0;
		}
	}
	var_80abe1b = self GetDStat("PlayerStatsList", "CAREER_ACCOLADES", "ChallengeValue");
	if(var_80abe1b < var_c88e4145)
	{
		self challenges::function_96ed590f("CAREER_ACCOLADES", var_c88e4145 - var_80abe1b);
	}
	if(var_8466305e)
	{
		self GiveDecoration("cp_medal_all_accolades");
		self.var_3e93cde7 = 1;
	}
}

/*
	Name: function_8c92e6bf
	Namespace: safehouse
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
	if(self Decorations::playerhasdecoration("cp_medal_all_calling_cards"))
	{
		return;
	}
	if(self GetDStat("PlayerStatsList", "koth_gamemode_mastery", "challengeValue") < 2)
	{
		return;
	}
	var_b6b6d8ed = 1;
	for(index = var_fa172d86; index <= var_95e2df39; index++)
	{
		statName = tableLookup("gamedata/stats/cp/statsmilestones3.csv", 0, index, 4);
		targetValue = Int(tableLookup("gamedata/stats/cp/statsmilestones3.csv", 0, index, 2));
		if(statName == "career_decorations" || statName == "career_mastery")
		{
			targetValue = targetValue - 1;
		}
		statValue = self GetDStat("PlayerStatsList", statName, "challengeValue");
		if(statValue < targetValue)
		{
			var_b6b6d8ed = 0;
			break;
		}
	}
	if(var_b6b6d8ed)
	{
		self GiveDecoration("cp_medal_all_calling_cards");
	}
}

/*
	Name: on_player_spawned
	Namespace: safehouse
	Checksum: 0x91CFB2F1
	Offset: 0x56C0
	Size: 0x473
	Parameters: 0
	Flags: Private
*/
function private on_player_spawned()
{
	self.disableClassSelection = 0;
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
		self globallogic_player::function_7bdf5497();
		if(self Decorations::function_e72fc18() && !self Decorations::playerhasdecoration("cp_medal_all_accolades"))
		{
			self GiveDecoration("cp_medal_all_accolades");
			self.var_3e93cde7 = 1;
		}
		if(self function_93f28fc8())
		{
			self.var_3e93cde7 = 1;
		}
		var_62f6e136 = self GetDStat("unlocks", 0);
		var_7f6b97ce = self GetDStat("PlayerStatsList", "CAREER_TOKENS", "statValue");
		if(var_62f6e136 > var_7f6b97ce)
		{
			self AddPlayerStat("career_tokens", var_62f6e136 - var_7f6b97ce);
			self.var_3e93cde7 = 1;
		}
		if(self Decorations::function_bea4ff57())
		{
			self GiveDecoration("cp_medal_all_weapon_unlocks");
		}
		self function_9f9f6524();
		self function_e32f1d3f();
		self function_8c92e6bf();
		UploadStats(self);
		if(isdefined(self.var_3e93cde7) && self.var_3e93cde7)
		{
			self util::waittill_notify_or_timeout("stats_changed", 2);
			self.var_3e93cde7 = undefined;
		}
		if(isdefined(self savegame::function_36adbb9c("show_aar")) && self savegame::function_36adbb9c("show_aar"))
		{
			SetDvar("last_map", level.last_map);
			self savegame::function_bee608f0("show_aar", undefined);
			self thread function_c2ba6d68();
		}
		else
		{
			self thread function_390094e6();
		}
		self thread function_a24e854d();
		var_162c6190 = GetEntArray("m_terminal_asleep", "targetname");
		if(var_162c6190.size > 0)
		{
			var_69c1a63b = ArrayGetClosest(self.origin, var_162c6190);
			var_69c1a63b show();
		}
		var_162c6190 = GetEntArray("m_terminal_awake", "targetname");
		if(var_162c6190.size > 0)
		{
			var_cdc7765d = ArrayGetClosest(self.origin, var_162c6190);
			var_cdc7765d Hide();
		}
	}
	namespace_16f9ecd3::function_1c59df50(0);
	namespace_16f9ecd3::function_12a9df06(0);
}

/*
	Name: on_player_killed
	Namespace: safehouse
	Checksum: 0x23863FF5
	Offset: 0x5B40
	Size: 0x1B
	Parameters: 0
	Flags: Private
*/
function private on_player_killed()
{
	self UndoLastStand();
}

/*
	Name: function_a85e8026
	Namespace: safehouse
	Checksum: 0x6ED6C0D1
	Offset: 0x5B68
	Size: 0x141
	Parameters: 1
	Flags: None
*/
function function_a85e8026(n_num)
{
	var_fb7bdf69 = Array("pdv_screens_1", "pdv_screens_2", "pdv_screens_3");
	foreach(var_3c359681 in var_fb7bdf69)
	{
		if(StrEndsWith(var_3c359681, n_num))
		{
			Array::run_all(GetEntArray(var_3c359681, "targetname"), &show);
			continue;
		}
		Array::run_all(GetEntArray(var_3c359681, "targetname"), &Hide);
	}
}

/*
	Name: function_f380969b
	Namespace: safehouse
	Checksum: 0xFF6F4AFF
	Offset: 0x5CB8
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_f380969b()
{
	var_67bda5a5 = self GetDStat("currentRankXP");
	var_72c4032 = self rank::getRankXpStat();
	var_9e54448b = self GetDStat("hasSeenMaxLevelNotification");
	if(var_9e54448b != 1 && var_72c4032 >= rank::getRankInfoMinXP(level.rankTable.size - 1))
	{
		menuHandle = self OpenLUIMenu("CPMaxLevelNotification");
		self SetDStat("hasSeenMaxLevelNotification", 1);
		UploadStats(self);
	}
	else
	{
		menuHandle = self OpenLUIMenu("RewardsOverlayCP");
	}
	level.var_ac964c36 = 0;
	self waittill("menuresponse", menu, response);
	while(response != "closed")
	{
		self waittill("menuresponse", menu, response);
	}
	self CloseLUIMenu(menuHandle);
	self thread function_390094e6();
	self globallogic_player::function_4cef9872(function_9065d6ea());
	self globallogic_player::function_a5ac6877();
	level.var_ac964c36 = 1;
}

/*
	Name: function_c2ba6d68
	Namespace: safehouse
	Checksum: 0xF755FE2F
	Offset: 0x5ED0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_c2ba6d68()
{
	self flag::set("in_aar");
	s_scene = struct::get("aar_camera", "targetname");
	s_scenedef = struct::get_script_bundle("scene", s_scene.scriptbundlename);
	align = scene::get_existing_ent(s_scenedef.aligntarget, 0, 1);
	music::setmusicstate("aar", self);
	CamAnimScripted(self, s_scenedef.cameraswitcher, GetTime(), align.origin, align.angles);
	self function_f380969b();
	EndCamAnimScripted(self);
	self flag::clear("in_aar");
}

/*
	Name: function_b11df48f
	Namespace: safehouse
	Checksum: 0x9E877CF8
	Offset: 0x6038
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_b11df48f()
{
	self util::function_16c71b8(1);
}

/*
	Name: function_bcfa7205
	Namespace: safehouse
	Checksum: 0x76E0A0C3
	Offset: 0x6060
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_bcfa7205()
{
	a_weaponlist = self GetWeaponsList();
	foreach(weapon in a_weaponlist)
	{
		if(isdefined(weapon.isHeroWeapon) && weapon.isHeroWeapon)
		{
			self TakeWeapon(weapon);
		}
	}
}

/*
	Name: function_c6f2aa2b
	Namespace: safehouse
	Checksum: 0x5EE6CC15
	Offset: 0x6140
	Size: 0x241
	Parameters: 0
	Flags: None
*/
function function_c6f2aa2b()
{
	if(!GetDvarInt("tu1_safehouseDisableVarixScope", 1))
	{
		return;
	}
	if(isdefined(self.var_8201758a) && self.var_8201758a)
	{
		return;
	}
	weaponList = self GetWeaponsList();
	foreach(weapon in weaponList)
	{
		if(!isdefined(weapon))
		{
			continue;
		}
		attachments = [];
		var_b0d06620 = 0;
		foreach(attachment in weapon.attachments)
		{
			if(attachment != "dualoptic")
			{
				attachments[attachments.size] = attachment;
				continue;
			}
			var_b0d06620 = 1;
		}
		if(var_b0d06620)
		{
			if(isdefined(weapon.rootweapon))
			{
				newWeapon = GetWeapon(weapon.rootweapon.name, attachments);
				self TakeWeapon(weapon);
				self GiveWeapon(newWeapon);
				self SwitchToWeapon(newWeapon);
			}
		}
	}
}

/*
	Name: function_cf4c3bd8
	Namespace: safehouse
	Checksum: 0x1C194014
	Offset: 0x6390
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_cf4c3bd8()
{
	var_162c6190 = GetEntArray("m_terminal_asleep", "targetname");
	foreach(screen in var_162c6190)
	{
		screen show();
	}
	var_162c6190 = GetEntArray("m_terminal_awake", "targetname");
	foreach(screen in var_162c6190)
	{
		screen Hide();
	}
}

/*
	Name: function_a8960cf7
	Namespace: safehouse
	Checksum: 0x7467738F
	Offset: 0x64F0
	Size: 0x1DF
	Parameters: 5
	Flags: None
*/
function function_a8960cf7(trigger, objectiveId, var_5567500d, var_e6ffaa89, var_72fcb946)
{
	if(!isdefined(var_72fcb946))
	{
		var_72fcb946 = 1;
	}
	trigger setHintString(var_5567500d);
	trigger setcursorhint("HINT_INTERACTIVE_PROMPT");
	var_38c85157 = gameobjects::create_use_object("any", trigger, Array(trigger), (0, 0, 0), objectiveId);
	var_38c85157 gameobjects::allow_use("any");
	var_38c85157 gameobjects::set_use_time(0.35);
	var_38c85157 gameobjects::set_owner_team("allies");
	var_38c85157 gameobjects::set_visible_team("any");
	var_38c85157.var_db0f901 = 0;
	var_38c85157.trigger UseTriggerRequireLookAt();
	var_38c85157.origin = var_38c85157.origin;
	var_38c85157.angles = var_38c85157.angles;
	if(isdefined(var_e6ffaa89))
	{
		if(var_72fcb946)
		{
			var_38c85157.onUse_thread = 1;
		}
		var_38c85157.onUse = var_e6ffaa89;
	}
	return var_38c85157;
}

/*
	Name: function_e04cba0f
	Namespace: safehouse
	Checksum: 0x7420001D
	Offset: 0x66D8
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_e04cba0f(e_player)
{
	self gameobjects::hide_waypoint(e_player);
	if(isdefined(e_player))
	{
		self.trigger SetInvisibleToPlayer(e_player);
	}
	else
	{
		self.trigger SetInvisibleToAll();
	}
}

/*
	Name: function_a8271940
	Namespace: safehouse
	Checksum: 0xF8DD8BD1
	Offset: 0x6750
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_a8271940(e_player)
{
	self gameobjects::show_waypoint(e_player);
	if(isdefined(e_player))
	{
		self.trigger SetVisibleToPlayer(e_player);
	}
	else
	{
		self.trigger SetVisibleToAll();
	}
}

/*
	Name: function_4dff3e80
	Namespace: safehouse
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
	level flag::wait_till("first_player_spawned");
	wait(5);
	t_start = GetEnt("trig_start_level", "targetname");
	level.var_f0ba161d = function_a8960cf7(t_start, &"cp_safehouse_ready_room", &"CP_SH_CAIRO_READY_ROOM2", &function_431ca329);
	level thread function_4fade07a();
}

/*
	Name: function_2c93055
	Namespace: safehouse
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
	if(!level flag::exists("players_received_stats"))
	{
		level flag::init("players_received_stats");
	}
	self util::waittill_notify_or_timeout("stats_changed", 2);
	level.var_669268d8++;
	connectedPlayers = getnumconnectedplayers();
	if(level.var_669268d8 >= connectedPlayers)
	{
		level flag::set("players_received_stats");
	}
}

/*
	Name: function_fdaf55aa
	Namespace: safehouse
	Checksum: 0x7B75AF62
	Offset: 0x6988
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_fdaf55aa()
{
	level flag::wait_till_timeout(3, "players_received_stats");
}

/*
	Name: function_ed69417e
	Namespace: safehouse
	Checksum: 0x2890EF8E
	Offset: 0x69C0
	Size: 0x54B
	Parameters: 0
	Flags: None
*/
function function_ed69417e()
{
	level flag::init("all_players_ready");
	level flag::wait_till("all_players_ready");
	level clientfield::set("gameplay_started", 0);
	function_d94f39ab(0);
	foreach(player in level.players)
	{
		player savegame::function_bee608f0(function_6d71dab7(level.var_a6f47549) + "_class", player.curClass);
	}
	util::wait_network_frame(3);
	foreach(player in level.players)
	{
		player scene::stop();
	}
	a_players = [];
	foreach(player in level.players)
	{
		a_players["player " + player.var_8d3631f4 + 1] = player;
	}
	level thread scene::Play("cin_saf_ram_readyroom_3rd_pre200", a_players);
	if(isdefined(level.var_f3db725a))
	{
		Array::run_all(level.players, level.var_f3db725a);
	}
	util::wait_network_frame(3);
	level thread LUI::screen_fade_in(0.2);
	level waittill("hash_44c344f7");
	foreach(player in level.players)
	{
		player clientfield::set_to_player("sh_exit_duck_active", 1);
	}
	level LUI::screen_fade_out(0);
	skipto::function_677539fe("");
	/#
		PrintTopRightln("Dev Block strings are not supported" + level.var_a6f47549, (1, 1, 1));
	#/
	str_movie = function_1a7f8d9(level.var_a6f47549);
	if(isdefined(str_movie))
	{
		function_6df659a8(str_movie);
	}
	function_ad95a4a4(level.var_a6f47549);
	wait(1);
	foreach(e_player in level.players)
	{
		e_player globallogic_player::function_4cef9872(function_9065d6ea(level.var_a6f47549));
		e_player thread function_2c93055();
	}
	function_fdaf55aa();
	SetDvar("cp_queued_level", "");
	switchmap_switch();
}

/*
	Name: function_2c4da22
	Namespace: safehouse
	Checksum: 0xF174228E
	Offset: 0x6F18
	Size: 0x33
	Parameters: 2
	Flags: Private
*/
function private function_2c4da22(delay, menuHandle)
{
	wait(delay);
	self CloseLUIMenu(menuHandle);
}

/*
	Name: function_6d71dab7
	Namespace: safehouse
	Checksum: 0xDE0130A9
	Offset: 0x6F58
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_6d71dab7(levelname)
{
	switch(levelname)
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
	return levelname;
}

/*
	Name: function_109cf997
	Namespace: safehouse
	Checksum: 0x87A82D73
	Offset: 0x6FF8
	Size: 0x39F
	Parameters: 1
	Flags: None
*/
function function_109cf997(menuname)
{
	if(!isdefined(menuname))
	{
		menuname = game["menu_changeclass"];
	}
	self.var_3ae8773c = 1;
	self.var_8201758a = undefined;
	self clientfield::set_player_uimodel("hudItems.cybercoreSelectMenuDisabled", 0);
	if(menuname != "chooseClass_TrainingSim" && (level.var_a6f47549 == "cp_mi_zurich_newworld" || level.var_a6f47549 == "cp_mi_eth_prologue"))
	{
		if(self IsHost())
		{
			var_6a7a1c33 = self GetDStat("highestMapReached") > function_59c5ca75(level.var_a6f47549);
		}
		else
		{
			var_6a7a1c33 = self GetDStat("PlayerStatsByMap", level.var_a6f47549, "hasBeenCompleted");
		}
		if(!var_6a7a1c33)
		{
			self clientfield::set_player_uimodel("hudItems.cybercoreSelectMenuDisabled", 1);
		}
	}
	if(menuname === "chooseClass_TrainingSim")
	{
		lui_menu = self OpenLUIMenu(menuname);
	}
	else
	{
		lui_menu = self openMenu(menuname);
	}
	var_17b2131d = 1;
	while(1)
	{
		self waittill("menuresponse", menu, response);
		if(menu == menuname)
		{
			if(response == "cancel")
			{
				var_17b2131d = 0;
			}
			else
			{
				var_5dc22ce3 = StrTok(response, ",");
				if(var_5dc22ce3.size > 1)
				{
					var_bd5d3f48 = var_5dc22ce3[0];
					clientNum = Int(var_5dc22ce3[1]);
					var_5a13c491 = util::getPlayerFromClientNum(clientNum);
				}
				else
				{
					var_bd5d3f48 = response;
				}
				player_class = self loadout::getClassChoice(var_bd5d3f48);
				self flag::wait_till_clear("loadout_dirty");
				if(menuname == "chooseClass_TrainingSim")
				{
					self.var_8201758a = 1;
				}
				function_5b426a60(player_class, var_5a13c491);
				if(menuname == "chooseClass_TrainingSim")
				{
					self thread function_cbe945e8(player_class, var_5a13c491);
					self CloseMenu(menuname);
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
	Namespace: safehouse
	Checksum: 0x65EBA6F8
	Offset: 0x73A0
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function function_cbe945e8(player_class, var_5a13c491)
{
	self endon("disconnect");
	self endon("death");
	time = GetTime();
	while(GetTime() < time + 7000)
	{
		msg = self util::waittill_any_timeout(1, "loadout_changed");
		if(msg === "loadout_changed")
		{
			function_5b426a60(player_class, var_5a13c491);
		}
	}
}

/*
	Name: function_5b426a60
	Namespace: safehouse
	Checksum: 0x4E85AD54
	Offset: 0x7458
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_5b426a60(player_class, var_5a13c491)
{
	self savegame::function_bee608f0("playerClass", player_class);
	if(isdefined(var_5a13c491))
	{
		xuid = var_5a13c491 getXuid();
		self savegame::function_bee608f0("altPlayerID", xuid);
	}
	else
	{
		self savegame::function_bee608f0("altPlayerID", undefined);
	}
	self loadout::setClass(player_class);
	self.tag_stowed_back = undefined;
	self.tag_stowed_hip = undefined;
	self loadout::giveLoadout(self.pers["team"], player_class, undefined, var_5a13c491);
}

/*
	Name: function_a20a5ae3
	Namespace: safehouse
	Checksum: 0xEE189486
	Offset: 0x7560
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_a20a5ae3()
{
	self endon("death");
	wait(0.05);
	self.var_3ae8773c = 0;
}

/*
	Name: function_4fade07a
	Namespace: safehouse
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
		if(!isdefined(level.activePlayers) || level.activePlayers.size <= 1)
		{
			wait(1);
			continue;
		}
		var_ac5bcf56 = 0;
		foreach(player in level.activePlayers)
		{
			if(player flag::get("in_ready_room"))
			{
				var_ac5bcf56++;
			}
			handle = player GetLuiMenu("MissionStarting");
			if(!isdefined(handle))
			{
				player OpenLUIMenu("MissionStarting");
			}
		}
		if(var_ac5bcf56 >= level.activePlayers.size * 0.5)
		{
			var_42bb7bd2 = var_42bb7bd2 - 1;
			foreach(player in level.activePlayers)
			{
				player LUINotifyEvent(&"mission_starting_countdown", 1, Int(max(0, var_42bb7bd2)));
				player playsound("uin_timer");
			}
			break;
		}
		var_42bb7bd2 = var_f38ba567;
		foreach(player in level.activePlayers)
		{
			player LUINotifyEvent(&"mission_starting_hide", 0);
		}
		if(var_42bb7bd2 < -1)
		{
			foreach(player in level.activePlayers)
			{
				if(!isdefined(player.var_8d3631f4))
				{
					player function_9152f342();
					player CloseMenu(game["menu_changeclass"]);
					handle = player GetLuiMenu("chooseClass_TrainingSim");
					if(isdefined(handle))
					{
						player CloseLUIMenu(handle);
					}
					handle = player GetLuiMenu("MissionStarting");
					if(isdefined(handle))
					{
						player CloseLUIMenu(handle);
					}
				}
				playerclass = player savegame::function_36adbb9c("playerClass", undefined);
				if(!isdefined(playerclass) || playerclass == "CLASS_CUSTOM10")
				{
					player_class = player loadout::getClassChoice("custom0");
					player function_5b426a60(player_class, player);
				}
				if(player.var_148d9374 === 1)
				{
					function_f97da4(player);
				}
			}
			level thread function_56c8845e();
			level thread LUI::screen_fade_out(0);
			level flag::set("all_players_ready");
			var_42bb7bd2 = var_f38ba567;
		}
		wait(1);
	}
}

/*
	Name: function_431ca329
	Namespace: safehouse
	Checksum: 0xE6EF4EBF
	Offset: 0x7AF8
	Size: 0x23
	Parameters: 1
	Flags: Private
*/
function private function_431ca329(player)
{
	player function_3361cf6a();
}

/*
	Name: function_26cb0f6b
	Namespace: safehouse
	Checksum: 0xC068DC2E
	Offset: 0x7B28
	Size: 0x4B
	Parameters: 1
	Flags: Private
*/
function private function_26cb0f6b(var_39dfa0b1)
{
	self endon("disconnect");
	self endon("hash_8b8ae130");
	level waittill("hash_a7ea64dd");
	self CloseLUIMenu(var_39dfa0b1);
}

/*
	Name: function_3361cf6a
	Namespace: safehouse
	Checksum: 0xB474A
	Offset: 0x7B80
	Size: 0x74B
	Parameters: 0
	Flags: Private
*/
function private function_3361cf6a()
{
	level endon("hash_a7ea64dd");
	self endon("disconnect");
	if(self IsHost() && level.var_a6f47549 == function_d0baa7f4())
	{
		lui_menu = self OpenLUIMenu("OverwriteProgressWarning");
		var_4a0f7886 = 1;
		while(1)
		{
			self waittill("menuresponse", menu, response);
			if(menu == "OverwriteProgressWarning")
			{
				if(response == "cancel")
				{
					var_4a0f7886 = 0;
				}
				break;
			}
		}
		self CloseLUIMenu(lui_menu);
		if(!var_4a0f7886)
		{
			return;
		}
		SetDvar("ui_blocksaves", "0");
	}
	if(1)
	{
		self.var_bcf382f5 = 1;
		level.var_f0ba161d function_e04cba0f();
		self util::delay(2, undefined, &LUI::screen_fade_out, 0.2);
		s_bundle = struct::get("scene_enter_readyroom", "targetname");
		CamAnimScripted(self, s_bundle.script_string, GetTime(), s_bundle.origin, s_bundle.angles);
		s_bundle scene::Play(self);
		level.var_f0ba161d function_a8271940();
		self.var_bcf382f5 = undefined;
	}
	else
	{
		self.var_16b21c9 = self.origin;
		self.var_1b4f3317 = self getPlayerAngles();
		self Hide();
		level.var_f0ba161d function_e04cba0f(self);
		self.var_bcf382f5 = 1;
		fade_out();
	}
	self thread function_7a07bdbf();
	if(self.var_148d9374 === 1)
	{
		function_f97da4(self);
	}
	if(function_109cf997())
	{
		function_a0cce87c();
		self util::show_hud(0);
		var_3a62bf5d = self OpenLUIMenu("MissionOverviewScreen");
		self SetLUIMenuData(var_3a62bf5d, "showMissionOverview", 1);
		self SetLUIMenuData(var_3a62bf5d, "showMissionSelect", 0);
		self thread function_26cb0f6b(var_3a62bf5d);
		while(1)
		{
			self waittill("menuresponse", menu, response);
			if(menu == "MissionRecordVaultMenu" && response == "closed")
			{
				break;
			}
		}
		fade_out();
		while(level flag::get("player_exiting_ready_room"))
		{
			wait(0.05);
		}
		level flag::set("player_exiting_ready_room");
		self thread function_390094e6();
		self scene::stop();
		var_c821d9d1 = self CloseLUIMenu(var_3a62bf5d);
		self util::show_hud(1);
		self notify("hash_8b8ae130");
		self flag::clear("in_ready_room");
		self function_f4851bfc();
		EndCamAnimScripted(self);
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
		s_bundle = struct::get("scene_exit_readyroom", "targetname");
		s_bundle scene::init(self);
		wait(0.3);
		fade_in(0.3);
		CamAnimScripted(self, s_bundle.script_string, GetTime(), s_bundle.origin, s_bundle.angles);
		s_bundle scene::Play(self);
		EndCamAnimScripted(self);
		level.var_f0ba161d function_a8271940();
		self.var_bcf382f5 = undefined;
	}
	else if(isdefined(self.var_16b21c9))
	{
		fade_out();
		self SetOrigin(self.var_16b21c9);
		self SetPlayerAngles(self.var_1b4f3317);
	}
	else
	{
		function_c2bd8252();
	}
	fade_in(0.3);
	level.var_f0ba161d function_a8271940(self);
	level flag::clear("player_exiting_ready_room");
}

/*
	Name: function_a0cce87c
	Namespace: safehouse
	Checksum: 0x71FA9441
	Offset: 0x82D8
	Size: 0x2CB
	Parameters: 0
	Flags: None
*/
function function_a0cce87c()
{
	self endon("disconnect");
	self endon("hash_8b8ae130");
	level endon("hash_a7ea64dd");
	self flag::set("in_ready_room");
	fade_out(0);
	if(isdefined(level.var_8ea79b65))
	{
		[[level.var_8ea79b65]]();
	}
	self function_9152f342();
	do
	{
		wait(0.05);
	}
	while(!level flag::get("player_entering_ready_room"));
	level flag::set("player_entering_ready_room");
	self function_54a3b25a();
	self show();
	fade_in();
	var_4ebceea0 = level.var_45f1e4ac[self.var_8d3631f4].var_b156618f;
	s_scene = struct::get_script_bundle("scene", var_4ebceea0);
	align = scene::get_existing_ent(s_scene.aligntarget, 0, 1);
	foreach(player in level.activePlayers)
	{
		if(player flag::get("in_ready_room"))
		{
			CamAnimScripted(player, s_scene.cameraswitcher, GetTime(), align.origin, align.angles);
		}
	}
	self scene::Play(level.var_45f1e4ac[self.var_8d3631f4].var_1fffaf0, self);
	level flag::clear("player_entering_ready_room");
	self thread function_3495bf85();
}

/*
	Name: function_23a33dca
	Namespace: safehouse
	Checksum: 0xBF76CC92
	Offset: 0x85B0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_23a33dca()
{
	level flag::wait_till("all_players_connected");
	level clientfield::set("gameplay_started", 1);
}

/*
	Name: function_6eee8df0
	Namespace: safehouse
	Checksum: 0x4DDF3B1F
	Offset: 0x8600
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_6eee8df0()
{
	level flag::wait_till("all_players_connected");
	while(1)
	{
		wait(0.05);
		var_266deb89 = 0;
		foreach(player in level.players)
		{
			if(player flag::get("in_ready_room"))
			{
				var_266deb89++;
			}
		}
		if(var_266deb89 == function_b2df7c6d() && !GetDvarInt("scr_safehouse_test", 0))
		{
			level thread function_56c8845e();
			level thread LUI::screen_fade_out(0);
			level flag::set("all_players_ready");
			return;
		}
	}
}

/*
	Name: function_3495bf85
	Namespace: safehouse
	Checksum: 0x5B02D7ED
	Offset: 0x8778
	Size: 0x245
	Parameters: 0
	Flags: None
*/
function function_3495bf85()
{
	self endon("disconnect");
	self endon("hash_8b8ae130");
	level endon("hash_a7ea64dd");
	self thread scene::Play(level.var_45f1e4ac[self.var_8d3631f4].str_player_scene, self);
	var_6347c9e0 = 0;
	while(1)
	{
		level flag::wait_till_clear("player_entering_ready_room");
		var_4ebceea0 = level.var_45f1e4ac[self.var_8d3631f4].var_18762b00[var_6347c9e0];
		s_scene = struct::get_script_bundle("scene", var_4ebceea0);
		align = scene::get_existing_ent(s_scene.aligntarget, 0, 1);
		CamAnimScripted(self, s_scene.cameraswitcher, GetTime(), align.origin, align.angles);
		n_time = GetCamAnimTime(var_4ebceea0);
		if(n_time < 0.05)
		{
			n_time = 5;
		}
		else
		{
			n_time = n_time / 0.05;
			n_time = n_time + 0.0001;
			n_time = floor(n_time);
			n_time = n_time * 0.05;
		}
		level flag::wait_till_timeout(n_time, "player_entering_ready_room");
		var_6347c9e0++;
		if(var_6347c9e0 == level.var_45f1e4ac[self.var_8d3631f4].var_18762b00.size)
		{
			var_6347c9e0 = 0;
		}
	}
}

/*
	Name: function_769e64f9
	Namespace: safehouse
	Checksum: 0xFF456B30
	Offset: 0x89C8
	Size: 0x8D
	Parameters: 0
	Flags: None
*/
function function_769e64f9()
{
	for(i = 1; i <= 4; i++)
	{
		var_12aba86 = GetEnt("player_" + i + "_sidearm", "targetname");
		if(isdefined(var_12aba86))
		{
			var_12aba86 Hide();
		}
	}
}

/*
	Name: function_54a3b25a
	Namespace: safehouse
	Checksum: 0x533A2333
	Offset: 0x8A60
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_54a3b25a()
{
	foreach(player in level.activePlayers)
	{
		if(player != self && !player flag::get("in_ready_room"))
		{
			var_c10220c5 = self GetEntityNumber();
			player LUINotifyEvent(&"comms_event_message", 2, &"CP_SH_CAIRO_PLAYER_READY", var_c10220c5);
		}
	}
}

/*
	Name: function_ca93dc45
	Namespace: safehouse
	Checksum: 0x6BA2C01D
	Offset: 0x8B58
	Size: 0x425
	Parameters: 0
	Flags: None
*/
function function_ca93dc45()
{
	level.var_45f1e4ac[0] = spawnstruct();
	level.var_45f1e4ac[0].var_ab85a1cc = 0;
	level.var_45f1e4ac[0].str_player_scene = "cin_saf_ram_readyroom_3rd_pre100_player01";
	level.var_45f1e4ac[0].var_1fffaf0 = "cin_saf_ram_readyroom_3rd_pre100_player01_enter";
	level.var_45f1e4ac[0].var_b156618f = "cin_saf_ram_readyroom_3rd_pre100_p1_entrance_cam";
	level.var_45f1e4ac[0].var_18762b00[0] = "cin_saf_ram_readyroom_3rd_pre100_p1_cam01";
	level.var_45f1e4ac[0].var_18762b00[1] = "cin_saf_ram_readyroom_3rd_pre100_p1_cam02";
	level.var_45f1e4ac[0].var_18762b00[2] = "cin_saf_ram_readyroom_3rd_pre100_p1_cam03";
	level.var_45f1e4ac[1] = spawnstruct();
	level.var_45f1e4ac[1].var_ab85a1cc = 0;
	level.var_45f1e4ac[1].str_player_scene = "cin_saf_ram_readyroom_3rd_pre100_player02";
	level.var_45f1e4ac[1].var_1fffaf0 = "cin_saf_ram_readyroom_3rd_pre100_player02_enter";
	level.var_45f1e4ac[1].var_b156618f = "cin_saf_ram_readyroom_3rd_pre100_p2_entrance_cam";
	level.var_45f1e4ac[1].var_18762b00[0] = "cin_saf_ram_readyroom_3rd_pre100_p2_cam01";
	level.var_45f1e4ac[1].var_18762b00[1] = "cin_saf_ram_readyroom_3rd_pre100_p2_cam02";
	level.var_45f1e4ac[1].var_18762b00[2] = "cin_saf_ram_readyroom_3rd_pre100_p2_cam03";
	level.var_45f1e4ac[2] = spawnstruct();
	level.var_45f1e4ac[2].var_ab85a1cc = 0;
	level.var_45f1e4ac[2].str_player_scene = "cin_saf_ram_readyroom_3rd_pre100_player03";
	level.var_45f1e4ac[2].var_1fffaf0 = "cin_saf_ram_readyroom_3rd_pre100_player03_enter";
	level.var_45f1e4ac[2].var_b156618f = "cin_saf_ram_readyroom_3rd_pre100_p3_entrance_cam";
	level.var_45f1e4ac[2].var_18762b00[0] = "cin_saf_ram_readyroom_3rd_pre100_p3_cam01";
	level.var_45f1e4ac[2].var_18762b00[1] = "cin_saf_ram_readyroom_3rd_pre100_p3_cam02";
	level.var_45f1e4ac[2].var_18762b00[2] = "cin_saf_ram_readyroom_3rd_pre100_p3_cam03";
	level.var_45f1e4ac[3] = spawnstruct();
	level.var_45f1e4ac[3].var_ab85a1cc = 0;
	level.var_45f1e4ac[3].str_player_scene = "cin_saf_ram_readyroom_3rd_pre100_player04";
	level.var_45f1e4ac[3].var_1fffaf0 = "cin_saf_ram_readyroom_3rd_pre100_player04_enter";
	level.var_45f1e4ac[3].var_b156618f = "cin_saf_ram_readyroom_3rd_pre100_p4_entrance_cam";
	level.var_45f1e4ac[3].var_18762b00[0] = "cin_saf_ram_readyroom_3rd_pre100_p4_cam01";
	level.var_45f1e4ac[3].var_18762b00[1] = "cin_saf_ram_readyroom_3rd_pre100_p4_cam02";
	level.var_45f1e4ac[3].var_18762b00[2] = "cin_saf_ram_readyroom_3rd_pre100_p4_cam03";
}

/*
	Name: function_9152f342
	Namespace: safehouse
	Checksum: 0xDF78ABC5
	Offset: 0x8F88
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_9152f342()
{
	if(GetDvarInt("scr_safehouse_test", 0))
	{
		if(!isdefined(level.temp_index))
		{
			level.temp_index = 0;
		}
		else
		{
			level.temp_index++;
			if(level.temp_index == level.var_45f1e4ac.size)
			{
				level.temp_index = 0;
			}
		}
		self.var_8d3631f4 = level.temp_index;
		return level.temp_index;
		break;
	}
	for(n_index = 0; n_index < level.var_45f1e4ac.size; n_index++)
	{
		if(level.var_45f1e4ac[n_index].var_ab85a1cc == 0)
		{
			level.var_45f1e4ac[n_index].var_ab85a1cc = 1;
			self.var_8d3631f4 = n_index;
			return n_index;
		}
	}
}

/*
	Name: function_f4851bfc
	Namespace: safehouse
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
	Namespace: safehouse
	Checksum: 0x1628C932
	Offset: 0x90C8
	Size: 0x4FB
	Parameters: 0
	Flags: None
*/
function function_43e79c92()
{
	level.rooms = [];
	for(n_player_index = 0; n_player_index < 4; n_player_index++)
	{
		level.rooms[n_player_index] = spawnstruct();
		level.rooms[n_player_index].var_afe3e55f = 0;
		var_14f1f567 = GetEntArray("player_bunk_" + n_player_index, "targetname");
		foreach(var_6e887f87 in var_14f1f567)
		{
			switch(var_6e887f87.script_noteworthy)
			{
				case "data_vault":
				{
					level.rooms[n_player_index].var_9860be12 = var_6e887f87;
					level.rooms[n_player_index].var_71dcdd3e = function_a8960cf7(var_6e887f87, &"cp_safehouse_data_vault", &"CP_SH_CAIRO_DATA_VAULT2", &function_18e7bb4a, 0);
					level.rooms[n_player_index].var_71dcdd3e.n_player_index = n_player_index;
					level.rooms[n_player_index].var_71dcdd3e function_e04cba0f();
					break;
				}
				case "wardrobe":
				{
					level.rooms[n_player_index].var_4090852 = var_6e887f87;
					level.rooms[n_player_index].var_a0711246 = function_a8960cf7(var_6e887f87, &"cp_safehouse_wardrobe", &"CP_SH_CAIRO_WARDROBE2", &function_e2d08944, 0);
					level.rooms[n_player_index].var_a0711246.n_player_index = n_player_index;
					level.rooms[n_player_index].var_a0711246 function_e04cba0f();
					break;
				}
				case "foot_locker":
				{
					level.rooms[n_player_index].var_28e7a252 = var_6e887f87;
					level.rooms[n_player_index].var_6caeba6e = function_a8960cf7(var_6e887f87, &"cp_safehouse_collectibles", &"CP_SH_CAIRO_COLLECTIBLES2", &function_1f7af538, 1);
					level.rooms[n_player_index].var_6caeba6e.n_player_index = n_player_index;
					level.rooms[n_player_index].var_6caeba6e function_e04cba0f();
					break;
				}
				case "medal_case":
				{
					level.rooms[n_player_index].var_b8276d03 = var_6e887f87;
					level.rooms[n_player_index].var_46f52946 = function_a8960cf7(var_6e887f87, &"cp_safehouse_medal_case", &"CP_SH_CAIRO_MEDAL_CASE2", &function_7e1ee6bb, 1);
					level.rooms[n_player_index].var_46f52946.n_player_index = n_player_index;
					level.rooms[n_player_index].var_46f52946 function_e04cba0f();
					break;
				}
				case "bunk_volume":
				{
					level.rooms[n_player_index].e_volume = var_6e887f87;
					break;
				}
				case "bunk_door_clip":
				{
					level.rooms[n_player_index].var_ac769486 = var_6e887f87;
					break;
				}
			}
		}
	}
	level.var_17196e81 = GetEnt("t_mission_vault", "targetname");
	function_a8960cf7(level.var_17196e81, &"cp_safehouse_mission_data", &"CP_SH_CAIRO_MISSION_DATA2", &function_495a58b6, 1);
}

/*
	Name: function_ed174df5
	Namespace: safehouse
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
	Namespace: safehouse
	Checksum: 0xD3A49566
	Offset: 0x9640
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_5454cdd2()
{
	thread function_980a453e();
	a_str_scenes[0] = "p7_fxanim_gp_3d_printer_object01_01_bundle";
	a_str_scenes[1] = "p7_fxanim_gp_3d_printer_object01_02_bundle";
	a_str_scenes[2] = "p7_fxanim_gp_3d_printer_object01_03_bundle";
	var_8aa9ef07 = GetEnt("printer", "targetname");
	while(1)
	{
		a_str_scenes = Array::randomize(a_str_scenes);
		for(i = 0; i < a_str_scenes.size; i++)
		{
			var_8aa9ef07 scene::Play(a_str_scenes[i]);
		}
	}
}

/*
	Name: function_980a453e
	Namespace: safehouse
	Checksum: 0xF45E94AF
	Offset: 0x9740
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_980a453e()
{
	var_10b73d4a = GetEnt("t_printer", "targetname");
	if(isdefined(var_10b73d4a))
	{
		if(SessionModeIsOnlineGame())
		{
			function_a8960cf7(var_10b73d4a, &"cp_safehouse_printer", &"CP_SH_CAIRO_PRINTER2", &function_d116f488, 1);
		}
		else
		{
			var_10b73d4a delete();
		}
	}
}

/*
	Name: function_2fad03f
	Namespace: safehouse
	Checksum: 0x9339E741
	Offset: 0x97E8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_2fad03f()
{
	var_f531e9c8 = self Decorations::function_7006b9ad();
	var_5b1e85ea = self Decorations::function_45ddfa6();
	if(var_f531e9c8 && var_5b1e85ea)
	{
		self GiveDecoration("cp_medal_all_tokens");
	}
}

/*
	Name: function_d116f488
	Namespace: safehouse
	Checksum: 0x3108FBF0
	Offset: 0x9868
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_d116f488(player)
{
	player function_711d3c1("WeaponDesigner");
}

/*
	Name: function_2b0247d1
	Namespace: safehouse
	Checksum: 0x7C180A43
	Offset: 0x98A0
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_2b0247d1()
{
	thread function_36069a7();
	a_str_scenes[0] = "p7_fxanim_gp_robot_arm_doctor_01_bundle";
	a_str_scenes[1] = "p7_fxanim_gp_robot_arm_doctor_02_bundle";
	a_str_scenes[2] = "p7_fxanim_gp_robot_arm_doctor_03_bundle";
	var_ecf502d = GetEnt("arm_doctor", "targetname");
	while(1)
	{
		a_str_scenes = Array::randomize(a_str_scenes);
		for(i = 0; i < a_str_scenes.size; i++)
		{
			var_ecf502d scene::Play(a_str_scenes[i]);
		}
	}
}

/*
	Name: function_36069a7
	Namespace: safehouse
	Checksum: 0x5E8290D
	Offset: 0x99A0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_36069a7()
{
	var_490ddbf0 = GetEnt("t_cybercore", "targetname");
	if(isdefined(var_490ddbf0))
	{
		function_a8960cf7(var_490ddbf0, &"cp_safehouse_cybercore", &"CP_SH_CAIRO_CYBERCORE2", &function_b34dec6f, 1);
	}
}

/*
	Name: function_e17b7386
	Namespace: safehouse
	Checksum: 0x4BD20F55
	Offset: 0x9A18
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_e17b7386()
{
	self endon("disconnect");
	if(!self flag::exists("cybercom_upgrade_check"))
	{
		self flag::init("cybercom_upgrade_check");
	}
	if(self flag::get("cybercom_upgrade_check"))
	{
		return;
	}
	self flag::set("cybercom_upgrade_check");
	self util::waittill_notify_or_timeout("stats_changed", 5);
	if(self Decorations::function_45ddfa6())
	{
		self GiveDecoration("cp_medal_all_cybercores");
		self function_2fad03f();
	}
	self flag::clear("cybercom_upgrade_check");
}

/*
	Name: function_b34dec6f
	Namespace: safehouse
	Checksum: 0x7797F5F0
	Offset: 0x9B48
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_b34dec6f(player)
{
	player function_711d3c1("CybercoreUpgrade");
	player thread function_e17b7386();
}

/*
	Name: function_d38001d0
	Namespace: safehouse
	Checksum: 0xB9681AA2
	Offset: 0x9B98
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_d38001d0()
{
	wait(0.05);
	var_d880a1f1 = GetEnt("gunrack", "targetname");
	var_d880a1f1 clientfield::set("gun_rack_init", 1);
	var_8cdc8686 = GetEnt("t_gun_rack", "targetname");
	function_a8960cf7(var_8cdc8686, &"cp_safehouse_gun_rack", &"CP_SH_CAIRO_GUN_RACK2", &function_b0863559);
	var_8cdc8686 thread function_84b269ce();
}

/*
	Name: function_862aff95
	Namespace: safehouse
	Checksum: 0x3ED149F6
	Offset: 0x9C78
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_862aff95(e_player)
{
	e_player endon("death");
	e_player util::waittill_any("loadout_changed_timeout", "loadout_changed");
	e_player flag::clear("loadout_dirty");
	e_player loadout::giveLoadout(e_player.team, e_player.curClass, e_player.var_dc236bc8);
	e_player util::waittill_any_timeout(2, "stats_changed");
	e_player function_2fad03f();
	e_player notify("hash_bcf22596");
}

/*
	Name: function_b0863559
	Namespace: safehouse
	Checksum: 0x22604E9B
	Offset: 0x9D68
	Size: 0xCF
	Parameters: 1
	Flags: None
*/
function function_b0863559(e_player)
{
	e_player flag::set_val("loadout_dirty", 1);
	thread function_862aff95(e_player);
	e_player function_711d3c1("chooseClass");
	e_player function_f25877d2();
	var_58b8cb81 = e_player util::waittill_any_timeout(7, "gun_rack_loadout_changed_handled");
	if(var_58b8cb81 == "timeout")
	{
		e_player notify("hash_73dacb2");
	}
}

/*
	Name: function_711d3c1
	Namespace: safehouse
	Checksum: 0xB13F46AE
	Offset: 0x9E40
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_711d3c1(var_60bb1927)
{
	self endon("death");
	self flag::set("safehouse_menu_open");
	self HideViewModel();
	LUImenu = self OpenLUIMenu(var_60bb1927);
	level.var_ac964c36 = 0;
	do
	{
		self waittill("menuresponse", menu, response);
	}
	while(!response != "closed");
	self ShowViewModel();
	self flag::clear("safehouse_menu_open");
	self thread function_2c4da22(0.5, LUImenu);
	level.var_ac964c36 = 1;
}

/*
	Name: function_84b269ce
	Namespace: safehouse
	Checksum: 0xB408DE2F
	Offset: 0x9F58
	Size: 0x147
	Parameters: 0
	Flags: None
*/
function function_84b269ce()
{
	var_2abb5b57 = 0;
	var_30399f19 = GetEnt("gunrack", "targetname");
	while(1)
	{
		if(level flag::get("player_near_gun_rack") && !var_2abb5b57)
		{
			level clientfield::set("near_gun_rack", 1);
			var_30399f19 thread scene::Play("p7_fxanim_cp_safehouse_cairo_gunrack_open_bundle");
			var_2abb5b57 = 1;
			wait(6);
		}
		else if(!level flag::get("player_near_gun_rack") && var_2abb5b57)
		{
			level clientfield::set("near_gun_rack", 0);
			var_30399f19 thread scene::Play("p7_fxanim_cp_safehouse_cairo_gunrack_close_bundle");
			var_2abb5b57 = 0;
			wait(4);
		}
		wait(0.05);
	}
}

/*
	Name: function_9c8f7a4d
	Namespace: safehouse
	Checksum: 0x53410373
	Offset: 0xA0A8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_9c8f7a4d()
{
	Array::thread_all(GetEntArray("chair", "script_noteworthy"), &function_df2a7519);
}

/*
	Name: function_df2a7519
	Namespace: safehouse
	Checksum: 0x487B5EEC
	Offset: 0xA0F8
	Size: 0x31B
	Parameters: 0
	Flags: None
*/
function function_df2a7519()
{
	self flag::init("player_in_chair");
	t_use = GetEnt("training_trig" + self.script_int, "targetname");
	t_use UseTriggerRequireLookAt();
	t_proximity = spawn("trigger_radius", self.origin, 0, 150, 128);
	prompt = function_a8960cf7(t_use, &"cp_safehouse_training", &"CP_SH_CAIRO_TRAINING2", &function_fda1c8b5);
	prompt.var_524f5f14 = self;
	self.var_10c03d0c = 0;
	while(1)
	{
		self flag::wait_till_clear("player_in_chair");
		prompt function_a8271940();
		var_df983850 = 0;
		foreach(e_player in level.players)
		{
			if(e_player istouching(t_proximity) && e_player util::is_player_looking_at(self.origin, 0.5, 0))
			{
				var_df983850 = 1;
			}
		}
		if(var_df983850 && !self.var_10c03d0c)
		{
			self scene::Play("p7_fxanim_cp_safehouse_chair_console_" + self.script_int + "_open_bundle");
			self.var_10c03d0c = 1;
			t_use SetVisibleToAll();
		}
		else if(!var_df983850 && self.var_10c03d0c)
		{
			t_use SetInvisibleToAll();
			self scene::Play("p7_fxanim_cp_safehouse_chair_console_" + self.script_int + "_close_bundle");
			self.var_10c03d0c = 0;
		}
		wait(0.05);
	}
}

/*
	Name: function_fda1c8b5
	Namespace: safehouse
	Checksum: 0xAC674738
	Offset: 0xA420
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_fda1c8b5(e_player)
{
	str_dir = "left";
	if(self.var_524f5f14.script_int < 3)
	{
		str_dir = "right";
	}
	level.var_f0ba161d function_e04cba0f(e_player);
	objectives::Hide("cp_safehouse_ready_room", e_player);
	e_player.var_597c2939 = self.var_524f5f14;
	e_player.var_8ea3df31 = str_dir;
	self.var_524f5f14.prompt = self;
	self.var_524f5f14 flag::set("player_in_chair");
	self function_e04cba0f();
	self.var_524f5f14 scene::Play("cin_saf_ram_training_1st_getin_" + str_dir, e_player);
	level clientfield::set("toggle_console_" + self.var_524f5f14.script_int, 1);
	self.var_524f5f14 scene::Play("p7_fxanim_cp_safehouse_chair_console_" + self.var_524f5f14.script_int + "_close_bundle");
	self.var_524f5f14.var_10c03d0c = 0;
	e_player LUI::screen_fade_out(0.6, "black");
	e_player.var_67b6f3d0 = e_player.curClass;
	e_player LUI::screen_fade_in(0, "black");
	e_player thread function_ecca1245();
}

/*
	Name: function_a153016
	Namespace: safehouse
	Checksum: 0xE443AD33
	Offset: 0xA648
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_a153016()
{
	for(i = 0; i < 6; i++)
	{
		var_b53e21eb = self GetDStat("PlayerStatsByMap", "cp_sh_cairo", "completedDifficulties", i);
		self SetDStat("PlayerStatsByMap", "cp_sh_cairo", "previousCompletedDifficulties", i, var_b53e21eb);
	}
}

/*
	Name: function_ecca1245
	Namespace: safehouse
	Checksum: 0x66054996
	Offset: 0xA6F0
	Size: 0x223
	Parameters: 0
	Flags: None
*/
function function_ecca1245()
{
	self endon("disconnect");
	var_134a15b0 = self GetCurrentWeapon();
	self flag::set("in_training_sim");
	self thread LUI::screen_fade_in(0, "black");
	if(self function_109cf997("chooseClass_TrainingSim"))
	{
		self thread LUI::screen_fade_out(0, "white");
		self globallogic_player::function_4cef9872(function_9065d6ea());
		self function_a153016();
		self.var_597c2939 function_29532574(self, self.var_8ea3df31, var_134a15b0);
		self clientfield::set_player_uimodel("safehouse.inTrainingSim", 1);
		self training_sim(self.var_597c2939.script_int);
	}
	else
	{
		self CloseMenu("chooseClass_TrainingSim");
		self CloseMenu("FullBlack");
		self thread LUI::screen_fade_in(1, "black");
		self function_6ebf2134();
		if(isalive(self))
		{
			self flag::clear("in_training_sim");
		}
	}
}

/*
	Name: function_1a70861a
	Namespace: safehouse
	Checksum: 0xFC272B07
	Offset: 0xA920
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_1a70861a()
{
	self endon("disconnect");
	self Hide();
	var_17c60336 = "cin_saf_ram_training_1st_sit_" + self.var_8ea3df31;
	s_scenedef = struct::get_script_bundle("scene", var_17c60336);
	if(isdefined(s_scenedef) && isdefined(s_scenedef.objects) && s_scenedef.objects.size > 0)
	{
		s_scenedef.objects[0].lerpTime = 0;
		s_scenedef.objects[0].CameraTween = 0;
		s_scenedef.objects[0].mainblend = 0.01;
	}
	self.var_597c2939 thread scene::Play(var_17c60336, self);
	wait(0.05);
	self show();
	wait(0.05);
	self.var_e162a28e delete();
	self.var_f5434f17 delete();
	training_sim::function_3206b93a();
	self CloseMenu("FullBlack");
	self thread function_ecca1245();
}

/*
	Name: function_680cf465
	Namespace: safehouse
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
		self.var_597c2939.prompt function_a8271940();
		self.var_597c2939.var_10c03d0c = 1;
		self.var_597c2939 flag::clear("player_in_chair");
		level clientfield::set("toggle_console_" + self.var_597c2939.script_int, 0);
	}
	if(isdefined(self.var_e162a28e))
	{
		self.var_e162a28e delete();
		self.var_f5434f17 delete();
	}
}

/*
	Name: function_6ebf2134
	Namespace: safehouse
	Checksum: 0x46CC9BFC
	Offset: 0xABD0
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_6ebf2134()
{
	function_5b426a60(self.var_67b6f3d0);
	self.var_597c2939 scene::Play("p7_fxanim_cp_safehouse_chair_console_" + self.var_597c2939.script_int + "_open_bundle");
	self.var_597c2939 scene::Play("cin_saf_ram_training_1st_getout_" + self.var_8ea3df31, self);
	self clientfield::set_player_uimodel("safehouse.inTrainingSim", 0);
	self function_680cf465();
	wait(1);
	function_10650e35();
	level.var_f0ba161d function_a8271940(self);
	objectives::show("cp_safehouse_ready_room", self);
}

/*
	Name: function_29532574
	Namespace: safehouse
	Checksum: 0xACA81059
	Offset: 0xACD8
	Size: 0x1AB
	Parameters: 3
	Flags: None
*/
function function_29532574(e_player, str_dir, var_134a15b0)
{
	e_player.var_e162a28e = util::spawn_player_clone(e_player);
	e_player.var_e162a28e clientfield::set("player_clone", 1);
	e_player.var_f5434f17 = util::spawn_model("tag_origin", e_player.var_e162a28e GetTagOrigin("tag_weapon_right"), e_player.var_e162a28e GetTagAngles("tag_weapon_right"));
	e_player.var_f5434f17 UseWeaponModel(var_134a15b0, var_134a15b0.worldmodel, e_player GetWeaponOptions(var_134a15b0));
	e_player.var_f5434f17 LinkTo(e_player.var_e162a28e, "tag_weapon_right");
	e_player.var_10aaa336 = (0, 0, e_player.origin[2] - 10000);
	self thread scene::Play("cin_saf_ram_training_1st_sit_fake_" + str_dir, e_player.var_e162a28e);
}

/*
	Name: training_sim
	Namespace: safehouse
	Checksum: 0xAE4AC2D7
	Offset: 0xAE90
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function training_sim(n_num)
{
	self endon("disconnect");
	function_b439510f();
	util::wait_network_frame();
	self thread function_d850faa0(n_num);
	self CloseMenu("FullBlack");
	training_sim::run("training_sim_" + n_num);
	b_alive = 1;
	if(!isalive(self))
	{
		b_alive = 0;
		self util::waittill_either("cp_deathcam_ended", "spawned");
	}
	self openMenu("FullBlack");
	/#
		while(self IsInMoveMode("Dev Block strings are not supported", "Dev Block strings are not supported"))
		{
			wait(0.05);
		}
	#/
	if(b_alive)
	{
		function_b11df48f();
		self thread function_1a70861a();
	}
}

/*
	Name: function_d850faa0
	Namespace: safehouse
	Checksum: 0xA7C12937
	Offset: 0xB010
	Size: 0x2C3
	Parameters: 1
	Flags: None
*/
function function_d850faa0(n_num)
{
	self waittill("hash_ce89933d");
	v_org = self LocalToWorldCoords((-45, -15, 60));
	e_cam = util::spawn_model("tag_origin", v_org, combineangles(self.angles, (-10, 5, 0)));
	e_cam LinkTo(self);
	function_9e3608e3("training_sim_extracam_screen_off" + n_num);
	function_6ddd4fa4("training_sim_extracam_screen_on" + n_num);
	function_f7f318a5(n_num, 1);
	while(isdefined(self) && (isdefined(self.var_24c69c09) && self.var_24c69c09))
	{
		var_4f93c6de = 0;
		foreach(player in level.activePlayers)
		{
			if(player != self && (!isdefined(player.var_24c69c09) && player.var_24c69c09))
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
		e_cam clientfield::set("training_sim_extracam", 0);
		util::wait_network_frame();
	}
	e_cam clientfield::set("training_sim_extracam", 0);
	function_f7f318a5(n_num, 0);
	util::wait_network_frame();
	e_cam delete();
	function_9e3608e3("training_sim_extracam_screen_on" + n_num);
	function_6ddd4fa4("training_sim_extracam_screen_off" + n_num);
}

/*
	Name: function_f7f318a5
	Namespace: safehouse
	Checksum: 0x3869ACB7
	Offset: 0xB2E0
	Size: 0x167
	Parameters: 2
	Flags: None
*/
function function_f7f318a5(n_num, b_on)
{
	level.var_b57a1b14[n_num] = b_on;
	var_fa621f28 = [];
	var_fa621f28[1] = 0;
	var_fa621f28[2] = 0;
	var_fa621f28[3] = 0;
	var_fa621f28[4] = 0;
	for(monitor = 1; monitor <= 4; monitor++)
	{
		for(cam = 1; cam <= 4; cam++)
		{
			if(isdefined(level.var_b57a1b14[cam]) && level.var_b57a1b14[cam] && (!isdefined(var_fa621f28[monitor]) && var_fa621f28[monitor]))
			{
				function_6ddd4fa4("wall_extracam" + monitor + cam);
				var_fa621f28[monitor] = 1;
				continue;
			}
			function_9e3608e3("wall_extracam" + monitor + cam);
		}
	}
}

/*
	Name: function_1f7af538
	Namespace: safehouse
	Checksum: 0xA058E578
	Offset: 0xB450
	Size: 0x2C7
	Parameters: 1
	Flags: None
*/
function function_1f7af538(player)
{
	player endon("death");
	player clientfield::set_player_uimodel("safehouse.inClientBunk", self.trigger.e_owner GetEntityNumber());
	player function_2cc92070();
	var_a758a79e = function_342806c6("scriptbundle_collectibles", "script_noteworthy", self.n_player_index);
	if(isdefined(var_a758a79e))
	{
		if(!isdefined(var_a758a79e.b_open))
		{
			var_a758a79e.b_open = 0;
		}
		if(!isdefined(var_a758a79e.var_78c06f4d))
		{
			var_a758a79e.var_78c06f4d = 0;
		}
		var_a758a79e.b_open++;
		var_a758a79e thread function_46e83736(player);
		if(var_a758a79e.b_open == 1)
		{
			while(var_a758a79e.var_78c06f4d)
			{
				var_a758a79e waittill("closed");
			}
			var_a758a79e scene::Play();
		}
	}
	self.trigger SetInvisibleToPlayer(player);
	menu_name = undefined;
	if(player === self.trigger.e_owner)
	{
		menu_name = "BrowseCollectibles";
	}
	else
	{
		menu_name = "InspectingCollectibles";
	}
	player OpenLUIMenu(menu_name);
	player util::show_hud(0);
	level.var_ac964c36 = 0;
	do
	{
		player waittill("menuresponse", menu, response);
	}
	while(!(menu != menu_name && response != "closed"));
	player util::show_hud(1);
	self.trigger SetVisibleToPlayer(player);
	player function_24f12dbc();
	player notify("hash_46e83736");
	level.var_ac964c36 = 1;
}

/*
	Name: function_a35cc107
	Namespace: safehouse
	Checksum: 0xE16FD60E
	Offset: 0xB720
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_a35cc107(a_ents)
{
	while(self.b_open)
	{
		self waittill("close");
	}
	self.var_78c06f4d = 1;
	self scene::Play("p7_fxanim_cp_safehouse_crates_plastic_tech_close_bundle", a_ents);
}

/*
	Name: function_6ca97001
	Namespace: safehouse
	Checksum: 0x7BF36852
	Offset: 0xB780
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_6ca97001(a_ents)
{
	self.var_78c06f4d = 0;
	self notify("closed");
	self scene::init("p7_fxanim_cp_safehouse_crates_plastic_tech_bundle");
}

/*
	Name: function_46e83736
	Namespace: safehouse
	Checksum: 0x4BD7102
	Offset: 0xB7D0
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_46e83736(player)
{
	player util::waittill_either("death", "close_locker");
	self.b_open--;
	if(self.b_open == 0)
	{
		self notify("close");
	}
}

/*
	Name: function_7e1ee6bb
	Namespace: safehouse
	Checksum: 0xCE52F7C7
	Offset: 0xB830
	Size: 0x197
	Parameters: 1
	Flags: None
*/
function function_7e1ee6bb(player)
{
	self.trigger endon("death");
	self.trigger TriggerEnable(0);
	self function_e04cba0f();
	player clientfield::set_player_uimodel("safehouse.inClientBunk", self.trigger.e_owner GetEntityNumber());
	player OpenLUIMenu("InspectMedalCase");
	player util::show_hud(0);
	level.var_ac964c36 = 0;
	player function_2cc92070();
	do
	{
		player waittill("menuresponse", menu, response);
	}
	while(!(menu != "InspectMedalCase" && response != "closed"));
	player function_24f12dbc();
	self.trigger TriggerEnable(1);
	player util::show_hud(1);
	self function_a8271940();
	level.var_ac964c36 = 1;
}

/*
	Name: function_495a58b6
	Namespace: safehouse
	Checksum: 0xAC992687
	Offset: 0xB9D0
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_495a58b6(player)
{
	self.trigger SetInvisibleToPlayer(player);
	player HideViewModel();
	player function_2cc92070();
	player function_c26d52c3();
	self.trigger SetVisibleToPlayer(player);
	player ShowViewModel();
	player function_24f12dbc();
}

/*
	Name: function_c26d52c3
	Namespace: safehouse
	Checksum: 0x9EBAA5C2
	Offset: 0xBAA0
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_c26d52c3()
{
	menuHandle = self OpenLUIMenu("MissionRecordVaultMenu");
	self util::show_hud(0);
	level.var_ac964c36 = 0;
	self SetLUIMenuData(menuHandle, "highestMapReached", world.var_33c691cb);
	self SetLUIMenuData(menuHandle, "showMissionSelect", self IsHost());
	self waittill("menuresponse", menu, response);
	while(response != "closed")
	{
		level.var_a6f47549 = response;
		level clientfield::set("nextMap", function_59c5ca75(level.var_a6f47549));
		level notify("hash_2456008");
		self waittill("menuresponse", menu, response);
	}
	self util::show_hud(1);
	self CloseLUIMenu(menuHandle);
	level.var_ac964c36 = 1;
}

/*
	Name: function_3374f9fe
	Namespace: safehouse
	Checksum: 0x71C608F8
	Offset: 0xBC30
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3374f9fe()
{
	level waittill("hash_677ac410");
	switchmap_switch();
}

/*
	Name: function_f97da4
	Namespace: safehouse
	Checksum: 0xA942D200
	Offset: 0xBC60
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_f97da4(player)
{
	if(!isdefined(player))
	{
		return;
	}
	player SetControllerUIModelValue("MusicPlayer.state", "stop");
	player notify("music_stop");
	player.var_148d9374 = 0;
	if(isdefined(player.var_c6ff6155))
	{
		alias = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", player.var_c6ff6155, 1);
		player stopSound(alias);
	}
}

/*
	Name: function_648c6218
	Namespace: safehouse
	Checksum: 0xF916C62F
	Offset: 0xBD30
	Size: 0x2B3
	Parameters: 2
	Flags: None
*/
function function_648c6218(player, var_d60677e0)
{
	if(!isdefined(var_d60677e0))
	{
		var_d60677e0 = 0;
	}
	if(!isdefined(player.var_c6ff6155))
	{
		player.var_c6ff6155 = 0;
	}
	var_ccb4b066 = function_1556496c("gamedata/tables/common/music_player.csv");
	while(player.var_c6ff6155 < 0)
	{
		player.var_c6ff6155 = player.var_c6ff6155 + var_ccb4b066;
	}
	player.var_c6ff6155 = player.var_c6ff6155 % var_ccb4b066;
	for(alias = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", player.var_c6ff6155, 1); !player function_8ab5656e(alias);  = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", player.var_c6ff6155, 1))
	{
		if(var_d60677e0)
		{
		}
		else
		{
		}
		player.var_c6ff6155 = -1 + 1;
		player.var_c6ff6155 = player.var_c6ff6155 % var_ccb4b066;
	}
	title = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", player.var_c6ff6155, 2);
	artist = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", player.var_c6ff6155, 3);
	var_e862021a = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", player.var_c6ff6155, 4);
	player SetControllerUIModelValue("MusicPlayer.title", title);
	player SetControllerUIModelValue("MusicPlayer.artist", artist);
	player SetControllerUIModelValue("MusicPlayer.artist2", var_e862021a);
}

/*
	Name: function_2ce69251
	Namespace: safehouse
	Checksum: 0x5D64E662
	Offset: 0xBFF0
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_2ce69251()
{
	self endon("music_stop");
	self endon("disconnect");
	while(1)
	{
		function_648c6218(self);
		alias = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", self.var_c6ff6155, 1);
		self SetControllerUIModelValue("MusicPlayer.state", "play");
		self playsoundtoplayer(alias, self);
		len = float(soundgetplaybacktime(alias)) / 1000;
		util::waittill_notify_or_timeout("music_change", len + 3);
		self stopSound(alias);
		self.var_c6ff6155 = self.var_c6ff6155 + 1;
	}
}

/*
	Name: function_18e7bb4a
	Namespace: safehouse
	Checksum: 0xA3E5C82D
	Offset: 0xC130
	Size: 0x7B7
	Parameters: 1
	Flags: None
*/
function function_18e7bb4a(player)
{
	player endon("death");
	player HideViewModel();
	var_162c6190 = GetEntArray("m_terminal_asleep", "targetname");
	var_2f902017 = GetEntArray("m_terminal_awake", "targetname");
	var_69c1a63b = ArrayGetClosest(player.origin, var_162c6190);
	var_cdc7765d = ArrayGetClosest(player.origin, var_2f902017);
	var_cdc7765d show();
	var_69c1a63b Hide();
	player function_b439510f();
	menuHandle = player OpenLUIMenu("PersonalDataVaultMenu");
	player util::show_hud(0);
	level.var_ac964c36 = 0;
	player function_2cc92070();
	function_648c6218(player);
	var_6d010658 = struct::get("tag_align_desk_0" + self.n_player_index + 1, "targetname");
	CamAnimScripted(player, "c_saf_collectible_computer_in", GetTime(), var_6d010658.origin, var_6d010658.angles);
	var_4f81b21 = "";
	do
	{
		player waittill("menuresponse", menu, response);
		switch(response)
		{
			case "doa2":
			{
				foreach(player in GetPlayers())
				{
					function_f97da4(player);
				}
				level thread function_973b77f9();
				function_6df659a8("cp_doa_bo3_load_loadingmovie");
				function_ad95a4a4("cp_doa_bo3", "doa");
				wait(8);
				switchmap_switch();
				foreach(player in GetPlayers())
				{
					playerEntNum = player GetEntityNumber();
					player SetCharacterBodyType(0, 0);
					player SetCharacterBodyStyle(0);
					player SetCharacterHelmetStyle(0);
				}
				break;
			}
			case "musicTrackBack":
			{
				if(player.var_148d9374 === 1)
				{
					player.var_c6ff6155 = player.var_c6ff6155 - 1;
					function_648c6218(player, 1);
					player.var_c6ff6155 = player.var_c6ff6155 - 1;
					player notify("hash_f922f329");
				}
				else
				{
					player.var_c6ff6155 = player.var_c6ff6155 - 1;
					function_648c6218(player, 1);
				}
				break;
			}
			case "musicTrackPlay":
			{
				if(!isdefined(player.var_c6ff6155))
				{
					player.var_c6ff6155 = 0;
					player.var_148d9374 = 0;
				}
				if(player.var_148d9374 === 1)
				{
					alias = TableLookupColumnForRow("gamedata/tables/common/music_player.csv", player.var_c6ff6155, 1);
					player SetControllerUIModelValue("MusicPlayer.state", "stop");
					player stopSound(alias);
					player notify("music_stop");
					player.var_148d9374 = 0;
					player thread function_390094e6();
				}
				else
				{
					player notify("music_stop");
					player thread function_2ce69251();
					player.var_148d9374 = 1;
					level thread function_973b77f9(player);
				}
				break;
			}
			case "musicTrackNext":
			{
				if(player.var_148d9374 === 1)
				{
					player notify("hash_f922f329");
				}
				else
				{
					player.var_c6ff6155 = player.var_c6ff6155 + 1;
					function_648c6218(player);
				}
				break;
			}
		}
	}
	while(!response != "closed");
	player function_10650e35();
	player util::show_hud(1);
	player CloseLUIMenu(menuHandle);
	EndCamAnimScripted(player);
	var_69c1a63b show();
	var_cdc7765d Hide();
	player ShowViewModel();
	player function_24f12dbc();
	level.var_ac964c36 = 1;
}

/*
	Name: function_e2d08944
	Namespace: safehouse
	Checksum: 0xE20FC1DE
	Offset: 0xC8F0
	Size: 0x237
	Parameters: 1
	Flags: None
*/
function function_e2d08944(player)
{
	player endon("death");
	self.trigger TriggerEnable(0);
	player function_2cc92070();
	level.var_f0ba161d function_e04cba0f(player);
	var_394acf93 = function_342806c6("scriptbundle_wardrobe", "script_noteworthy", self.n_player_index);
	var_394acf93 thread function_2049a4ce(player);
	var_394acf93 scene::Play();
	player LUI::screen_fade_out(0);
	player util::delay(0.5, "disconnect", &LUI::screen_fade_in, 0.5);
	player OpenLUIMenu("PersonalizeCharacter");
	player util::show_hud(0);
	level.var_ac964c36 = 0;
	do
	{
		player waittill("menuresponse", menu, response);
	}
	while(!(menu != "PersonalizeCharacter" || response != "closed"));
	player function_b3b5416e();
	player function_24f12dbc();
	self.trigger TriggerEnable(1);
	level.var_f0ba161d function_a8271940(player);
	player notify("hash_2049a4ce");
	level.var_ac964c36 = 1;
}

/*
	Name: function_2cafba2
	Namespace: safehouse
	Checksum: 0xA9ED4D5F
	Offset: 0xCB30
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_2cafba2(a_ents)
{
	self waittill("close");
	self scene::Play("p7_fxanim_cp_safehouse_locker_metal_barrack_close_bundle", a_ents);
}

/*
	Name: function_ffeaa7c4
	Namespace: safehouse
	Checksum: 0x532C0F9C
	Offset: 0xCB78
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_ffeaa7c4(a_ents)
{
	self scene::init("p7_fxanim_cp_safehouse_locker_metal_barrack_bundle");
}

/*
	Name: function_2049a4ce
	Namespace: safehouse
	Checksum: 0x418FEE22
	Offset: 0xCBB0
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function function_2049a4ce(player)
{
	player util::waittill_either("death", "close_wardrobe");
	self notify("close");
}

/*
	Name: function_c891fb17
	Namespace: safehouse
	Checksum: 0x9CBB4D68
	Offset: 0xCC00
	Size: 0x203
	Parameters: 0
	Flags: None
*/
function function_c891fb17()
{
	n_player = self GetEntityNumber();
	level.rooms[n_player].var_afe3e55f = 1;
	level.rooms[n_player].var_28e7a252.e_owner = self;
	level.rooms[n_player].var_b8276d03.e_owner = self;
	level.rooms[n_player].var_71dcdd3e function_a8271940(self);
	level.rooms[n_player].var_a0711246 function_a8271940(self);
	level.rooms[n_player].var_6caeba6e function_a8271940();
	level.rooms[n_player].var_46f52946 function_a8271940();
	level.rooms[n_player].var_9860be12 TriggerEnable(1);
	level.rooms[n_player].var_4090852 TriggerEnable(1);
	level.rooms[n_player].var_28e7a252 TriggerEnable(1);
	level.rooms[n_player].var_b8276d03 TriggerEnable(1);
	self thread function_e1f7d265(n_player);
}

/*
	Name: function_e1f7d265
	Namespace: safehouse
	Checksum: 0xE28DB1B5
	Offset: 0xCE10
	Size: 0x17F
	Parameters: 1
	Flags: None
*/
function function_e1f7d265(n_player)
{
	while(1)
	{
		var_29c18c11 = GetEntArray("medals", "script_noteworthy");
		var_29c18c11 = function_ca448a30(var_29c18c11, "player_bunk_" + n_player, "targetname");
		a_decorations = self GetDecorations();
		for(i = 0; i < var_29c18c11.size; i++)
		{
			var_889a5942 = var_29c18c11[i];
			var_292c51bd = a_decorations[i];
			if(isdefined(var_292c51bd) && (isdefined(var_292c51bd.medalEarned) && var_292c51bd.medalEarned))
			{
				var_889a5942 SetModel(var_292c51bd.model);
				var_889a5942 show();
				continue;
			}
			var_889a5942 Hide();
		}
		level waittill("decoration_awarded");
	}
}

/*
	Name: function_a24e854d
	Namespace: safehouse
	Checksum: 0x8190806F
	Offset: 0xCF98
	Size: 0x30B
	Parameters: 0
	Flags: None
*/
function function_a24e854d()
{
	self endon("death");
	if(level.var_2e24ecad === 1)
	{
		return;
	}
	n_player = self GetEntityNumber();
	if(world.cp_bunk_anim_type === 1)
	{
		var_ce111e02 = function_342806c6("getup_desk", "script_noteworthy", n_player);
	}
	else
	{
		var_ce111e02 = function_342806c6("getup_bed", "script_noteworthy", n_player);
	}
	var_ce111e02 scene::init(self);
	self Hide();
	self util::streamer_wait(undefined, 0, 10);
	SetDvar("ui_allowDisplayContinue", 1);
	if(IsLoadingCinematicPlaying())
	{
		do
		{
			wait(0.05);
		}
		while(!IsLoadingCinematicPlaying());
	}
	else
	{
		wait(1);
	}
	self util::streamer_wait(undefined, 0, 10);
	self flag::wait_till_clear("in_aar");
	self show();
	var_ace72246 = GetEnt("bunk_" + n_player + 1 + "_door", "targetname");
	if(isdefined(var_ace72246))
	{
		var_ace72246 thread scene::Play("p7_fxanim_cp_safehouse_door_bunk_" + n_player + 1 + "_open_bundle");
	}
	wait(1.8);
	if(isdefined(level.rooms[n_player].var_ac769486))
	{
		level.rooms[n_player].var_ac769486 notsolid();
	}
	self flag::set("start_player");
	var_ce111e02 scene::Play(self);
	self util::show_hud(1);
	objectives::Hide("cp_safehouse_training_start", self);
	objectives::Hide("cp_safehouse_training_nextround", self);
}

/*
	Name: function_554b2d7e
	Namespace: safehouse
	Checksum: 0x722DB1C
	Offset: 0xD2B0
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_554b2d7e()
{
	n_player = self GetEntityNumber();
	level.rooms[n_player].var_ac769486 solid();
	foreach(e_player in level.players)
	{
		if(e_player != self && e_player istouching(level.rooms[n_player].e_volume))
		{
			e_player thread function_c2bd8252();
		}
	}
	level.rooms[n_player].var_afe3e55f = 0;
	level.rooms[n_player].var_28e7a252.e_owner = undefined;
	level.rooms[n_player].var_b8276d03.e_owner = undefined;
	level.rooms[n_player].var_71dcdd3e function_e04cba0f();
	level.rooms[n_player].var_a0711246 function_e04cba0f();
	level.rooms[n_player].var_6caeba6e function_e04cba0f();
	level.rooms[n_player].var_46f52946 function_e04cba0f();
	var_ace72246 = GetEnt("bunk_" + n_player + 1 + "_door", "targetname");
	if(isdefined(var_ace72246))
	{
		var_ace72246 thread scene::Play("p7_fxanim_cp_safehouse_door_bunk_" + n_player + 1 + "_close_bundle");
		wait(2.5);
	}
}

/*
	Name: function_c2bd8252
	Namespace: safehouse
	Checksum: 0xEC92333C
	Offset: 0xD550
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_c2bd8252()
{
	self endon("disconnect");
	var_512dfdf0 = Array("InspectMedalCase", "InspectingCollectibles");
	foreach(menuname in var_512dfdf0)
	{
		LUImenu = self GetLuiMenu(menuname);
		if(isdefined(LUImenu))
		{
			self CloseMenu(menuname);
			self notify("menuresponse", menuname, "cancel");
		}
	}
	fade_out();
	self scene::stop();
	self player::simple_respawn();
	self thread loadout::giveLoadout(self.team, self.curClass, level.var_dc236bc8);
	self function_b11df48f();
	fade_in();
}

/*
	Name: fade_out
	Namespace: safehouse
	Checksum: 0x43E0682F
	Offset: 0xD700
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function fade_out(n_time)
{
	if(!isdefined(n_time))
	{
		n_time = 0.5;
	}
	LUI::screen_fade_out(n_time);
}

/*
	Name: fade_in
	Namespace: safehouse
	Checksum: 0xFB60BC3D
	Offset: 0xD748
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function fade_in(n_time)
{
	if(!isdefined(n_time))
	{
		n_time = 0.5;
	}
	self thread LUI::screen_fade_in(n_time);
}

/*
	Name: function_2cc92070
	Namespace: safehouse
	Checksum: 0xB1B4E8F5
	Offset: 0xD790
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2cc92070()
{
	self flag::set("interacting");
	self thread function_dd07584d();
}

/*
	Name: function_dd07584d
	Namespace: safehouse
	Checksum: 0xF7E4952E
	Offset: 0xD7D8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_dd07584d()
{
	foreach(player in level.players)
	{
		player SetInvisibleToPlayer(self);
	}
	scene::init("player_inspection", self);
}

/*
	Name: function_24f12dbc
	Namespace: safehouse
	Checksum: 0xBF87CCBE
	Offset: 0xD888
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_24f12dbc()
{
	foreach(player in level.players)
	{
		player SetVisibleToPlayer(self);
	}
	self thread scene::Play("player_inspection", self);
	self flag::clear("interacting");
}

/*
	Name: function_6dacc745
	Namespace: safehouse
	Checksum: 0x726AB99C
	Offset: 0xD960
	Size: 0x13B
	Parameters: 3
	Flags: None
*/
function function_6dacc745(str_value, str_key, var_27cdf02a)
{
	var_2dafe517 = [];
	var_9cc495a4 = struct::get_array(str_value, str_key);
	foreach(s_bundle in var_9cc495a4)
	{
		if(s_bundle.targetname === "player_bunk_" + var_27cdf02a)
		{
			if(!isdefined(var_2dafe517))
			{
				var_2dafe517 = [];
			}
			else if(!IsArray(var_2dafe517))
			{
				var_2dafe517 = Array(var_2dafe517);
			}
			var_2dafe517[var_2dafe517.size] = s_bundle;
		}
	}
	return var_2dafe517;
}

/*
	Name: function_342806c6
	Namespace: safehouse
	Checksum: 0xC7B340B1
	Offset: 0xDAA8
	Size: 0x8D
	Parameters: 3
	Flags: None
*/
function function_342806c6(str_value, str_key, var_27cdf02a)
{
	var_2dafe517 = function_6dacc745(str_value, str_key, var_27cdf02a);
	/#
		Assert(var_2dafe517.size < 2, "Dev Block strings are not supported");
	#/
	if(var_2dafe517.size == 1)
	{
		return var_2dafe517[0];
	}
}

/*
	Name: function_390094e6
	Namespace: safehouse
	Checksum: 0x3CE97E2
	Offset: 0xDB40
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_390094e6()
{
	self endon("death");
	self endon("disconnect");
	self endon("hash_3a6467f0");
	wait(2);
	music::setmusicstate("underscore", self);
}

/*
	Name: function_973b77f9
	Namespace: safehouse
	Checksum: 0x8AFBB7F9
	Offset: 0xDB90
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_973b77f9(dude)
{
	if(isdefined(dude))
	{
		dude notify("hash_3a6467f0");
		music::setmusicstate("none", dude);
		break;
	}
	foreach(player in level.players)
	{
		player notify("hash_3a6467f0");
		music::setmusicstate("none", player);
	}
}

/*
	Name: function_7a07bdbf
	Namespace: safehouse
	Checksum: 0x7DB3629A
	Offset: 0xDC80
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7a07bdbf()
{
	music::setmusicstate("ready_room", self);
}

/*
	Name: function_56c8845e
	Namespace: safehouse
	Checksum: 0xBB7C709F
	Offset: 0xDCA8
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_56c8845e()
{
	foreach(player in level.players)
	{
		player notify("hash_3a6467f0");
	}
	wait(1);
	music::setmusicstate("next_mission");
}


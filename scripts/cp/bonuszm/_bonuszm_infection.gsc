#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\bonuszm\_bonuszm_sound;
#using scripts\cp\voice\voice_z_infection;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\util_shared;

#namespace namespace_2f2192b4;

/*
	Name: init
	Namespace: namespace_2f2192b4
	Checksum: 0xDEDEBAA1
	Offset: 0xB40
	Size: 0x2C3
	Parameters: 0
	Flags: AutoExec
*/
function autoexec init()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	mapname = GetDvarString("mapname");
	if(!IsSubStr(mapname, "infection"))
	{
		return;
	}
	level.riser_type = "snow";
	namespace_6ff07a70::init_voice();
	level.BZM_INFECTIONDialogue1Callback = &function_c7784263;
	level.BZM_INFECTIONDialogue2Callback = &function_5570d328;
	level.BZM_INFECTIONDialogue3Callback = &function_7b734d91;
	level.BZM_INFECTIONDialogue4Callback = &function_397fb19e;
	level.BZM_INFECTIONDialogue5Callback = &function_5f822c07;
	level.BZM_INFECTIONDialogue6Callback = &function_ed7abccc;
	level.BZM_INFECTIONDialogue7Callback = &function_137d3735;
	level.BZM_INFECTIONDialogue8Callback = &function_7161f4b2;
	level.BZM_INFECTIONDialogue8_1Callback = &function_b0c5d8fa;
	level.BZM_INFECTIONDialogue9Callback = &function_97646f1b;
	level.BZM_INFECTIONDialogue10Callback = &function_44d98e29;
	level.BZM_INFECTIONDialogue11Callback = &function_1ed713c0;
	level.BZM_INFECTIONDialogue12Callback = &function_90de82fb;
	level.BZM_INFECTIONDialogue13Callback = &function_6adc0892;
	level.BZM_INFECTIONDialogue14Callback = &function_dce377cd;
	level.BZM_INFECTIONDialogue15Callback = &function_b6e0fd64;
	level.BZM_INFECTIONDialogue16Callback = &function_28e86c9f;
	level.BZM_INFECTIONDialogue17Callback = &function_2e5f236;
	level.BZM_INFECTIONDialogue18Callback = &function_74ed6171;
	level.BZM_INFECTIONDialogue19Callback = &function_4eeae708;
	level.BZM_INFECTIONDialogue20Callback = &function_88257448;
	level.BZM_INFECTIONDialogue21Callback = &function_ae27eeb1;
	level.BZM_INFECTIONDialogue22Callback = &function_d42a691a;
	level.BZM_INFECTIONDialogue23Callback = &function_fa2ce383;
}

/*
	Name: function_c7784263
	Namespace: namespace_2f2192b4
	Checksum: 0xDFE85FA4
	Offset: 0xE10
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_c7784263()
{
	level endon("BZM_SceneSeqEnded");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_deimos_was_going_to_0");
	namespace_36e5bc12::function_cf21d35c("salm_it_wasn_t_odd_that_h_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_there_wasn_t_time_to_0");
	wait(5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_she_was_waiting_she_0");
	level flag::wait_till("player_exiting_downed_vtol");
	namespace_36e5bc12::function_ef0ce9fb("plyz_deimos_was_using_tay_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_if_we_were_gonna_fin_0");
}

/*
	Name: function_5570d328
	Namespace: namespace_2f2192b4
	Checksum: 0xF70AE381
	Offset: 0xEE8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_5570d328()
{
	level endon("BZM_SceneSeqEnded");
	wait(6);
	namespace_36e5bc12::function_ef0ce9fb("plyz_i_d_interfaced_with_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_but_this_was_differe_0");
}

/*
	Name: function_7b734d91
	Namespace: namespace_2f2192b4
	Checksum: 0x19672DA3
	Offset: 0xF40
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_7b734d91()
{
	level endon("BZM_SceneSeqEnded");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_interfacing_with_som_0");
	namespace_36e5bc12::function_cf21d35c("salm_because_the_deep_sub_0");
	namespace_36e5bc12::function_cf21d35c("salm_the_human_subconscio_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_but_but_you_said_0");
	namespace_36e5bc12::function_cf21d35c("salm_no_i_told_you_to_ta_0");
	while(!level flag::exists("baby_picked_up"))
	{
		wait(1);
	}
	level flag::wait_till("baby_picked_up");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_please_why_are_you_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_why_are_you_lying_to_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_i_m_afraid_you_don_t_0");
}

/*
	Name: function_397fb19e
	Namespace: namespace_2f2192b4
	Checksum: 0xF2C93B82
	Offset: 0x1078
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_397fb19e()
{
	level endon("BZM_SceneSeqEnded");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_lead_me_to_the_depth_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_project_corvus_2060_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_sarah_she_told_me_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_knew_everything_a_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_she_learned_the_coal_0");
	namespace_36e5bc12::function_cf21d35c("salm_well_i_did_what_had_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_but_in_the_lab_i_saw_0");
	namespace_36e5bc12::function_cf21d35c("salm_i_saw_deimos_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_you_you_did_this_y_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_i_brought_mankind_s_0");
	wait(3);
	namespace_36e5bc12::function_cf21d35c("salm_after_many_years_i_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_you_you_created_the_0");
	namespace_36e5bc12::function_cf21d35c("salm_well_his_undead_ser_0");
}

/*
	Name: function_5f822c07
	Namespace: namespace_2f2192b4
	Checksum: 0x50BC5BA2
	Offset: 0x1208
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_5f822c07()
{
	level endon("BZM_SceneSeqEnded");
}

/*
	Name: function_ed7abccc
	Namespace: namespace_2f2192b4
	Checksum: 0x7B4F27C2
	Offset: 0x1220
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_ed7abccc()
{
	level endon("BZM_SceneSeqEnded");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_we_were_built_0");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_created_the_very_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_he_was_a_prisoner_c_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_were_vehicles_for_0");
	namespace_36e5bc12::function_cf21d35c("salm_that_makes_it_sound_0");
}

/*
	Name: function_137d3735
	Namespace: namespace_2f2192b4
	Checksum: 0x3C16FBDB
	Offset: 0x12D0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_137d3735()
{
	level endon("BZM_SceneSeqEnded");
	wait(3);
	namespace_36e5bc12::function_cf21d35c("salm_tell_me_what_did_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_failure_when_she_wa_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_didn_t_know_how_0");
}

/*
	Name: function_7161f4b2
	Namespace: namespace_2f2192b4
	Checksum: 0xCF9DBF1
	Offset: 0x1340
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_7161f4b2()
{
	level endon("BZM_SceneSeqEnded");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_world_began_to_f_0");
	wait(2);
	namespace_36e5bc12::function_45809471("deim_sarah_listen_to_t_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_he_was_trying_0");
}

/*
	Name: function_b0c5d8fa
	Namespace: namespace_2f2192b4
	Checksum: 0xA395A652
	Offset: 0x13B8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_b0c5d8fa()
{
	level endon("BZM_SceneSeqEnded");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_her_mind_was_fractur_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_you_were_deep_within_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_you_think_i_wasn_t_s_0");
}

/*
	Name: function_97646f1b
	Namespace: namespace_2f2192b4
	Checksum: 0x8640D503
	Offset: 0x1428
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_97646f1b()
{
	level endon("BZM_SceneSeqEnded");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_from_the_moment_she_0");
}

/*
	Name: function_44d98e29
	Namespace: namespace_2f2192b4
	Checksum: 0xA814BA5C
	Offset: 0x1460
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_44d98e29()
{
	level endon("BZM_SceneSeqEnded");
	wait(8);
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_slaughtered_the_s_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_why_did_he_kill_them_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_the_documentation_of_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_he_was_angry_the_da_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_piece_hendricks_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_deimos_didn_t_want_s_0");
}

/*
	Name: function_1ed713c0
	Namespace: namespace_2f2192b4
	Checksum: 0x24F51C09
	Offset: 0x1538
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_1ed713c0()
{
	level endon("BZM_SceneSeqEnded");
	wait(7);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_were_in_foy_i_sa_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_she_told_me_to_follo_0");
}

/*
	Name: function_90de82fb
	Namespace: namespace_2f2192b4
	Checksum: 0x4C9B68D3
	Offset: 0x1590
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_90de82fb()
{
	level endon("BZM_SceneSeqEnded");
	wait(12);
	namespace_36e5bc12::function_ef0ce9fb("plyz_there_was_a_chapel_a_0");
}

/*
	Name: function_6adc0892
	Namespace: namespace_2f2192b4
	Checksum: 0x2DAAE2A4
	Offset: 0x15C8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_6adc0892()
{
	level endon("BZM_SceneSeqEnded");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_you_re_insane_0");
	namespace_36e5bc12::function_cf21d35c("salm_no_i_told_you_befor_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_needed_taylor_to_0");
}

/*
	Name: function_dce377cd
	Namespace: namespace_2f2192b4
	Checksum: 0xFB9B6EC2
	Offset: 0x1638
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_dce377cd()
{
	level endon("BZM_SceneSeqEnded");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_aquifers_their_0");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_deimos_couldn_t_acce_0");
}

/*
	Name: function_b6e0fd64
	Namespace: namespace_2f2192b4
	Checksum: 0x21B508B
	Offset: 0x1690
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b6e0fd64()
{
	level endon("BZM_SceneSeqEnded");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_there_s_something_i_0");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_but_deimos_wasn_t_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_no_my_child_dr_sa_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_was_wait_what_d_0");
}

/*
	Name: function_28e86c9f
	Namespace: namespace_2f2192b4
	Checksum: 0xDE276E09
	Offset: 0x1720
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_28e86c9f()
{
	level endon("BZM_SceneSeqEnded");
	wait(2);
	namespace_36e5bc12::function_cf21d35c("salm_i_must_say_i_m_impr_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_they_found_you_they_0");
	namespace_36e5bc12::function_cf21d35c("deim_dr_salim_was_no_all_0");
	namespace_36e5bc12::function_45809471("salm_you_humans_even_whe_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_no_1");
	namespace_36e5bc12::function_45809471("deim_even_now_you_still_h_0");
	namespace_36e5bc12::function_45809471("deim_look_at_how_she_stru_0");
	namespace_36e5bc12::function_45809471("deim_i_am_humanity_s_salv_0");
}

/*
	Name: function_2e5f236
	Namespace: namespace_2f2192b4
	Checksum: 0xA2B70A58
	Offset: 0x1800
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_2e5f236()
{
	level endon("BZM_SceneSeqEnded");
}

/*
	Name: function_74ed6171
	Namespace: namespace_2f2192b4
	Checksum: 0xBF76CF58
	Offset: 0x1818
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_74ed6171()
{
	level endon("BZM_SceneSeqEnded");
	wait(10);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_tree_i_ve_seen_0");
	namespace_36e5bc12::function_45809471("deim_tell_me_what_do_you_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_you_awaited_her_sacr_0");
}

/*
	Name: function_fa2ce383
	Namespace: namespace_2f2192b4
	Checksum: 0x35E44B83
	Offset: 0x1888
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_fa2ce383()
{
	level endon("BZM_SceneSeqEnded");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_you_you_wouldn_t_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_if_she_offered_herse_0");
}

/*
	Name: function_4eeae708
	Namespace: namespace_2f2192b4
	Checksum: 0xBA482FC5
	Offset: 0x18D8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_4eeae708()
{
	level endon("BZM_SceneSeqEnded");
	wait(2);
	namespace_36e5bc12::function_45809471("deim_you_denied_me_my_pri_0");
}

/*
	Name: function_88257448
	Namespace: namespace_2f2192b4
	Checksum: 0xC47F9571
	Offset: 0x1910
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_88257448()
{
	level endon("BZM_SceneSeqEnded");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_but_now_i_had_you_i_0");
	namespace_36e5bc12::function_45809471("deim_sarah_may_have_told_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_they_located_taylor_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_she_said_there_was_m_0");
}

/*
	Name: function_ae27eeb1
	Namespace: namespace_2f2192b4
	Checksum: 0xAF82AC4F
	Offset: 0x1990
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_ae27eeb1()
{
	level endon("BZM_SceneSeqEnded");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_i_had_to_find_taylor_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_she_said_if_i_wanted_0");
}

/*
	Name: function_d42a691a
	Namespace: namespace_2f2192b4
	Checksum: 0x9064B1E5
	Offset: 0x19E0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_d42a691a()
{
	level endon("BZM_SceneSeqEnded");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_i_tried_to_approach_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_deimos_had_other_ide_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_to_get_to_her_i_had_0");
	while(!flag::exists("cathedral_quad_tank_destroyed"))
	{
		wait(1);
	}
	level flag::wait_till("cathedral_quad_tank_destroyed");
	wait(10);
	namespace_36e5bc12::function_ef0ce9fb("plyz_she_told_me_to_appro_0");
	wait(2);
	namespace_36e5bc12::function_cf21d35c("salm_sarah_couldn_t_under_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_ultimate_gift_d_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_relinquishing_contro_0");
}


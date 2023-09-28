#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\bonuszm\_bonuszm_sound;
#using scripts\cp\voice\voice_z_hypocenter;
#using scripts\shared\flag_shared;
#using scripts\shared\util_shared;

#namespace namespace_fc7d2b5e;

/*
	Name: init
	Namespace: namespace_fc7d2b5e
	Checksum: 0x935EB484
	Offset: 0x770
	Size: 0x21B
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
	if(mapname == "cp_mi_sing_sgen")
	{
		namespace_e15266b8::init_voice();
		level.BZM_SGENDialogue1Callback = &function_1304b9f1;
		level.BZM_SGENDialogue1_1Callback = &function_4a08b9b5;
		level.BZM_SGENDialogue1_2Callback = &function_700b341e;
		level.BZM_SGENDialogue1_3Callback = &function_960dae87;
		level flag::init("BZM_SGENDialogue1_3");
		level.BZM_SGENDialogue1_3Callback_Waittill_Done = &function_1dfa8915;
		level.BZM_SGENDialogue2Callback = &function_3907345a;
		level.BZM_SGENDialogue2_1Callback = &function_7752cc92;
		level.BZM_SGENDialogue3Callback = &function_5f09aec3;
		level.BZM_SGENDialogue4Callback = &function_850c292c;
		level.BZM_SGENDialogue4_1Callback = &function_1230a890;
		level.BZM_SGENDialogue5Callback = &function_ab0ea395;
		level.BZM_SGENDialogue6Callback = &function_d1111dfe;
		level.BZM_SGENDialogue7Callback = &function_f7139867;
		level.BZM_SGENDialogue8Callback = &function_bcee6c40;
		level.BZM_SGENDialogue8_1Callback = &function_549842dc;
		level.BZM_SGENDialogue8_2Callback = &function_c69fb217;
		level.BZM_SGENDialogue9Callback = &function_e2f0e6a9;
	}
}

/*
	Name: function_1304b9f1
	Namespace: namespace_fc7d2b5e
	Checksum: 0x14FAF505
	Offset: 0x998
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1304b9f1()
{
	level endon("BZM_SceneSeqEnded");
	wait(6);
	namespace_36e5bc12::function_ef0ce9fb("plyz_it_started_at_coales_0");
}

/*
	Name: function_4a08b9b5
	Namespace: namespace_fc7d2b5e
	Checksum: 0x7E8D92B8
	Offset: 0x9D0
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_4a08b9b5()
{
	wait(2);
	level endon("BZM_SceneSeqEnded");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_d_lost_comms_with_0");
	wait(11);
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_was_on_edg_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_undead_weren_t_o_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_either_way_our_trou_0");
}

/*
	Name: function_700b341e
	Namespace: namespace_fc7d2b5e
	Checksum: 0xE9780942
	Offset: 0xA70
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_700b341e()
{
	level endon("BZM_SceneSeqEnded");
	wait(8);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_should_ve_known_t_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_had_a_bad_0");
}

/*
	Name: function_960dae87
	Namespace: namespace_fc7d2b5e
	Checksum: 0x71353B29
	Offset: 0xAC8
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_960dae87()
{
	level endon("BZM_SceneSeqEnded");
	wait(5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_coalescence_enhanc_0");
	wait(2);
	namespace_36e5bc12::function_cf21d35c("salm_what_happened_what_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_coalescence_disa_0");
	level flag::set("BZM_SGENDialogue1_3");
}

/*
	Name: function_1dfa8915
	Namespace: namespace_fc7d2b5e
	Checksum: 0x21F8FA93
	Offset: 0xB58
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_1dfa8915()
{
	level flag::wait_till("BZM_SGENDialogue1_3");
}

/*
	Name: function_3907345a
	Namespace: namespace_fc7d2b5e
	Checksum: 0x9115DE93
	Offset: 0xB88
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_3907345a()
{
	level endon("BZM_SceneSeqEnded");
	namespace_36e5bc12::function_cf21d35c("salm_what_was_so_special_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_nothing_it_was_supp_0");
	level flag::wait_till("data_recovered");
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_located_an_emf_so_0");
}

/*
	Name: function_7752cc92
	Namespace: namespace_fc7d2b5e
	Checksum: 0x93F90A7
	Offset: 0xC10
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_7752cc92()
{
	level endon("BZM_SceneSeqEnded");
	wait(6);
	namespace_36e5bc12::function_ef0ce9fb("plyz_our_drone_picked_up_0");
}

/*
	Name: function_5f09aec3
	Namespace: namespace_fc7d2b5e
	Checksum: 0xFDB19684
	Offset: 0xC48
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5f09aec3()
{
	level endon("BZM_SceneSeqEnded");
	wait(6);
	namespace_36e5bc12::function_ef0ce9fb("plyz_when_man_fled_the_vi_0");
}

/*
	Name: function_850c292c
	Namespace: namespace_fc7d2b5e
	Checksum: 0x357EF152
	Offset: 0xC80
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_850c292c()
{
	level endon("BZM_SceneSeqEnded");
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_d_reached_the_sil_0");
}

/*
	Name: function_1230a890
	Namespace: namespace_fc7d2b5e
	Checksum: 0x98285CEA
	Offset: 0xCB0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1230a890()
{
	level endon("BZM_SceneSeqEnded");
	wait(5);
	namespace_36e5bc12::function_cf21d35c("salm_did_you_have_any_ink_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_no_in_hindsight_i_0");
}

/*
	Name: function_ab0ea395
	Namespace: namespace_fc7d2b5e
	Checksum: 0xFD779EEB
	Offset: 0xD00
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_ab0ea395()
{
	level endon("BZM_SceneSeqEnded");
	namespace_36e5bc12::function_cf21d35c("salm_what_did_you_find_be_0");
	wait(0.5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_a_cia_black_project_0");
	namespace_36e5bc12::function_cf21d35c("salm_why_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_it_would_have_bee_0");
	namespace_36e5bc12::function_cf21d35c("salm_is_it_such_a_bad_thi_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_didn_t_have_a_cho_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_those_who_find_fate_0");
}

/*
	Name: function_d1111dfe
	Namespace: namespace_fc7d2b5e
	Checksum: 0xD6A17071
	Offset: 0xDD0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_d1111dfe()
{
	level endon("BZM_SceneSeqEnded");
	wait(4);
	namespace_36e5bc12::function_cf21d35c("salm_the_human_testing_la_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_found_the_trut_0");
	namespace_36e5bc12::function_cf21d35c("salm_you_re_certain_of_th_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_didn_t_have_the_f_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_when_the_explosion_h_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_what_do_you_mean_ch_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_winslow_accord_a_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_61_15_changed_that_0");
	wait(0.5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_you_re_both_human_a_0");
	wait(0.5);
	namespace_36e5bc12::function_cf21d35c("salm_did_you_find_taylor_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_no_but_they_d_come_0");
}

/*
	Name: function_f7139867
	Namespace: namespace_fc7d2b5e
	Checksum: 0xC8CBE6FA
	Offset: 0xF38
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_f7139867()
{
	level endon("BZM_SceneSeqEnded");
	wait(2.5);
	namespace_36e5bc12::function_cf21d35c("salm_did_you_know_what_yo_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_couldn_t_have_kno_0");
}

/*
	Name: function_bcee6c40
	Namespace: namespace_fc7d2b5e
	Checksum: 0x3385116B
	Offset: 0xF90
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_bcee6c40()
{
	level endon("BZM_SceneSeqEnded");
	wait(17);
	namespace_36e5bc12::function_cf21d35c("salm_you_killed_him_0");
	wait(0.5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_left_us_no_choice_0");
	wait(2);
	namespace_36e5bc12::function_cf21d35c("salm_you_needed_to_find_o_0");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_accessing_diaz_s_tho_0");
	wait(4);
	namespace_36e5bc12::function_cf21d35c("salm_knowing_what_you_kno_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_that_didn_t_matter_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_from_the_interface_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_tell_me_about_the_na_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_name_deimos_th_0");
}

/*
	Name: function_549842dc
	Namespace: namespace_fc7d2b5e
	Checksum: 0xC3EF78E3
	Offset: 0x10C0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_549842dc()
{
	level endon("BZM_SceneSeqEnded");
	wait(16);
	namespace_36e5bc12::function_ef0ce9fb("plyz_goh_xiulan_leader_o_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_immortals_had_wo_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_they_blew_the_suppor_0");
}

/*
	Name: function_c69fb217
	Namespace: namespace_fc7d2b5e
	Checksum: 0xF4822D26
	Offset: 0x1138
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_c69fb217()
{
	level endon("BZM_SceneSeqEnded");
	wait(10);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_needed_to_get_out_0");
}

/*
	Name: function_e2f0e6a9
	Namespace: namespace_fc7d2b5e
	Checksum: 0x89A450A7
	Offset: 0x1170
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_e2f0e6a9()
{
	wait(13);
	namespace_36e5bc12::function_cf21d35c("salm_and_and_what_hap_0");
	wait(0.5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_got_through_it_w_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_learned_ta_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_but_that_was_the_beg_0");
}


#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\bonuszm\_bonuszm_sound;
#using scripts\cp\voice\voice_z_blackstation;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\util_shared;

#namespace namespace_52273882;

/*
	Name: function_c35e6aab
	Namespace: namespace_52273882
	Checksum: 0x9DE3A588
	Offset: 0x960
	Size: 0x1BB
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_c35e6aab()
{
	function_f5c30bc9();
	if(!function_27c72c1b())
	{
		return;
	}
	var_b78f06c4 = function_6f1ebe57("mapname");
	if(!function_5dbf7eca(var_b78f06c4, "blackstation"))
	{
		return;
	}
	namespace_50be16fe::function_e230521c();
	level.var_fce615e8 = &function_96eb55bd;
	level.var_43858faf = &function_bcedd026;
	level.var_90895ee2 = &function_e2f04a8f;
	level.var_ceae7aca = &function_72835fe7;
	level.var_eec0b3fd = &function_7bf0ac;
	level.var_2acebcf0 = &function_267e6b15;
	level.var_cb28e353 = &function_b476fbda;
	level.var_e44c2f76 = &function_da797643;
	level.var_a2d3ec51 = &function_d8def1b0;
	level.var_655a6f1d = &function_eaea4ccc;
	level.var_ba246cea = &function_5cf1bc07;
	level.var_513b9d17 = &function_36ef419e;
	level.var_8b2530b4 = &function_fee16c19;
}

/*
	Name: function_f5c30bc9
	Namespace: namespace_52273882
	Checksum: 0x42E56F7D
	Offset: 0xB28
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_f5c30bc9()
{
	wait(2);
	var_ab59bedf = [];
	namespace_84970cc4::function_69554b3e(var_ab59bedf, (1689, -8229, 242));
	namespace_84970cc4::function_69554b3e(var_ab59bedf, (1389, -8470, 170));
	foreach(var_35940ed8 in var_ab59bedf)
	{
		function_eac31668(var_35940ed8, 100, 400, 200);
	}
}

/*
	Name: function_96eb55bd
	Namespace: namespace_52273882
	Checksum: 0x5E96A1B0
	Offset: 0xC28
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_96eb55bd()
{
	level endon("hash_4cb32f3c");
	wait(6);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_singapore_quaran_0");
	wait(2);
	namespace_36e5bc12::function_cf21d35c("salm_bad_memories_0");
	wait(0.5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_you_know_damn_well_i_0");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_d_be_in_and_out_q_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_find_out_who_this_de_0");
	wait(13);
	namespace_36e5bc12::function_ef0ce9fb("plyz_for_security_purpose_0");
	namespace_36e5bc12::function_cf21d35c("salm_the_lock_i_assume_w_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_key_that_was_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_after_the_docks_our_0");
}

/*
	Name: function_bcedd026
	Namespace: namespace_52273882
	Checksum: 0x1D810F60
	Offset: 0xD58
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_bcedd026()
{
	level endon("hash_4cb32f3c");
}

/*
	Name: function_e2f04a8f
	Namespace: namespace_52273882
	Checksum: 0xB43E4552
	Offset: 0xD70
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_e2f04a8f()
{
	level endon("hash_4cb32f3c");
	wait(3);
	namespace_36e5bc12::function_cf21d35c("salm_more_vultures_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_praying_on_the_weak_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_after_the_safehouse_0");
	namespace_36e5bc12::function_cf21d35c("salm_why_didn_t_you_step_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_calculated_risks_we_0");
	namespace_36e5bc12::function_cf21d35c("salm_but_there_s_always_a_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_chance_is_a_billion_0");
}

/*
	Name: function_72835fe7
	Namespace: namespace_52273882
	Checksum: 0x6BC0F971
	Offset: 0xE50
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_72835fe7()
{
	level endon("hash_4cb32f3c");
	wait(5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_winds_were_picki_0");
}

/*
	Name: function_7bf0ac
	Namespace: namespace_52273882
	Checksum: 0xED173589
	Offset: 0xE88
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_7bf0ac()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_plan_was_to_wait_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_missiles_were_in_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_said_fuck_0");
}

/*
	Name: function_267e6b15
	Namespace: namespace_52273882
	Checksum: 0x2B263EB6
	Offset: 0xEF8
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_267e6b15()
{
	level endon("hash_4cb32f3c");
	level namespace_ad23e503::function_1ab5ebec("container_console_active");
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_secured_the_first_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_moved_to_s_0");
}

/*
	Name: function_b476fbda
	Namespace: namespace_52273882
	Checksum: 0x90C231C1
	Offset: 0xF68
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_b476fbda()
{
	level endon("hash_4cb32f3c");
	wait(12);
	namespace_36e5bc12::function_ef0ce9fb("plyz_but_of_course_the_su_0");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_barge_ripped_fre_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_and_hang_on_for_dear_0");
}

/*
	Name: function_da797643
	Namespace: namespace_52273882
	Checksum: 0xB0A057FF
	Offset: 0xFE0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_da797643()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_d_been_set_to_ren_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_cut_through_the_f_0");
}

/*
	Name: function_d8def1b0
	Namespace: namespace_52273882
	Checksum: 0x43AE0C98
	Offset: 0x1030
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_d8def1b0()
{
	level endon("hash_4cb32f3c");
	wait(1.5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_with_the_dead_cleare_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_turns_out_we_weren_t_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_a_vulture_got_the_dr_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_you_were_a_payday_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_were_deadkillers_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_but_you_were_there_t_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_maybe_in_2070_when_w_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_kane_made_quick_work_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("salm_she_was_well_trained_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_it_didn_t_matter_sh_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_what_had_gone_wrong_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_hadn_t_taken_the_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_so_much_for_maintain_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("salm_but_kane_was_resourc_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_adapt_or_die_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_yeah_adapt_or_die_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_d_regroup_with_he_0");
}

/*
	Name: function_eaea4ccc
	Namespace: namespace_52273882
	Checksum: 0x2CE90D2A
	Offset: 0x1270
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_eaea4ccc()
{
	level endon("hash_4cb32f3c");
}

/*
	Name: function_5cf1bc07
	Namespace: namespace_52273882
	Checksum: 0xFB231739
	Offset: 0x1288
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_5cf1bc07()
{
	level endon("hash_4cb32f3c");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_with_their_comms_scr_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_now_to_get_the_drive_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_you_couldn_t_take_be_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_feeling_had_latc_0");
	namespace_36e5bc12::function_cf21d35c("salm_some_thing_not_so_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_i_just_felt_somet_0");
}

/*
	Name: function_36ef419e
	Namespace: namespace_52273882
	Checksum: 0x2A016F2F
	Offset: 0x1358
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_36ef419e()
{
	level endon("hash_4cb32f3c");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_by_the_time_we_rende_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_what_was_kane_s_plan_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_hit_em_in_the_gulle_0");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_like_yourself_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_like_a_berserker_li_0");
}

/*
	Name: function_fee16c19
	Namespace: namespace_52273882
	Checksum: 0x6CDF8ADD
	Offset: 0x1410
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_fee16c19()
{
	level endon("hash_4cb32f3c");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_what_did_you_find_in_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_slaughtered_cia_staf_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_it_was_a_gruesome_sc_0");
	namespace_36e5bc12::function_cf21d35c("salm_what_did_you_learn_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_found_a_dossie_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_they_fused_them_toge_0");
	namespace_36e5bc12::function_cf21d35c("salm_control_them_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_those_corpses_below_0");
	namespace_36e5bc12::function_cf21d35c("salm_the_gateway_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_gateway_to_malum_0");
	namespace_36e5bc12::function_cf21d35c("salm_deimos_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_deimos_someone_did_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_there_was_also_infor_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_dolos_demigoddess_o_0");
	namespace_36e5bc12::function_cf21d35c("salm_and_the_researcher_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_yes_it_was_wait_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_it_said_dr_salim_i_0");
}


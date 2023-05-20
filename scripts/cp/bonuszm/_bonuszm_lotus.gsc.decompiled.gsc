#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\bonuszm\_bonuszm_sound;
#using scripts\cp\voice\voice_z_lotus;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\util_shared;

#namespace namespace_28cd84da;

/*
	Name: function_c35e6aab
	Namespace: namespace_28cd84da
	Checksum: 0x5021996B
	Offset: 0x8A0
	Size: 0x27B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_c35e6aab()
{
	if(!function_27c72c1b())
	{
		return;
	}
	var_b78f06c4 = function_6f1ebe57("mapname");
	if(!function_5dbf7eca(var_b78f06c4, "lotus"))
	{
		return;
	}
	namespace_c8dba3e6::function_e230521c();
	level.var_19d8bbf0 = &function_b3638a15;
	level.var_f43e3f7 = &function_d966047e;
	level.var_731f5de7 = &function_7aa93e6e;
	level.var_22e2a260 = &function_54a6c405;
	level.var_235c126d = &function_2ea4499c;
	level.var_b2dc81a6 = &function_8a1cf33;
	level.var_bdb879ca = &function_ff687ee7;
	level.var_fbebfbb5 = &function_cdf5cbb4;
	level.var_cba99bd9 = &function_f5572608;
	level.var_7285b6d5 = &function_b86427d4;
	level.var_551bb62 = &function_2a6b970f;
	level.var_ba32e253 = &function_415c1ada;
	level.var_d3562e76 = &function_675e9543;
	level.var_f16c27e6 = &function_d8e54d73;
	level.var_f48af665 = &function_5d4d3c64;
	level.var_36848938 = &function_834fb6cd;
	level.var_7c5276b2 = &function_5a3b6b5f;
	level.var_c027307f = &function_3438f0f6;
	level.var_da26fef8 = &function_e36768d;
	level.var_b3f48a25 = &function_e833fc24;
	level.var_cf7ca25e = &function_c23181bb;
	function_91402721();
}

/*
	Name: function_91402721
	Namespace: namespace_28cd84da
	Checksum: 0xC97CF12A
	Offset: 0xB28
	Size: 0x23
	Parameters: 0
	Flags: Private
*/
function private function_91402721()
{
	namespace_dabbe128::function_356a4ee1(&function_b89e0be4);
}

/*
	Name: function_b89e0be4
	Namespace: namespace_28cd84da
	Checksum: 0x99EC1590
	Offset: 0xB58
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_b89e0be4()
{
}

/*
	Name: function_b3638a15
	Namespace: namespace_28cd84da
	Checksum: 0xFB7CDBE8
	Offset: 0xB68
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b3638a15()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_ef0ce9fb("plyz_lotus_tower_was_one_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_that_fucker_was_a_ma_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_khalil_and_the_egypt_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_took_out_hakim_s_0");
}

/*
	Name: function_d966047e
	Namespace: namespace_28cd84da
	Checksum: 0x865D40C7
	Offset: 0xBF8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_d966047e()
{
	level endon("hash_4cb32f3c");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_made_quick_work_o_0");
	wait(10);
	namespace_36e5bc12::function_ef0ce9fb("plyz_khalil_spoke_to_the_0");
	level namespace_ad23e503::function_1ab5ebec("start_stair_shoot");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_khalil_had_a_mobile_0");
}

/*
	Name: function_7aa93e6e
	Namespace: namespace_28cd84da
	Checksum: 0x8FFC7943
	Offset: 0xC90
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_7aa93e6e()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_ef0ce9fb("plyz_once_we_took_the_sec_0");
}

/*
	Name: function_54a6c405
	Namespace: namespace_28cd84da
	Checksum: 0xCC5880A5
	Offset: 0xCC0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_54a6c405()
{
	level endon("hash_4cb32f3c");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_and_then_we_were_com_0");
}

/*
	Name: function_2ea4499c
	Namespace: namespace_28cd84da
	Checksum: 0xB77D854C
	Offset: 0xCF8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_2ea4499c()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_security_station_0");
	wait(9);
	namespace_36e5bc12::function_45809471("deim_i_wonder_how_did_0");
}

/*
	Name: function_8a1cf33
	Namespace: namespace_28cd84da
	Checksum: 0x709C04C6
	Offset: 0xD48
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_8a1cf33()
{
	level endon("hash_4cb32f3c");
}

/*
	Name: function_ff687ee7
	Namespace: namespace_28cd84da
	Checksum: 0xB4665DA0
	Offset: 0xD60
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_ff687ee7()
{
	level endon("hash_4cb32f3c");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_one_by_one_he_d_watc_0");
	wait(2);
	namespace_36e5bc12::function_45809471("deim_and_your_man_john_t_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_was_in_a_detentio_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_he_waited_for_you_i_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_fuck_you_0");
}

/*
	Name: function_cdf5cbb4
	Namespace: namespace_28cd84da
	Checksum: 0xDB103637
	Offset: 0xE18
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_cdf5cbb4()
{
	level endon("hash_4cb32f3c");
	wait(1);
	wait(1);
}

/*
	Name: function_f5572608
	Namespace: namespace_28cd84da
	Checksum: 0x4F6DE80D
	Offset: 0xE40
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_f5572608()
{
	level endon("hash_4cb32f3c");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_and_there_he_was_jo_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_and_you_hesitated_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_you_felt_compassion_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_no_it_was_hendricks_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_this_would_be_one_of_0");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_watching_taylor_walk_0");
	namespace_36e5bc12::function_45809471("deim_but_as_you_always_di_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_this_was_the_world_w_0");
}

/*
	Name: function_b86427d4
	Namespace: namespace_28cd84da
	Checksum: 0x549B439A
	Offset: 0xF50
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b86427d4()
{
	level endon("hash_4cb32f3c");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_taylor_was_gunning_f_0");
}

/*
	Name: function_2a6b970f
	Namespace: namespace_28cd84da
	Checksum: 0xBF289192
	Offset: 0xF88
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_2a6b970f()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_45809471("deim_what_happened_when_y_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_a_a_malfunction_0");
}

/*
	Name: function_415c1ada
	Namespace: namespace_28cd84da
	Checksum: 0x8A95960
	Offset: 0xFD0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_415c1ada()
{
	level endon("hash_4cb32f3c");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_snapped_out_of_ou_0");
}

/*
	Name: function_675e9543
	Namespace: namespace_28cd84da
	Checksum: 0xC693BFD8
	Offset: 0x1008
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_675e9543()
{
	level endon("hash_4cb32f3c");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_i_must_admit_this_0");
	namespace_36e5bc12::function_45809471("deim_by_this_time_you_kne_0");
	namespace_36e5bc12::function_45809471("deim_i_gave_him_something_0");
	namespace_36e5bc12::function_45809471("deim_we_know_what_happens_0");
	namespace_36e5bc12::function_45809471("deim_but_right_then_you_h_0");
	namespace_36e5bc12::function_45809471("deim_i_wanted_to_test_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_over_comms_kane_tol_0");
}

/*
	Name: function_d8e54d73
	Namespace: namespace_28cd84da
	Checksum: 0x35674998
	Offset: 0x10D8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_d8e54d73()
{
	level endon("hash_4cb32f3c");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_i_must_admit_this_0");
	namespace_36e5bc12::function_45809471("deim_by_this_time_you_kne_0");
	namespace_36e5bc12::function_45809471("deim_i_gave_him_something_0");
	namespace_36e5bc12::function_45809471("deim_we_know_what_happens_0");
	namespace_36e5bc12::function_45809471("deim_but_right_then_you_h_0");
	namespace_36e5bc12::function_45809471("deim_i_wanted_to_test_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_over_comms_kane_tol_0");
}

/*
	Name: function_5d4d3c64
	Namespace: namespace_28cd84da
	Checksum: 0x99B35741
	Offset: 0x11A8
	Size: 0xD
	Parameters: 0
	Flags: None
*/
function function_5d4d3c64()
{
	level endon("hash_4cb32f3c");
}

/*
	Name: function_834fb6cd
	Namespace: namespace_28cd84da
	Checksum: 0xBD1FF7C3
	Offset: 0x11C0
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_834fb6cd()
{
	level endon("hash_4cb32f3c");
	wait(10);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_airship_crashed_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_i_was_stuck_trapped_0");
	namespace_36e5bc12::function_45809471("deim_i_d_gotten_over_my_c_0");
	namespace_36e5bc12::function_45809471("deim_and_taylor_was_just_0");
	namespace_36e5bc12::function_45809471("deim_you_raised_your_hand_0");
	namespace_36e5bc12::function_45809471("deim_but_something_happen_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_told_me_he_had_to_0");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_was_ripping_out_h_0");
	wait(2);
	namespace_36e5bc12::function_45809471("deim_what_did_he_say_to_y_0");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_he_asked_me_about_th_0");
	wait(4);
	namespace_36e5bc12::function_45809471("deim_and_then_my_final_pu_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_no_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_from_coalescence_0");
	namespace_36e5bc12::function_45809471("deim_you_humans_and_your_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_so_i_gave_you_your_e_0");
}

/*
	Name: function_5a3b6b5f
	Namespace: namespace_28cd84da
	Checksum: 0x858110F9
	Offset: 0x1380
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_5a3b6b5f()
{
	level endon("hash_4cb32f3c");
	wait(2);
	namespace_36e5bc12::function_45809471("deim_but_your_guardian_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_she_saved_you_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_you_must_have_been_t_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_what_s_it_like_to_e_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_the_naivety_of_your_0");
	wait(1);
	namespace_36e5bc12::function_b4a3e925("dolo_do_as_he_asks_give_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_just_that_we_were_go_0");
}

/*
	Name: function_3438f0f6
	Namespace: namespace_28cd84da
	Checksum: 0x5544B7C3
	Offset: 0x1478
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_3438f0f6()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_had_been_s_0");
	wait(1);
	namespace_36e5bc12::function_45809471("deim_i_enlightened_him_l_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_right_this_war_with_0");
	namespace_36e5bc12::function_45809471("deim_don_t_you_dare_fu_0");
}

/*
	Name: function_e36768d
	Namespace: namespace_28cd84da
	Checksum: 0xB1EBB326
	Offset: 0x14F8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e36768d()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_b4a3e925("dolo_do_as_he_asks_give_0");
	namespace_36e5bc12::function_b4a3e925("dolo_remember_the_trut_1");
}

/*
	Name: function_e833fc24
	Namespace: namespace_28cd84da
	Checksum: 0x42BB3EA2
	Offset: 0x1540
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_e833fc24()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_b4a3e925("dolo_do_as_he_asks_let_h_1");
	namespace_36e5bc12::function_b4a3e925("dolo_offer_yourself_to_hi_1");
}

/*
	Name: function_c23181bb
	Namespace: namespace_28cd84da
	Checksum: 0xCF9E6E92
	Offset: 0x1588
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_c23181bb()
{
	level endon("hash_4cb32f3c");
	wait(2);
	namespace_36e5bc12::function_b4a3e925("dolo_let_them_come_0");
	namespace_36e5bc12::function_b4a3e925("dolo_like_puppets_on_stri_0");
	namespace_36e5bc12::function_b4a3e925("dolo_what_choice_do_you_h_0");
}


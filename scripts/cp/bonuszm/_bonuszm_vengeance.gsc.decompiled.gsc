#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_util;
#using scripts\cp\bonuszm\_bonuszm;
#using scripts\cp\bonuszm\_bonuszm_sound;
#using scripts\cp\voice\voice_z_vengeance;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\util_shared;

#namespace namespace_7c492a31;

/*
	Name: function_c35e6aab
	Namespace: namespace_7c492a31
	Checksum: 0x27E12FD6
	Offset: 0x578
	Size: 0x1C3
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
	if(var_b78f06c4 != "cp_mi_sing_vengeance")
	{
		return;
	}
	namespace_10893d25::function_e230521c();
	level.var_42ed4e79 = &function_f3907da8;
	level.var_46bdf616 = &function_6597ece3;
	level.var_72ec1fc6 = &function_ed743e53;
	level.var_df45f1f3 = &function_3f95727a;
	level.var_a923dc3b = &function_ae2421f2;
	level.var_95299f90 = &function_b19ce1b5;
	level.var_63599d = &function_8b9a674c;
	level.var_552d576a = &function_fda1d687;
	level.var_1e559ca2 = &function_3c7cab4f;
	level.var_c8e36315 = &function_ca753c14;
	level.var_ec448797 = &function_d79f5c1e;
	level.var_143ab0c7 = &function_75eb7a4e;
	level.var_e9d4ea4 = &function_e97f24c9;
	level.var_69b67781 = &function_c37caa60;
	function_1c8c2a72();
}

/*
	Name: function_1c8c2a72
	Namespace: namespace_7c492a31
	Checksum: 0xFA2CF363
	Offset: 0x748
	Size: 0x23
	Parameters: 0
	Flags: Private
*/
function private function_1c8c2a72()
{
	namespace_dabbe128::function_356a4ee1(&function_2aefb731);
}

/*
	Name: function_2aefb731
	Namespace: namespace_7c492a31
	Checksum: 0x99EC1590
	Offset: 0x778
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_2aefb731()
{
}

/*
	Name: function_f3907da8
	Namespace: namespace_7c492a31
	Checksum: 0xB19B7B97
	Offset: 0x788
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f3907da8()
{
	level endon("hash_4cb32f3c");
	wait(8);
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_vultures_sadist_0");
	wait(4);
	namespace_36e5bc12::function_cf21d35c("salm_when_forced_against_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_this_was_more_than_i_0");
}

/*
	Name: function_6597ece3
	Namespace: namespace_7c492a31
	Checksum: 0x2E64DD6A
	Offset: 0x808
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_6597ece3()
{
	level endon("hash_4cb32f3c");
	namespace_36e5bc12::function_ef0ce9fb("plyz_i_had_a_bad_feeling_0");
}

/*
	Name: function_ed743e53
	Namespace: namespace_7c492a31
	Checksum: 0x3FD9B66B
	Offset: 0x838
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ed743e53()
{
	level endon("hash_4cb32f3c");
	wait(5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_vultures_of_sing_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_d_need_to_take_th_0");
}

/*
	Name: function_3f95727a
	Namespace: namespace_7c492a31
	Checksum: 0x87223AC8
	Offset: 0x890
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_3f95727a()
{
	level endon("hash_4cb32f3c");
	wait(5);
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_took_point_0");
}

/*
	Name: function_ae2421f2
	Namespace: namespace_7c492a31
	Checksum: 0x530A9D89
	Offset: 0x8C8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_ae2421f2()
{
	level endon("hash_4cb32f3c");
	level namespace_ad23e503::function_1ab5ebec("start_hendricks_open_alley_door_01");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_overwatch_confirmed_0");
}

/*
	Name: function_b19ce1b5
	Namespace: namespace_7c492a31
	Checksum: 0x38F81D8E
	Offset: 0x920
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b19ce1b5()
{
	level endon("hash_4cb32f3c");
	wait(14);
	namespace_36e5bc12::function_cf21d35c("salm_curious_the_vultu_0");
	wait(4);
	namespace_36e5bc12::function_ef0ce9fb("plyz_don_t_think_of_them_0");
}

/*
	Name: function_8b9a674c
	Namespace: namespace_7c492a31
	Checksum: 0x48C5258B
	Offset: 0x978
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8b9a674c()
{
	level endon("hash_4cb32f3c");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_scavengers_began_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_safehouse_was_be_0");
}

/*
	Name: function_fda1d687
	Namespace: namespace_7c492a31
	Checksum: 0x2A51D6B8
	Offset: 0x9D0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_fda1d687()
{
	level endon("hash_4cb32f3c");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_vultures_ahead_had_a_0");
}

/*
	Name: function_3c7cab4f
	Namespace: namespace_7c492a31
	Checksum: 0x7C382E6E
	Offset: 0xA08
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_3c7cab4f()
{
	level endon("hash_4cb32f3c");
	wait(12);
	namespace_36e5bc12::function_cf21d35c("salm_what_was_the_purpose_0");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_territorial_vulture_0");
}

/*
	Name: function_ca753c14
	Namespace: namespace_7c492a31
	Checksum: 0x44E2094B
	Offset: 0xA60
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ca753c14()
{
	level endon("hash_4cb32f3c");
	wait(6);
	namespace_36e5bc12::function_ef0ce9fb("plyz_a_malfunctioning_a_s_0");
}

/*
	Name: function_d79f5c1e
	Namespace: namespace_7c492a31
	Checksum: 0x1BAF9567
	Offset: 0xA98
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_d79f5c1e()
{
	level endon("hash_4cb32f3c");
	wait(3);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_vultures_beat_us_0");
}

/*
	Name: function_75eb7a4e
	Namespace: namespace_7c492a31
	Checksum: 0xEEA388C3
	Offset: 0xAD0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_75eb7a4e()
{
	level endon("hash_4cb32f3c");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_cleared_the_plaza_0");
	wait(10);
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_blast_knocked_us_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_didn_t_thi_0");
	namespace_36e5bc12::function_cf21d35c("salm_but_you_pushed_back_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_we_needed_that_dossi_0");
}

/*
	Name: function_e97f24c9
	Namespace: namespace_7c492a31
	Checksum: 0x8540BF62
	Offset: 0xB80
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_e97f24c9()
{
	level endon("hash_4cb32f3c");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_who_did_you_find_in_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("plyz_her_our_guardian_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_i_had_no_idea_what_s_0");
	wait(1);
	namespace_36e5bc12::function_ef0ce9fb("plyz_goh_xiulan_we_later_0");
	wait(1);
	namespace_36e5bc12::function_b4a3e925("dolo_do_it_kill_her_kil_0");
	wait(2);
	namespace_36e5bc12::function_ef0ce9fb("salm_did_you_kill_her_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_i_struggled_pani_0");
}

/*
	Name: function_c37caa60
	Namespace: namespace_7c492a31
	Checksum: 0x5E827294
	Offset: 0xC68
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_c37caa60()
{
	level endon("hash_4cb32f3c");
	wait(1);
	namespace_36e5bc12::function_cf21d35c("salm_and_the_file_on_deim_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_most_likely_it_was_r_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_hendricks_got_our_tr_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_but_we_needed_a_few_0");
	namespace_36e5bc12::function_ef0ce9fb("plyz_the_truth_proved_mor_0");
}


#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_siegebot_theia;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_fx;
#using scripts\cp\cp_mi_cairo_infection_patch_c;
#using scripts\cp\cp_mi_cairo_infection_sgen_test_chamber;
#using scripts\cp\cp_mi_cairo_infection_sim_reality_starts;
#using scripts\cp\cp_mi_cairo_infection_sound;
#using scripts\cp\cp_mi_cairo_infection_theia_battle;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\shared\clientfield_shared;
#using scripts\shared\util_shared;

#namespace namespace_1477b376;

/*
	Name: function_d290ebfa
	Namespace: namespace_1477b376
	Checksum: 0x2A899235
	Offset: 0x5F8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 11);
	namespace_dff03fd3::function_d290ebfa();
	namespace_5fae4ea::function_d290ebfa();
	namespace_c024ffd::function_d290ebfa();
	namespace_34269b51::function_d290ebfa();
	namespace_c7c6fa6::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_f397b667::function_7403e82b();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_1477b376
	Checksum: 0xC202D5DF
	Offset: 0x6C8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 2, "int", &function_1e832062, 0, 0);
}

/*
	Name: function_71f88fc
	Namespace: namespace_1477b376
	Checksum: 0x2289709A
	Offset: 0x720
	Size: 0x3D9
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	switch(var_7d372786)
	{
		case 1:
		{
			function_2e76fa01("veh_t7_mil_vtol_egypt_cabin_details_attch");
			function_2e76fa01("veh_t7_mil_vtol_egypt_cabin_details_attch_screenglows");
			function_2e76fa01("veh_t7_mil_vtol_egypt_screens_d1");
			break;
		}
		case 6:
		{
			function_2e76fa01("c_spc_decayman_stage1_fb");
			function_2e76fa01("c_spc_decayman_stage1_tout_fb");
			function_2e76fa01("c_spc_decayman_stage2_tin_fb");
			function_2e76fa01("c_spc_decayman_stage2_fb");
			function_2e76fa01("c_spc_decayman_stage2_tout_fb");
			function_2e76fa01("c_spc_decayman_stage3_tin_fb");
			function_2e76fa01("c_spc_decayman_stage3_fb");
			function_2e76fa01("c_spc_decayman_stage4_fb");
			break;
		}
		case 9:
		{
			function_71c4474e("cin_inf_04_humanlabdeath_3rd_sh150");
			function_2e76fa01("c_spc_decayman_stage1_fb");
			function_2e76fa01("c_spc_decayman_stage1_tout_fb");
			function_2e76fa01("c_spc_decayman_stage2_tin_fb");
			function_2e76fa01("c_spc_decayman_stage2_fb");
			function_2e76fa01("c_spc_decayman_stage2_tout_fb");
			function_2e76fa01("c_spc_decayman_stage3_tin_fb");
			function_2e76fa01("c_spc_decayman_stage3_fb");
			function_2e76fa01("c_spc_decayman_stage4_fb");
			break;
		}
		case 3:
		{
			function_2e76fa01("c_hro_sarah_base_body");
			function_2e76fa01("c_hro_sarah_base_head");
			function_71c4474e("cin_inf_04_02_sarah_vign_01");
			function_2e76fa01("c_hro_maretti_base_body");
			function_2e76fa01("c_hro_maretti_base_head");
			function_2e76fa01("c_hro_taylor_base_body");
			function_2e76fa01("c_hro_taylor_base_head");
			function_2e76fa01("c_hro_diaz_base_body");
			function_2e76fa01("c_hro_diaz_base_head");
			function_71c4474e("cin_inf_05_taylorinfected_3rd_sh010");
			function_71c4474e("cin_inf_05_taylorinfected_3rd_sh020");
			function_71c4474e("cin_inf_05_taylorinfected_3rd_sh030");
			function_71c4474e("cin_inf_05_taylorinfected_3rd_sh040");
			function_71c4474e("cin_inf_05_taylorinfected_3rd_sh050");
			function_71c4474e("cin_inf_05_taylorinfected_3rd_sh060");
			function_71c4474e("cin_inf_05_taylorinfected_3rd_sh070");
			function_71c4474e("cin_inf_05_taylorinfected_3rd_sh080");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_1e832062
	Namespace: namespace_1477b376
	Checksum: 0x6C1D0B05
	Offset: 0xB08
	Size: 0x63
	Parameters: 7
	Flags: None
*/
function function_1e832062(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 != var_ade4d29d)
	{
		function_2f183a94(var_ec74b091, var_9193c732);
	}
}


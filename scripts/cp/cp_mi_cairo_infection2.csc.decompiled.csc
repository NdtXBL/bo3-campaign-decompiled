#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_infection_church;
#using scripts\cp\cp_mi_cairo_infection_forest;
#using scripts\cp\cp_mi_cairo_infection_murders;
#using scripts\cp\cp_mi_cairo_infection_sgen_server_room;
#using scripts\cp\cp_mi_cairo_infection_tiger_tank;
#using scripts\cp\cp_mi_cairo_infection_underwater;
#using scripts\cp\cp_mi_cairo_infection_util;
#using scripts\cp\cp_mi_cairo_infection_village;
#using scripts\cp\cp_mi_cairo_infection_village_surreal;
#using scripts\cp\cp_mi_cairo_infection2_fx;
#using scripts\cp\cp_mi_cairo_infection2_patch_c;
#using scripts\cp\cp_mi_cairo_infection2_sound;
#using scripts\shared\clientfield_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_41f39a40;

/*
	Name: function_d290ebfa
	Namespace: namespace_41f39a40
	Checksum: 0xFE17ABAE
	Offset: 0x498
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 11);
	function_2ea898a8();
	namespace_b7d29644::function_d290ebfa();
	namespace_1bcb6ea8::function_d290ebfa();
	namespace_9472df26::function_d290ebfa();
	namespace_668ca2a6::function_d290ebfa();
	namespace_8cdbec1b::function_d290ebfa();
	namespace_4e2074f4::function_d290ebfa();
	namespace_47ecfa2f::function_d290ebfa();
	namespace_bcdc229e::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_fdb92391::function_7403e82b();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_41f39a40
	Checksum: 0x48A187A3
	Offset: 0x598
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "cathedral_water_state", 1, 1, "int", &function_f8b1bce5, 0, 1);
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 2, "int", &function_1e832062, 0, 0);
}

/*
	Name: function_f8b1bce5
	Namespace: namespace_41f39a40
	Checksum: 0xE29DA9D1
	Offset: 0x638
	Size: 0x103
	Parameters: 7
	Flags: None
*/
function function_f8b1bce5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_703bf65c)
	{
		function_69a58458("silo_flood_water", 0);
		function_69a58458("placeholder", 0);
	}
	else if(var_ade4d29d != var_9193c732)
	{
		if(var_9193c732 == 0)
		{
			function_69a58458("silo_flood_water", 0);
			function_69a58458("placeholder", 0);
		}
		else
		{
			function_69a58458("silo_flood_water", 1);
			function_69a58458("placeholder", 1);
		}
	}
}

/*
	Name: function_71f88fc
	Namespace: namespace_41f39a40
	Checksum: 0x16EA0EF2
	Offset: 0x748
	Size: 0x1C1
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	switch(var_7d372786)
	{
		case 12:
		{
			function_2e76fa01("c_hro_sarah_base_body");
			function_2e76fa01("c_hro_sarah_base_head");
			break;
		}
		case 5:
		{
			function_2e76fa01("c_hro_sarah_base_body");
			function_2e76fa01("c_hro_sarah_base_head");
			function_2e76fa01("c_hro_maretti_base_body");
			function_2e76fa01("c_hro_maretti_base_head");
			function_2e76fa01("c_hro_taylor_base_body");
			function_2e76fa01("c_hro_taylor_base_head");
			function_2e76fa01("c_hro_diaz_base_body");
			function_2e76fa01("c_hro_diaz_base_head");
			break;
		}
		case 2:
		{
			function_71c4474e("cin_inf_08_03_blackstation_vign_aftermath");
			break;
		}
		case 7:
		{
			function_2e76fa01("c_hro_sarah_base_body");
			function_2e76fa01("c_hro_sarah_base_head");
			break;
		}
		case 11:
		{
			function_2e76fa01("p7_inf_fountain_01");
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_11db030f
	Namespace: namespace_41f39a40
	Checksum: 0xA27A5A0
	Offset: 0x918
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_11db030f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 != var_ade4d29d && var_9193c732 >= 1 && var_9193c732 <= 6)
	{
		function_3a876950(var_ec74b091, var_9193c732, 1);
	}
}

/*
	Name: function_1e832062
	Namespace: namespace_41f39a40
	Checksum: 0x61F89FB7
	Offset: 0x9A8
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


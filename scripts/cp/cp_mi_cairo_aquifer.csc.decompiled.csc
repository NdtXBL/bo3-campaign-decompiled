#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_ambience;
#using scripts\cp\cp_mi_cairo_aquifer_fx;
#using scripts\cp\cp_mi_cairo_aquifer_patch_c;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\shared\audio_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_19487f32;

/*
	Name: function_d290ebfa
	Namespace: namespace_19487f32
	Checksum: 0x644ECED5
	Offset: 0x3D8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_82b91a51::function_57b966c8(&function_71f88fc, 11);
	function_4b0a421();
	namespace_d6728217::function_d290ebfa();
	namespace_1d1d22be::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	namespace_82b91a51::function_44333182(0);
	namespace_a24425cb::function_7403e82b();
}

/*
	Name: function_4b0a421
	Namespace: namespace_19487f32
	Checksum: 0x434FFE1C
	Offset: 0x478
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4b0a421()
{
	namespace_71e9cb84::function_50f16166("world", "water_room_exit_scenes", 1, 1, "int", &function_fb25b781, 0, 0);
}

/*
	Name: function_71f88fc
	Namespace: namespace_19487f32
	Checksum: 0x26E4596
	Offset: 0x4D0
	Size: 0x1A9
	Parameters: 1
	Flags: None
*/
function function_71f88fc(var_7d372786)
{
	switch(var_7d372786)
	{
		case 1:
		{
			break;
		}
		case 2:
		{
			function_71c4474e("cin_aqu_05_01_enter_1st_look");
			break;
		}
		case 3:
		{
			function_71c4474e("cin_aqu_02_01_floodroom_1st_dragged");
			break;
		}
		case 4:
		{
			function_71c4474e("cin_aqu_03_01_platform_1st_secureplatform_exit");
			break;
		}
		case 5:
		{
			function_2e76fa01("c_hro_taylor_base_fb");
			function_2e76fa01("c_hro_maretti_base_fb");
			function_2e76fa01("c_t7_ally_fb");
			function_2e76fa01("veh_t7_mil_vtol_nrc_land");
			function_2e76fa01("p7_aqu_door_hangar_metal_01_l");
			function_2e76fa01("p7_aqu_door_hangar_metal_01_r");
			function_1a2ef02e("cp_mi_cairo_aquifer");
			break;
		}
		case 6:
		{
			break;
		}
		case 7:
		{
			break;
		}
		case 8:
		{
			break;
		}
		case 9:
		{
			break;
		}
		case 10:
		{
			break;
		}
		case 11:
		{
			break;
		}
		case default:
		{
			break;
		}
	}
}

/*
	Name: function_93df2062
	Namespace: namespace_19487f32
	Checksum: 0x59C561BE
	Offset: 0x688
	Size: 0x7B
	Parameters: 3
	Flags: None
*/
function function_93df2062(var_5dc5e20a, var_e6fe3aa4, var_5a938650)
{
	function_ac560c9d(var_5dc5e20a.var_ec74b091, var_e6fe3aa4, 0, function_8c34c654("generic_filter_binoculars"));
	function_4249aae5(var_5dc5e20a.var_ec74b091, var_e6fe3aa4, 0, 1);
}

/*
	Name: function_8c34c654
	Namespace: namespace_19487f32
	Checksum: 0x21A259B2
	Offset: 0x710
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function function_8c34c654(var_75fb4b4f)
{
	if(!isdefined(level.var_6ee9a5c7))
	{
		level.var_6ee9a5c7 = [];
	}
	return level.var_6ee9a5c7[var_75fb4b4f];
}

/*
	Name: function_fb25b781
	Namespace: namespace_19487f32
	Checksum: 0xC0474D19
	Offset: 0x748
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_fb25b781(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_c35e6aab("cin_aqu_03_01_platform_1st_secureplatform_ambient");
	}
	else
	{
		level thread namespace_cc27597::function_43718187("cin_aqu_03_01_platform_1st_secureplatform_ambient");
	}
}


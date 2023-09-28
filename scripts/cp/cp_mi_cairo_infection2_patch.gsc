#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_afff1403;

/*
	Name: function_7403e82b
	Namespace: namespace_afff1403
	Checksum: 0xA6F62D7D
	Offset: 0x330
	Size: 0x6AB
	Parameters: 0
	Flags: None
*/
function function_7403e82b()
{
	spawncollision("collision_clip_128x128x128", "collider", (-12176, -265, 135), VectorScale((0, 1, 0), 325.199));
	spawncollision("collision_clip_512x512x512", "collider", (2320, 48, -348), (0, 0, 0));
	spawncollision("collision_clip_ramp_256x24", "collider", (2008.31, 11.9342, -589), (270, 1.2, -59.0003));
	var_2c97a817 = spawn("script_model", (-17404, 1807, -108));
	var_2c97a817 SetModel("p7_inf_foliage_tree_spruce_norway_snow_tall");
	var_2c97a817.angles = VectorScale((1, 0, 0), 270);
	var_ba9038dc = spawn("script_model", (-15545, 2657, -89));
	var_ba9038dc SetModel("p7_inf_bas_fallaway_051");
	var_ba9038dc.angles = (0, 0, 0);
	var_e092b345 = spawn("script_model", (-14444, 2422.19, -643));
	var_e092b345 SetModel("p7_inf_bas_fallaway_118");
	var_e092b345.angles = VectorScale((0, 1, 0), 60.5998);
	var_6e8b440a = spawn("script_model", (-14267.8, -2259.24, -667));
	var_6e8b440a SetModel("p7_inf_bas_fallaway_118");
	var_6e8b440a.angles = VectorScale((0, 1, 0), 133.8);
	var_948dbe73 = spawn("script_model", (-17665, 2173, -277));
	var_948dbe73 SetModel("p7_inf_rock_flat_large_01_snowtop");
	var_948dbe73.angles = (0, 0, 0);
	var_948dbe73 SetScale(4);
	var_22864f38 = spawn("script_model", (-17393.1, 2950.67, -502.937));
	var_22864f38 SetModel("p7_inf_rock_flat_large_01_snowtop");
	var_22864f38.angles = (1.3999, 103.799, 9.22922E-09);
	var_22864f38 SetScale(10);
	var_4888c9a1 = spawn("script_model", (-15171, 3397.02, -546.656));
	var_4888c9a1 SetModel("p7_inf_rock_flat_large_01_snowtop");
	var_4888c9a1.angles = (357.2, 90, 0);
	var_4888c9a1 SetScale(10);
	var_d6815a66 = spawn("script_model", (-14969.6, -2128.8, -213.334));
	var_d6815a66 SetModel("p7_inf_rock_flat_large_01_snowtop");
	var_d6815a66.angles = (357.643, 103.23, 8.60446);
	var_d6815a66 SetScale(3);
	var_fc83d4cf = spawn("script_model", (-14231.2, -3009.87, -529.239));
	var_fc83d4cf SetModel("p7_inf_rock_flat_large_01_snowtop");
	var_fc83d4cf.angles = (351.199, 31.3992, -1.31832E-08);
	var_fc83d4cf SetScale(10);
	var_e995f5a5 = spawn("script_model", (-15955, 2827, -59));
	var_e995f5a5 SetModel("p7_inf_bas_fallaway_051");
	var_e995f5a5.angles = VectorScale((0, 1, 0), 180);
	var_c3937b3c = spawn("script_model", (-12919.7, -3605.06, 179.589));
	var_c3937b3c SetModel("p7_inf_rock_boulder_large_01_grime");
	var_c3937b3c.angles = (7.60271, 121.466, 176.809);
	var_c3937b3c SetScale(10);
	spawncollision("collision_clip_64x64x256", "collider", (-47432, 3284, 712), VectorScale((0, 1, 0), 240));
}


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

#namespace namespace_e82fdc69;

/*
	Name: function_7403e82b
	Namespace: namespace_e82fdc69
	Checksum: 0xED0274C8
	Offset: 0x2E8
	Size: 0x44B
	Parameters: 0
	Flags: None
*/
function function_7403e82b()
{
	var_3d2d68be = spawn("script_model", (6509, 12522, 138));
	var_3d2d68be SetModel("p7_sin_ship_container_door_lt_red");
	var_3d2d68be.angles = (0, 0, 0);
	var_7a443ed8 = spawn("script_model", (6627, 12522, 138));
	var_7a443ed8 SetModel("p7_sin_ship_container_door_rt_red");
	var_7a443ed8.angles = (0, 0, 0);
	var_78b01796 = spawn("script_model", (4588.33, 16049, 71.0593));
	var_78b01796 SetModel("p7_sin_ship_container_side_panel_192_orange");
	var_78b01796.angles = VectorScale((1, 0, 0), 357.6);
	spawncollision("collision_clip_64x64x128", "collider", (4745, 13294, 130), VectorScale((0, 1, 0), 20.5996));
	var_d1a4a596 = spawn("script_model", (4611, 16502, -277));
	var_d1a4a596 SetModel("collision_clip_64x64x256");
	var_d1a4a596.angles = VectorScale((1, 1, 0), 270);
	var_d1a4a596 SetScale(7);
	var_d1a4a596 SetForceNoCull();
	var_aba22b2d = spawn("script_model", (4838.67, 16359, -10.9407));
	var_aba22b2d SetModel("p7_corrugated_sheet_metal_rust_03");
	var_aba22b2d.angles = VectorScale((0, 1, 0), 270);
	var_aba22b2d SetForceNoCull();
	var_859fb0c4 = spawn("script_model", (6460, 13652, -348));
	var_859fb0c4 SetModel("collision_clip_64x64x128");
	var_859fb0c4.angles = (360, 90, -180);
	var_859fb0c4 SetScale(5.8);
	var_859fb0c4 SetForceNoCull();
	var_5f9d365b = spawn("script_model", (6062.67, 13686, -16.9407));
	var_5f9d365b SetModel("p7_corrugated_sheet_metal_rust_03");
	var_5f9d365b.angles = VectorScale((0, 1, 0), 270);
	var_5f9d365b SetForceNoCull();
	var_399abbf2 = spawn("script_model", (5510.67, 15067, -16.9407));
	var_399abbf2 SetModel("p7_corrugated_sheet_metal_rust_03");
	var_399abbf2.angles = VectorScale((0, 1, 0), 270);
	var_399abbf2 SetForceNoCull();
}


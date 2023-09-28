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

#namespace namespace_397becbd;

/*
	Name: function_7403e82b
	Namespace: namespace_397becbd
	Checksum: 0x19530AB1
	Offset: 0x2B8
	Size: 0x34B
	Parameters: 0
	Flags: None
*/
function function_7403e82b()
{
	spawncollision("collision_clip_wall_128x128x10", "collider", (2071.76, -20849.9, 452), VectorScale((0, 1, 0), 317.4));
	spawncollision("collision_clip_wedge_32x128", "collider", (2045.46, -20817.7, 370.5), VectorScale((0, 1, 0), 141.999));
	spawncollision("collision_clip_wall_128x128x10", "collider", (8179.5, -15748.8, 228), VectorScale((0, 1, 0), 40.4991));
	spawncollision("collision_player_512x512x512", "collider", (5824, -17468, 564), VectorScale((0, 1, 0), 315));
	spawncollision("collision_player_512x512x512", "collider", (6648, -16276, 776), VectorScale((0, 1, 0), 315));
	spawncollision("collision_player_512x512x512", "collider", (7016, -16632, 776), VectorScale((0, 1, 0), 315));
	spawncollision("collision_player_512x512x512", "collider", (6584, -16800, 776), VectorScale((0, 1, 0), 315));
	spawncollision("collision_player_256x256x256", "collider", (1952, -19988, 572), VectorScale((0, 1, 0), 315));
	spawncollision("collision_player_wall_256x256x10", "collider", (1876, -19908, 364), VectorScale((0, 1, 0), 315));
	spawncollision("collision_player_wall_256x256x10", "collider", (1716, -20064, 364), VectorScale((0, 1, 0), 225));
	spawncollision("collision_player_wall_256x256x10", "collider", (3280, -19356, 68), VectorScale((0, 1, 0), 225));
	var_6b576c83 = spawn("script_model", (1020, -22796, 72));
	var_6b576c83 SetModel("collision_clip_wall_128x128x10");
	var_6b576c83.angles = VectorScale((0, 1, 0), 45);
	var_6b576c83 SetForceNoCull();
}


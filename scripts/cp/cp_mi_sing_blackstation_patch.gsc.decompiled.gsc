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

#namespace namespace_814e90c0;

/*
	Name: function_7403e82b
	Namespace: namespace_814e90c0
	Checksum: 0x5886DEAA
	Offset: 0x310
	Size: 0xA1B
	Parameters: 0
	Flags: None
*/
function function_7403e82b()
{
	var_f4bf0a10 = function_9b7fda5e("script_model", (-5538, 9256, 163));
	var_f4bf0a10 function_e48f905e("p7_shelf_modern_02_e");
	var_f4bf0a10.var_6ab6f4fd = VectorScale((0, 1, 0), 180);
	var_f4bf0a10 = function_9b7fda5e("script_model", (-5693, 9256, 320));
	var_f4bf0a10 function_e48f905e("p7_shelf_modern_02_e");
	var_f4bf0a10.var_6ab6f4fd = VectorScale((0, 1, 0), 180);
	var_f4bf0a10 = function_9b7fda5e("script_model", (-5760, 9256, 320));
	var_f4bf0a10 function_e48f905e("p7_shelf_modern_02_e");
	var_f4bf0a10.var_6ab6f4fd = VectorScale((0, 1, 0), 180);
	function_cbed290e("collision_clip_wall_256x256x10", "collider", (-1757, 10725, 288), VectorScale((0, 1, 0), 350));
	function_cbed290e("collision_clip_wall_256x256x10", "collider", (-1776, 10621, 288), VectorScale((0, 1, 0), 350));
	function_cbed290e("collision_clip_wall_256x256x10", "collider", (-1757, 10725, 544), VectorScale((0, 1, 0), 350));
	function_cbed290e("collision_clip_wall_256x256x10", "collider", (-1776, 10621, 544), VectorScale((0, 1, 0), 350));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (5717, 2562, 852), (0, 0, 0));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (5717, 2446, 852), (0, 0, 0));
	function_cbed290e("collision_clip_wall_256x256x10", "collider", (8607, 6518, 520), VectorScale((0, 1, 0), 135));
	function_cbed290e("collision_clip_wall_256x256x10", "collider", (8607, 6518, 264), VectorScale((0, 1, 0), 135));
	function_cbed290e("collision_clip_wall_256x256x10", "collider", (8523, 6434, 520), VectorScale((0, 1, 0), 135));
	function_cbed290e("collision_clip_wall_256x256x10", "collider", (8523, 6434, 264), VectorScale((0, 1, 0), 135));
	function_cbed290e("collision_player_wall_256x256x10", "collider", (7192, 3771, 264), VectorScale((0, 1, 0), 270));
	function_cbed290e("collision_player_wall_256x256x10", "collider", (7258, 3771, 264), VectorScale((0, 1, 0), 270));
	function_cbed290e("collision_clip_128x128x128", "collider", (8710, 4706, -26), (0, 0, 0));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-3026, 11244, 258), (0, 0, 0));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-3026, 11244, 770), (0, 0, 0));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-2796.61, 11464.8, 258), VectorScale((0, 1, 0), 263.4));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-2796.61, 11464.8, 770), VectorScale((0, 1, 0), 263.4));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-2288, 11406, 258), VectorScale((0, 1, 0), 263.4));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-2288, 11406, 770), VectorScale((0, 1, 0), 263.4));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-1779.39, 11347.2, 258), VectorScale((0, 1, 0), 263.4));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-1779.39, 11347.2, 770), VectorScale((0, 1, 0), 263.4));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-1552, 11074, 258), (0, 0, 0));
	function_cbed290e("collision_clip_wall_512x512x10", "collider", (-1552, 11074, 770), (0, 0, 0));
	function_cbed290e("collision_player_256x256x256", "collider", (-4146, 9465, -136), (0, 0, 0));
	function_cbed290e("collision_player_256x256x256", "collider", (-4070, 9465, -136), (0, 0, 0));
	var_7c6ce185 = function_9b7fda5e("script_model", (-1664.21, 2488.96, -415.985));
	var_7c6ce185 function_e48f905e("p7_sin_ship_container_384_blue");
	var_7c6ce185.var_6ab6f4fd = (275.738, 51.9803, -143.901);
	function_cbed290e("collision_player_256x256x256", "collider", (-1739.08, 2506.11, -370.376), (273.8, 358.4, 1.30979E-05));
	function_cbed290e("collision_player_256x256x256", "collider", (-1588.17, 2501.89, -380.374), (273.8, 358.4, 1.30979E-05));
	function_cbed290e("collision_player_wall_512x512x10", "collider", (-1872, 2480, -248), VectorScale((0, 1, 0), 270));
	function_cbed290e("collision_player_wall_512x512x10", "collider", (-1872, 2500, -248), VectorScale((0, 1, 0), 270));
	var_a26f5bee = function_9b7fda5e("script_model", (-4339.17, 10311.4, 163));
	var_a26f5bee function_e48f905e("p7_shelf_modern_02_e");
	var_a26f5bee.var_6ab6f4fd = VectorScale((0, 1, 0), 2.59983);
	var_c871d657 = function_9b7fda5e("script_model", (-4413.11, 10310, 163));
	var_c871d657 function_e48f905e("p7_shelf_modern_02_e");
	var_c871d657.var_6ab6f4fd = VectorScale((0, 1, 0), 356);
	var_5b36c229 = function_cbed290e("collision_clip_128x128x128", "collider", (-4348, 10350, 148), VectorScale((0, 1, 0), 180));
	var_5b36c229 function_14c24d9d();
	var_81393c92 = function_cbed290e("collision_clip_128x128x128", "collider", (-4392, 10350, 148), VectorScale((0, 1, 0), 180));
	var_81393c92 function_14c24d9d();
}


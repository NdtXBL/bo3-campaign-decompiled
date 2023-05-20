#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\postfx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_8e9083ff;

/*
	Name: function_2dc19561
	Namespace: namespace_8e9083ff
	Checksum: 0xF171115A
	Offset: 0x1978
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("zurich_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_8e9083ff
	Checksum: 0x76DA813C
	Offset: 0x19B8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_2ea898a8();
	namespace_82b91a51::function_b499f765();
	level.var_1cf7e9e8 = [];
	level.var_18402cb = [];
	function_ba0b35c();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_8e9083ff
	Checksum: 0x1BD8B27B
	Offset: 0x1A10
	Size: 0x8EB
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	var_2d20335b = function_eaa48678(5);
	var_a9ef5da3 = function_eaa48678(6);
	namespace_e216c11c::function_336b3c36("cp_zurich_hallucination", 1, 1, "cp_zurich_hallucination", "cp_zurich_hallucination");
	namespace_71e9cb84::function_50f16166("actor", "exploding_ai_deaths", 1, 1, "int", &function_b3f0d569, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "hero_spawn_fx", 1, 1, "int", &function_78bd19c4, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "hero_spawn_fx", 1, 1, "int", &function_78bd19c4, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "vehicle_spawn_fx", 1, 1, "int", &function_f026ccfa, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "set_world_fog", 1, 1, "int", &function_346468e3, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_juke_effect", 1, 1, "counter", &function_69d5dc62, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "raven_juke_limb_effect", 1, 1, "counter", &function_d559bc1d, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_teleport_effect", 1, 1, "counter", &function_cb609334, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "raven_teleport_limb_effect", 1, 1, "counter", &function_496c80db, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_teleport_in_effect", 1, 1, "counter", &function_c39ee0a8, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_weather", 1, var_2d20335b, "int", &function_6120ef33, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "vortex_teleport", 1, 1, "counter", &function_560fbdb4, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter", &function_baae4949, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz_mild", 1, 1, "counter", &function_bf8650ca, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_transition", 1, 1, "counter", &function_edf5c801, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "zurich_city_ambience", 1, 1, "int", &function_14b2ccdd, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "skin_transition_melt", 1, 1, "int", &function_28572b48, 0, 1);
	namespace_71e9cb84::function_50f16166("scriptmover", "corvus_body_fx", 1, 1, "int", &function_b5037219, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "raven_ai_rez", 1, 1, "int", &function_91c7508e, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_ai_rez", 1, 1, "int", &function_91c7508e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "zurich_server_cam", 1, 1, "int", &function_9596c4e, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 1, "int", &function_1e832062, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "corvus_tree_shader", 1, 1, "int", &function_51e77d4f, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "hero_cold_breath", 1, 1, "int", &function_33714f9b, 0, 0);
	namespace_71e9cb84::function_50f16166("world", "set_post_color_grade_bank", 1, 1, "int", &function_7b22d9c9, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_hallucinations", 1, 1, "counter", &function_6ec9825e, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "player_water_transition", 1, 1, "int", &function_70a9fa32, 0, 0);
	namespace_71e9cb84::function_50f16166("toplayer", "raven_hallucinations", 1, 1, "int", &function_8f5cd506, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "quadtank_raven_explosion", 1, 1, "int", &function_45e22343, 0, 0);
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_fade_out", 1, 1, "int", &function_629bf9a7, 0, 0);
}

/*
	Name: function_ba0b35c
	Namespace: namespace_8e9083ff
	Checksum: 0xBFBBE807
	Offset: 0x2308
	Size: 0x755
	Parameters: 0
	Flags: None
*/
function function_ba0b35c()
{
	level.var_c1aa5253["exploding_death"] = "player/fx_ai_raven_dissolve_torso";
	level.var_c1aa5253["vehicle_spawn_fx"] = "player/fx_ai_dni_rez_in_hero_clean";
	level.var_c1aa5253["raven_juke_effect"] = "player/fx_ai_raven_juke_out";
	level.var_c1aa5253["raven_juke_effect_arm_le"] = "player/fx_ai_raven_juke_out_arm_le";
	level.var_c1aa5253["raven_juke_effect_arm_ri"] = "player/fx_ai_raven_juke_out_arm_ri";
	level.var_c1aa5253["raven_juke_effect_leg_le"] = "player/fx_ai_raven_juke_out_leg_le";
	level.var_c1aa5253["raven_juke_effect_leg_ri"] = "player/fx_ai_raven_juke_out_leg_ri";
	level.var_c1aa5253["raven_teleport_effect"] = "player/fx_ai_raven_teleport";
	level.var_c1aa5253["raven_teleport_effect_arm_le"] = "player/fx_ai_raven_teleport_out_arm_le";
	level.var_c1aa5253["raven_teleport_effect_arm_ri"] = "player/fx_ai_raven_teleport_out_arm_ri";
	level.var_c1aa5253["raven_teleport_effect_leg_le"] = "player/fx_ai_raven_teleport_out_leg_le";
	level.var_c1aa5253["raven_teleport_effect_leg_ri"] = "player/fx_ai_raven_teleport_out_leg_ri";
	level.var_c1aa5253["raven_teleport_in_effect"] = "player/fx_ai_raven_teleport_in";
	level.var_c1aa5253["red_rain"] = "weather/fx_rain_system_hvy_blood_runner_loop";
	level.var_c1aa5253["light_snow"] = "weather/fx_snow_player_lt_loop";
	level.var_c1aa5253["regular_snow"] = "weather/fx_snow_player_loop";
	level.var_c1aa5253["reverse_snow"] = "weather/fx_snow_player_loop_reverse";
	level.var_c1aa5253["vortex_explode"] = "player/fx_ai_dni_rez_in_hero_clean";
	level.var_c1aa5253["corvus_fx_arm_le"] = "player/fx_ai_corvus_arm_left_loop";
	level.var_c1aa5253["corvus_fx_arm_ri"] = "player/fx_ai_corvus_arm_right_loop";
	level.var_c1aa5253["corvus_fx_head"] = "player/fx_ai_corvus_head_loop";
	level.var_c1aa5253["corvus_fx_hip_le"] = "player/fx_ai_corvus_hip_left_loop";
	level.var_c1aa5253["corvus_fx_hip_ri"] = "player/fx_ai_corvus_hip_right_loop";
	level.var_c1aa5253["corvus_fx_leg_le"] = "player/fx_ai_corvus_leg_left_loop";
	level.var_c1aa5253["corvus_fx_leg_ri"] = "player/fx_ai_corvus_leg_right_loop";
	level.var_c1aa5253["corvus_fx_torso"] = "player/fx_ai_corvus_torso_loop";
	level.var_c1aa5253["corvus_fx_waist"] = "player/fx_ai_corvus_waist_loop";
	level.var_c1aa5253["hero_cold_breath"] = "player/fx_plyr_breath_steam_3p";
	level.var_c1aa5253["raven_in_fx_arm_le"] = "player/fx_ai_dni_rez_in_arm_left_dirty";
	level.var_c1aa5253["raven_in_fx_arm_ri"] = "player/fx_ai_dni_rez_in_arm_right_dirty";
	level.var_c1aa5253["raven_in_fx_head"] = "player/fx_ai_dni_rez_in_head_dirty";
	level.var_c1aa5253["raven_in_fx_hip_le"] = "player/fx_ai_dni_rez_in_hip_left_dirty";
	level.var_c1aa5253["raven_in_fx_hip_ri"] = "player/fx_ai_dni_rez_in_hip_right_dirty";
	level.var_c1aa5253["raven_in_fx_leg_le"] = "player/fx_ai_dni_rez_in_leg_left_dirty";
	level.var_c1aa5253["raven_in_fx_leg_ri"] = "player/fx_ai_dni_rez_in_leg_right_dirty";
	level.var_c1aa5253["raven_in_fx_torso"] = "player/fx_ai_dni_rez_in_torso_dirty";
	level.var_c1aa5253["raven_in_fx_waist"] = "player/fx_ai_dni_rez_in_waist_dirty";
	level.var_c1aa5253["raven_hallucination_fx"] = "animals/fx_bio_birds_raven_player_camera";
	level.var_c1aa5253["raven_out_fx_arm_le"] = "player/fx_ai_dni_rez_out_arm_left_dirty";
	level.var_c1aa5253["raven_out_fx_arm_ri"] = "player/fx_ai_dni_rez_out_arm_right_dirty";
	level.var_c1aa5253["raven_out_fx_head"] = "player/fx_ai_dni_rez_out_head_dirty";
	level.var_c1aa5253["raven_out_fx_hip_le"] = "player/fx_ai_dni_rez_out_hip_left_dirty";
	level.var_c1aa5253["raven_out_fx_hip_ri"] = "player/fx_ai_dni_rez_out_hip_right_dirty";
	level.var_c1aa5253["raven_out_fx_leg_le"] = "player/fx_ai_dni_rez_out_leg_left_dirty";
	level.var_c1aa5253["raven_out_fx_leg_ri"] = "player/fx_ai_dni_rez_out_leg_right_dirty";
	level.var_c1aa5253["raven_out_fx_torso"] = "player/fx_ai_dni_rez_out_torso_dirty";
	level.var_c1aa5253["raven_out_fx_waist"] = "player/fx_ai_dni_rez_out_waist_dirty";
	level.var_c1aa5253["hero_in_fx_arm_le"] = "player/fx_ai_dni_rez_in_arm_left_clean";
	level.var_c1aa5253["hero_in_fx_arm_ri"] = "player/fx_ai_dni_rez_in_arm_right_clean";
	level.var_c1aa5253["hero_in_fx_head"] = "player/fx_ai_dni_rez_in_head_clean";
	level.var_c1aa5253["hero_in_fx_hip_le"] = "player/fx_ai_dni_rez_in_hip_left_clean";
	level.var_c1aa5253["hero_in_fx_hip_ri"] = "player/fx_ai_dni_rez_in_hip_right_clean";
	level.var_c1aa5253["hero_in_fx_leg_le"] = "player/fx_ai_dni_rez_in_leg_left_clean";
	level.var_c1aa5253["hero_in_fx_leg_ri"] = "player/fx_ai_dni_rez_in_leg_right_clean";
	level.var_c1aa5253["hero_in_fx_torso"] = "player/fx_ai_dni_rez_in_torso_clean";
	level.var_c1aa5253["hero_in_fx_waist"] = "player/fx_ai_dni_rez_in_waist_clean";
	level.var_c1aa5253["hero_out_fx_arm_le"] = "player/fx_ai_dni_rez_out_arm_left_clean";
	level.var_c1aa5253["hero_out_fx_arm_ri"] = "player/fx_ai_dni_rez_out_arm_right_clean";
	level.var_c1aa5253["hero_out_fx_head"] = "player/fx_ai_dni_rez_out_head_clean";
	level.var_c1aa5253["hero_out_fx_hip_le"] = "player/fx_ai_dni_rez_out_hip_left_clean";
	level.var_c1aa5253["hero_out_fx_hip_ri"] = "player/fx_ai_dni_rez_out_hip_right_clean";
	level.var_c1aa5253["hero_out_fx_leg_le"] = "player/fx_ai_dni_rez_out_leg_left_clean";
	level.var_c1aa5253["hero_out_fx_leg_ri"] = "player/fx_ai_dni_rez_out_leg_right_clean";
	level.var_c1aa5253["hero_out_fx_torso"] = "player/fx_ai_dni_rez_out_torso_clean";
	level.var_c1aa5253["hero_out_fx_waist"] = "player/fx_ai_dni_rez_out_waist_clean";
	level.var_c1aa5253["quadtank_explosion_fx"] = "explosions/fx_exp_dni_raven_reveal";
	level.var_c1aa5253["raven_fade_out_fx"] = "animals/fx_bio_raven_dni_rez_out_dirty";
}

/*
	Name: function_5bcd68f2
	Namespace: namespace_8e9083ff
	Checksum: 0x969554D4
	Offset: 0x2A68
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function function_5bcd68f2(var_b04bc952, var_74cd64bc)
{
}

/*
	Name: function_3bf27f88
	Namespace: namespace_8e9083ff
	Checksum: 0xEDDBACC4
	Offset: 0x2A88
	Size: 0x537
	Parameters: 2
	Flags: None
*/
function function_3bf27f88(var_b04bc952, var_74cd64bc)
{
	if(var_b04bc952 == "plaza_battle")
	{
		wait(1);
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_wasp_swarm_bundle");
	}
	else if(var_b04bc952 == "root_zurich_vortex")
	{
		wait(1);
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_root_wall_01_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_root_wall_02_bundle");
	}
	else if(var_b04bc952 == "root_cairo_vortex")
	{
		wait(1);
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_cairo_b_collapse_01_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_cairo_b_collapse_02_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_cairo_b_collapse_03_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_cairo_lightpole_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_sinkhole_01_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_sinkhole_02_bundle");
	}
	else if(var_b04bc952 == "clearing_hub_3")
	{
		wait(1);
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_root_door_center_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_root_door_left_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_root_door_right_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_root_door_round_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_clearing_vign_bodies01");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_clearing_vign_bodies02");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_clearing_vign_bodies04");
	}
	else if(var_b04bc952 == "root_singapore_vortex")
	{
		wait(1);
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_singapore_hanging_shortrope");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_singapore_hanging_shortrope_2");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_singapore_vign_bodies01");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_singapore_vign_bodies02");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_singapore_vign_bodies03");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_singapore_vign_pulled01");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_singapore_vign_pulled02");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_16_02_singapore_vign_pulled03");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_roots_water01_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_roots_water02_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_gp_shutter_lt_02_red_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_gp_shutter_lt_10_red_white_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_gp_shutter_rt_02_red_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_gp_shutter_rt_10_red_white_bundle");
	}
}

/*
	Name: function_4dd02a03
	Namespace: namespace_8e9083ff
	Checksum: 0x1970F0E6
	Offset: 0x2FC8
	Size: 0xF9
	Parameters: 2
	Flags: None
*/
function function_4dd02a03(var_c77d2837, var_8b453fd2)
{
	if(isdefined(var_8b453fd2))
	{
		level waittill(var_8b453fd2);
	}
	if(isdefined(var_c77d2837) && function_6e2770d8(var_c77d2837))
	{
		var_c77d2837 = namespace_84970cc4::function_5c13fae0(var_c77d2837);
		if(var_c77d2837.size)
		{
			foreach(var_4c9c8550 in var_c77d2837)
			{
				var_4c9c8550 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_b3f0d569
	Namespace: namespace_8e9083ff
	Checksum: 0x3DBD7747
	Offset: 0x30D0
	Size: 0x13B
	Parameters: 7
	Flags: None
*/
function function_b3f0d569(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		var_a2d47c3d = self function_d48f2ab3("j_spine4");
		var_6ab6f4fd = self function_cd1d99bd("j_spine4");
		var_1e5277ea = namespace_82b91a51::function_b9fd52a4(var_ec74b091, "tag_origin", var_a2d47c3d, var_6ab6f4fd);
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["exploding_death"], var_1e5277ea, "tag_origin");
		var_1e5277ea function_921a1574(var_ec74b091, "evt_ai_explode");
		WaitRealTime(6);
		var_1e5277ea function_dc8c8404();
	}
}

/*
	Name: function_78bd19c4
	Namespace: namespace_8e9083ff
	Checksum: 0x3C9AC8F5
	Offset: 0x3218
	Size: 0x493
	Parameters: 7
	Flags: None
*/
function function_78bd19c4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_arm_le"], self, "j_elbow_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_arm_le"], self, "j_shoulder_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_arm_ri"], self, "j_elbow_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_arm_ri"], self, "j_shoulder_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_head"], self, "j_head");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_hip_le"], self, "j_hip_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_hip_ri"], self, "j_hip_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_leg_le"], self, "j_knee_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_leg_ri"], self, "j_knee_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_torso"], self, "j_spine4");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_in_fx_waist"], self, "j_spinelower");
		self function_921a1574(var_ec74b091, "evt_ai_raven_spawn");
	}
	else
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_arm_le"], self, "j_elbow_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_arm_le"], self, "j_shoulder_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_arm_ri"], self, "j_elbow_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_arm_ri"], self, "j_shoulder_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_head"], self, "j_head");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_hip_le"], self, "j_hip_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_hip_ri"], self, "j_hip_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_leg_le"], self, "j_knee_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_leg_ri"], self, "j_knee_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_torso"], self, "j_spine4");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_out_fx_waist"], self, "j_spinelower");
	}
}

/*
	Name: function_f026ccfa
	Namespace: namespace_8e9083ff
	Checksum: 0xFB023139
	Offset: 0x36B8
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_f026ccfa(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["vehicle_spawn_fx"], self, "tag_origin");
	self function_921a1574(var_ec74b091, "evt_ai_raven_spawn");
}

/*
	Name: function_346468e3
	Namespace: namespace_8e9083ff
	Checksum: 0xEF036DBA
	Offset: 0x3750
	Size: 0xC3
	Parameters: 7
	Flags: None
*/
function function_346468e3(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_ca48e0c8(var_ec74b091, -1, 1, -1);
		function_c1dc0657(var_ec74b091, 2);
	}
	else
	{
		function_ca48e0c8(var_ec74b091, -1, 0, -1);
		function_c1dc0657(var_ec74b091, 1);
	}
}

/*
	Name: function_1e832062
	Namespace: namespace_8e9083ff
	Checksum: 0x575CDB17
	Offset: 0x3820
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_1e832062(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_2f183a94(var_ec74b091, 4);
	}
	else
	{
		function_2f183a94(var_ec74b091, 1);
	}
}

/*
	Name: function_7b22d9c9
	Namespace: namespace_8e9083ff
	Checksum: 0x170E32F4
	Offset: 0x38A8
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_7b22d9c9(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_4c5bfec4(var_ec74b091, 2);
	}
	else
	{
		function_4c5bfec4(var_ec74b091, 1);
	}
}

/*
	Name: function_69d5dc62
	Namespace: namespace_8e9083ff
	Checksum: 0x1133BDFC
	Offset: 0x3930
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_69d5dc62(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect"], self, "tag_origin");
	self function_921a1574(var_ec74b091, "evt_ai_juke");
}

/*
	Name: function_d559bc1d
	Namespace: namespace_8e9083ff
	Checksum: 0x123F4407
	Offset: 0x39C8
	Size: 0x1BB
	Parameters: 7
	Flags: None
*/
function function_d559bc1d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect_arm_le"], self, "j_elbow_le");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect_arm_le"], self, "j_shoulder_le");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect_arm_ri"], self, "j_elbow_ri");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect_arm_ri"], self, "j_shoulder_ri");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect_leg_le"], self, "j_knee_le");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect_leg_le"], self, "j_hip_le");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect_leg_ri"], self, "j_knee_ri");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_juke_effect_leg_ri"], self, "j_hip_ri");
}

/*
	Name: function_cb609334
	Namespace: namespace_8e9083ff
	Checksum: 0x887DE8F2
	Offset: 0x3B90
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_cb609334(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect"], self, "tag_origin");
	self function_921a1574(var_ec74b091, "evt_ai_teleoprt");
}

/*
	Name: function_496c80db
	Namespace: namespace_8e9083ff
	Checksum: 0x305E7544
	Offset: 0x3C28
	Size: 0x1BB
	Parameters: 7
	Flags: None
*/
function function_496c80db(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect_arm_le"], self, "j_elbow_le");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect_arm_le"], self, "j_shoulder_le");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect_arm_ri"], self, "j_elbow_ri");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect_arm_ri"], self, "j_shoulder_ri");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect_leg_le"], self, "j_knee_le");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect_leg_le"], self, "j_hip_le");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect_leg_ri"], self, "j_knee_ri");
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_effect_leg_ri"], self, "j_hip_ri");
}

/*
	Name: function_c39ee0a8
	Namespace: namespace_8e9083ff
	Checksum: 0x17103743
	Offset: 0x3DF0
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_c39ee0a8(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_teleport_in_effect"], self, "tag_origin");
	self function_921a1574(var_ec74b091, "evt_ai_teleport_in");
}

/*
	Name: function_560fbdb4
	Namespace: namespace_8e9083ff
	Checksum: 0xA225F7D4
	Offset: 0x3E88
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_560fbdb4(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	wait(0.1);
	var_c3a24c78 = self.var_722885f3 + VectorScale((0, 0, 1), 32) + function_bc7ce905(self.var_6ab6f4fd) * 12;
	function_fd4ba5e1(var_ec74b091, level.var_c1aa5253["vortex_explode"], var_c3a24c78);
}

/*
	Name: function_91c7508e
	Namespace: namespace_8e9083ff
	Checksum: 0x9366A702
	Offset: 0x3F48
	Size: 0x493
	Parameters: 7
	Flags: None
*/
function function_91c7508e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_arm_le"], self, "j_elbow_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_arm_le"], self, "j_shoulder_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_arm_ri"], self, "j_elbow_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_arm_ri"], self, "j_shoulder_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_head"], self, "j_head");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_hip_le"], self, "j_hip_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_hip_ri"], self, "j_hip_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_leg_le"], self, "j_knee_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_leg_ri"], self, "j_knee_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_torso"], self, "j_spine4");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_in_fx_waist"], self, "j_spinelower");
		self function_921a1574(var_ec74b091, "evt_ai_raven_spawn");
	}
	else
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_arm_le"], self, "j_elbow_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_arm_le"], self, "j_shoulder_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_arm_ri"], self, "j_elbow_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_arm_ri"], self, "j_shoulder_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_head"], self, "j_head");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_hip_le"], self, "j_hip_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_hip_ri"], self, "j_hip_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_leg_le"], self, "j_knee_le");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_leg_ri"], self, "j_knee_ri");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_torso"], self, "j_spine4");
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_out_fx_waist"], self, "j_spinelower");
	}
}

/*
	Name: function_b5037219
	Namespace: namespace_8e9083ff
	Checksum: 0xA8D5DFF9
	Offset: 0x43E8
	Size: 0x3BD
	Parameters: 7
	Flags: None
*/
function function_b5037219(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		self.var_e709b4fd = [];
		var_120b6bed = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_arm_le"], self, "j_elbow_le");
		var_380de656 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_arm_le"], self, "j_shoulder_le");
		var_5e1060bf = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_arm_ri"], self, "j_elbow_ri");
		var_53ff07e0 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_arm_ri"], self, "j_shoulder_ri");
		var_5f28bb04 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_head"], self, "j_head");
		var_7c88767e = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_hip_le"], self, "j_hip_le");
		var_5685fc15 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_hip_ri"], self, "j_hip_ri");
		var_af98a017 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_leg_le"], self, "j_knee_le");
		var_3d9130dc = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_leg_ri"], self, "j_knee_ri");
		var_a4653f43 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_torso"], self, "j_spine4");
		var_a656ad3a = function_da6acfd2(var_ec74b091, level.var_c1aa5253["corvus_fx_waist"], self, "j_spinelower");
		self.var_e709b4fd = function_84970cc4(var_120b6bed, var_380de656, var_5e1060bf, var_53ff07e0, var_5f28bb04, var_7c88767e, var_5685fc15, var_af98a017, var_3d9130dc, var_a4653f43, var_a656ad3a);
	}
	else if(isdefined(self.var_e709b4fd))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < self.var_e709b4fd.size; var_c957f6b6++)
		{
			function_28573e36(var_ec74b091, self.var_e709b4fd[var_c957f6b6], 0);
		}
		self.var_e709b4fd = undefined;
	}
}

/*
	Name: function_6120ef33
	Namespace: namespace_8e9083ff
	Checksum: 0x2D935D1F
	Offset: 0x47B0
	Size: 0x1FB
	Parameters: 7
	Flags: None
*/
function function_6120ef33(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 >= 1)
	{
		if(level.var_1cf7e9e8[var_ec74b091] === var_9193c732)
		{
			return;
		}
		level.var_1cf7e9e8[var_ec74b091] = var_9193c732;
		switch(var_9193c732)
		{
			case 1:
			{
				var_fc9f79e7 = "regular_snow";
				var_ee7dbbc9 = 0.5;
				self thread function_965fdae0(var_ec74b091, var_fc9f79e7, var_ee7dbbc9);
				break;
			}
			case 2:
			{
				var_fc9f79e7 = "red_rain";
				var_ee7dbbc9 = 0.3;
				self thread function_965fdae0(var_ec74b091, var_fc9f79e7, var_ee7dbbc9);
				break;
			}
			case 3:
			{
				var_fc9f79e7 = "reverse_snow";
				var_ee7dbbc9 = 0.03;
				self thread function_965fdae0(var_ec74b091, var_fc9f79e7, var_ee7dbbc9);
				break;
			}
			case 4:
			{
				var_fc9f79e7 = "light_snow";
				var_ee7dbbc9 = 0.03;
				self thread function_965fdae0(var_ec74b091, var_fc9f79e7, var_ee7dbbc9);
				break;
			}
			case default:
			{
				self function_a0b8d731(var_ec74b091);
				break;
			}
		}
	}
	else
	{
		self function_a0b8d731(var_ec74b091);
	}
}

/*
	Name: function_965fdae0
	Namespace: namespace_8e9083ff
	Checksum: 0xD3B9E95F
	Offset: 0x49B8
	Size: 0xA1
	Parameters: 3
	Flags: None
*/
function function_965fdae0(var_ec74b091, var_fc9f79e7, var_ee7dbbc9)
{
	if(isdefined(level.var_18402cb[var_ec74b091]))
	{
		function_28573e36(var_ec74b091, level.var_18402cb[var_ec74b091], 1);
		level.var_18402cb[var_ec74b091] = undefined;
	}
	level.var_18402cb[var_ec74b091] = function_2e9c26ef(var_ec74b091, level.var_c1aa5253[var_fc9f79e7], (0, 0, 0), (1, 0, 0), (0, 0, 1));
}

/*
	Name: function_a0b8d731
	Namespace: namespace_8e9083ff
	Checksum: 0x104E69D2
	Offset: 0x4A68
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_a0b8d731(var_ec74b091)
{
	level.var_1cf7e9e8[var_ec74b091] = undefined;
	if(isdefined(level.var_18402cb[var_ec74b091]))
	{
		function_28573e36(var_ec74b091, level.var_18402cb[var_ec74b091], 1);
		level.var_18402cb[var_ec74b091] = undefined;
	}
}

/*
	Name: function_baae4949
	Namespace: namespace_8e9083ff
	Checksum: 0x77EB88A
	Offset: 0x4AD0
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_baae4949(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	function_921a1574(var_ec74b091, "evt_dni_interrupt", (0, 0, 0));
	var_5dc5e20a namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz");
}

/*
	Name: function_edf5c801
	Namespace: namespace_8e9083ff
	Checksum: 0xA5D61993
	Offset: 0x4B80
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_edf5c801(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	var_5dc5e20a thread namespace_bdde9225::function_bca12b73("pstfx_cp_transition_sprite_zur");
}

/*
	Name: function_bf8650ca
	Namespace: namespace_8e9083ff
	Checksum: 0xB760FD57
	Offset: 0x4C08
	Size: 0xA3
	Parameters: 7
	Flags: None
*/
function function_bf8650ca(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	var_5dc5e20a = function_79c174a3(var_ec74b091);
	function_921a1574(var_ec74b091, "evt_dni_interrupt", (0, 0, 0));
	var_5dc5e20a namespace_bdde9225::function_bca12b73("pstfx_dni_interrupt_mild");
}

/*
	Name: function_14b2ccdd
	Namespace: namespace_8e9083ff
	Checksum: 0xC3C79A4E
	Offset: 0x4CB8
	Size: 0x8B
	Parameters: 7
	Flags: None
*/
function function_14b2ccdd(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_wasp_swarm_bundle");
	}
	else
	{
		level namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_zurich_wasp_swarm_bundle", 1);
	}
}

/*
	Name: function_28572b48
	Namespace: namespace_8e9083ff
	Checksum: 0x87169302
	Offset: 0x4D50
	Size: 0x11F
	Parameters: 7
	Flags: None
*/
function function_28572b48(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_94db6e7c = GetTime();
		while(isdefined(self))
		{
			var_78962fff = GetTime();
			var_348e23ad = var_78962fff - var_94db6e7c / 1000;
			if(var_348e23ad >= 4)
			{
				var_348e23ad = 4;
				var_67c8a9ed = 0;
			}
			var_daad71ff = 1 * var_348e23ad / 4;
			self function_e7f6dc4e(var_ec74b091, 0, "scriptVector0", var_daad71ff, var_daad71ff, 0);
			wait(0.01);
		}
	}
}

/*
	Name: function_51e77d4f
	Namespace: namespace_8e9083ff
	Checksum: 0x595ED69
	Offset: 0x4E78
	Size: 0x9D
	Parameters: 7
	Flags: None
*/
function function_51e77d4f(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(self.var_540c25e7) && self.var_540c25e7)
		{
			return;
		}
		self.var_540c25e7 = 1;
		self thread function_276d0d02();
	}
	else
	{
		self.var_540c25e7 = undefined;
		self notify("hash_5cd0c3cb");
	}
}

/*
	Name: function_276d0d02
	Namespace: namespace_8e9083ff
	Checksum: 0xD4B5E7AA
	Offset: 0x4F20
	Size: 0x1B9
	Parameters: 0
	Flags: None
*/
function function_276d0d02()
{
	self endon("hash_5cd0c3cb");
	var_42c8409b = 0.1;
	var_94af3e50 = 1;
	var_2271cae = 0.4;
	var_edbce13f = var_2271cae;
	while(isdefined(self))
	{
		var_fd53cf6a = function_72a94f05(2, 8);
		var_d11a001d = var_94af3e50 - var_2271cae / var_fd53cf6a / var_42c8409b;
		while(var_edbce13f < var_94af3e50 && isdefined(self))
		{
			self function_e7f6dc4e(0, 0, "scriptVector0", 1, var_edbce13f, 0, 0);
			var_edbce13f = var_edbce13f + var_d11a001d;
			wait(var_42c8409b);
		}
		var_fd53cf6a = function_72a94f05(2, 8);
		var_d11a001d = var_94af3e50 - var_2271cae / var_fd53cf6a / var_42c8409b;
		while(var_2271cae < var_edbce13f && isdefined(self))
		{
			self function_e7f6dc4e(0, 0, "scriptVector0", 1, var_edbce13f, 0, 0);
			var_edbce13f = var_edbce13f - var_d11a001d;
			wait(var_42c8409b);
		}
	}
}

/*
	Name: function_9596c4e
	Namespace: namespace_8e9083ff
	Checksum: 0xAC9BCD1F
	Offset: 0x50E8
	Size: 0xC3
	Parameters: 7
	Flags: None
*/
function function_9596c4e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		var_6df191e = namespace_14b42b8a::function_7922262b("tag_align_coalescence_return_server");
		function_c7c08dd4(var_ec74b091, "c_zur_20_01_plaza_1st_fight_it_shooting_cam", 0, "", "", var_6df191e.var_722885f3, var_6df191e.var_6ab6f4fd);
	}
	else
	{
		function_40ae388a(var_ec74b091);
	}
}

/*
	Name: function_70a9fa32
	Namespace: namespace_8e9083ff
	Checksum: 0x6F45A5D9
	Offset: 0x51B8
	Size: 0x83
	Parameters: 7
	Flags: None
*/
function function_70a9fa32(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_blood_transition");
	}
	else
	{
		self thread namespace_bdde9225::function_bca12b73("pstfx_blood_t_out");
	}
}

/*
	Name: function_33714f9b
	Namespace: namespace_8e9083ff
	Checksum: 0xCE218A76
	Offset: 0x5248
	Size: 0x6D
	Parameters: 7
	Flags: None
*/
function function_33714f9b(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		self thread function_1cb0f58c(var_ec74b091);
	}
	else
	{
		self notify("hash_5810e90d");
	}
}

/*
	Name: function_1cb0f58c
	Namespace: namespace_8e9083ff
	Checksum: 0x6A7DEAC6
	Offset: 0x52C0
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_1cb0f58c(var_ec74b091)
{
	self endon("hash_5810e90d");
	self endon("hash_d5da096");
	while(1)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["hero_cold_breath"], self, "j_head");
		wait(function_dc99997a(6, 8));
	}
}

/*
	Name: function_6ec9825e
	Namespace: namespace_8e9083ff
	Checksum: 0xEE9B3BCB
	Offset: 0x5340
	Size: 0x133
	Parameters: 7
	Flags: None
*/
function function_6ec9825e(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	if(var_9193c732 == 1)
	{
		self function_921a1574(0, "evt_dni_interrupt");
		self thread namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz_short");
		wait(0.5);
		self thread namespace_bdde9225::function_51f910fd();
		wait(0.3);
		self thread namespace_bdde9225::function_bca12b73("pstfx_raven_loop");
		wait(0.5);
		self function_921a1574(0, "evt_dni_interrupt");
		self thread namespace_bdde9225::function_51f910fd();
	}
}

/*
	Name: function_8f5cd506
	Namespace: namespace_8e9083ff
	Checksum: 0xE725E3F2
	Offset: 0x5480
	Size: 0x113
	Parameters: 7
	Flags: None
*/
function function_8f5cd506(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	if(var_9193c732)
	{
		self thread function_b5adc0ad(var_ec74b091);
		self thread namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz_short");
		wait(0.5);
		self thread namespace_bdde9225::function_51f910fd();
	}
	else
	{
		self notify("hash_5ca6609a");
		wait(1.5);
		self thread namespace_bdde9225::function_bca12b73("pstfx_dni_screen_futz_short");
		wait(0.15);
		self thread namespace_bdde9225::function_51f910fd();
	}
}

/*
	Name: function_b5adc0ad
	Namespace: namespace_8e9083ff
	Checksum: 0x4061AD7C
	Offset: 0x55A0
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_b5adc0ad(var_ec74b091)
{
	self endon("hash_d5da096");
	self endon("hash_5ca6609a");
	while(1)
	{
		function_2e9c26ef(var_ec74b091, level.var_c1aa5253["raven_hallucination_fx"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
		wait(0.05);
	}
}

/*
	Name: function_629bf9a7
	Namespace: namespace_8e9083ff
	Checksum: 0x61AFFA11
	Offset: 0x5610
	Size: 0x7B
	Parameters: 7
	Flags: None
*/
function function_629bf9a7(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	if(var_9193c732)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["raven_fade_out_fx"], self, "j_spine_2");
	}
}

/*
	Name: function_45e22343
	Namespace: namespace_8e9083ff
	Checksum: 0x3D7FA06A
	Offset: 0x5698
	Size: 0x93
	Parameters: 7
	Flags: None
*/
function function_45e22343(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732)
	{
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["quadtank_explosion_fx"], self, "tag_origin");
		self function_921a1574(0, "veh_quadtank_crowsplosion");
	}
}


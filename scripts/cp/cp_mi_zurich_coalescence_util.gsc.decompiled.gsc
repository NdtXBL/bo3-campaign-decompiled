#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_hazard;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cybercom\_cybercom_util;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\ai\archetype_locomotion_utility;
#using scripts\shared\ai\robot_phalanx;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_8e9083ff;

/*
	Name: function_2dc19561
	Namespace: namespace_8e9083ff
	Checksum: 0x4BEFDDBC
	Offset: 0x1A18
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
	Checksum: 0x9AA39399
	Offset: 0x1A58
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	level.var_aef287 = 0;
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	namespace_dabbe128::function_95670def(&function_7d27aacb);
	namespace_dabbe128::function_6aceae7c(&function_c3e494e3);
	namespace_2f06d687::function_ef554cf7("axis", &function_dc8f9fa6);
	namespace_2f06d687::function_ef554cf7("axis", &function_c412aad5);
	namespace_2f06d687::function_ef554cf7("team3", &function_dc8f9fa6);
	namespace_2f06d687::function_ef554cf7("axis", &function_b2c5d91c);
	namespace_82b91a51::function_b499f765();
	function_ff58a260();
	level.var_c1aa5253["root_heart_fire"] = "fire/fx_fire_heart_burn_zurich";
	level.var_c1aa5253["hand_vine_fire"] = "fire/fx_fire_ai_human_hand_vm";
}

/*
	Name: function_ff58a260
	Namespace: namespace_8e9083ff
	Checksum: 0x9EDEFB4B
	Offset: 0x1BD0
	Size: 0x61B
	Parameters: 0
	Flags: None
*/
function function_ff58a260()
{
	var_2d20335b = function_eaa48678(5);
	var_a9ef5da3 = function_eaa48678(6);
	namespace_e216c11c::function_9be319f9("visionset", "cp_zurich_hallucination", 1, 100, 1, 1);
	namespace_71e9cb84::function_50f16166("actor", "exploding_ai_deaths", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "hero_spawn_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "hero_spawn_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "vehicle_spawn_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "set_world_fog", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_juke_effect", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("actor", "raven_juke_limb_effect", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_teleport_effect", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("actor", "raven_teleport_limb_effect", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_teleport_in_effect", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "player_weather", 1, var_2d20335b, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "vortex_teleport", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_futz_mild", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_transition", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("world", "zurich_city_ambience", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "skin_transition_melt", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "corvus_body_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "raven_ai_rez", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_ai_rez", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "zurich_server_cam", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "set_exposure_bank", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "corvus_tree_shader", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "hero_cold_breath", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "set_post_color_grade_bank", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "postfx_hallucinations", 1, 1, "counter");
	namespace_71e9cb84::function_50f16166("toplayer", "player_water_transition", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "raven_hallucinations", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "quadtank_raven_explosion", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "raven_fade_out", 1, 1, "int");
}

/*
	Name: function_aebcf025
	Namespace: namespace_8e9083ff
	Checksum: 0x9F1CFE71
	Offset: 0x21F8
	Size: 0x4C9
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	var_aace7bde = namespace_1d795d47::function_8b19ec5d();
	/#
		self thread function_e8b99762();
	#/
	if(isdefined(var_aace7bde))
	{
		switch(var_aace7bde[0])
		{
			case "zurich":
			{
				self function_b0f0dd1f(1, "regular_snow");
				break;
			}
			case "street":
			{
				self function_b0f0dd1f(1, "regular_snow");
				self thread namespace_82b91a51::function_df6eb506(1);
				break;
			}
			case "rails":
			{
				self function_b0f0dd1f(1, "regular_snow");
				self thread namespace_82b91a51::function_df6eb506(1);
				break;
			}
			case "plaza_battle":
			{
				self function_b0f0dd1f(1, "regular_snow");
				self thread namespace_82b91a51::function_df6eb506(1);
				level thread function_df1fc23b(0);
				break;
			}
			case "hq":
			{
				level thread function_2504fb31(0);
				level thread function_df1fc23b(0);
				break;
			}
			case "sacrifice_igc":
			{
				level thread function_2504fb31(0);
				break;
			}
			case "server_room":
			{
				self thread function_3e4d643b(1);
				break;
			}
			case "clearing_start":
			{
				self function_b0f0dd1f(1, "light_snow");
				self thread namespace_82b91a51::function_df6eb506(1);
				break;
			}
			case "clearing_waterfall":
			{
				self function_b0f0dd1f(1, "light_snow");
				self thread function_39af75ef("clearing_path_selected");
				self thread namespace_82b91a51::function_df6eb506(1);
				break;
			}
			case "clearing_path_choice":
			{
				self function_11b424e5();
				self function_b0f0dd1f(1, "light_snow");
				self thread namespace_82b91a51::function_df6eb506(1);
				break;
			}
			case "clearing_end":
			{
				self function_11b424e5();
				self function_b0f0dd1f(1, "light_snow");
				self thread namespace_82b91a51::function_df6eb506(1);
				break;
			}
			case "root_cairo_start":
			{
				break;
			}
			case "root_cairo_vortex":
			{
				break;
			}
			case "root_singapore_start":
			{
				self thread function_39af75ef("singapore_root_completed");
				break;
			}
			case "root_singapore_vortex":
			{
				self thread function_39af75ef("singapore_root_completed");
				break;
			}
			case "root_zurich_start":
			{
				self function_b0f0dd1f(1, "regular_snow");
				self thread namespace_82b91a51::function_df6eb506(1);
				break;
			}
			case "root_zurich_vortex":
			{
				self thread namespace_82b91a51::function_df6eb506(1);
				break;
			}
			case "frozen_forest":
			{
				self function_b0f0dd1f(1, "red_rain");
				break;
			}
			case "server_interior":
			{
				break;
			}
			case "zurich_outro":
			{
				level thread function_2504fb31(1);
				level thread function_df1fc23b(0);
				self function_11b424e5();
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_7d27aacb
	Namespace: namespace_8e9083ff
	Checksum: 0x99EC1590
	Offset: 0x26D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_7d27aacb()
{
}

/*
	Name: function_83bed3e4
	Namespace: namespace_8e9083ff
	Checksum: 0x64BE46EE
	Offset: 0x26E0
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_83bed3e4()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_sgen_charging_station_open_01_bundle", &function_38b7a56, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_sgen_charging_station_break_01_bundle", &function_38b7a56, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_sgen_charging_station_break_02_bundle", &function_38b7a56, "init");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_sgen_charging_station_break_03_bundle", &function_38b7a56, "init");
}

/*
	Name: function_38b7a56
	Namespace: namespace_8e9083ff
	Checksum: 0x3AD8A07B
	Offset: 0x27B0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_38b7a56(var_c77d2837)
{
	namespace_84970cc4::function_eaab05dc(var_c77d2837, &function_422037f5);
}

/*
	Name: function_a7b5b565
	Namespace: namespace_8e9083ff
	Checksum: 0x7D9EF654
	Offset: 0x27E8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_a7b5b565()
{
	function_9e3608e3("zurich_umbra_gate");
}

/*
	Name: function_5f63b2f1
	Namespace: namespace_8e9083ff
	Checksum: 0x14E83202
	Offset: 0x2810
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_5f63b2f1(var_c595a2bb)
{
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_6bfe1586 thread function_78e8c8b4(var_c595a2bb);
	}
}

/*
	Name: function_78e8c8b4
	Namespace: namespace_8e9083ff
	Checksum: 0x4699FA36
	Offset: 0x28B8
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_78e8c8b4(var_c595a2bb)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self notify("hash_6ae1015d");
	if(var_c595a2bb == 1)
	{
		self endon("hash_6ae1015d");
		while(1)
		{
			if(namespace_d73b9283::function_d2c92ee7())
			{
				self namespace_82b91a51::function_c72856fc(0);
			}
			if(namespace_d73b9283::function_d2c92ee7())
			{
				self function_1b947e2a("weapon_hud_visible", 0);
			}
			self thread namespace_71e9cb84::function_688ed188("postfx_futz");
			wait(function_72a94f05(2, 8));
			if(namespace_d73b9283::function_d2c92ee7())
			{
				self namespace_82b91a51::function_c72856fc(1);
			}
			if(namespace_d73b9283::function_d2c92ee7())
			{
				self function_1b947e2a("weapon_hud_visible", 1);
			}
			self thread namespace_71e9cb84::function_688ed188("postfx_futz");
			wait(function_72a94f05(2, 8));
		}
	}
	else
	{
		self namespace_82b91a51::function_c72856fc(0);
		self function_1b947e2a("weapon_hud_visible", 0);
	}
}

/*
	Name: function_d0e3bb4
	Namespace: namespace_8e9083ff
	Checksum: 0xAEC62123
	Offset: 0x2A78
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_d0e3bb4(var_c1e63f13)
{
	if(function_27c72c1b())
	{
		return;
	}
	if(var_c1e63f13)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			var_5dc5e20a thread function_d6b3e7b5();
		}
	}
	else
	{
		level notify("hash_bdee213c");
	}
}

/*
	Name: function_d6b3e7b5
	Namespace: namespace_8e9083ff
	Checksum: 0x67D7460F
	Offset: 0x2B48
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_d6b3e7b5()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	level endon("hash_bdee213c");
	while(1)
	{
		self namespace_71e9cb84::function_688ed188("postfx_futz_mild");
		wait(2.7);
		wait(function_72a94f05(2, 3));
	}
}

/*
	Name: function_be06d646
	Namespace: namespace_8e9083ff
	Checksum: 0x16A61064
	Offset: 0x2BC8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_be06d646()
{
	var_4e3140b1 = function_99201f25("trig_falling_death", "targetname");
	namespace_84970cc4::function_966ecb29(var_4e3140b1, &function_c8049804);
}

/*
	Name: function_c8049804
	Namespace: namespace_8e9083ff
	Checksum: 0xA0CDE367
	Offset: 0x2C28
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_c8049804()
{
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aef176e7);
		if(function_65f192a6(var_aef176e7) && (!isdefined(var_aef176e7.var_e7c2cbb4) && var_aef176e7.var_e7c2cbb4))
		{
			var_aef176e7 thread function_2f645114();
		}
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_2f645114
	Namespace: namespace_8e9083ff
	Checksum: 0x6F69999B
	Offset: 0x2CC0
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function function_2f645114()
{
	self.var_e7c2cbb4 = 1;
	var_5cbd0572 = "black";
	self function_83fd42b5();
	self thread namespace_724a4794::function_d53889e2(0, 2, 0.5, 1, var_5cbd0572);
	wait(0 + 2);
	self thread function_173f6520();
	wait(0.5);
	self.var_e7c2cbb4 = 0;
	self function_4890e520();
	self function_c3945cd5(self.var_3a90f16b / 10, self.var_722885f3);
	if(self.var_3a90f16b < 1)
	{
		self.var_3a90f16b = 1;
	}
}

/*
	Name: function_173f6520
	Namespace: namespace_8e9083ff
	Checksum: 0xD693BE42
	Offset: 0x2DD8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_173f6520()
{
	var_6194780b = level.var_31aefea8;
	var_624a0b0b = namespace_4a43ba8::function_5880f755("cp_coop_respawn");
	var_24307637 = namespace_1d795d47::function_c13ce5f8(self, var_624a0b0b, var_6194780b);
	/#
		namespace_33b293fd::function_a7ee953(var_24307637.size, "Dev Block strings are not supported");
	#/
	var_1e20ee79 = function_e7bdc1a1(self.var_722885f3, var_24307637);
	self function_a30814d(var_1e20ee79.var_722885f3);
	self function_eda2be50(var_1e20ee79.var_6ab6f4fd);
}

/*
	Name: function_39af75ef
	Namespace: namespace_8e9083ff
	Checksum: 0xC33B597A
	Offset: 0x2EE0
	Size: 0x16F
	Parameters: 2
	Flags: None
*/
function function_39af75ef(var_aa686173, var_77996abe)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	level endon(var_aa686173);
	if(!isdefined(var_77996abe))
	{
		var_77996abe = "ex_underwater_lights";
	}
	while(1)
	{
		if(self function_8213df59() && (!isdefined(self.var_5ea9c8b7) && self.var_5ea9c8b7))
		{
			self namespace_71e9cb84::function_e9c3870b("player_water_transition", 1);
			self.var_5ea9c8b7 = 1;
			namespace_80983c42::function_80983c42(var_77996abe);
			self thread function_3e4d643b(1);
		}
		else if(!self function_8213df59() && (isdefined(self.var_5ea9c8b7) && self.var_5ea9c8b7))
		{
			self namespace_71e9cb84::function_e9c3870b("player_water_transition", 0);
			self.var_5ea9c8b7 = undefined;
			namespace_80983c42::function_dfc351df(var_77996abe);
			self thread function_3e4d643b(0);
		}
		wait(0.05);
	}
}

/*
	Name: function_c412aad5
	Namespace: namespace_8e9083ff
	Checksum: 0x46B983F1
	Offset: 0x3058
	Size: 0x36B
	Parameters: 0
	Flags: None
*/
function function_c412aad5()
{
	self endon("hash_128f8789");
	var_5f76c18b = 256;
	if(self function_de29b250())
	{
		if(function_27c72c1b() && self.var_caae374e === "zombie_spawner")
		{
			return;
		}
		self thread function_8f40ede();
		if(self.var_db7bb468 === "in_water")
		{
			if(namespace_d73b9283::function_d2c92ee7())
			{
				self namespace_cc27597::function_43718187("cin_zur_11_01_paths_aie_water01", self);
			}
			else
			{
				self namespace_cc27597::function_43718187("cin_zur_11_01_paths_aie_water02", self);
			}
		}
		else if(self.var_db7bb468 === "in_ground")
		{
			if(namespace_d73b9283::function_d2c92ee7())
			{
				self namespace_cc27597::function_43718187("cin_zur_12_01_root_aie_ground01", self);
			}
			else
			{
				self namespace_cc27597::function_43718187("cin_zur_12_01_root_aie_ground02", self);
			}
		}
		else if(isdefined(self.var_fe311e35) && self.var_fe311e35 == "human")
		{
			self.var_5fb3c5fe = 1;
			self function_80765127();
			self namespace_d84e54db::function_c9e45d52(1);
			namespace_82b91a51::function_958c7633(self);
			self function_8c8e79fe();
			namespace_82b91a51::function_76f13293();
			self namespace_71e9cb84::function_74d6b22f("raven_ai_rez", 1);
			wait(0.5);
			self function_8dafb866();
			self namespace_d84e54db::function_c9e45d52(0);
			namespace_82b91a51::function_4b741fdc(self);
			self function_48f26766();
			self.var_5fb3c5fe = 0;
		}
		else
		{
			self.var_b1a4293e = namespace_82b91a51::function_b9fd52a4("tag_origin", self.var_722885f3, self.var_6ab6f4fd);
			self function_37f7858a(self.var_b1a4293e);
			self thread function_c9e8f95a(self.var_b1a4293e);
			self.var_b1a4293e namespace_71e9cb84::function_74d6b22f("vehicle_spawn_fx", 1);
			wait(0.15);
		}
		self notify("hash_ab1f9ea1");
		if(self.var_8fc0e50e === "robot")
		{
			self namespace_d84e54db::function_ceb883cd("robot_lights", 3);
		}
	}
}

/*
	Name: function_b2c5d91c
	Namespace: namespace_8e9083ff
	Checksum: 0xDE5CA1C5
	Offset: 0x33D0
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_b2c5d91c()
{
	if(self.var_da2cd0a3 === "rocketlauncher")
	{
		self.var_2b04bf92 = 0.4;
	}
}

/*
	Name: function_c90e23b6
	Namespace: namespace_8e9083ff
	Checksum: 0x85A9B1D5
	Offset: 0x3400
	Size: 0x223
	Parameters: 2
	Flags: None
*/
function function_c90e23b6(var_b04bc952, var_d29f1d08)
{
	level.var_1c26230b = namespace_82b91a51::function_740f8516("taylor_hero");
	level.var_1c26230b thread function_f5f0fcce(var_b04bc952, var_d29f1d08);
	if(function_5dbf7eca(var_b04bc952, "_vortex"))
	{
		level.var_1c26230b thread function_11726ad(var_b04bc952);
		return;
	}
	var_2b8f773a = function_c30d095(var_b04bc952);
	level.var_1c26230b function_9869ab67(var_2b8f773a.var_722885f3, var_2b8f773a.var_6ab6f4fd);
	level.var_1c26230b namespace_d84e54db::function_c9e45d52(1);
	level.var_1c26230b namespace_d84e54db::function_b4f5e3b9(1);
	level.var_1c26230b function_8c8e79fe();
	wait(0.5);
	level.var_1c26230b namespace_71e9cb84::function_74d6b22f("hero_spawn_fx", 1);
	wait(0.5);
	level.var_1c26230b namespace_d84e54db::function_c9e45d52(0);
	level.var_1c26230b namespace_d84e54db::function_b4f5e3b9(0);
	level.var_1c26230b function_48f26766();
	level.var_1c26230b thread function_53fd6e96(var_b04bc952);
	level.var_1c26230b thread function_f7f909b0(var_b04bc952);
	level.var_1c26230b thread function_11726ad(var_b04bc952);
}

/*
	Name: function_53fd6e96
	Namespace: namespace_8e9083ff
	Checksum: 0xB31422E8
	Offset: 0x3630
	Size: 0x277
	Parameters: 1
	Flags: None
*/
function function_53fd6e96(var_b04bc952)
{
	level endon(var_b04bc952 + "_done");
	level endon("hash_b1f1a592");
	level endon(var_b04bc952 + "enter_vortex");
	level endon("hash_8b1e8360");
	self endon("hash_128f8789");
	while(1)
	{
		var_6bfe1586 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
		if(isdefined(var_6bfe1586))
		{
			self.var_b6fdfd82 = undefined;
			while(function_5b49d38c(var_6bfe1586))
			{
				var_974cc07 = self function_843d0ed6(var_6bfe1586);
				if(self.var_c584775c)
				{
					self.var_b6fdfd82 = undefined;
				}
				else if(isdefined(var_974cc07))
				{
					function_d224409e(var_974cc07, 1);
					self function_169cc712(var_974cc07, 1);
					var_974cc07 function_47f5a8d2(var_6bfe1586);
					self.var_b6fdfd82 = undefined;
				}
				else if(function_12edee4e(var_6bfe1586.var_722885f3, self))
				{
					self function_169cc712(var_6bfe1586, 0, 256);
					self.var_b6fdfd82 = 1;
				}
				else
				{
					var_c55dcd82 = function_eed6dab7(var_6bfe1586.var_722885f3, 256, 64);
					if(isdefined(var_c55dcd82))
					{
						self function_169cc712(var_c55dcd82, 0, 256);
					}
					else
					{
						self function_169cc712(self.var_722885f3, 0, 256);
						self.var_b6fdfd82 = undefined;
					}
				}
				wait(0.5);
			}
		}
		self function_169cc712(self.var_722885f3);
		wait(0.1);
	}
}

/*
	Name: function_f7f909b0
	Namespace: namespace_8e9083ff
	Checksum: 0xA19C3E79
	Offset: 0x38B0
	Size: 0x185
	Parameters: 1
	Flags: None
*/
function function_f7f909b0(var_b04bc952)
{
	level endon(var_b04bc952 + "_done");
	level endon(var_b04bc952 + "enter_vortex");
	while(1)
	{
		var_6bfe1586 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
		if(isdefined(var_6bfe1586) && function_7d15e2f8(var_6bfe1586.var_722885f3, self.var_722885f3) > 2500)
		{
			var_c55dcd82 = var_6bfe1586.var_722885f3 + function_bc7ce905(var_6bfe1586.var_6ab6f4fd) * 256;
			var_c540825 = function_eed6dab7(var_c55dcd82, 100, 30);
			if(isdefined(var_c540825))
			{
				self namespace_71e9cb84::function_74d6b22f("hero_spawn_fx", 0);
				wait(0.5);
				level.var_1c26230b function_9869ab67(var_c540825, var_6bfe1586.var_6ab6f4fd);
				self namespace_71e9cb84::function_74d6b22f("hero_spawn_fx", 1);
			}
		}
		wait(3);
	}
}

/*
	Name: function_f5f0fcce
	Namespace: namespace_8e9083ff
	Checksum: 0x625171E9
	Offset: 0x3A40
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_f5f0fcce(var_b04bc952, var_d29f1d08)
{
	level endon("hash_b1f1a592");
	if(function_5dbf7eca(var_b04bc952, "_start"))
	{
		level waittill(var_b04bc952 + "enter_vortex");
	}
	if(isdefined(var_d29f1d08))
	{
		var_96eed922 = namespace_14b42b8a::function_7922262b(var_d29f1d08, "targetname");
	}
	if(function_5dbf7eca(var_b04bc952, "root_cairo"))
	{
		var_8839ea8c = "root_cairo_vortex";
	}
	else if(function_5dbf7eca(var_b04bc952, "root_singapore"))
	{
		var_8839ea8c = "root_singapore_vortex";
	}
	else
	{
		var_8839ea8c = "root_zurich_vortex";
	}
	var_d476a8cc = function_c30d095(var_8839ea8c);
	var_fa33caf9 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_d476a8cc.var_722885f3, var_d476a8cc.var_6ab6f4fd);
	if(level.var_9b1393e7.size > 1 && isdefined(var_96eed922))
	{
		self function_169cc712(var_96eed922.var_722885f3, 0, 64);
		self namespace_82b91a51::function_9fcf3cd8(15, "goal");
		self namespace_71e9cb84::function_74d6b22f("hero_spawn_fx", 0);
	}
	else
	{
		wait(1);
	}
	self function_9869ab67(var_d476a8cc.var_722885f3, var_d476a8cc.var_6ab6f4fd);
	self namespace_71e9cb84::function_74d6b22f("hero_spawn_fx", 1);
	self thread function_53fd6e96(var_b04bc952);
}

/*
	Name: function_11726ad
	Namespace: namespace_8e9083ff
	Checksum: 0x7C18FF22
	Offset: 0x3CA0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_11726ad(var_b04bc952)
{
	level waittill("hash_b1f1a592");
	self namespace_82b91a51::function_c49ce021("taylor_hero");
	self namespace_82b91a51::function_20ffc8ff();
}

/*
	Name: function_c30d095
	Namespace: namespace_8e9083ff
	Checksum: 0xAE7E2FF9
	Offset: 0x3CF8
	Size: 0xE3
	Parameters: 1
	Flags: None
*/
function function_c30d095(var_b04bc952)
{
	switch(var_b04bc952)
	{
		case "root_zurich_start":
		{
			var_60ef80c1 = "root_zurich_end_taylor_start";
			break;
		}
		case "root_zurich_vortex":
		{
			var_60ef80c1 = "root_zurich_end_taylor_vortex";
			break;
		}
		case "root_cairo_start":
		{
			var_60ef80c1 = "root_cairo_end_taylor_start";
			break;
		}
		case "root_cairo_vortex":
		{
			var_60ef80c1 = "root_cairo_end_taylor_vortex";
			break;
		}
		case "root_singapore_start":
		{
			var_60ef80c1 = "root_singapore_end_taylor_start";
			break;
		}
		case "root_singapore_vortex":
		{
			var_60ef80c1 = "root_singapore_end_taylor_vortex";
			break;
		}
	}
	var_bfa0f33f = namespace_14b42b8a::function_7922262b(var_60ef80c1, "targetname");
	return var_bfa0f33f;
}

/*
	Name: function_843d0ed6
	Namespace: namespace_8e9083ff
	Checksum: 0x6A9C994C
	Offset: 0x3DE8
	Size: 0x21B
	Parameters: 1
	Flags: None
*/
function function_843d0ed6(var_6bfe1586)
{
	if(!isdefined(level.var_6b5304af))
	{
		return undefined;
	}
	foreach(var_974cc07 in level.var_6b5304af)
	{
		function_d224409e(var_974cc07, 0);
	}
	var_a8a64a67 = function_57efbe1(level.var_6b5304af, var_6bfe1586.var_722885f3, 8, 90, 512);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a8a64a67.size; var_c957f6b6++)
	{
		if(!var_a8a64a67[var_c957f6b6].var_caae374e === "ai_taylor_cover")
		{
			function_81403b2f(var_a8a64a67, var_a8a64a67[var_c957f6b6]);
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a8a64a67.size; var_c957f6b6++)
	{
		var_3aa9c6b0 = var_6bfe1586 function_501eb072();
		if(function_e7865c4b(var_3aa9c6b0, var_a8a64a67[var_c957f6b6].var_722885f3 + VectorScale((0, 0, 1), 32), 0, var_6bfe1586))
		{
			return var_a8a64a67[var_c957f6b6];
		}
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_a8a64a67.size; var_c957f6b6++)
	{
		return var_a8a64a67[var_c957f6b6];
	}
	return undefined;
}

/*
	Name: function_47f5a8d2
	Namespace: namespace_8e9083ff
	Checksum: 0x76CD65E6
	Offset: 0x4010
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_47f5a8d2(var_6bfe1586)
{
	level.var_1c26230b endon("hash_128f8789");
	var_6bfe1586 endon("hash_643a7daf");
	var_6bfe1586 endon("hash_128f8789");
	var_c3adecbb = 0;
	var_638ec873 = GetTime();
	while(function_7d15e2f8(var_6bfe1586.var_722885f3, self.var_722885f3) < 256 && function_7d15e2f8(var_6bfe1586.var_722885f3, self.var_722885f3) > 64 && function_5b49d38c(var_6bfe1586) && var_c3adecbb < 15)
	{
		wait(1);
		var_c3adecbb = GetTime() - var_638ec873 / 1000;
	}
	level.var_1c26230b function_e11ce512();
}

/*
	Name: function_d93e481f
	Namespace: namespace_8e9083ff
	Checksum: 0xF719DC62
	Offset: 0x4148
	Size: 0x15D
	Parameters: 0
	Flags: None
*/
function function_d93e481f()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	level.var_1c26230b endon("hash_128f8789");
	self.var_df6d1c12 = self.var_722885f3;
	while(1)
	{
		if(function_7d15e2f8(self.var_722885f3, self.var_df6d1c12) < 16)
		{
			var_c37d2cb3 = level.var_1c26230b function_501eb072();
			if(self namespace_82b91a51::function_d61b846f(var_c37d2cb3, 0.8, 1, self) && (!isdefined(level.var_aec67b62) && level.var_aec67b62))
			{
				level.var_aec67b62 = 1;
				if(!level.var_1c26230b namespace_cc27597::function_367f8966())
				{
					level.var_1c26230b thread namespace_cc27597::function_43718187("cin_gen_ambient_idle_nag", level.var_1c26230b);
				}
				level.var_1c26230b thread function_15d5331f();
			}
		}
		self.var_df6d1c12 = self.var_722885f3;
		wait(5);
	}
}

/*
	Name: function_15d5331f
	Namespace: namespace_8e9083ff
	Checksum: 0x279BE8BA
	Offset: 0x42B0
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_15d5331f()
{
	wait(30);
	level.var_aec67b62 = undefined;
}

/*
	Name: function_dc8f9fa6
	Namespace: namespace_8e9083ff
	Checksum: 0xA9DDE1C3
	Offset: 0x42D8
	Size: 0x1EB
	Parameters: 0
	Flags: None
*/
function function_dc8f9fa6()
{
	if(!self function_de29b250())
	{
		if(self.var_8fc0e50e === "human" && !self namespace_82b91a51::function_d3426abc())
		{
			var_72875649 = 0;
			if(isdefined(self.var_8202763a))
			{
				var_72875649 = self.var_8202763a;
			}
			self.var_d937392f = var_72875649;
		}
		if(self.var_8fc0e50e === "robot")
		{
			var_fee79dd1 = "forced_level_1";
			if(self.var_caae374e === "forced_level_2" || self.var_caae374e === "forced_level_3")
			{
				var_fee79dd1 = self.var_caae374e;
				if(self.var_caae374e === "forced_level_3")
				{
					self namespace_d84e54db::function_ceb883cd("rogue_control_speed", "run");
				}
			}
			self namespace_d84e54db::function_ceb883cd("rogue_control", var_fee79dd1);
			self.var_3e94206a = "axis";
			self namespace_82b91a51::function_e218424d();
			if(self.var_caae374e === "has_mini_raps" || self.var_db7bb468 === "has_mini_raps")
			{
				self namespace_d84e54db::function_ceb883cd("robot_mini_raps", 1);
			}
			return;
		}
		else if(function_85e4c3b3(self))
		{
			self namespace_82b91a51::function_e218424d();
			self.var_3e94206a = "axis";
		}
	}
}

/*
	Name: function_c3e494e3
	Namespace: namespace_8e9083ff
	Checksum: 0x90888F1A
	Offset: 0x44D0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_c3e494e3(var_a8563e07)
{
	if(self function_de29b250())
	{
		if(function_85e4c3b3(self))
		{
			return;
		}
		self thread function_1f77a211();
		self thread function_99af4b5d();
	}
}

/*
	Name: function_de29b250
	Namespace: namespace_8e9083ff
	Checksum: 0xD3B2691F
	Offset: 0x4548
	Size: 0x27
	Parameters: 0
	Flags: None
*/
function function_de29b250()
{
	return function_5060d1c8() && self.var_3e94206a != "allies";
}

/*
	Name: function_5060d1c8
	Namespace: namespace_8e9083ff
	Checksum: 0xA6018833
	Offset: 0x4578
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_5060d1c8()
{
	if(!isdefined(level.var_eadfc2aa))
	{
		level.var_eadfc2aa = 0;
	}
	return level.var_eadfc2aa;
}

/*
	Name: function_4d032f25
	Namespace: namespace_8e9083ff
	Checksum: 0x9059D625
	Offset: 0x45A8
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_4d032f25(var_e2e6bbcb, var_e82a00df)
{
	if(!isdefined(var_e2e6bbcb))
	{
		var_e2e6bbcb = 1;
	}
	if(!isdefined(var_e82a00df))
	{
		var_e82a00df = 0;
	}
	level.var_eadfc2aa = var_e2e6bbcb;
	level.var_56f93473 = var_e82a00df;
}

/*
	Name: function_99af4b5d
	Namespace: namespace_8e9083ff
	Checksum: 0xDAF93588
	Offset: 0x4608
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_99af4b5d()
{
	self endon("hash_b1975c04");
	self waittill("hash_d16125f3");
	if(isdefined(self))
	{
		self namespace_71e9cb84::function_74d6b22f("raven_ai_rez", 0);
	}
	function_151fb8bf();
	if(isdefined(self))
	{
		self function_8c8e79fe();
		self namespace_71e9cb84::function_74d6b22f("exploding_ai_deaths", 1);
	}
	namespace_82b91a51::function_76f13293();
	if(isdefined(self))
	{
		self function_dc8c8404();
		self notify("hash_b1975c04");
	}
}

/*
	Name: function_1f77a211
	Namespace: namespace_8e9083ff
	Checksum: 0x66E75B1
	Offset: 0x46E8
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_1f77a211()
{
	self endon("hash_b1975c04");
	self waittill("hash_c67510f3", var_5d5ef481);
	function_151fb8bf();
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 namespace_71e9cb84::function_74d6b22f("exploding_ai_deaths", 1);
	}
	namespace_82b91a51::function_76f13293();
	if(isdefined(var_5d5ef481))
	{
		var_5d5ef481 function_dc8c8404();
	}
	if(isdefined(self))
	{
		self notify("hash_b1975c04");
	}
}

/*
	Name: function_151fb8bf
	Namespace: namespace_8e9083ff
	Checksum: 0xDA68A49
	Offset: 0x47A0
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_151fb8bf()
{
	if(isdefined(level.var_56f93473))
	{
		wait(level.var_56f93473);
	}
}

/*
	Name: function_b1d28dc8
	Namespace: namespace_8e9083ff
	Checksum: 0x9C8FB76B
	Offset: 0x47C0
	Size: 0x497
	Parameters: 0
	Flags: None
*/
function function_b1d28dc8()
{
	self endon("hash_128f8789");
	self waittill("hash_ab1f9ea1");
	if(isdefined(self.var_fe311e35) && self.var_fe311e35 == "human")
	{
		while(1)
		{
			self namespace_d84e54db::function_3c155012();
			self waittill("hash_f9348fda");
			if(function_26299103(10) > 2 || (self.var_5e7a3967 === 1 && (!isdefined(self.var_de36196f) && self.var_de36196f)))
			{
				if(self function_c7a3d044())
				{
					var_dd98891d = self.var_90ca1fdd.var_fe311e35;
				}
				if(var_dd98891d === "Cover Right" || var_dd98891d === "Cover Left")
				{
					var_c9111550 = self.var_722885f3 + function_bc7ce905(self.var_6ab6f4fd) * 180;
					var_f473fe28 = self function_c550e7be(var_c9111550);
					var_e45d5caa = self.var_722885f3 + function_bc7ce905(self.var_6ab6f4fd) * -1 * 180;
					var_667b6d63 = self function_c550e7be(var_e45d5caa);
				}
				else
				{
					var_dac99ad = self.var_722885f3 + function_298b8148(self.var_6ab6f4fd) * 180;
					var_f473fe28 = self function_c550e7be(var_dac99ad);
					var_33219fd6 = self.var_722885f3 + function_298b8148(self.var_6ab6f4fd) * -1 * 180;
					var_667b6d63 = self function_c550e7be(var_33219fd6);
				}
				if(namespace_d73b9283::function_d2c92ee7())
				{
					var_d3fd0a78 = var_f473fe28;
					var_460479b3 = var_667b6d63;
				}
				else
				{
					var_d3fd0a78 = var_667b6d63;
					var_460479b3 = var_f473fe28;
				}
				if(isdefined(var_d3fd0a78))
				{
					if(isdefined(self.var_a0ad4f34))
					{
						if(self.var_a0ad4f34.var_e6e9b8de != "worldspawn" && self.var_a0ad4f34.var_e6e9b8de != "trigger_radius_hurt")
						{
							if(function_e7865c4b(self.var_a0ad4f34 function_501eb072(), var_d3fd0a78 + VectorScale((0, 0, 1), 72), 0, self.var_a0ad4f34))
							{
								self function_f5b7f741(var_d3fd0a78);
							}
						}
					}
				}
				else if(isdefined(var_460479b3))
				{
					if(isdefined(self.var_a0ad4f34))
					{
						if(self.var_a0ad4f34.var_e6e9b8de != "worldspawn" && self.var_a0ad4f34.var_e6e9b8de != "trigger_radius_hurt")
						{
							if(function_e7865c4b(self.var_a0ad4f34 function_501eb072(), var_460479b3 + VectorScale((0, 0, 1), 72), 0, self.var_a0ad4f34))
							{
								self function_f5b7f741(var_460479b3);
							}
						}
					}
				}
				else if(isdefined(var_d3fd0a78))
				{
					self function_f5b7f741(var_d3fd0a78);
				}
				else if(isdefined(var_460479b3))
				{
					self function_f5b7f741(var_460479b3);
				}
			}
			self namespace_d84e54db::function_8d86e3af();
			wait(function_dc99997a(5, 10));
		}
	}
}

/*
	Name: function_c550e7be
	Namespace: namespace_8e9083ff
	Checksum: 0xAAC5AB14
	Offset: 0x4C60
	Size: 0x147
	Parameters: 1
	Flags: None
*/
function function_c550e7be(var_f19447c4)
{
	var_f19447c4 = function_eed6dab7(var_f19447c4, 128, 32);
	if(!isdefined(var_f19447c4) || function_7d15e2f8(self.var_722885f3, var_f19447c4) < 50)
	{
		return undefined;
	}
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		if(function_7d15e2f8(var_6bfe1586.var_722885f3, var_f19447c4) < 128)
		{
			return undefined;
		}
	}
	if(!function_ba336b7(var_f19447c4) && !self function_e56c90a(var_f19447c4))
	{
		return var_f19447c4;
	}
	return undefined;
}

/*
	Name: function_f5b7f741
	Namespace: namespace_8e9083ff
	Checksum: 0x5C34B681
	Offset: 0x4DB0
	Size: 0x3CB
	Parameters: 1
	Flags: None
*/
function function_f5b7f741(var_f19447c4)
{
	self endon("hash_a30f8b");
	if(isdefined(var_f19447c4))
	{
		var_6389ab3d = function_7d15e2f8(self.var_722885f3, var_f19447c4);
		var_78962fff = var_6389ab3d / 400;
		self thread function_8f40ede();
		self namespace_71e9cb84::function_331efedc("raven_juke_limb_effect");
		self.var_5fb3c5fe = 1;
		self function_80765127();
		self namespace_d84e54db::function_c9e45d52(1);
		namespace_82b91a51::function_958c7633(self);
		self function_8c8e79fe();
		var_fb20f2e1 = self.var_6ab6f4fd;
		var_4fa09666 = function_bdcdc423(var_f19447c4 - self.var_722885f3);
		self.var_b1a4293e = namespace_82b91a51::function_b9fd52a4("tag_origin", self function_d48f2ab3("J_Spine4"), var_4fa09666);
		wait(0.05);
		self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_juke_effect");
		self function_37f7858a(self.var_b1a4293e);
		self thread function_c9e8f95a(self.var_b1a4293e);
		self.var_b1a4293e function_a96a2721(var_f19447c4 + VectorScale((0, 0, 1), 25), var_78962fff);
		self.var_b1a4293e waittill("hash_a21db68a");
		self function_52fddbd0();
		self function_9869ab67(var_f19447c4, var_fb20f2e1, 1, 0);
		self function_e65887e4(var_f19447c4, 1);
		self.var_b1a4293e function_a96a2721(self function_d48f2ab3("J_Spine4"), 0.05);
		self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_teleport_in_effect");
		wait(1.4);
		self function_9869ab67(var_f19447c4, var_fb20f2e1, 1, 0);
		self function_e65887e4(var_f19447c4, 1);
		self function_8dafb866();
		self namespace_d84e54db::function_c9e45d52(0);
		namespace_82b91a51::function_4b741fdc(self);
		self function_48f26766();
		self.var_5fb3c5fe = 0;
		self notify("hash_d424b253");
		wait(2);
		self function_e11ce512();
	}
}

/*
	Name: function_8f40ede
	Namespace: namespace_8e9083ff
	Checksum: 0xADF7F345
	Offset: 0x5188
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_8f40ede()
{
	self endon("hash_128f8789");
	self.var_de36196f = 1;
	wait(6);
	self.var_de36196f = undefined;
}

/*
	Name: function_90de3a76
	Namespace: namespace_8e9083ff
	Checksum: 0x7C87D0D0
	Offset: 0x51C8
	Size: 0x255
	Parameters: 0
	Flags: None
*/
function function_90de3a76()
{
	self endon("hash_128f8789");
	self waittill("hash_ab1f9ea1");
	wait(1);
	if(isdefined(self.var_fe311e35) && self.var_fe311e35 == "human")
	{
		if(!isdefined(self.var_48772f67) || !self.var_48772f67)
		{
			var_8fb5e5da = undefined;
			var_c26efe11 = 3;
			while(1)
			{
				self waittill("hash_3b27f8c1");
				for(var_974cc07 = self.var_90ca1fdd; !isdefined(var_974cc07);  = self.var_90ca1fdd)
				{
					wait(1.5);
				}
				var_d90879c4 = undefined;
				foreach(var_6bfe1586 in level.var_9b1393e7)
				{
					if(function_7d15e2f8(var_6bfe1586.var_722885f3, var_974cc07.var_722885f3) < 128)
					{
						var_d90879c4 = 1;
					}
				}
				if(function_7d15e2f8(self.var_722885f3, var_974cc07.var_722885f3) < 128)
				{
					var_d90879c4 = 1;
				}
				if(function_26299103(10) > 4 && var_974cc07 !== var_8fb5e5da && (!isdefined(self.var_de36196f) && self.var_de36196f) && (!isdefined(var_d90879c4) && var_d90879c4))
				{
					var_8fb5e5da = var_974cc07;
					self thread function_bfc7e6a6(var_974cc07.var_722885f3);
				}
				wait(2);
			}
		}
	}
}

/*
	Name: function_bfc7e6a6
	Namespace: namespace_8e9083ff
	Checksum: 0xB5ADD382
	Offset: 0x5428
	Size: 0x453
	Parameters: 1
	Flags: None
*/
function function_bfc7e6a6(var_c55dcd82)
{
	self endon("hash_128f8789");
	var_6389ab3d = function_7d15e2f8(self.var_722885f3, var_c55dcd82);
	var_78962fff = var_6389ab3d / 400;
	self thread function_8f40ede();
	if(var_78962fff > 0.6)
	{
		self namespace_71e9cb84::function_331efedc("raven_teleport_limb_effect");
		var_78962fff = 1;
	}
	else
	{
		self namespace_71e9cb84::function_331efedc("raven_juke_limb_effect");
		var_78962fff = 0.45;
	}
	self.var_5fb3c5fe = 1;
	self function_80765127();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	namespace_82b91a51::function_958c7633(self);
	self function_8c8e79fe();
	var_fb20f2e1 = self.var_6ab6f4fd;
	var_f8a383f8 = function_bdcdc423(var_c55dcd82 - self.var_722885f3);
	self.var_b1a4293e = namespace_82b91a51::function_b9fd52a4("tag_origin", self function_d48f2ab3("J_Spine4"), var_f8a383f8);
	wait(0.05);
	if(var_78962fff == 1)
	{
		self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_teleport_effect");
	}
	else
	{
		self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_juke_effect");
	}
	self function_37f7858a(self.var_b1a4293e);
	self thread function_c9e8f95a(self.var_b1a4293e);
	self.var_b1a4293e function_a96a2721(var_c55dcd82 + VectorScale((0, 0, 1), 25), var_78962fff);
	self.var_b1a4293e waittill("hash_a21db68a");
	self function_52fddbd0();
	self function_9869ab67(var_c55dcd82, var_fb20f2e1, 0, 0);
	self function_e65887e4(var_c55dcd82, 1);
	self.var_b1a4293e function_a96a2721(self function_d48f2ab3("J_Spine4"), 0.05);
	self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_teleport_in_effect");
	wait(1.4);
	self function_9869ab67(var_c55dcd82, var_fb20f2e1, 0, 0);
	self function_8dafb866();
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	namespace_82b91a51::function_4b741fdc(self);
	self function_48f26766();
	self.var_5fb3c5fe = 0;
	self notify("hash_d424b253");
	wait(2);
	self function_e11ce512();
}

/*
	Name: function_c9e8f95a
	Namespace: namespace_8e9083ff
	Checksum: 0x5C510278
	Offset: 0x5888
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_c9e8f95a(var_b1a4293e)
{
	self namespace_82b91a51::function_5b7e3888("death", "teleport_done", "spawned");
	if(function_5b49d38c(self))
	{
		self function_52fddbd0();
	}
	wait(3);
	if(isdefined(var_b1a4293e))
	{
		var_b1a4293e function_dc8c8404();
	}
}

/*
	Name: function_3287bea1
	Namespace: namespace_8e9083ff
	Checksum: 0xF4E9AF3C
	Offset: 0x5928
	Size: 0x4B1
	Parameters: 0
	Flags: None
*/
function function_3287bea1()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_b07228b6) && self.var_a33b36db === "raven_spawn_teleport")
	{
		var_f5cd6771 = function_b4cb3503(self.var_b07228b6, "targetname");
		if(!isdefined(var_f5cd6771))
		{
			var_f5cd6771 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
		}
		if(!isdefined(var_f5cd6771))
		{
			return;
		}
		self waittill("hash_ab1f9ea1");
		wait(0.5);
		var_6389ab3d = function_7d15e2f8(self.var_722885f3, var_f5cd6771.var_722885f3);
		var_c26efe11 = var_6389ab3d / 400;
		if(var_c26efe11 > 0.6)
		{
			self namespace_71e9cb84::function_331efedc("raven_teleport_limb_effect");
			var_c26efe11 = 1;
		}
		else
		{
			self namespace_71e9cb84::function_331efedc("raven_juke_limb_effect");
			var_c26efe11 = 0.45;
		}
		self function_8c8e79fe();
		self namespace_d84e54db::function_b4f5e3b9(1);
		self namespace_d84e54db::function_c9e45d52(1);
		namespace_82b91a51::function_958c7633(self);
		self function_80765127();
		var_fb20f2e1 = self.var_6ab6f4fd;
		var_4fa09666 = function_bdcdc423(var_f5cd6771.var_722885f3 - self.var_722885f3);
		self.var_b1a4293e = namespace_82b91a51::function_b9fd52a4("tag_origin", self function_d48f2ab3("J_Spine4"), var_4fa09666);
		namespace_82b91a51::function_76f13293();
		if(var_c26efe11 == 1)
		{
			self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_teleport_effect");
		}
		else
		{
			self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_juke_effect");
		}
		self function_37f7858a(self.var_b1a4293e);
		self thread function_c9e8f95a(self.var_b1a4293e);
		self.var_b1a4293e function_a96a2721(var_f5cd6771.var_722885f3 + VectorScale((0, 0, 1), 25), var_c26efe11);
		self.var_b1a4293e waittill("hash_a21db68a");
		self function_52fddbd0();
		self function_9869ab67(var_f5cd6771.var_722885f3, var_fb20f2e1, 1, 0);
		self function_e65887e4(var_f5cd6771.var_722885f3, 1);
		self.var_b1a4293e function_a96a2721(self function_d48f2ab3("J_Spine4"), 0.05);
		self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_teleport_in_effect");
		wait(1.4);
		self namespace_d84e54db::function_b4f5e3b9(0);
		self namespace_d84e54db::function_c9e45d52(0);
		namespace_82b91a51::function_4b741fdc(self);
		self function_8dafb866();
		self function_48f26766();
		self notify("hash_d424b253");
	}
}

/*
	Name: function_ff6b67ed
	Namespace: namespace_8e9083ff
	Checksum: 0xEE26F2BA
	Offset: 0x5DE8
	Size: 0x411
	Parameters: 1
	Flags: None
*/
function function_ff6b67ed(var_b07228b6)
{
	self endon("hash_128f8789");
	var_6389ab3d = function_7d15e2f8(self.var_722885f3, var_b07228b6.var_722885f3);
	var_c26efe11 = var_6389ab3d / 400;
	if(var_c26efe11 > 0.6)
	{
		self namespace_71e9cb84::function_331efedc("raven_teleport_limb_effect");
		var_c26efe11 = 1;
	}
	else
	{
		self namespace_71e9cb84::function_331efedc("raven_juke_limb_effect");
		var_c26efe11 = 0.45;
	}
	self function_8c8e79fe();
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	namespace_82b91a51::function_958c7633(self);
	self function_80765127();
	var_fb20f2e1 = self.var_6ab6f4fd;
	var_4fa09666 = function_bdcdc423(var_b07228b6.var_722885f3 - self.var_722885f3);
	self.var_b1a4293e = namespace_82b91a51::function_b9fd52a4("tag_origin", self function_d48f2ab3("J_Spine4"), var_4fa09666);
	wait(0.05);
	if(var_c26efe11 == 1)
	{
		self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_teleport_effect");
	}
	else
	{
		self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_juke_effect");
	}
	self function_37f7858a(self.var_b1a4293e);
	self thread function_c9e8f95a(self.var_b1a4293e);
	self.var_b1a4293e function_a96a2721(var_b07228b6.var_722885f3 + VectorScale((0, 0, 1), 25), var_c26efe11);
	self.var_b1a4293e waittill("hash_a21db68a");
	self function_52fddbd0();
	self function_9869ab67(var_b07228b6.var_722885f3, var_fb20f2e1, 1, 0);
	self function_e65887e4(var_b07228b6.var_722885f3, 1);
	self.var_b1a4293e function_a96a2721(self function_d48f2ab3("J_Spine4"), 0.05);
	self.var_b1a4293e namespace_71e9cb84::function_331efedc("raven_teleport_in_effect");
	wait(1.4);
	self namespace_d84e54db::function_b4f5e3b9(0);
	self namespace_d84e54db::function_c9e45d52(0);
	namespace_82b91a51::function_4b741fdc(self);
	self function_8dafb866();
	self function_48f26766();
	self notify("hash_d424b253");
}

/*
	Name: function_d8c91e6b
	Namespace: namespace_8e9083ff
	Checksum: 0xF1F50678
	Offset: 0x6208
	Size: 0xD5
	Parameters: 1
	Flags: None
*/
function function_d8c91e6b(var_ccd4343c)
{
	self endon("hash_128f8789");
	if(!isdefined(var_ccd4343c))
	{
		var_ccd4343c = 4000;
	}
	while(1)
	{
		if(!(isdefined(self function_6f990596(var_ccd4343c)) && self function_6f990596(var_ccd4343c)))
		{
			if(function_5b49d38c(self) && !self namespace_82b91a51::function_d3426abc())
			{
				self namespace_82b91a51::function_4b741fdc();
				self function_2992720d();
			}
		}
		wait(5);
	}
}

/*
	Name: function_674ecd85
	Namespace: namespace_8e9083ff
	Checksum: 0x32B7C024
	Offset: 0x62E8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_674ecd85()
{
	var_e3b635fb = function_b8494651("axis", "allies", "team3");
	namespace_84970cc4::function_57dd1fd4(var_e3b635fb, &function_914c331d);
}

/*
	Name: function_914c331d
	Namespace: namespace_8e9083ff
	Checksum: 0xEED857BB
	Offset: 0x6350
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_914c331d()
{
	if(function_5b49d38c(self) && !self namespace_82b91a51::function_d3426abc())
	{
		self namespace_82b91a51::function_4b741fdc();
		self function_dc8c8404();
	}
}

/*
	Name: function_48463818
	Namespace: namespace_8e9083ff
	Checksum: 0x65ABC60F
	Offset: 0x63C0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_48463818()
{
	if(function_5b49d38c(self) && !self namespace_82b91a51::function_d3426abc())
	{
		self namespace_82b91a51::function_4b741fdc();
		self function_2992720d();
	}
}

/*
	Name: function_289902e8
	Namespace: namespace_8e9083ff
	Checksum: 0x6607EBF8
	Offset: 0x6430
	Size: 0x145
	Parameters: 0
	Flags: None
*/
function function_289902e8()
{
	self endon("hash_128f8789");
	self waittill("hash_ab1f9ea1");
	self thread function_d8c91e6b(4000);
	while(1)
	{
		var_6bfe1586 = function_e7bdc1a1(self.var_722885f3, level.var_9b1393e7);
		if(isdefined(var_6bfe1586) && function_7d15e2f8(var_6bfe1586.var_722885f3, self.var_722885f3) > 2000)
		{
			var_c55dcd82 = var_6bfe1586.var_722885f3 + function_bc7ce905(var_6bfe1586.var_6ab6f4fd) * 512;
			var_c540825 = function_eed6dab7(var_c55dcd82, 100, 30);
			if(isdefined(var_c540825))
			{
				self thread function_bfc7e6a6(var_c540825);
			}
		}
		wait(5);
	}
}

/*
	Name: function_8ac3f026
	Namespace: namespace_8e9083ff
	Checksum: 0xE581593B
	Offset: 0x6580
	Size: 0x133
	Parameters: 13
	Flags: None
*/
function function_8ac3f026(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_ad8afadc, var_ae725cb8, var_f105c26b)
{
	if(function_e70ab977(var_3a212fd7))
	{
		if(self.var_3e94206a == "allies" && var_3a212fd7.var_3e94206a == "axis" || (self.var_3e94206a == "axis" && var_3a212fd7.var_3e94206a == "allies"))
		{
			var_499c19ba = function_411dc61b(5, -1);
			var_f9a179ed = function_b6b79a0(var_f9a179ed * var_499c19ba);
		}
	}
	return var_f9a179ed;
}

/*
	Name: function_6f990596
	Namespace: namespace_8e9083ff
	Checksum: 0x980CA28D
	Offset: 0x66C0
	Size: 0x12F
	Parameters: 1
	Flags: None
*/
function function_6f990596(var_ccd4343c)
{
	if(!isdefined(var_ccd4343c))
	{
		var_ccd4343c = 512;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_3aa9c6b0 = level.var_2395e945[var_c957f6b6] function_501eb072();
		if(function_e7865c4b(var_3aa9c6b0, self.var_722885f3 + VectorScale((0, 0, 1), 32), 0, level.var_2395e945[var_c957f6b6]))
		{
			return 1;
		}
		var_b08b4a3b = function_316422d1(self.var_722885f3, level.var_2395e945[var_c957f6b6] function_501eb072());
		var_36b8634f = var_ccd4343c * var_ccd4343c;
		if(var_b08b4a3b < var_36b8634f)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_2361541e
	Namespace: namespace_8e9083ff
	Checksum: 0xBB80F95E
	Offset: 0x67F8
	Size: 0x293
	Parameters: 1
	Flags: None
*/
function function_2361541e(var_95456b04)
{
	switch(var_95456b04)
	{
		case "street":
		{
			level thread function_8d10b109();
			break;
		}
		case "rails":
		{
			level thread function_c27f6351();
			break;
		}
	}
	var_cf560aad = namespace_14b42b8a::function_7faf4c39(var_95456b04 + "_oneshot_bodies", "targetname");
	if(var_cf560aad.size)
	{
		foreach(var_9ff4fb81 in var_cf560aad)
		{
			var_5db4d3e4 = function_99201f25("zurich_ambient_civ", "targetname");
			var_d10a8335 = namespace_84970cc4::function_47d18840(var_5db4d3e4);
			var_14c918e8 = namespace_2f06d687::function_7387a40a(var_d10a8335);
			var_14c918e8 namespace_d84e54db::function_c9e45d52(1);
			var_14c918e8 function_9869ab67(var_9ff4fb81.var_722885f3, var_9ff4fb81.var_6ab6f4fd);
			var_14c918e8 thread namespace_cc27597::function_c35e6aab(var_9ff4fb81.var_1157a889, var_14c918e8);
		}
	}
	var_f201bfb1 = namespace_14b42b8a::function_7faf4c39(var_95456b04 + "_dead_bodies", "targetname");
	if(!var_f201bfb1.size)
	{
		return;
	}
	level thread namespace_cc27597::function_43718187(var_95456b04 + "_dead_bodies", "targetname");
	level waittill(var_95456b04 + "_ambient_cleanup");
	level namespace_cc27597::function_fcf56ab5(var_95456b04 + "_dead_bodies", "targetname", 1);
}

/*
	Name: function_1eb6ea27
	Namespace: namespace_8e9083ff
	Checksum: 0x5C468067
	Offset: 0x6A98
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_1eb6ea27(var_4dbf3ae3, var_95456b04)
{
	var_f201bfb1 = namespace_14b42b8a::function_7faf4c39(var_95456b04 + "_dead_bodies", "targetname");
	if(!var_f201bfb1.size)
	{
		return;
	}
	namespace_4dbf3ae3::function_1ab5ebec(var_4dbf3ae3);
	level namespace_cc27597::function_fcf56ab5(var_95456b04 + "_dead_bodies", "targetname", 1);
}

/*
	Name: function_8d10b109
	Namespace: namespace_8e9083ff
	Checksum: 0x58FDA82F
	Offset: 0x6B40
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_8d10b109()
{
	level.var_71aac273 = 0;
	namespace_cc27597::function_8f9f34e0("cin_zur_vign_conversation", &function_6a0676d9, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_vign_seizure_soldier", &function_6a0676d9, "play");
	namespace_cc27597::function_8f9f34e0("cin_zur_m_floor_stomach_wounded_zsf", &function_6a0676d9, "play");
}

/*
	Name: function_6a0676d9
	Namespace: namespace_8e9083ff
	Checksum: 0x9E7AE192
	Offset: 0x6BF0
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_6a0676d9(var_c77d2837)
{
	foreach(var_4c9c8550 in var_c77d2837)
	{
		var_4c9c8550 function_8d63f8d0(1);
		var_4c9c8550.var_3a90f16b = 100000;
		var_4c9c8550 thread function_16f4964d();
		var_4c9c8550 thread namespace_82b91a51::function_f6e4f19a(16, 0, 1000);
	}
}

/*
	Name: function_16f4964d
	Namespace: namespace_8e9083ff
	Checksum: 0xE4BCB052
	Offset: 0x6CD8
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_16f4964d()
{
	self endon("hash_128f8789");
	while(isdefined(self))
	{
		self waittill("hash_f9348fda", var_74d0774f, var_677b3e78);
		if(function_65f192a6(var_677b3e78))
		{
			level.var_71aac273++;
		}
		if(level.var_71aac273 >= 4)
		{
			level.var_71aac273 = 0;
			namespace_82b91a51::function_207f8667(&"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN");
		}
		wait(1);
	}
}

/*
	Name: function_c27f6351
	Namespace: namespace_8e9083ff
	Checksum: 0xE7C4E243
	Offset: 0x6D80
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_c27f6351()
{
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_zurich_train_seats_bundle", &function_9f90bc0f, "play", "rails_ambient_cleanup");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_zurich_train_seats_bundle");
	namespace_4dbf3ae3::function_1ab5ebec("t_enter_train");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_zurich_train_seats_bundle");
}

/*
	Name: function_4e396e71
	Namespace: namespace_8e9083ff
	Checksum: 0x4B9BBB56
	Offset: 0x6E20
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_4e396e71()
{
	var_4239eb0b = function_99201f25("zurich_skipto", "targetname");
	namespace_84970cc4::function_966ecb29(var_4239eb0b, &function_ca33eb60);
}

/*
	Name: function_ca33eb60
	Namespace: namespace_8e9083ff
	Checksum: 0xA52354E6
	Offset: 0x6E80
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_ca33eb60()
{
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_aef176e7);
		if(function_65f192a6(var_aef176e7))
		{
			var_b04bc952 = self.var_ff1f6868;
			if(!isdefined(var_b04bc952))
			{
				var_b04bc952 = "zurich";
			}
			level notify(var_b04bc952 + "_done");
			namespace_1d795d47::function_be8adfb8(var_b04bc952);
		}
	}
}

/*
	Name: function_a1851f86
	Namespace: namespace_8e9083ff
	Checksum: 0xFCCBAF82
	Offset: 0x6F20
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_a1851f86(var_b04bc952)
{
	var_e061e0f4 = function_99201f25("root_end_skipto", "targetname");
	foreach(var_8fb0849a in var_e061e0f4)
	{
		if(var_8fb0849a.var_db7bb468 === var_b04bc952)
		{
			var_8fb0849a thread function_3da5d43b(var_b04bc952);
			return var_8fb0849a;
		}
	}
}

/*
	Name: function_3da5d43b
	Namespace: namespace_8e9083ff
	Checksum: 0x31EF65C6
	Offset: 0x7008
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_3da5d43b(var_b04bc952)
{
	if(!isdefined(var_b04bc952))
	{
		/#
			namespace_33b293fd::function_a7ee953(isdefined(var_b04bc952), "Dev Block strings are not supported");
		#/
	}
	var_779fea3 = function_6ada35ba(self.var_b07228b6, "targetname");
	level thread function_8bd6820f(var_b04bc952);
	self thread function_61f7fc15();
	self.var_afacae68 = 0;
	self function_17b739e2(var_779fea3);
	level notify(var_b04bc952 + "_done");
	wait(1);
	self function_dc8c8404();
	var_779fea3 function_dc8c8404();
}

/*
	Name: function_8bd6820f
	Namespace: namespace_8e9083ff
	Checksum: 0x7F5C8572
	Offset: 0x7120
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_8bd6820f(var_b04bc952)
{
	switch(var_b04bc952)
	{
		case "root_zurich_vortex":
		{
			var_9e7910c3 = "zurich_fxanim_heart";
			break;
		}
		case "root_cairo_vortex":
		{
			var_9e7910c3 = "cairo_fxanim_heart";
			break;
		}
		case "root_singapore_vortex":
		{
			var_9e7910c3 = "singapore_fxanim_heart";
			break;
		}
	}
	level thread namespace_cc27597::function_43718187(var_9e7910c3, "targetname");
	level waittill(var_b04bc952 + "_done");
	level thread namespace_cc27597::function_fcf56ab5(var_9e7910c3, "targetname");
	function_37cbcf1a("evt_heart_burn", (0, 0, 0));
}

/*
	Name: function_17b739e2
	Namespace: namespace_8e9083ff
	Checksum: 0xB61E534F
	Offset: 0x7208
	Size: 0x45
	Parameters: 1
	Flags: None
*/
function function_17b739e2(var_779fea3)
{
	self function_30a6b901(1, var_779fea3);
	self.var_afacae68 = 1;
	self notify("hash_40b1a9d9");
}

/*
	Name: function_61f7fc15
	Namespace: namespace_8e9083ff
	Checksum: 0x50A4433F
	Offset: 0x7258
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_61f7fc15()
{
	self waittill("hash_40b1a9d9");
	level namespace_82b91a51::function_ef3f75eb("stp_mus");
}

/*
	Name: function_dd842585
	Namespace: namespace_8e9083ff
	Checksum: 0xC8BC90C0
	Offset: 0x7290
	Size: 0x10F
	Parameters: 3
	Flags: None
*/
function function_dd842585(var_b04bc952, var_ed1d0e16, var_4faefc23)
{
	level endon(var_b04bc952 + "_done");
	level endon(var_ed1d0e16 + "_done");
	var_50f524fe = function_6ada35ba(var_4faefc23, "targetname");
	while(1)
	{
		var_50f524fe waittill("hash_4dbf3ae3", var_aef176e7);
		if(function_65f192a6(var_aef176e7) && (!isdefined(var_aef176e7.var_f9edd920) && var_aef176e7.var_f9edd920))
		{
			var_aef176e7 thread function_c51939f4(var_b04bc952, var_ed1d0e16);
			var_aef176e7 function_b0f0dd1f(0);
		}
		wait(0.25);
	}
}

/*
	Name: function_c51939f4
	Namespace: namespace_8e9083ff
	Checksum: 0xF4E17383
	Offset: 0x73A8
	Size: 0x1C9
	Parameters: 2
	Flags: None
*/
function function_c51939f4(var_b04bc952, var_ed1d0e16)
{
	level notify(var_b04bc952 + "enter_vortex");
	var_5cbd0572 = "black";
	self function_e2af603e("damage_heavy");
	self.var_f9edd920 = 1;
	self function_83fd42b5();
	self thread namespace_724a4794::function_d53889e2(0, 2, 0.5, 1, var_5cbd0572);
	self function_b8862210("evt_teleport", self);
	wait(0 + 2);
	var_4fdbb65a = namespace_1d795d47::function_3529c409(var_ed1d0e16, 0);
	var_3c31865b = namespace_84970cc4::function_47d18840(var_4fdbb65a);
	self function_a30814d(var_3c31865b.var_722885f3);
	self function_eda2be50(var_3c31865b.var_6ab6f4fd);
	wait(0.5);
	self.var_f9edd920 = undefined;
	self function_4890e520();
	self namespace_71e9cb84::function_688ed188("vortex_teleport");
	self notify("hash_a71a53c4");
}

/*
	Name: function_a03f30f2
	Namespace: namespace_8e9083ff
	Checksum: 0xE8F7B178
	Offset: 0x7580
	Size: 0x73
	Parameters: 3
	Flags: None
*/
function function_a03f30f2(var_b04bc952, var_ed1d0e16, var_4faefc23)
{
	namespace_4dbf3ae3::function_1ab5ebec(var_4faefc23);
	level namespace_ad23e503::function_74d6b22f(var_ed1d0e16);
	level notify(var_b04bc952 + "_done");
	level function_b0f0dd1f(0);
}

/*
	Name: function_30a6b901
	Namespace: namespace_8e9083ff
	Checksum: 0x8FCCAAED
	Offset: 0x7600
	Size: 0x239
	Parameters: 2
	Flags: None
*/
function function_30a6b901(var_929e1778, var_de2c41d4)
{
	if(isdefined(self.var_b07228b6))
	{
		var_5e4d2a14 = namespace_14b42b8a::function_7faf4c39(self.var_b07228b6, "targetname");
		if(var_5e4d2a14.size)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_5e4d2a14.size; var_c957f6b6++)
			{
				if(var_5e4d2a14[var_c957f6b6].var_caae374e === "burn_pos")
				{
					self.var_aba567c1 = var_5e4d2a14[var_c957f6b6];
				}
			}
		}
	}
	else if(var_929e1778)
	{
		var_376507c0 = &"cp_level_zurich_burn_heart";
	}
	else
	{
		var_376507c0 = &"cp_level_zurich_burn_vines";
	}
	self.var_90971f20 = namespace_82b91a51::function_14518e76(self, var_376507c0, &"CP_MI_ZURICH_COALESCENCE_BURN", &function_64158e74);
	self function_175e6b8e(1);
	level waittill("hash_914d02c2");
	self notify("hash_3600bf2b");
	var_6bfe1586 = self.var_90971f20.var_6bfe1586;
	self.var_90971f20 namespace_a230c2b1::function_e54c54c3();
	if(isdefined(var_6bfe1586))
	{
		var_6bfe1586 thread function_4a447e94();
		var_9866f6f9 = var_6bfe1586;
		if(!var_929e1778)
		{
			if(isdefined(self.var_aba567c1))
			{
				var_9866f6f9 = self.var_aba567c1;
			}
			var_9866f6f9 namespace_cc27597::function_43718187("p_zur_burn_vines_bundle", var_6bfe1586);
		}
		if(isdefined(self.var_b07228b6))
		{
			namespace_82b91a51::function_93831e79(self.var_b07228b6);
		}
	}
	level notify("hash_87560491");
}

/*
	Name: function_64158e74
	Namespace: namespace_8e9083ff
	Checksum: 0x4A8B6AF8
	Offset: 0x7848
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_64158e74(var_6bfe1586)
{
	self.var_6bfe1586 = var_6bfe1586;
	level notify("hash_914d02c2");
}

/*
	Name: function_4a447e94
	Namespace: namespace_8e9083ff
	Checksum: 0x8B8D5C28
	Offset: 0x7878
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_4a447e94()
{
	wait(1);
	self namespace_175490fb::function_f8669cbf(1);
}

/*
	Name: function_cdd5119b
	Namespace: namespace_8e9083ff
	Checksum: 0x53C37362
	Offset: 0x78A8
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_cdd5119b(var_677b3e78, var_2f950561)
{
	var_19fd2f7 = function_bdcdc423(var_677b3e78.var_722885f3 - var_2f950561);
	self namespace_5753664b::function_43718187("corvus_blood", var_2f950561, var_19fd2f7);
}

/*
	Name: function_91d852fa
	Namespace: namespace_8e9083ff
	Checksum: 0xD7386A4E
	Offset: 0x7920
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_91d852fa()
{
	var_2cfeb5a9 = function_99201f25("zurich_vinewalls", "targetname");
	namespace_84970cc4::function_966ecb29(var_2cfeb5a9, &function_ff5e6201);
}

/*
	Name: function_ff5e6201
	Namespace: namespace_8e9083ff
	Checksum: 0xB70232EB
	Offset: 0x7980
	Size: 0x1DB
	Parameters: 1
	Flags: None
*/
function function_ff5e6201(var_8d6d1339)
{
	if(isdefined(self.var_db7bb468))
	{
		var_8d6d1339 = self.var_db7bb468;
	}
	var_72af3c25 = function_99201f25(self.var_b07228b6, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_72af3c25.size; var_c957f6b6++)
	{
		if(var_72af3c25[var_c957f6b6].var_caae374e === "vinewall_clip")
		{
			var_9d50b546 = var_72af3c25[var_c957f6b6];
			continue;
		}
		if(var_72af3c25[var_c957f6b6].var_caae374e === "vinewall_vine")
		{
			var_ecf05dd0 = var_72af3c25[var_c957f6b6];
		}
	}
	if(isdefined(self.var_f8fd6930))
	{
		level namespace_ad23e503::function_1ab5ebec(self.var_f8fd6930);
	}
	else if(isdefined(var_8d6d1339))
	{
		self function_8c1f7070();
		level waittill(var_8d6d1339);
		self function_bb863f19();
	}
	self function_30a6b901(0, var_ecf05dd0);
	var_9d50b546 function_422037f5();
	var_9d50b546 function_de8377bf();
	var_ecf05dd0 function_dc8c8404();
	wait(0.1);
	var_9d50b546 function_dc8c8404();
}

/*
	Name: function_3e4d643b
	Namespace: namespace_8e9083ff
	Checksum: 0x66E5575E
	Offset: 0x7B68
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_3e4d643b(var_1d6642a7)
{
	self namespace_71e9cb84::function_e9c3870b("set_world_fog", var_1d6642a7);
}

/*
	Name: function_411dc61b
	Namespace: namespace_8e9083ff
	Checksum: 0x8C8E0A7B
	Offset: 0x7BA0
	Size: 0xAF
	Parameters: 2
	Flags: None
*/
function function_411dc61b(var_a8a66403, var_df47d27)
{
	var_aaf585dc = var_a8a66403 - var_df47d27;
	foreach(var_6bfe1586 in level.var_2395e945)
	{
		var_aaf585dc = var_aaf585dc + var_df47d27;
	}
	return var_aaf585dc;
}

/*
	Name: function_e7fdcb95
	Namespace: namespace_8e9083ff
	Checksum: 0x981D351A
	Offset: 0x7C58
	Size: 0x183
	Parameters: 7
	Flags: None
*/
function function_e7fdcb95(var_2c34daa1, var_6fc1c7c6, var_f67c8a8e, var_bf7b0d42, var_7b2612a, var_6f456ea4, var_42e6f5b4)
{
	if(!isdefined(var_bf7b0d42))
	{
		var_bf7b0d42 = 0;
	}
	if(!isdefined(var_7b2612a))
	{
		var_7b2612a = 0;
	}
	var_10729d99 = namespace_14b42b8a::function_7922262b(var_2c34daa1 + "_start");
	var_96eed922 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6);
	function_9b385ca5();
	var_a3decff = var_3bc9e3b7;
	function_e6cab0ff(var_a3decff, var_6fc1c7c6, var_10729d99.var_722885f3, var_96eed922.var_722885f3, var_f67c8a8e);
	wait(var_7b2612a);
	if(isdefined(var_6f456ea4) && level namespace_ad23e503::function_dbca4c5d(var_6f456ea4))
	{
		level namespace_ad23e503::function_1ab5ebec(var_6f456ea4);
	}
	if(var_bf7b0d42 && var_a3decff.var_2a209035 == 0)
	{
		var_a3decff thread namespace_3bc9e3b7::function_da4b4a9();
	}
}

/*
	Name: function_da579a5d
	Namespace: namespace_8e9083ff
	Checksum: 0xB645EB5B
	Offset: 0x7DE8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function function_da579a5d(var_b04bc952, var_d44e356e)
{
	level.var_3d556bcd = namespace_82b91a51::function_740f8516("kane");
	if(var_d44e356e)
	{
		level.var_3d556bcd thread function_fe5160df(1);
	}
	namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
}

/*
	Name: function_d0103e8d
	Namespace: namespace_8e9083ff
	Checksum: 0xBA58440E
	Offset: 0x7E70
	Size: 0x3AF
	Parameters: 2
	Flags: None
*/
function function_d0103e8d(var_95fca89b, var_62320a5b)
{
	if(!isdefined(var_95fca89b))
	{
		var_95fca89b = 395;
	}
	if(!isdefined(var_62320a5b))
	{
		var_62320a5b = 0.7;
	}
	self notify("hash_2f673cce");
	self endon("hash_2f673cce");
	while(1)
	{
		var_5ddef2e5 = function_41f575c3(level.var_9b1393e7);
		namespace_84970cc4::function_8332f7f6(var_5ddef2e5);
		var_56dd1913 = function_b8494651("axis", "team3");
		var_56dd1913 = function_f926d8e8(var_56dd1913, self.var_722885f3, 0);
		foreach(var_5dc5e20a in var_5ddef2e5)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < var_56dd1913.size; var_c957f6b6++)
			{
				var_10b4a7a6 = var_56dd1913[var_c957f6b6] function_501eb072();
				var_b8f6e26f = var_5dc5e20a namespace_82b91a51::function_d61b846f(var_10b4a7a6, var_62320a5b, 1, var_5dc5e20a);
				var_26bbb37a = function_cb3d1c9b(self.var_722885f3, var_56dd1913[var_c957f6b6].var_722885f3) >= var_95fca89b * var_95fca89b;
				var_7792c65f = function_e7865c4b(self function_501eb072(), var_10b4a7a6, 0, var_56dd1913[var_c957f6b6]);
				var_39e0fee4 = function_5b49d38c(var_56dd1913[var_c957f6b6]) && var_56dd1913[var_c957f6b6].var_bab9655e !== 0 && var_56dd1913[var_c957f6b6].var_958c7633 !== 1 && var_56dd1913[var_c957f6b6].var_255b9315 == 0;
				if(var_b8f6e26f && var_7792c65f && var_39e0fee4 && var_26bbb37a && var_56dd1913[var_c957f6b6] function_50c2e8b0())
				{
					self thread function_fc91db35(var_56dd1913[var_c957f6b6]);
					break;
				}
			}
		}
		var_ec24660 = function_411dc61b(5, 2);
		var_39dd968a = function_411dc61b(10, 2);
		wait(function_dc99997a(var_ec24660, var_39dd968a));
	}
}

/*
	Name: function_50c2e8b0
	Namespace: namespace_8e9083ff
	Checksum: 0xFFB6FCEB
	Offset: 0x8228
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function function_50c2e8b0()
{
	if(isdefined(self.var_fd67e920))
	{
		return 0;
	}
	return 1;
}

/*
	Name: function_121ba443
	Namespace: namespace_8e9083ff
	Checksum: 0xF7682E18
	Offset: 0x8248
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_121ba443()
{
	self notify("hash_2f673cce");
	self notify("hash_65af34bc");
	self namespace_d84e54db::function_7a868ba5();
}

/*
	Name: function_fc91db35
	Namespace: namespace_8e9083ff
	Checksum: 0xA84CC5B2
	Offset: 0x8288
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_fc91db35(var_2eecd77a)
{
	self notify("hash_65af34bc");
	self endon("hash_65af34bc");
	self namespace_d84e54db::function_7a868ba5();
	var_803d80bc = "kill_within_time";
	var_c6107c9b = "j_head";
	var_9b192fc6 = var_2eecd77a.var_fd67e920;
	if(isdefined(var_9b192fc6))
	{
		switch(var_9b192fc6)
		{
			case "quadtank":
			{
				var_803d80bc = "shoot_until_target_dead";
				var_c6107c9b = undefined;
				break;
			}
			case default:
			{
				var_803d80bc = "normal";
				var_c6107c9b = undefined;
				break;
			}
		}
	}
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_d104c596(var_803d80bc, var_2eecd77a, var_c6107c9b, 5);
	self namespace_d84e54db::function_c9e45d52(0);
}

/*
	Name: function_deebcec2
	Namespace: namespace_8e9083ff
	Checksum: 0xF9153651
	Offset: 0x83C8
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_deebcec2(var_51d0e2ea)
{
	self endon("hash_65af34bc");
	if(function_5b49d38c(var_51d0e2ea) && isdefined(var_51d0e2ea.var_fd67e920))
	{
		switch(var_51d0e2ea.var_fd67e920)
		{
			case "quadtank":
			{
				self waittill("hash_fce4088e");
				if(var_51d0e2ea function_51590606())
				{
				}
				else
				{
				}
				break;
			}
			case default:
			{
				break;
			}
		}
	}
}

/*
	Name: function_c000269f
	Namespace: namespace_8e9083ff
	Checksum: 0xDCAD62C0
	Offset: 0x8490
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_c000269f(var_51d0e2ea)
{
	self endon("hash_65af34bc");
	var_51d0e2ea waittill("hash_128f8789", var_677b3e78);
	if(self === var_677b3e78)
	{
		if(isdefined(var_51d0e2ea.var_fd67e920))
		{
			switch(var_51d0e2ea.var_fd67e920)
			{
				case "siegebot":
				{
					return;
				}
				case default:
				{
				}
			}
		}
		self function_738e77ab();
	}
}

/*
	Name: function_738e77ab
	Namespace: namespace_8e9083ff
	Checksum: 0x332593F0
	Offset: 0x8530
	Size: 0x41
	Parameters: 0
	Flags: None
*/
function function_738e77ab()
{
	switch(function_26299103(2))
	{
		case 0:
		{
			break;
		}
		case 1:
		{
			break;
		}
	}
}

/*
	Name: function_2a6e38e
	Namespace: namespace_8e9083ff
	Checksum: 0x9E6AEE99
	Offset: 0x8580
	Size: 0x2E5
	Parameters: 0
	Flags: None
*/
function function_2a6e38e()
{
	self notify("hash_e2457c05");
	self endon("hash_e2457c05");
	self endon("hash_128f8789");
	while(1)
	{
		while(self function_df2053ca() || self function_f8645b6(128, self function_501eb072(), 0.65))
		{
			wait(2);
		}
		var_8dc746d1 = undefined;
		var_1f5a4954 = function_316422d1(self.var_ae11119e, self function_501eb072());
		var_564617aa = function_57efbe1(level.var_9b1393e7, self.var_722885f3, 1);
		foreach(var_6bfe1586 in var_564617aa)
		{
			var_8dc746d1 = function_316422d1(self.var_722885f3, var_6bfe1586.var_722885f3);
		}
		var_10dc781e = self.var_7dfaf62 * self.var_7dfaf62;
		var_1535123f = !self function_6f990596(256) && !self function_f8645b6(128, self.var_ae11119e + VectorScale((0, 0, 1), 72), 0.65);
		var_63f4e3a5 = isdefined(var_8dc746d1) && var_8dc746d1 > 360 * 360 && var_1f5a4954 > var_10dc781e;
		var_92315b88 = !self function_df2053ca() && var_1f5a4954 > var_10dc781e;
		if(var_1535123f && (var_63f4e3a5 || var_92315b88))
		{
			/#
				function_d52b076d("Dev Block strings are not supported");
			#/
			self function_9869ab67(self.var_ae11119e);
		}
		wait(2);
	}
}

/*
	Name: function_f8645b6
	Namespace: namespace_8e9083ff
	Checksum: 0x7D1EB471
	Offset: 0x8870
	Size: 0x14F
	Parameters: 3
	Flags: None
*/
function function_f8645b6(var_ccd4343c, var_c55dcd82, var_82a044f1)
{
	if(!isdefined(var_82a044f1))
	{
		var_82a044f1 = 0.7;
	}
	if(!isdefined(var_ccd4343c))
	{
		var_ccd4343c = 320;
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
	{
		var_3aa9c6b0 = level.var_2395e945[var_c957f6b6] function_501eb072();
		if(level.var_2395e945[var_c957f6b6] namespace_82b91a51::function_d61b846f(var_c55dcd82, var_82a044f1, 1, level.var_2395e945[var_c957f6b6]))
		{
			return 1;
		}
		var_b08b4a3b = function_316422d1(var_c55dcd82, level.var_2395e945[var_c957f6b6] function_501eb072());
		var_36b8634f = var_ccd4343c * var_ccd4343c;
		if(var_b08b4a3b < var_36b8634f)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_4fb68dd5
	Namespace: namespace_8e9083ff
	Checksum: 0xCC907CD9
	Offset: 0x89C8
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_4fb68dd5()
{
	self notify("hash_e2457c05");
}

/*
	Name: function_51590606
	Namespace: namespace_8e9083ff
	Checksum: 0x8818F814
	Offset: 0x89E8
	Size: 0x2D
	Parameters: 0
	Flags: None
*/
function function_51590606()
{
	if(!self namespace_72ee5da4::function_e5257a7f("trophy_down"))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_d404d588
	Namespace: namespace_8e9083ff
	Checksum: 0xE47FB789
	Offset: 0x8A20
	Size: 0x103
	Parameters: 3
	Flags: None
*/
function function_d404d588(var_1c864fc1, var_2ad5d7ab, var_bd62ea22)
{
	if(!isdefined(var_1c864fc1))
	{
		var_1c864fc1 = 1;
	}
	self endon("hash_128f8789");
	var_10729d99 = self;
	if(isdefined(var_2ad5d7ab))
	{
		var_10729d99 = namespace_14b42b8a::function_7922262b(var_2ad5d7ab);
	}
	do
	{
		var_74adb9b4 = namespace_14b42b8a::function_7922262b(var_10729d99.var_b07228b6);
		self function_2153e0ef(var_10729d99, var_74adb9b4, var_1c864fc1, var_bd62ea22);
		var_10729d99 = var_74adb9b4;
	}
	while(!isdefined(var_10729d99.var_b07228b6));
	self function_c0b6566f(var_74adb9b4.var_6ab6f4fd, 0.05);
}

/*
	Name: function_2153e0ef
	Namespace: namespace_8e9083ff
	Checksum: 0x50B2296B
	Offset: 0x8B30
	Size: 0x109
	Parameters: 4
	Flags: None
*/
function function_2153e0ef(var_10729d99, var_74adb9b4, var_1c864fc1, var_bd62ea22)
{
	if(!isdefined(var_10729d99))
	{
		var_10729d99 = self;
	}
	if(!isdefined(var_bd62ea22))
	{
		var_bd62ea22 = 1;
	}
	var_387f863 = function_7d15e2f8(var_74adb9b4.var_722885f3, var_10729d99.var_722885f3) / 72 / var_1c864fc1;
	self function_a96a2721(var_74adb9b4.var_722885f3, var_387f863);
	if(var_bd62ea22)
	{
		var_d9f4bdfd = var_74adb9b4.var_722885f3 - var_10729d99.var_722885f3;
		self.var_6ab6f4fd = function_bdcdc423(var_d9f4bdfd);
	}
	wait(var_387f863);
}

/*
	Name: function_f9afa212
	Namespace: namespace_8e9083ff
	Checksum: 0x790C3759
	Offset: 0x8C48
	Size: 0xFF
	Parameters: 3
	Flags: None
*/
function function_f9afa212(var_5e953b6, var_64f5eece, var_d646fb81)
{
	if(!isdefined(var_64f5eece))
	{
		var_64f5eece = "targetname";
	}
	var_33b370d9 = function_d35375b8(var_5e953b6, var_64f5eece);
	foreach(var_907b6d46 in var_33b370d9)
	{
		var_d697d6e2[var_4bc288a0] = namespace_2f06d687::function_7387a40a(var_907b6d46, &function_12141c31);
	}
	return var_d697d6e2;
}

/*
	Name: function_12141c31
	Namespace: namespace_8e9083ff
	Checksum: 0x65C66F12
	Offset: 0x8D50
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_12141c31()
{
	self namespace_96fa87af::function_3762fc40();
	self function_80765127();
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_175490fb::function_58c312f2();
}

/*
	Name: function_3adbd846
	Namespace: namespace_8e9083ff
	Checksum: 0xE7874482
	Offset: 0x8DC0
	Size: 0x12B
	Parameters: 3
	Flags: None
*/
function function_3adbd846(var_64f5eece, var_5e953b6, var_34b81fdb)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	if(!isdefined(var_34b81fdb))
	{
		var_34b81fdb = 0;
	}
	var_af96fbd4 = function_6ada35ba(var_64f5eece, var_5e953b6);
	if(isdefined(var_af96fbd4))
	{
		var_af96fbd4 endon("hash_128f8789");
		while(1)
		{
			var_af96fbd4 waittill("hash_4dbf3ae3", var_df09ae6a);
			var_ccf2685a = isdefined(var_df09ae6a.var_5e36fd2e) && function_65f192a6(var_df09ae6a.var_5e36fd2e);
			if(function_65f192a6(var_df09ae6a) || var_ccf2685a)
			{
				break;
			}
		}
		if(var_34b81fdb)
		{
			var_af96fbd4 function_dc8c8404();
		}
	}
}

/*
	Name: function_1b3dfa61
	Namespace: namespace_8e9083ff
	Checksum: 0xD432B35
	Offset: 0x8EF8
	Size: 0x11B
	Parameters: 7
	Flags: None
*/
function function_1b3dfa61(var_cbb15570, var_7b81749, var_5cd5b4a0, var_5b1ebb35, var_2d6836f8, var_88090aa5, var_b04bc952)
{
	if(!isdefined(var_7b81749))
	{
		var_7b81749 = "trigger_radius";
	}
	if(!isdefined(var_5cd5b4a0))
	{
		var_5cd5b4a0 = 128;
	}
	if(!isdefined(var_5b1ebb35))
	{
		var_5b1ebb35 = 128;
	}
	if(!isdefined(var_88090aa5))
	{
		var_88090aa5 = 1;
	}
	var_af96fbd4 = function_6ada35ba(var_cbb15570, "targename");
	if(var_88090aa5)
	{
		var_af96fbd4 = function_3789d4db(var_cbb15570, var_7b81749, var_5cd5b4a0, var_5b1ebb35, var_2d6836f8, var_b04bc952);
	}
	var_af96fbd4 waittill("hash_4dbf3ae3");
	if(isdefined(var_af96fbd4))
	{
		var_af96fbd4 function_dc8c8404();
	}
}

/*
	Name: function_3789d4db
	Namespace: namespace_8e9083ff
	Checksum: 0x59453607
	Offset: 0x9020
	Size: 0x1BF
	Parameters: 6
	Flags: None
*/
function function_3789d4db(var_cbb15570, var_7b81749, var_5cd5b4a0, var_5b1ebb35, var_2d6836f8, var_b04bc952)
{
	if(!isdefined(var_7b81749))
	{
		var_7b81749 = "trigger_radius";
	}
	if(!isdefined(var_5b1ebb35))
	{
		var_5b1ebb35 = 128;
	}
	if(!isdefined(var_2d6836f8))
	{
		var_2d6836f8 = 0;
	}
	var_3c31865b = namespace_14b42b8a::function_7922262b(var_cbb15570);
	if(!isdefined(var_3c31865b))
	{
		var_3c31865b = function_6ada35ba(var_cbb15570, "targetname");
	}
	if(!isdefined(var_5cd5b4a0))
	{
		var_5cd5b4a0 = 128;
		if(isdefined(var_3c31865b.var_f8456b37))
		{
			var_5cd5b4a0 = var_3c31865b.var_f8456b37;
		}
	}
	var_af96fbd4 = function_9b7fda5e(var_7b81749, var_3c31865b.var_722885f3, 0, var_5cd5b4a0, var_5b1ebb35, var_2d6836f8);
	var_af96fbd4.var_6ab6f4fd = var_3c31865b.var_6ab6f4fd;
	var_af96fbd4.var_170527fb = var_3c31865b.var_170527fb;
	var_af96fbd4.var_b07228b6 = var_3c31865b.var_b07228b6;
	var_af96fbd4.var_caae374e = var_3c31865b.var_caae374e;
	var_af96fbd4.var_ff1f6868 = var_b04bc952;
	return var_af96fbd4;
}

/*
	Name: function_5bb4d484
	Namespace: namespace_8e9083ff
	Checksum: 0xF79DE60D
	Offset: 0x91E8
	Size: 0xF1
	Parameters: 4
	Flags: None
*/
function function_5bb4d484(var_64f5eece, var_5e953b6, var_3e671a1, var_a3e7056a)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	if(!isdefined(var_a3e7056a))
	{
		var_a3e7056a = 0.05;
	}
	var_1c779b09 = self;
	if(var_1c779b09 == level)
	{
		var_1c779b09 = function_6ada35ba(var_64f5eece, var_5e953b6);
	}
	var_e3b635fb = [];
	for(var_c957f6b6 = 0; var_c957f6b6 < var_3e671a1; var_c957f6b6++)
	{
		var_e3b635fb[var_c957f6b6] = namespace_2f06d687::function_7387a40a(var_1c779b09);
		wait(var_a3e7056a);
	}
	return var_e3b635fb;
}

/*
	Name: function_b0dd51f4
	Namespace: namespace_8e9083ff
	Checksum: 0xFA5310E2
	Offset: 0x92E8
	Size: 0x145
	Parameters: 3
	Flags: None
*/
function function_b0dd51f4(var_28c25ffb, var_5e953b6, var_a3e7056a)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	if(!isdefined(var_a3e7056a))
	{
		var_a3e7056a = 0.05;
	}
	var_fe3db664 = function_d35375b8(var_28c25ffb, var_5e953b6);
	if(var_fe3db664.size == 0)
	{
		var_fe3db664 = function_6643d7e6(var_28c25ffb, var_5e953b6);
	}
	var_c77d2837 = [];
	foreach(var_f2d5d544 in var_fe3db664)
	{
		var_c77d2837[var_4bc288a0] = namespace_2f06d687::function_7387a40a(var_f2d5d544);
		wait(var_a3e7056a);
	}
	return var_c77d2837;
}

/*
	Name: function_33ec653f
	Namespace: namespace_8e9083ff
	Checksum: 0xD6C25295
	Offset: 0x9438
	Size: 0x331
	Parameters: 9
	Flags: None
*/
function function_33ec653f(var_64f5eece, var_5e953b6, var_a3e7056a, var_c4d121b7, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8, var_43a8c551)
{
	if(!isdefined(var_5e953b6))
	{
		var_5e953b6 = "targetname";
	}
	if(!isdefined(var_a3e7056a))
	{
		var_a3e7056a = 0.05;
	}
	var_3979e78 = namespace_14b42b8a::function_7922262b(var_64f5eece, var_5e953b6);
	var_3979e78 endon("hash_fcf56ab5");
	var_3979e78.var_e3b635fb = [];
	var_3979e78.var_2f08d7ce = 0;
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3979e78.var_b07228b6), "Dev Block strings are not supported" + var_3979e78.var_722885f3 + "Dev Block strings are not supported" + var_3979e78.var_170527fb + "Dev Block strings are not supported");
	#/
	var_3979e78.var_431a4b23 = function_fe0cfd2e(var_3979e78.var_b07228b6, "targetname");
	if(var_3979e78.var_431a4b23.size == 0)
	{
		var_3979e78.var_431a4b23 = function_8f8fb3b0(var_3979e78.var_b07228b6, "targetname");
	}
	if(var_3979e78.var_431a4b23.size == 0)
	{
		var_3979e78.var_431a4b23 = namespace_14b42b8a::function_7faf4c39(var_3979e78.var_b07228b6);
	}
	var_3979e78.var_431a4b23 = namespace_84970cc4::function_8332f7f6(var_3979e78.var_431a4b23);
	foreach(var_90eafbd0 in var_3979e78.var_431a4b23)
	{
		if(isdefined(var_90eafbd0.var_8202763a) && var_90eafbd0.var_8202763a > level.var_2395e945.size)
		{
			continue;
		}
		var_3979e78.var_e3b635fb[var_c957f6b6] = var_3979e78 function_a569867c(var_90eafbd0, var_c4d121b7, var_c957f6b6, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8, var_43a8c551);
		if(var_c957f6b6 === var_3979e78.var_8202763a)
		{
			break;
		}
		wait(var_a3e7056a);
	}
	return var_3979e78.var_e3b635fb;
}

/*
	Name: function_a569867c
	Namespace: namespace_8e9083ff
	Checksum: 0xF792ECBB
	Offset: 0x9778
	Size: 0x36F
	Parameters: 8
	Flags: None
*/
function function_a569867c(var_90eafbd0, var_c4d121b7, var_c957f6b6, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8, var_43a8c551)
{
	if(!isdefined(var_90eafbd0))
	{
		var_90eafbd0 = self;
	}
	if(!isdefined(var_c957f6b6))
	{
		var_c957f6b6 = 0;
	}
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_90eafbd0.var_caae374e), "Dev Block strings are not supported" + var_90eafbd0.var_722885f3 + "Dev Block strings are not supported" + self.var_170527fb + "Dev Block strings are not supported");
	#/
	var_2a999a2c = function_6ada35ba(var_90eafbd0.var_caae374e, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_2a999a2c), "Dev Block strings are not supported" + var_90eafbd0.var_caae374e);
	#/
	self.var_e3b635fb[var_c957f6b6] = namespace_2f06d687::function_7387a40a(var_2a999a2c);
	if(!function_5b49d38c(self.var_e3b635fb[var_c957f6b6]))
	{
		return;
	}
	if(!isdefined(self.var_2f08d7ce))
	{
		self.var_2f08d7ce = 0;
	}
	self.var_2f08d7ce++;
	if(function_8d0347b8(self.var_e3b635fb[var_c957f6b6]))
	{
		self.var_e3b635fb[var_c957f6b6] function_9869ab67(var_90eafbd0.var_722885f3, var_90eafbd0.var_6ab6f4fd);
	}
	self.var_e3b635fb[var_c957f6b6].var_cdb0be8 = var_90eafbd0;
	self.var_e3b635fb[var_c957f6b6].var_db7bb468 = var_90eafbd0.var_db7bb468;
	self.var_e3b635fb[var_c957f6b6].var_a33b36db = var_90eafbd0.var_a33b36db;
	if(isdefined(self.var_e3b635fb[var_c957f6b6].var_cdb0be8.var_f8456b37))
	{
		self.var_e3b635fb[var_c957f6b6].var_7dfaf62 = self.var_e3b635fb[var_c957f6b6].var_cdb0be8.var_f8456b37;
	}
	if(isdefined(var_c4d121b7))
	{
		namespace_82b91a51::function_8828b758(self.var_e3b635fb[var_c957f6b6], var_c4d121b7, var_dbb2aef5, var_1b5295e, var_27b7a3c7, var_1da64ae8, var_43a8c551);
	}
	if(function_85e4c3b3(self.var_e3b635fb[var_c957f6b6]))
	{
		self.var_e3b635fb[var_c957f6b6] thread function_e8d7d9();
	}
	else
	{
		self.var_e3b635fb[var_c957f6b6] thread function_dea7f09f();
	}
	return self.var_e3b635fb[var_c957f6b6];
}

/*
	Name: function_dea7f09f
	Namespace: namespace_8e9083ff
	Checksum: 0x7739C795
	Offset: 0x9AF0
	Size: 0x23B
	Parameters: 0
	Flags: None
*/
function function_dea7f09f()
{
	self endon("hash_128f8789");
	var_b07228b6 = self.var_cdb0be8;
	if(!isdefined(var_b07228b6.var_b07228b6))
	{
		return;
	}
	var_5bcb8a4d = namespace_14b42b8a::function_7faf4c39(var_b07228b6.var_b07228b6);
	var_1cbcb46d = namespace_84970cc4::function_47d18840(var_5bcb8a4d);
	wait(0.05);
	while(isdefined(var_1cbcb46d) && isdefined(var_1cbcb46d.var_1157a889))
	{
		level namespace_cc27597::function_43718187(var_1cbcb46d.var_170527fb, "targetname", self);
		var_b07228b6 = var_1cbcb46d;
		if(!isdefined(var_b07228b6.var_b07228b6))
		{
			break;
		}
		var_1cbcb46d = namespace_14b42b8a::function_7922262b(var_b07228b6.var_b07228b6, "targetname");
	}
	if(!isdefined(var_b07228b6.var_b07228b6) || isdefined(self.var_fd67e920))
	{
		return;
	}
	var_dea0935b = function_fe0cfd2e(var_b07228b6.var_b07228b6, "targetname");
	if(var_dea0935b.size == 0)
	{
		var_dea0935b = function_99201f25(var_b07228b6.var_b07228b6, "targetname");
	}
	if(var_dea0935b.size == 0)
	{
		var_41d1aaf0 = var_b07228b6;
	}
	else
	{
		var_41d1aaf0 = namespace_84970cc4::function_47d18840(var_dea0935b);
	}
	if(isdefined(var_41d1aaf0) && !function_12edee4e(var_41d1aaf0.var_722885f3))
	{
		return;
	}
	self function_169cc712(var_41d1aaf0);
}

/*
	Name: function_e8d7d9
	Namespace: namespace_8e9083ff
	Checksum: 0x5B8816B1
	Offset: 0x9D38
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_e8d7d9()
{
	self endon("hash_128f8789");
	if(isdefined(self.var_fd67e920))
	{
		self namespace_d84e54db::function_c9e45d52(1);
		self namespace_72ee5da4::function_81b6f1ac();
	}
	self namespace_96fa87af::function_edb3a94e(self.var_cdb0be8);
	if(!isdefined(self.var_fd67e920))
	{
		return;
	}
	self namespace_d84e54db::function_c9e45d52(0);
	self namespace_72ee5da4::function_efe9815e();
}

/*
	Name: function_3ee4a3b3
	Namespace: namespace_8e9083ff
	Checksum: 0xC1A6E44E
	Offset: 0x9DF0
	Size: 0x10B
	Parameters: 2
	Flags: None
*/
function function_3ee4a3b3(var_5f69ad96, var_b04bc952)
{
	var_73044d06 = [];
	var_aba4ba44 = namespace_14b42b8a::function_7faf4c39(var_5f69ad96);
	foreach(var_6e3a3e5 in var_aba4ba44)
	{
		var_73044d06[var_c957f6b6] = function_3789d4db(var_6e3a3e5.var_170527fb, undefined, undefined, undefined, 768, var_b04bc952);
	}
	namespace_84970cc4::function_966ecb29(var_73044d06, &function_1fb1b1c4);
}

/*
	Name: function_1fb1b1c4
	Namespace: namespace_8e9083ff
	Checksum: 0xA24466CB
	Offset: 0x9F08
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1fb1b1c4()
{
	self endon("hash_128f8789");
	self waittill("hash_4dbf3ae3");
	function_33ec653f(self.var_b07228b6, undefined, undefined, &function_d065a580);
}

/*
	Name: function_d065a580
	Namespace: namespace_8e9083ff
	Checksum: 0xD456D94A
	Offset: 0x9F58
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_d065a580()
{
	self endon("hash_128f8789");
	wait(0.05);
	for(var_5f2b7673 = self.var_cdb0be8; isdefined(var_5f2b7673);  = self.var_cdb0be8)
	{
		self function_ff6b67ed(var_5f2b7673);
		if(!isdefined(var_5f2b7673.var_b07228b6))
		{
			break;
		}
		wait(function_72a94f05(0.25, 0.38));
		var_b3a8bd53 = function_fe0cfd2e(var_5f2b7673.var_b07228b6, "targetname");
		if(var_b3a8bd53.size < 1)
		{
			var_b3a8bd53 = namespace_14b42b8a::function_7faf4c39(var_5f2b7673.var_b07228b6);
		}
		if(var_b3a8bd53.size < 1)
		{
			break;
		}
	}
	self function_dc8c8404();
}

/*
	Name: function_a00fa665
	Namespace: namespace_8e9083ff
	Checksum: 0x4C922B65
	Offset: 0xA098
	Size: 0x1F9
	Parameters: 1
	Flags: None
*/
function function_a00fa665(var_b04bc952)
{
	if(isdefined(level.var_65070634))
	{
		level.var_65070634 notify("hash_11a8c313");
	}
	switch(var_b04bc952)
	{
		case "clearing_hub":
		{
			var_ef5507a6 = "clearing_start";
			break;
		}
		case "clearing_hub_2":
		{
			var_ef5507a6 = "clearing_start";
			var_9636f088 = "p7_fxanim_cp_zurich_dni_tree_broken01_mod";
			break;
		}
		case "clearing_hub_3":
		{
			var_ef5507a6 = "clearing_start";
			var_9636f088 = "p7_fxanim_cp_zurich_dni_tree_broken02_mod";
			break;
		}
		case default:
		{
			var_ef5507a6 = var_b04bc952;
			break;
		}
	}
	var_b1e02cab = namespace_14b42b8a::function_7922262b(var_ef5507a6, "script_noteworthy");
	if(isdefined(var_9636f088))
	{
		var_814bdb75 = var_9636f088;
	}
	else
	{
		var_814bdb75 = var_b1e02cab.var_6df9264;
	}
	if(!isdefined(var_814bdb75))
	{
		var_814bdb75 = "p7_zur_coalescence_dni_tree";
	}
	level.var_65070634 = namespace_82b91a51::function_b9fd52a4(var_814bdb75, var_b1e02cab.var_722885f3, var_b1e02cab.var_6ab6f4fd);
	if(!isdefined(var_b1e02cab.var_6604b19f))
	{
		var_b1e02cab.var_6604b19f = 1;
	}
	level.var_65070634 function_7d0838b3(var_b1e02cab.var_6604b19f);
	level.var_65070634.var_5c4610c3 = 0;
	level.var_65070634 thread function_17fdda66();
	return level.var_65070634;
}

/*
	Name: function_17fdda66
	Namespace: namespace_8e9083ff
	Checksum: 0xB914065C
	Offset: 0xA2A0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_17fdda66()
{
	wait(0.1);
	self namespace_71e9cb84::function_74d6b22f("corvus_tree_shader", 1);
	self waittill("hash_11a8c313");
	self namespace_71e9cb84::function_74d6b22f("corvus_tree_shader", 0);
	if(isdefined(self.var_73c84646))
	{
		self.var_73c84646 function_dc8c8404();
	}
	namespace_82b91a51::function_76f13293();
	self function_dc8c8404();
}

/*
	Name: function_b0f0dd1f
	Namespace: namespace_8e9083ff
	Checksum: 0x2526ADA0
	Offset: 0xA350
	Size: 0x441
	Parameters: 2
	Flags: None
*/
function function_b0f0dd1f(var_a8fcf257, var_4b381aca)
{
	if(var_a8fcf257 && isdefined(var_4b381aca))
	{
		switch(var_4b381aca)
		{
			case "regular_snow":
			{
				if(function_65f192a6(self))
				{
					self namespace_71e9cb84::function_e9c3870b("player_weather", 1);
					break;
				}
				foreach(var_5dc5e20a in level.var_2395e945)
				{
					var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_weather", 1);
				}
				break;
			}
			case "light_snow":
			{
				if(function_65f192a6(self))
				{
					self namespace_71e9cb84::function_e9c3870b("player_weather", 4);
					break;
				}
				foreach(var_5dc5e20a in level.var_2395e945)
				{
					var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_weather", 4);
				}
				break;
			}
			case "red_rain":
			{
				if(function_65f192a6(self))
				{
					self namespace_71e9cb84::function_e9c3870b("player_weather", 2);
					break;
				}
				foreach(var_5dc5e20a in level.var_2395e945)
				{
					var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_weather", 2);
				}
				break;
			}
			case "reverse_snow":
			{
				if(function_65f192a6(self))
				{
					self namespace_71e9cb84::function_e9c3870b("player_weather", 3);
					break;
				}
				foreach(var_5dc5e20a in level.var_2395e945)
				{
					var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_weather", 3);
				}
				break;
			}
		}
		break;
	}
	if(function_65f192a6(self))
	{
		self namespace_71e9cb84::function_e9c3870b("player_weather", 0);
		break;
	}
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a namespace_71e9cb84::function_e9c3870b("player_weather", 0);
	}
}

/*
	Name: function_7be427b1
	Namespace: namespace_8e9083ff
	Checksum: 0xAC43F66
	Offset: 0xA7A0
	Size: 0xBB
	Parameters: 1
	Flags: None
*/
function function_7be427b1(var_74d0774f)
{
	if(!isdefined(var_74d0774f))
	{
		var_74d0774f = 5;
	}
	self endon("hash_17344cca");
	self endon("hash_128f8789");
	var_dd075cd2 = 1;
	self namespace_419e977d::function_459e5eff("biohazard", 0);
	level.var_1554f271 = &function_6255dfdc;
	while(1)
	{
		wait(1);
		var_dd075cd2 = self namespace_419e977d::function_d65827ea("biohazard", var_74d0774f);
	}
}

/*
	Name: function_61bb5738
	Namespace: namespace_8e9083ff
	Checksum: 0x1CB082F1
	Offset: 0xA868
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_61bb5738()
{
	level.var_1554f271 = undefined;
	self namespace_419e977d::function_459e5eff("biohazard", 1);
}

/*
	Name: function_6255dfdc
	Namespace: namespace_8e9083ff
	Checksum: 0xD7F15165
	Offset: 0xA8A0
	Size: 0x5D
	Parameters: 11
	Flags: None
*/
function function_6255dfdc(var_51e6a548, var_3a212fd7, var_f9a179ed, var_bf827987, var_ba36487d, var_dfcc01fd, var_88482219, var_e8bb43ee, var_a77ad8eb, var_a5cf2304, var_faf17161)
{
	return 0;
}

/*
	Name: function_356fa166
	Namespace: namespace_8e9083ff
	Checksum: 0x53B03E40
	Offset: 0xA908
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_356fa166()
{
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		if(var_6bfe1586 namespace_957e94ce::function_7922262b("mobile_armory_in_use"))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_41753e77
	Namespace: namespace_8e9083ff
	Checksum: 0x92214AE3
	Offset: 0xA9B0
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_41753e77(var_8907c2b8)
{
	var_b14c1a2c = [];
	var_b14c1a2c["dni_futz"] = "postfx_futz";
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_b14c1a2c[var_8907c2b8]), "Dev Block strings are not supported" + var_8907c2b8);
	#/
	wait(function_62e4226e(0.25));
	self thread namespace_71e9cb84::function_688ed188(var_b14c1a2c[var_8907c2b8]);
}

/*
	Name: function_11b424e5
	Namespace: namespace_8e9083ff
	Checksum: 0x815B41CA
	Offset: 0xAA58
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_11b424e5(var_a8fcf257)
{
	if(function_27c72c1b())
	{
		return;
	}
	if(isdefined(var_a8fcf257) && !function_65f192a6(self))
	{
		if(var_a8fcf257)
		{
			level.var_60bad7a5 = 1;
			namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
		}
		else
		{
			level.var_60bad7a5 = 0;
			namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 0);
		}
	}
	else if(isdefined(level.var_60bad7a5))
	{
		if(level.var_60bad7a5)
		{
			self namespace_82b91a51::function_16c71b8(1);
		}
		else
		{
			self namespace_82b91a51::function_16c71b8(0);
		}
	}
}

/*
	Name: function_c049667c
	Namespace: namespace_8e9083ff
	Checksum: 0xF4B90335
	Offset: 0xAB68
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_c049667c(var_1db5876c)
{
	if(var_1db5876c)
	{
		var_cc4031e3 = function_c4d5ec1f("smg_standard_hero");
	}
	else
	{
		var_cc4031e3 = level.var_3d556bcd.var_3ae58dd;
	}
	level.var_3d556bcd namespace_d84e54db::function_7901ac63(var_cc4031e3, "right");
}

/*
	Name: function_d1996775
	Namespace: namespace_8e9083ff
	Checksum: 0x8FE552C5
	Offset: 0xABE8
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_d1996775()
{
	var_376507c0 = &"cp_level_zurich_hack_lobby_door";
	var_f6e313be = &"CP_MI_ZURICH_COALESCENCE_HACK";
	self namespace_ac959fba::function_68df65d8(3, var_376507c0, var_f6e313be);
	var_65669d7b = self namespace_ac959fba::function_7373f13d();
	self function_175e6b8e(0);
	return var_65669d7b;
}

/*
	Name: function_9bb12e2f
	Namespace: namespace_8e9083ff
	Checksum: 0xF9ED03B0
	Offset: 0xAC80
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_9bb12e2f(var_a8563e07)
{
	level notify("hash_9bb12e2f");
}

/*
	Name: function_74c09be7
	Namespace: namespace_8e9083ff
	Checksum: 0x70520D2
	Offset: 0xACA8
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_74c09be7()
{
	var_376507c0 = &"cp_level_zurich_hack_lobby_door";
	var_f6e313be = &"CP_MI_ZURICH_COALESCENCE_HACK";
	namespace_82b91a51::function_14518e76(self, var_376507c0, var_f6e313be, &function_89a1383e);
	self function_175e6b8e(1);
	level waittill("hash_a271fdb7");
}

/*
	Name: function_89a1383e
	Namespace: namespace_8e9083ff
	Checksum: 0xC329021A
	Offset: 0xAD28
	Size: 0x59
	Parameters: 1
	Flags: None
*/
function function_89a1383e(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	self.var_6bfe1586 = var_6bfe1586;
	var_6bfe1586 namespace_175490fb::function_f8669cbf(1);
	level notify("hash_a271fdb7");
}

/*
	Name: function_f3bcbbb1
	Namespace: namespace_8e9083ff
	Checksum: 0x66980811
	Offset: 0xAD90
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_f3bcbbb1()
{
	var_376507c0 = &"cp_level_zurich_burn_vines";
	var_f6e313be = &"CP_MI_ZURICH_COALESCENCE_BURN";
	namespace_82b91a51::function_14518e76(self, var_376507c0, var_f6e313be, &function_b6a9fc24);
	self function_175e6b8e(1);
	level waittill("hash_e9197af7");
}

/*
	Name: function_b6a9fc24
	Namespace: namespace_8e9083ff
	Checksum: 0x71BC4AC6
	Offset: 0xAE10
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function function_b6a9fc24(var_6bfe1586)
{
	self namespace_a230c2b1::function_e54c54c3();
	var_6bfe1586 thread function_4a447e94();
	level notify("hash_e9197af7");
}

/*
	Name: function_aceff870
	Namespace: namespace_8e9083ff
	Checksum: 0x52FACAD9
	Offset: 0xAE68
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_aceff870()
{
	self endon("hash_128f8789");
	self.var_48772f67 = 1;
	while(1)
	{
		var_6bfe1586 = namespace_82b91a51::function_fa8a28f1(self.var_722885f3, "allies");
		if(isdefined(var_6bfe1586))
		{
			var_eb23928c = function_eed6dab7(var_6bfe1586.var_722885f3, 128, 32);
			if(isdefined(var_eb23928c))
			{
				self namespace_d84e54db::function_19e98020(var_eb23928c, 128, 1);
			}
		}
		wait(3);
	}
}

/*
	Name: function_f3e247d6
	Namespace: namespace_8e9083ff
	Checksum: 0xA1A447C6
	Offset: 0xAF38
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_f3e247d6(var_c77d2837)
{
	if(isdefined(var_c77d2837["corvus"]))
	{
		var_c77d2837["corvus"] namespace_71e9cb84::function_74d6b22f("corvus_body_fx", 1);
	}
}

/*
	Name: function_c83720c9
	Namespace: namespace_8e9083ff
	Checksum: 0x10CCD1AC
	Offset: 0xAF90
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_c83720c9()
{
	var_347ccc07 = function_6ada35ba("garage_bounds", "targetname");
	var_347ccc07 function_8c1f7070();
	namespace_4dbf3ae3::function_1ab5ebec("triage_regroup");
	var_347ccc07 function_bb863f19();
}

/*
	Name: function_2e1830eb
	Namespace: namespace_8e9083ff
	Checksum: 0xB7064FC0
	Offset: 0xB010
	Size: 0x2EF
	Parameters: 2
	Flags: None
*/
function function_2e1830eb(var_c7d3f5b3, var_b04bc952)
{
	var_1cbcb46d = undefined;
	var_3bc473a5 = [];
	var_85178a47 = undefined;
	var_3ecdb245 = namespace_14b42b8a::function_7faf4c39(var_c7d3f5b3);
	foreach(var_a2365998 in var_3ecdb245)
	{
		if(isdefined(var_a2365998.var_1157a889))
		{
			var_1cbcb46d = var_a2365998;
			continue;
		}
		wait(0.05);
		if(var_a2365998.var_caae374e === "origin")
		{
			var_85178a47 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_a2365998.var_722885f3, var_a2365998.var_6ab6f4fd);
			var_85178a47.var_170527fb = var_a2365998.var_170527fb;
			var_85178a47.var_ff1f6868 = var_b04bc952;
			/#
				function_58f8da89(var_85178a47);
			#/
			continue;
		}
		if(!isdefined(var_a2365998.var_6df9264))
		{
			continue;
		}
		var_3bc473a5[var_c957f6b6] = namespace_82b91a51::function_b9fd52a4("p7_sgen_charging_station_pod_white", var_a2365998.var_722885f3, var_a2365998.var_6ab6f4fd);
		var_3bc473a5[var_c957f6b6].var_ff1f6868 = var_b04bc952;
		/#
			function_58f8da89(var_3bc473a5[var_c957f6b6]);
		#/
	}
	foreach(var_71e3d70a in var_3bc473a5)
	{
		var_71e3d70a function_37f7858a(var_85178a47);
		var_85178a47.var_3bc473a5[var_a3557c4d] = var_71e3d70a;
	}
	var_85178a47.var_1cbcb46d = var_1cbcb46d;
}

/*
	Name: function_27904cd4
	Namespace: namespace_8e9083ff
	Checksum: 0xC8C2284
	Offset: 0xB308
	Size: 0x73D
	Parameters: 6
	Flags: None
*/
function function_27904cd4(var_c7d3f5b3, var_b04bc952, var_3e671a1, var_31561fde, var_25490e6c, var_8d2cb132)
{
	if(!isdefined(var_3e671a1))
	{
		var_3e671a1 = 0;
	}
	if(!isdefined(var_31561fde))
	{
		var_31561fde = 1;
	}
	if(!isdefined(var_25490e6c))
	{
		var_25490e6c = 1;
	}
	if(!isdefined(var_8d2cb132))
	{
		var_8d2cb132 = 4;
	}
	level endon(var_b04bc952 + "_completed");
	var_15acf6d0 = "cin_zur_02_01_climb_aie_charging_station";
	var_18dfedfa = function_84970cc4("sec_assault_ar", "sec_suppressor_ar", "sec_cqb_shotgun", "sec_rpg_rocket", "sec_suppressor_mg", "sec_sniper", "sec_rusher", "sec_exploder");
	var_ce83537c = function_6ada35ba(var_c7d3f5b3, "targetname");
	var_ce83537c endon("hash_128f8789");
	var_ce83537c endon("hash_54bdb053");
	if(!isdefined(var_ce83537c.var_85178a47))
	{
		var_ce83537c.var_85178a47 = namespace_82b91a51::function_b9fd52a4("tag_origin", var_ce83537c.var_1cbcb46d.var_722885f3, var_ce83537c.var_1cbcb46d.var_6ab6f4fd);
	}
	var_ce83537c.var_e7702bfb = var_ce83537c.var_6ab6f4fd;
	var_ce83537c.var_85178a47.var_ff1f6868 = var_b04bc952;
	var_ce83537c.var_e3b635fb = [];
	var_ce83537c.var_2f08d7ce = 0;
	var_ce83537c.var_ce32be36 = 1;
	wait(0.05);
	do
	{
		var_ce83537c.var_e3b635fb = namespace_84970cc4::function_b87262e(var_ce83537c.var_e3b635fb);
		if(var_ce83537c.var_e3b635fb.size >= var_31561fde)
		{
			wait(2);
		}
		else
		{
			var_28c25ffb = namespace_84970cc4::function_47d18840(var_18dfedfa);
			var_ce83537c.var_fe7c3350 = namespace_2f06d687::function_7387a40a(var_28c25ffb);
			var_ce83537c.var_85178a47 function_37f7858a(var_ce83537c);
			if(!function_5b49d38c(var_ce83537c.var_fe7c3350))
			{
				wait(0.05);
			}
			else
			{
				var_ce83537c.var_fe7c3350 namespace_d84e54db::function_c9e45d52(1);
				if(isdefined(var_ce83537c.var_1cbcb46d.var_b2ff4d87))
				{
					var_ce83537c.var_fe7c3350 namespace_6f7b2095::function_1b497663(var_ce83537c.var_1cbcb46d.var_b2ff4d87);
				}
				if(!isdefined(var_ce83537c.var_e3b635fb))
				{
					var_ce83537c.var_e3b635fb = [];
				}
				else if(!function_6e2770d8(var_ce83537c.var_e3b635fb))
				{
					var_ce83537c.var_e3b635fb = function_84970cc4(var_ce83537c.var_e3b635fb);
				}
				var_ce83537c.var_e3b635fb[var_ce83537c.var_e3b635fb.size] = var_ce83537c.var_fe7c3350;
				var_ce83537c.var_2f08d7ce++;
				var_ce83537c.var_fe7c3350 function_9869ab67(var_ce83537c.var_85178a47.var_722885f3, var_ce83537c.var_85178a47.var_6ab6f4fd);
				var_ce83537c.var_fe7c3350 function_37f7858a(var_ce83537c.var_85178a47);
				var_ce83537c.var_85178a47 namespace_cc27597::function_c35e6aab(var_15acf6d0, var_ce83537c.var_fe7c3350);
				var_ce83537c function_21d0da55(180, function_72a94f05(0.89, 1.4));
				var_ce83537c waittill("hash_6654e4f4");
				if(!function_5b49d38c(var_ce83537c.var_fe7c3350))
				{
					var_ce83537c.var_85178a47 function_52fddbd0();
					var_ce83537c.var_85178a47.var_722885f3 = var_ce83537c.var_1cbcb46d.var_722885f3;
					var_ce83537c.var_85178a47.var_6ab6f4fd = var_ce83537c.var_1cbcb46d.var_6ab6f4fd;
				}
				else
				{
					var_ce83537c.var_85178a47 namespace_cc27597::function_43718187(var_15acf6d0, var_ce83537c.var_fe7c3350);
					if(function_5b49d38c(var_ce83537c.var_fe7c3350))
					{
						var_ce83537c.var_fe7c3350 namespace_d84e54db::function_c9e45d52(0);
						var_ce83537c.var_fe7c3350 function_52fddbd0();
					}
					var_ce83537c.var_fe7c3350 = undefined;
					var_ce83537c.var_85178a47 function_52fddbd0();
					var_ce83537c.var_85178a47.var_722885f3 = var_ce83537c.var_1cbcb46d.var_722885f3;
					var_ce83537c.var_85178a47.var_6ab6f4fd = var_ce83537c.var_1cbcb46d.var_6ab6f4fd;
					wait(function_72a94f05(var_25490e6c, var_8d2cb132));
					if(var_3e671a1 != 0 && var_ce83537c.var_2f08d7ce >= var_3e671a1)
					{
						var_ce32be36 = 0;
					}
				}
			}
		}
	}
	while(!(isdefined(var_ce83537c.var_ce32be36) && var_ce83537c.var_ce32be36));
}

/*
	Name: function_5b0d9c63
	Namespace: namespace_8e9083ff
	Checksum: 0x72494AEB
	Offset: 0xBA50
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_5b0d9c63(var_c7d3f5b3)
{
	var_ce83537c = function_6ada35ba(var_c7d3f5b3, "targetname");
	if(!isdefined(var_ce83537c))
	{
		/#
			function_d52b076d("Dev Block strings are not supported" + var_c7d3f5b3 + "Dev Block strings are not supported");
		#/
		return;
	}
	var_ce83537c notify("hash_54bdb053");
	var_ce83537c.var_ce32be36 = 0;
	if(function_5b49d38c(var_ce83537c.var_fe7c3350))
	{
		var_ce83537c.var_fe7c3350 function_2992720d();
	}
	var_ce83537c function_c0b6566f(var_ce83537c.var_e7702bfb, 1);
}

/*
	Name: function_6d571441
	Namespace: namespace_8e9083ff
	Checksum: 0xBF69EE31
	Offset: 0xBB50
	Size: 0x1F7
	Parameters: 0
	Flags: None
*/
function function_6d571441()
{
System.Exception: Function contains invalid operation code
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_fe5160df
	Namespace: namespace_8e9083ff
	Checksum: 0x4DE3C355
	Offset: 0xBD50
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_fe5160df(var_f553b6d0)
{
	self endon("hash_128f8789");
	if(var_f553b6d0)
	{
		wait(function_72a94f05(1, 3));
		self namespace_71e9cb84::function_74d6b22f("hero_cold_breath", 1);
	}
	else
	{
		self namespace_71e9cb84::function_74d6b22f("hero_cold_breath", 0);
	}
}

/*
	Name: function_e547724d
	Namespace: namespace_8e9083ff
	Checksum: 0x426838F1
	Offset: 0xBDD8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_e547724d(var_c77d2837)
{
	var_c77d2837["raven"] function_50ccee8d();
	level waittill("hash_755edaa4");
	var_c77d2837["raven"] function_48f26766();
}

/*
	Name: function_3f6f483d
	Namespace: namespace_8e9083ff
	Checksum: 0xA0486690
	Offset: 0xBE40
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_3f6f483d(var_c77d2837)
{
	var_c77d2837["raven"] function_48f26766();
}

/*
	Name: function_86b1cd8a
	Namespace: namespace_8e9083ff
	Checksum: 0x13B78EFB
	Offset: 0xBE78
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_86b1cd8a(var_c77d2837)
{
	var_c77d2837["raven"] endon("hash_128f8789");
	var_c77d2837["raven"] function_50ccee8d();
	var_c77d2837["raven"] waittill("hash_db8335ba");
	var_c77d2837["raven"] function_48f26766();
	var_c77d2837["raven"] waittill("hash_c03e8e55");
	var_c77d2837["raven"] namespace_71e9cb84::function_74d6b22f("raven_fade_out", 1);
	wait(0.5);
	var_c77d2837["raven"] function_50ccee8d();
}

/*
	Name: function_2504fb31
	Namespace: namespace_8e9083ff
	Checksum: 0x6D0BDDD3
	Offset: 0xBF70
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_2504fb31(var_c1e63f13)
{
	var_9eb0bcab = function_99201f25("hq_atrium_player_clip", "targetname");
	if(var_c1e63f13)
	{
		namespace_84970cc4::function_eaab05dc(var_9eb0bcab, &function_4083a98e);
	}
	else
	{
		namespace_84970cc4::function_eaab05dc(var_9eb0bcab, &function_422037f5);
	}
}

/*
	Name: function_df1fc23b
	Namespace: namespace_8e9083ff
	Checksum: 0x61716575
	Offset: 0xC008
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_df1fc23b(var_350533f8)
{
	if(var_350533f8)
	{
		function_9e3608e3("hq_exit_panel_outro");
		function_6ddd4fa4("hq_exit_panel_hacked_outro");
	}
	else
	{
		function_9e3608e3("hq_exit_panel_hacked_outro");
		function_6ddd4fa4("hq_exit_panel_outro");
	}
}

/*
	Name: function_162b9ea0
	Namespace: namespace_8e9083ff
	Checksum: 0xAB5F011E
	Offset: 0xC090
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_162b9ea0(var_c77d2837)
{
	var_f2c7e89 = var_c77d2837["tower_door"];
	level waittill("hash_1851c43a");
	var_f2c7e89 function_dc8c8404();
}

/*
	Name: function_4a00a473
	Namespace: namespace_8e9083ff
	Checksum: 0x1704147A
	Offset: 0xC0E8
	Size: 0x8E7
	Parameters: 1
	Flags: None
*/
function function_4a00a473(var_95456b04)
{
	if(var_95456b04 == "street")
	{
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_01_01_intro_1st_lost_contact");
	}
	else if(var_95456b04 == "garage")
	{
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_melee_robot_choke_throw");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_car_crash_stuck_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_parking_wall_explode_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_truck_crash_01_bundle");
	}
	else if(var_95456b04 == "plaza_battle")
	{
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_02_01_climb_aie_charging_station");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_03_01_train_vign_bodies02");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_03_01_train_vign_bodies03");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_03_01_train_vign_bodies04");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_03_01_train_vign_strapped");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_04_01_ext_vign_lockdown");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_car_crash_01_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_car_crash_02_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_car_crash_03_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_car_crash_04_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_car_crash_05_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_hunter_start_01_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_hunter_start_02_bundle");
	}
	else if(var_95456b04 == "server_room")
	{
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_train_seats_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_02_decontamination_vign_schematic");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh010");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh020");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh030");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh040");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh050");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh060");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh070");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh080");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh090");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh100");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh110");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh120");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh130");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh140");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_06_sacrifice_3rd_sh150");
	}
	else if(var_95456b04 == "clearing_hub")
	{
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_09_01_standoff_1st_hostage");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_09_02_standoff_1st_forest");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_09_02_standoff_3rd_forest_part2_sh010");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_09_01_standoff_vign_far_as_i_go");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_10_01_kruger_3rd_questioned_sh010");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_10_01_kruger_3rd_questioned_sh020");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_rock_slide_bundle");
	}
	else if(var_95456b04 == "root_zurich")
	{
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_12_01_root_1st_mirror_01");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_roots_train_bundle");
	}
	else if(var_95456b04 == "root_cairo")
	{
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_14_01_cairo_root_1st_fall");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_checkpoint_wall_01_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_wall_drop_bundle");
	}
	else if(var_95456b04 == "clearing_hub_3")
	{
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_12_01_root_1st_crumble");
		level namespace_14b42b8a::function_368120a1("scene", "cin_zur_12_01_root_1st_crumble3");
	}
	else if(var_95456b04 == "root_singapore")
	{
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_ferris_wheel_wave_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_container_collapse_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_ferris_wheel_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_zurich_car_slide_bundle");
	}
}

/*
	Name: function_9f90bc0f
	Namespace: namespace_8e9083ff
	Checksum: 0x949ECB5E
	Offset: 0xC9D8
	Size: 0x121
	Parameters: 2
	Flags: None
*/
function function_9f90bc0f(var_c77d2837, var_8b453fd2)
{
	if(isdefined(var_8b453fd2))
	{
		level waittill(var_8b453fd2);
	}
	if(isdefined(self.var_1157a889))
	{
		level namespace_14b42b8a::function_368120a1("scene", self.var_1157a889);
	}
	var_c77d2837 = namespace_84970cc4::function_5c13fae0(var_c77d2837);
	if(var_c77d2837.size)
	{
		foreach(var_4c9c8550 in var_c77d2837)
		{
			if(!function_65f192a6(var_4c9c8550))
			{
				var_4c9c8550 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_3f4f84e
	Namespace: namespace_8e9083ff
	Checksum: 0x4AE0212
	Offset: 0xCB08
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function function_3f4f84e(var_5e953b6, var_64f5eece, var_864a3d55)
{
	if(!isdefined(var_64f5eece))
	{
		var_64f5eece = "targetname";
	}
	if(!isdefined(var_864a3d55))
	{
		var_864a3d55 = 1;
	}
	var_3af498bc = function_fe0cfd2e(var_5e953b6, var_64f5eece);
	foreach(var_48b27c8f in var_3af498bc)
	{
		function_d224409e(var_48b27c8f, var_864a3d55);
	}
}

/*
	Name: function_c7d0d818
	Namespace: namespace_8e9083ff
	Checksum: 0x81D5CF5
	Offset: 0xCC10
	Size: 0xD7
	Parameters: 7
	Flags: None
*/
function function_c7d0d818(var_eff163a9, var_15f3de12, var_aa686173, var_431bc2a9, var_a12eb64b, var_a1195428, var_1320c363)
{
	/#
		if(!isdefined(var_aa686173))
		{
			var_aa686173 = "Dev Block strings are not supported";
		}
		if(!isdefined(var_431bc2a9))
		{
			var_431bc2a9 = (0, 1, 0);
		}
		var_eff163a9 endon(var_aa686173);
		var_15f3de12 endon(var_aa686173);
		self endon(var_a12eb64b);
		while(1)
		{
			function_8afd7e24(var_eff163a9.var_722885f3, var_15f3de12.var_722885f3, var_431bc2a9, "Dev Block strings are not supported", var_eff163a9);
			wait(0.05);
		}
	#/
}

/*
	Name: function_9ff5370d
	Namespace: namespace_8e9083ff
	Checksum: 0xF7C21938
	Offset: 0xCCF0
	Size: 0xA7
	Parameters: 3
	Flags: None
*/
function function_9ff5370d(var_562b538e, var_431bc2a9, var_28a08272)
{
	/#
		if(!isdefined(var_562b538e))
		{
			var_562b538e = 64;
		}
		if(!isdefined(var_431bc2a9))
		{
			var_431bc2a9 = (0, 1, 0);
		}
		if(!isdefined(var_28a08272))
		{
			var_28a08272 = self;
		}
		self endon("hash_dc898c8");
		while(isdefined(self))
		{
			function_162e1b0a(self.var_722885f3, var_562b538e, var_431bc2a9, "Dev Block strings are not supported", var_28a08272);
			wait(0.05);
		}
	#/
}

/*
	Name: function_68a764f6
	Namespace: namespace_8e9083ff
	Checksum: 0x22AA1268
	Offset: 0xCDA0
	Size: 0xA7
	Parameters: 3
	Flags: None
*/
function function_68a764f6(var_562b538e, var_431bc2a9, var_28a08272)
{
	/#
		if(!isdefined(var_562b538e))
		{
			var_562b538e = 64;
		}
		if(!isdefined(var_431bc2a9))
		{
			var_431bc2a9 = (0, 1, 0);
		}
		if(!isdefined(var_28a08272))
		{
			var_28a08272 = self;
		}
		self endon("hash_5322c93b");
		while(isdefined(self))
		{
			function_a1fd4e99(self.var_722885f3, var_562b538e, var_431bc2a9, "Dev Block strings are not supported", var_28a08272);
			wait(0.05);
		}
	#/
}

/*
	Name: function_ff016910
	Namespace: namespace_8e9083ff
	Checksum: 0x62D186C
	Offset: 0xCE50
	Size: 0x8F
	Parameters: 3
	Flags: None
*/
function function_ff016910(var_fdbe8054, var_431bc2a9, var_28a08272)
{
	/#
		if(!isdefined(var_431bc2a9))
		{
			var_431bc2a9 = (0, 1, 0);
		}
		if(!isdefined(var_28a08272))
		{
			var_28a08272 = self;
		}
		self endon("hash_8fba9");
		while(isdefined(self))
		{
			function_4c9624c6(var_fdbe8054, self.var_722885f3, var_431bc2a9, "Dev Block strings are not supported", var_28a08272);
			wait(0.05);
		}
	#/
}

/*
	Name: function_e8b99762
	Namespace: namespace_8e9083ff
	Checksum: 0xA4CAEC46
	Offset: 0xCEE8
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function function_e8b99762()
{
	/#
		self endon("hash_128f8789");
	#/
}

/*
	Name: function_c118d07d
	Namespace: namespace_8e9083ff
	Checksum: 0xBECEBFDE
	Offset: 0xCF08
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_c118d07d()
{
	/#
		self endon("hash_128f8789");
		while(1)
		{
			self waittill("hash_f9348fda", var_74d0774f, var_677b3e78, var_c4fe4fc7, var_10e30246, var_7b81749, var_824d5a76, var_9553ff11, var_2be8aff, var_1d6db0a3);
			var_e548f607 = "Dev Block strings are not supported";
			if(!isdefined(var_7b81749))
			{
				var_7b81749 = "Dev Block strings are not supported";
			}
			if(function_fd096044(var_677b3e78))
			{
				var_e548f607 = var_677b3e78.var_e6e9b8de;
				if(var_e548f607 === "Dev Block strings are not supported")
				{
					var_e548f607 = var_677b3e78.var_fd67e920;
				}
				self thread function_4363773d(var_677b3e78, var_10e30246, var_74d0774f, var_e548f607, var_7b81749);
			}
			function_d52b076d("Dev Block strings are not supported" + var_74d0774f);
			function_d52b076d("Dev Block strings are not supported" + var_e548f607);
			function_d52b076d("Dev Block strings are not supported" + var_7b81749);
		}
	#/
}

/*
	Name: function_4363773d
	Namespace: namespace_8e9083ff
	Checksum: 0x5CA686CF
	Offset: 0xD0A8
	Size: 0x317
	Parameters: 5
	Flags: None
*/
function function_4363773d(var_677b3e78, var_dee4bf23, var_74d0774f, var_e548f607, var_7b81749)
{
	/#
		self endon("hash_f9348fda");
		self endon("hash_128f8789");
		var_7cc4d7ae = var_677b3e78.var_722885f3;
		var_3aa9c6b0 = self.var_722885f3;
		var_ba43239b = var_677b3e78 function_d48f2ab3("Dev Block strings are not supported");
		if(!isdefined(var_ba43239b))
		{
			var_ba43239b = var_677b3e78.var_722885f3;
		}
		var_b19349be = function_7d15e2f8(var_ba43239b, var_dee4bf23);
		while(1)
		{
			function_4c9624c6("Dev Block strings are not supported" + var_e548f607, var_ba43239b + VectorScale((0, 0, 1), 8), (1, 0, 0), "Dev Block strings are not supported", self);
			function_4c9624c6("Dev Block strings are not supported" + var_74d0774f, var_ba43239b, (1, 0, 0), "Dev Block strings are not supported", self);
			function_4c9624c6("Dev Block strings are not supported" + var_7b81749, var_ba43239b + VectorScale((0, 0, -1), 8), (1, 0, 0), "Dev Block strings are not supported", self);
			function_4c9624c6("Dev Block strings are not supported" + var_b19349be, var_ba43239b + VectorScale((0, 0, -1), 16), (1, 0, 0), "Dev Block strings are not supported", self);
			function_162e1b0a(var_7cc4d7ae, 32, (1, 0, 0), "Dev Block strings are not supported", self);
			function_162e1b0a(var_3aa9c6b0, 32, (0, 1, 0), "Dev Block strings are not supported", self);
			function_a1fd4e99(var_ba43239b, 6, (1, 0, 0), "Dev Block strings are not supported", self);
			function_a1fd4e99(var_dee4bf23, 6, (1, 1, 0), "Dev Block strings are not supported", self);
			function_8afd7e24(var_ba43239b, var_dee4bf23, (1, 0, 0), "Dev Block strings are not supported", self);
			if(isdefined(var_677b3e78))
			{
				function_162e1b0a(var_677b3e78.var_722885f3, 24, (1, 1, 0), "Dev Block strings are not supported", self);
				function_8afd7e24(var_7cc4d7ae, var_677b3e78.var_722885f3, (1, 1, 0), "Dev Block strings are not supported", self);
			}
			wait(0.05);
		}
	#/
}


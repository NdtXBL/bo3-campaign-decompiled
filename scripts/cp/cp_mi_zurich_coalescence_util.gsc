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
	Name: __init__sytem__
	Namespace: namespace_8e9083ff
	Checksum: 0x4BEFDDBC
	Offset: 0x1A18
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("zurich_util", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_8e9083ff
	Checksum: 0x9AA39399
	Offset: 0x1A58
	Size: 0x169
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.lighting_state = 0;
	callback::on_spawned(&on_player_spawned);
	callback::on_disconnect(&on_player_disconnect);
	callback::on_actor_killed(&function_c3e494e3);
	spawner::add_global_spawn_function("axis", &function_dc8f9fa6);
	spawner::add_global_spawn_function("axis", &function_c412aad5);
	spawner::add_global_spawn_function("team3", &function_dc8f9fa6);
	spawner::add_global_spawn_function("axis", &function_b2c5d91c);
	util::function_b499f765();
	init_client_field_callback_funcs();
	level._effect["root_heart_fire"] = "fire/fx_fire_heart_burn_zurich";
	level._effect["hand_vine_fire"] = "fire/fx_fire_ai_human_hand_vm";
}

/*
	Name: init_client_field_callback_funcs
	Namespace: namespace_8e9083ff
	Checksum: 0x9EDEFB4B
	Offset: 0x1BD0
	Size: 0x61B
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	var_2d20335b = GetMinBitCountForNum(5);
	var_a9ef5da3 = GetMinBitCountForNum(6);
	visionset_mgr::register_info("visionset", "cp_zurich_hallucination", 1, 100, 1, 1);
	clientfield::register("actor", "exploding_ai_deaths", 1, 1, "int");
	clientfield::register("actor", "hero_spawn_fx", 1, 1, "int");
	clientfield::register("scriptmover", "hero_spawn_fx", 1, 1, "int");
	clientfield::register("scriptmover", "vehicle_spawn_fx", 1, 1, "int");
	clientfield::register("toplayer", "set_world_fog", 1, 1, "int");
	clientfield::register("scriptmover", "raven_juke_effect", 1, 1, "counter");
	clientfield::register("actor", "raven_juke_limb_effect", 1, 1, "counter");
	clientfield::register("scriptmover", "raven_teleport_effect", 1, 1, "counter");
	clientfield::register("actor", "raven_teleport_limb_effect", 1, 1, "counter");
	clientfield::register("scriptmover", "raven_teleport_in_effect", 1, 1, "counter");
	clientfield::register("toplayer", "player_weather", 1, var_2d20335b, "int");
	clientfield::register("toplayer", "vortex_teleport", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_futz", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_futz_mild", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_transition", 1, 1, "counter");
	clientfield::register("world", "zurich_city_ambience", 1, 1, "int");
	clientfield::register("actor", "skin_transition_melt", 1, 1, "int");
	clientfield::register("scriptmover", "corvus_body_fx", 1, 1, "int");
	clientfield::register("actor", "raven_ai_rez", 1, 1, "int");
	clientfield::register("scriptmover", "raven_ai_rez", 1, 1, "int");
	clientfield::register("toplayer", "zurich_server_cam", 1, 1, "int");
	clientfield::register("world", "set_exposure_bank", 1, 1, "int");
	clientfield::register("scriptmover", "corvus_tree_shader", 1, 1, "int");
	clientfield::register("actor", "hero_cold_breath", 1, 1, "int");
	clientfield::register("world", "set_post_color_grade_bank", 1, 1, "int");
	clientfield::register("toplayer", "postfx_hallucinations", 1, 1, "counter");
	clientfield::register("toplayer", "player_water_transition", 1, 1, "int");
	clientfield::register("toplayer", "raven_hallucinations", 1, 1, "int");
	clientfield::register("scriptmover", "quadtank_raven_explosion", 1, 1, "int");
	clientfield::register("scriptmover", "raven_fade_out", 1, 1, "int");
}

/*
	Name: on_player_spawned
	Namespace: namespace_8e9083ff
	Checksum: 0x9F1CFE71
	Offset: 0x21F8
	Size: 0x4C9
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	var_aace7bde = skipto::function_8b19ec5d();
	/#
		self thread debug_player_damage();
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
				self thread util::function_df6eb506(1);
				break;
			}
			case "rails":
			{
				self function_b0f0dd1f(1, "regular_snow");
				self thread util::function_df6eb506(1);
				break;
			}
			case "plaza_battle":
			{
				self function_b0f0dd1f(1, "regular_snow");
				self thread util::function_df6eb506(1);
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
				self thread util::function_df6eb506(1);
				break;
			}
			case "clearing_waterfall":
			{
				self function_b0f0dd1f(1, "light_snow");
				self thread function_39af75ef("clearing_path_selected");
				self thread util::function_df6eb506(1);
				break;
			}
			case "clearing_path_choice":
			{
				self function_11b424e5();
				self function_b0f0dd1f(1, "light_snow");
				self thread util::function_df6eb506(1);
				break;
			}
			case "clearing_end":
			{
				self function_11b424e5();
				self function_b0f0dd1f(1, "light_snow");
				self thread util::function_df6eb506(1);
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
				self thread util::function_df6eb506(1);
				break;
			}
			case "root_zurich_vortex":
			{
				self thread util::function_df6eb506(1);
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
	Name: on_player_disconnect
	Namespace: namespace_8e9083ff
	Checksum: 0x99EC1590
	Offset: 0x26D0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_disconnect()
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
	scene::add_scene_func("p7_fxanim_cp_sgen_charging_station_open_01_bundle", &function_38b7a56, "init");
	scene::add_scene_func("p7_fxanim_cp_sgen_charging_station_break_01_bundle", &function_38b7a56, "init");
	scene::add_scene_func("p7_fxanim_cp_sgen_charging_station_break_02_bundle", &function_38b7a56, "init");
	scene::add_scene_func("p7_fxanim_cp_sgen_charging_station_break_03_bundle", &function_38b7a56, "init");
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
function function_38b7a56(a_ents)
{
	Array::run_all(a_ents, &notsolid);
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
function function_5f63b2f1(n_state)
{
	foreach(e_player in level.players)
	{
		e_player thread function_78e8c8b4(n_state);
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
function function_78e8c8b4(n_state)
{
	self endon("disconnect");
	self endon("death");
	self notify("hash_6ae1015d");
	if(n_state == 1)
	{
		self endon("hash_6ae1015d");
		while(1)
		{
			if(math::cointoss())
			{
				self util::show_hud(0);
			}
			if(math::cointoss())
			{
				self setClientUIVisibilityFlag("weapon_hud_visible", 0);
			}
			self thread clientfield::increment_to_player("postfx_futz");
			wait(RandomFloatRange(2, 8));
			if(math::cointoss())
			{
				self util::show_hud(1);
			}
			if(math::cointoss())
			{
				self setClientUIVisibilityFlag("weapon_hud_visible", 1);
			}
			self thread clientfield::increment_to_player("postfx_futz");
			wait(RandomFloatRange(2, 8));
		}
	}
	else
	{
		self util::show_hud(0);
		self setClientUIVisibilityFlag("weapon_hud_visible", 0);
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
function function_d0e3bb4(b_on)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	if(b_on)
	{
		foreach(player in level.players)
		{
			player thread function_d6b3e7b5();
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
	self endon("disconnect");
	self endon("death");
	level endon("hash_bdee213c");
	while(1)
	{
		self clientfield::increment_to_player("postfx_futz_mild");
		wait(2.7);
		wait(RandomFloatRange(2, 3));
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
	var_4e3140b1 = GetEntArray("trig_falling_death", "targetname");
	Array::thread_all(var_4e3140b1, &function_c8049804);
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
		self waittill("trigger", who);
		if(isPlayer(who) && (!isdefined(who.var_e7c2cbb4) && who.var_e7c2cbb4))
		{
			who thread function_2f645114();
		}
		util::wait_network_frame();
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
	str_shader = "black";
	self EnableInvulnerability();
	self thread hud::fade_to_black_for_x_sec(0, 2, 0.5, 1, str_shader);
	wait(0 + 2);
	self thread function_173f6520();
	wait(0.5);
	self.var_e7c2cbb4 = 0;
	self DisableInvulnerability();
	self DoDamage(self.health / 10, self.origin);
	if(self.health < 1)
	{
		self.health = 1;
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
	str_skipto = level.skipto_point;
	var_624a0b0b = spawnlogic::get_spawnpoint_array("cp_coop_respawn");
	var_24307637 = skipto::function_c13ce5f8(self, var_624a0b0b, str_skipto);
	/#
		Assert(var_24307637.size, "Dev Block strings are not supported");
	#/
	s_warp = ArrayGetClosest(self.origin, var_24307637);
	self SetOrigin(s_warp.origin);
	self SetPlayerAngles(s_warp.angles);
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
function function_39af75ef(str_endon, str_exploder)
{
	self endon("disconnect");
	self endon("death");
	level endon(str_endon);
	if(!isdefined(str_exploder))
	{
		str_exploder = "ex_underwater_lights";
	}
	while(1)
	{
		if(self IsPlayerUnderwater() && (!isdefined(self.is_underwater) && self.is_underwater))
		{
			self clientfield::set_to_player("player_water_transition", 1);
			self.is_underwater = 1;
			exploder::exploder(str_exploder);
			self thread function_3e4d643b(1);
		}
		else if(!self IsPlayerUnderwater() && (isdefined(self.is_underwater) && self.is_underwater))
		{
			self clientfield::set_to_player("player_water_transition", 0);
			self.is_underwater = undefined;
			exploder::kill_exploder(str_exploder);
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
	self endon("death");
	n_min_dist = 256;
	if(self function_de29b250())
	{
		if(SessionModeIsCampaignZombiesGame() && self.script_noteworthy === "zombie_spawner")
		{
			return;
		}
		self thread function_8f40ede();
		if(self.script_string === "in_water")
		{
			if(math::cointoss())
			{
				self scene::Play("cin_zur_11_01_paths_aie_water01", self);
			}
			else
			{
				self scene::Play("cin_zur_11_01_paths_aie_water02", self);
			}
		}
		else if(self.script_string === "in_ground")
		{
			if(math::cointoss())
			{
				self scene::Play("cin_zur_12_01_root_aie_ground01", self);
			}
			else
			{
				self scene::Play("cin_zur_12_01_root_aie_ground02", self);
			}
		}
		else if(isdefined(self.type) && self.type == "human")
		{
			self.holdFire = 1;
			self DisableAimAssist();
			self ai::set_ignoreme(1);
			util::magic_bullet_shield(self);
			self ghost();
			util::wait_network_frame();
			self clientfield::set("raven_ai_rez", 1);
			wait(0.5);
			self EnableAimAssist();
			self ai::set_ignoreme(0);
			util::stop_magic_bullet_shield(self);
			self show();
			self.holdFire = 0;
		}
		else
		{
			self.var_b1a4293e = util::spawn_model("tag_origin", self.origin, self.angles);
			self LinkTo(self.var_b1a4293e);
			self thread function_c9e8f95a(self.var_b1a4293e);
			self.var_b1a4293e clientfield::set("vehicle_spawn_fx", 1);
			wait(0.15);
		}
		self notify("spawned");
		if(self.archetype === "robot")
		{
			self ai::set_behavior_attribute("robot_lights", 3);
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
	if(self.weaponClass === "rocketlauncher")
	{
		self.accuracy = 0.4;
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
function function_c90e23b6(str_objective, str_end)
{
	level.var_1c26230b = util::function_740f8516("taylor_hero");
	level.var_1c26230b thread function_f5f0fcce(str_objective, str_end);
	if(IsSubStr(str_objective, "_vortex"))
	{
		level.var_1c26230b thread function_11726ad(str_objective);
		return;
	}
	s_start_pos = function_c30d095(str_objective);
	level.var_1c26230b ForceTeleport(s_start_pos.origin, s_start_pos.angles);
	level.var_1c26230b ai::set_ignoreme(1);
	level.var_1c26230b ai::set_ignoreall(1);
	level.var_1c26230b ghost();
	wait(0.5);
	level.var_1c26230b clientfield::set("hero_spawn_fx", 1);
	wait(0.5);
	level.var_1c26230b ai::set_ignoreme(0);
	level.var_1c26230b ai::set_ignoreall(0);
	level.var_1c26230b show();
	level.var_1c26230b thread function_53fd6e96(str_objective);
	level.var_1c26230b thread function_f7f909b0(str_objective);
	level.var_1c26230b thread function_11726ad(str_objective);
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
function function_53fd6e96(str_objective)
{
	level endon(str_objective + "_done");
	level endon("hash_b1f1a592");
	level endon(str_objective + "enter_vortex");
	level endon("hash_8b1e8360");
	self endon("death");
	while(1)
	{
		e_player = ArrayGetClosest(self.origin, level.activePlayers);
		if(isdefined(e_player))
		{
			self.follow_player = undefined;
			while(isalive(e_player))
			{
				nd_cover = self function_843d0ed6(e_player);
				if(self.ignoreall)
				{
					self.follow_player = undefined;
				}
				else if(isdefined(nd_cover))
				{
					SetEnableNode(nd_cover, 1);
					self SetGoal(nd_cover, 1);
					nd_cover function_47f5a8d2(e_player);
					self.follow_player = undefined;
				}
				else if(IsPointOnNavMesh(e_player.origin, self))
				{
					self SetGoal(e_player, 0, 256);
					self.follow_player = 1;
				}
				else
				{
					v_pos = GetClosestPointOnNavMesh(e_player.origin, 256, 64);
					if(isdefined(v_pos))
					{
						self SetGoal(v_pos, 0, 256);
					}
					else
					{
						self SetGoal(self.origin, 0, 256);
						self.follow_player = undefined;
					}
				}
				wait(0.5);
			}
		}
		self SetGoal(self.origin);
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
function function_f7f909b0(str_objective)
{
	level endon(str_objective + "_done");
	level endon(str_objective + "enter_vortex");
	while(1)
	{
		e_player = ArrayGetClosest(self.origin, level.activePlayers);
		if(isdefined(e_player) && Distance(e_player.origin, self.origin) > 2500)
		{
			v_pos = e_player.origin + AnglesToForward(e_player.angles) * 256;
			var_c540825 = GetClosestPointOnNavMesh(v_pos, 100, 30);
			if(isdefined(var_c540825))
			{
				self clientfield::set("hero_spawn_fx", 0);
				wait(0.5);
				level.var_1c26230b ForceTeleport(var_c540825, e_player.angles);
				self clientfield::set("hero_spawn_fx", 1);
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
function function_f5f0fcce(str_objective, str_end)
{
	level endon("hash_b1f1a592");
	if(IsSubStr(str_objective, "_start"))
	{
		level waittill(str_objective + "enter_vortex");
	}
	if(isdefined(str_end))
	{
		s_end = struct::get(str_end, "targetname");
	}
	if(IsSubStr(str_objective, "root_cairo"))
	{
		var_8839ea8c = "root_cairo_vortex";
	}
	else if(IsSubStr(str_objective, "root_singapore"))
	{
		var_8839ea8c = "root_singapore_vortex";
	}
	else
	{
		var_8839ea8c = "root_zurich_vortex";
	}
	var_d476a8cc = function_c30d095(var_8839ea8c);
	var_fa33caf9 = util::spawn_model("tag_origin", var_d476a8cc.origin, var_d476a8cc.angles);
	if(level.activePlayers.size > 1 && isdefined(s_end))
	{
		self SetGoal(s_end.origin, 0, 64);
		self util::waittill_any_timeout(15, "goal");
		self clientfield::set("hero_spawn_fx", 0);
	}
	else
	{
		wait(1);
	}
	self ForceTeleport(var_d476a8cc.origin, var_d476a8cc.angles);
	self clientfield::set("hero_spawn_fx", 1);
	self thread function_53fd6e96(str_objective);
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
function function_11726ad(str_objective)
{
	level waittill("hash_b1f1a592");
	self util::unmake_hero("taylor_hero");
	self util::self_delete();
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
function function_c30d095(str_objective)
{
	switch(str_objective)
	{
		case "root_zurich_start":
		{
			str_pos = "root_zurich_end_taylor_start";
			break;
		}
		case "root_zurich_vortex":
		{
			str_pos = "root_zurich_end_taylor_vortex";
			break;
		}
		case "root_cairo_start":
		{
			str_pos = "root_cairo_end_taylor_start";
			break;
		}
		case "root_cairo_vortex":
		{
			str_pos = "root_cairo_end_taylor_vortex";
			break;
		}
		case "root_singapore_start":
		{
			str_pos = "root_singapore_end_taylor_start";
			break;
		}
		case "root_singapore_vortex":
		{
			str_pos = "root_singapore_end_taylor_vortex";
			break;
		}
	}
	s_pos = struct::get(str_pos, "targetname");
	return s_pos;
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
function function_843d0ed6(e_player)
{
	if(!isdefined(level.var_6b5304af))
	{
		return undefined;
	}
	foreach(nd_cover in level.var_6b5304af)
	{
		SetEnableNode(nd_cover, 0);
	}
	var_a8a64a67 = ArraySortClosest(level.var_6b5304af, e_player.origin, 8, 90, 512);
	for(i = 0; i < var_a8a64a67.size; i++)
	{
		if(!var_a8a64a67[i].script_noteworthy === "ai_taylor_cover")
		{
			ArrayRemoveValue(var_a8a64a67, var_a8a64a67[i]);
		}
	}
	for(i = 0; i < var_a8a64a67.size; i++)
	{
		v_player_pos = e_player GetEye();
		if(SightTracePassed(v_player_pos, var_a8a64a67[i].origin + VectorScale((0, 0, 1), 32), 0, e_player))
		{
			return var_a8a64a67[i];
		}
	}
	for(i = 0; i < var_a8a64a67.size; i++)
	{
		return var_a8a64a67[i];
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
function function_47f5a8d2(e_player)
{
	level.var_1c26230b endon("death");
	e_player endon("disconnect");
	e_player endon("death");
	var_c3adecbb = 0;
	n_starttime = GetTime();
	while(Distance(e_player.origin, self.origin) < 256 && Distance(e_player.origin, self.origin) > 64 && isalive(e_player) && var_c3adecbb < 15)
	{
		wait(1);
		var_c3adecbb = GetTime() - n_starttime / 1000;
	}
	level.var_1c26230b ClearForcedGoal();
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
	self endon("death");
	self endon("disconnect");
	level.var_1c26230b endon("death");
	self.var_df6d1c12 = self.origin;
	while(1)
	{
		if(Distance(self.origin, self.var_df6d1c12) < 16)
		{
			var_c37d2cb3 = level.var_1c26230b GetEye();
			if(self util::is_player_looking_at(var_c37d2cb3, 0.8, 1, self) && (!isdefined(level.var_aec67b62) && level.var_aec67b62))
			{
				level.var_aec67b62 = 1;
				if(!level.var_1c26230b scene::is_playing())
				{
					level.var_1c26230b thread scene::Play("cin_gen_ambient_idle_nag", level.var_1c26230b);
				}
				level.var_1c26230b thread function_15d5331f();
			}
		}
		self.var_df6d1c12 = self.origin;
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
		if(self.archetype === "human" && !self util::is_hero())
		{
			var_72875649 = 0;
			if(isdefined(self.script_int))
			{
				var_72875649 = self.script_int;
			}
			self.grenadeAmmo = var_72875649;
		}
		if(self.archetype === "robot")
		{
			var_fee79dd1 = "forced_level_1";
			if(self.script_noteworthy === "forced_level_2" || self.script_noteworthy === "forced_level_3")
			{
				var_fee79dd1 = self.script_noteworthy;
				if(self.script_noteworthy === "forced_level_3")
				{
					self ai::set_behavior_attribute("rogue_control_speed", "run");
				}
			}
			self ai::set_behavior_attribute("rogue_control", var_fee79dd1);
			self.team = "axis";
			self util::function_e218424d();
			if(self.script_noteworthy === "has_mini_raps" || self.script_string === "has_mini_raps")
			{
				self ai::set_behavior_attribute("robot_mini_raps", 1);
			}
			return;
		}
		else if(isVehicle(self))
		{
			self util::function_e218424d();
			self.team = "axis";
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
function function_c3e494e3(params)
{
	if(self function_de29b250())
	{
		if(isVehicle(self))
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
	return function_5060d1c8() && self.team != "allies";
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
function function_4d032f25(b_enabled, var_e82a00df)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	if(!isdefined(var_e82a00df))
	{
		var_e82a00df = 0;
	}
	level.var_eadfc2aa = b_enabled;
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
	self waittill("start_ragdoll");
	if(isdefined(self))
	{
		self clientfield::set("raven_ai_rez", 0);
	}
	function_151fb8bf();
	if(isdefined(self))
	{
		self ghost();
		self clientfield::set("exploding_ai_deaths", 1);
	}
	util::wait_network_frame();
	if(isdefined(self))
	{
		self delete();
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
	self waittill("actor_corpse", e_corpse);
	function_151fb8bf();
	if(isdefined(e_corpse))
	{
		e_corpse clientfield::set("exploding_ai_deaths", 1);
	}
	util::wait_network_frame();
	if(isdefined(e_corpse))
	{
		e_corpse delete();
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
	self endon("death");
	self waittill("spawned");
	if(isdefined(self.type) && self.type == "human")
	{
		while(1)
		{
			self ai::disable_pain();
			self waittill("damage");
			if(RandomInt(10) > 2 || (self.var_5e7a3967 === 1 && (!isdefined(self.var_de36196f) && self.var_de36196f)))
			{
				if(self IsAtCoverNodeStrict())
				{
					var_dd98891d = self.node.type;
				}
				if(var_dd98891d === "Cover Right" || var_dd98891d === "Cover Left")
				{
					var_c9111550 = self.origin + AnglesToForward(self.angles) * 180;
					var_f473fe28 = self function_c550e7be(var_c9111550);
					var_e45d5caa = self.origin + AnglesToForward(self.angles) * -1 * 180;
					var_667b6d63 = self function_c550e7be(var_e45d5caa);
				}
				else
				{
					v_pos_right = self.origin + AnglesToRight(self.angles) * 180;
					var_f473fe28 = self function_c550e7be(v_pos_right);
					v_pos_left = self.origin + AnglesToRight(self.angles) * -1 * 180;
					var_667b6d63 = self function_c550e7be(v_pos_left);
				}
				if(math::cointoss())
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
					if(isdefined(self.attacker))
					{
						if(self.attacker.classname != "worldspawn" && self.attacker.classname != "trigger_radius_hurt")
						{
							if(SightTracePassed(self.attacker GetEye(), var_d3fd0a78 + VectorScale((0, 0, 1), 72), 0, self.attacker))
							{
								self function_f5b7f741(var_d3fd0a78);
							}
						}
					}
				}
				else if(isdefined(var_460479b3))
				{
					if(isdefined(self.attacker))
					{
						if(self.attacker.classname != "worldspawn" && self.attacker.classname != "trigger_radius_hurt")
						{
							if(SightTracePassed(self.attacker GetEye(), var_460479b3 + VectorScale((0, 0, 1), 72), 0, self.attacker))
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
			self ai::enable_pain();
			wait(randomIntRange(5, 10));
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
	var_f19447c4 = GetClosestPointOnNavMesh(var_f19447c4, 128, 32);
	if(!isdefined(var_f19447c4) || Distance(self.origin, var_f19447c4) < 50)
	{
		return undefined;
	}
	foreach(e_player in level.activePlayers)
	{
		if(Distance(e_player.origin, var_f19447c4) < 128)
		{
			return undefined;
		}
	}
	if(!positionWouldTelefrag(var_f19447c4) && !self IsPosInClaimedLocation(var_f19447c4))
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
		n_distance = Distance(self.origin, var_f19447c4);
		n_time = n_distance / 400;
		self thread function_8f40ede();
		self clientfield::increment("raven_juke_limb_effect");
		self.holdFire = 1;
		self DisableAimAssist();
		self ai::set_ignoreme(1);
		util::magic_bullet_shield(self);
		self ghost();
		var_fb20f2e1 = self.angles;
		var_4fa09666 = VectorToAngles(var_f19447c4 - self.origin);
		self.var_b1a4293e = util::spawn_model("tag_origin", self GetTagOrigin("J_Spine4"), var_4fa09666);
		wait(0.05);
		self.var_b1a4293e clientfield::increment("raven_juke_effect");
		self LinkTo(self.var_b1a4293e);
		self thread function_c9e8f95a(self.var_b1a4293e);
		self.var_b1a4293e moveto(var_f19447c4 + VectorScale((0, 0, 1), 25), n_time);
		self.var_b1a4293e waittill("movedone");
		self Unlink();
		self ForceTeleport(var_f19447c4, var_fb20f2e1, 1, 0);
		self setgoalpos(var_f19447c4, 1);
		self.var_b1a4293e moveto(self GetTagOrigin("J_Spine4"), 0.05);
		self.var_b1a4293e clientfield::increment("raven_teleport_in_effect");
		wait(1.4);
		self ForceTeleport(var_f19447c4, var_fb20f2e1, 1, 0);
		self setgoalpos(var_f19447c4, 1);
		self EnableAimAssist();
		self ai::set_ignoreme(0);
		util::stop_magic_bullet_shield(self);
		self show();
		self.holdFire = 0;
		self notify("teleport_done");
		wait(2);
		self ClearForcedGoal();
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
	self endon("death");
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
	self endon("death");
	self waittill("spawned");
	wait(1);
	if(isdefined(self.type) && self.type == "human")
	{
		if(!isdefined(self.var_48772f67) || !self.var_48772f67)
		{
			var_8fb5e5da = undefined;
			n_move_time = 3;
			while(1)
			{
				self waittill("hash_3b27f8c1");
				for(nd_cover = self.node; !isdefined(nd_cover);  = self.node)
				{
					wait(1.5);
				}
				b_close = undefined;
				foreach(e_player in level.activePlayers)
				{
					if(Distance(e_player.origin, nd_cover.origin) < 128)
					{
						b_close = 1;
					}
				}
				if(Distance(self.origin, nd_cover.origin) < 128)
				{
					b_close = 1;
				}
				if(RandomInt(10) > 4 && nd_cover !== var_8fb5e5da && (!isdefined(self.var_de36196f) && self.var_de36196f) && (!isdefined(b_close) && b_close))
				{
					var_8fb5e5da = nd_cover;
					self thread function_bfc7e6a6(nd_cover.origin);
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
function function_bfc7e6a6(v_pos)
{
	self endon("death");
	n_distance = Distance(self.origin, v_pos);
	n_time = n_distance / 400;
	self thread function_8f40ede();
	if(n_time > 0.6)
	{
		self clientfield::increment("raven_teleport_limb_effect");
		n_time = 1;
	}
	else
	{
		self clientfield::increment("raven_juke_limb_effect");
		n_time = 0.45;
	}
	self.holdFire = 1;
	self DisableAimAssist();
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	util::magic_bullet_shield(self);
	self ghost();
	var_fb20f2e1 = self.angles;
	var_f8a383f8 = VectorToAngles(v_pos - self.origin);
	self.var_b1a4293e = util::spawn_model("tag_origin", self GetTagOrigin("J_Spine4"), var_f8a383f8);
	wait(0.05);
	if(n_time == 1)
	{
		self.var_b1a4293e clientfield::increment("raven_teleport_effect");
	}
	else
	{
		self.var_b1a4293e clientfield::increment("raven_juke_effect");
	}
	self LinkTo(self.var_b1a4293e);
	self thread function_c9e8f95a(self.var_b1a4293e);
	self.var_b1a4293e moveto(v_pos + VectorScale((0, 0, 1), 25), n_time);
	self.var_b1a4293e waittill("movedone");
	self Unlink();
	self ForceTeleport(v_pos, var_fb20f2e1, 0, 0);
	self setgoalpos(v_pos, 1);
	self.var_b1a4293e moveto(self GetTagOrigin("J_Spine4"), 0.05);
	self.var_b1a4293e clientfield::increment("raven_teleport_in_effect");
	wait(1.4);
	self ForceTeleport(v_pos, var_fb20f2e1, 0, 0);
	self EnableAimAssist();
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	util::stop_magic_bullet_shield(self);
	self show();
	self.holdFire = 0;
	self notify("teleport_done");
	wait(2);
	self ClearForcedGoal();
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
	self util::waittill_any("death", "teleport_done", "spawned");
	if(isalive(self))
	{
		self Unlink();
	}
	wait(3);
	if(isdefined(var_b1a4293e))
	{
		var_b1a4293e delete();
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
	self endon("death");
	if(isdefined(self.target) && self.script_parameters === "raven_spawn_teleport")
	{
		var_f5cd6771 = GetNode(self.target, "targetname");
		if(!isdefined(var_f5cd6771))
		{
			var_f5cd6771 = struct::get(self.target, "targetname");
		}
		if(!isdefined(var_f5cd6771))
		{
			return;
		}
		self waittill("spawned");
		wait(0.5);
		n_distance = Distance(self.origin, var_f5cd6771.origin);
		n_move_time = n_distance / 400;
		if(n_move_time > 0.6)
		{
			self clientfield::increment("raven_teleport_limb_effect");
			n_move_time = 1;
		}
		else
		{
			self clientfield::increment("raven_juke_limb_effect");
			n_move_time = 0.45;
		}
		self ghost();
		self ai::set_ignoreall(1);
		self ai::set_ignoreme(1);
		util::magic_bullet_shield(self);
		self DisableAimAssist();
		var_fb20f2e1 = self.angles;
		var_4fa09666 = VectorToAngles(var_f5cd6771.origin - self.origin);
		self.var_b1a4293e = util::spawn_model("tag_origin", self GetTagOrigin("J_Spine4"), var_4fa09666);
		util::wait_network_frame();
		if(n_move_time == 1)
		{
			self.var_b1a4293e clientfield::increment("raven_teleport_effect");
		}
		else
		{
			self.var_b1a4293e clientfield::increment("raven_juke_effect");
		}
		self LinkTo(self.var_b1a4293e);
		self thread function_c9e8f95a(self.var_b1a4293e);
		self.var_b1a4293e moveto(var_f5cd6771.origin + VectorScale((0, 0, 1), 25), n_move_time);
		self.var_b1a4293e waittill("movedone");
		self Unlink();
		self ForceTeleport(var_f5cd6771.origin, var_fb20f2e1, 1, 0);
		self setgoalpos(var_f5cd6771.origin, 1);
		self.var_b1a4293e moveto(self GetTagOrigin("J_Spine4"), 0.05);
		self.var_b1a4293e clientfield::increment("raven_teleport_in_effect");
		wait(1.4);
		self ai::set_ignoreall(0);
		self ai::set_ignoreme(0);
		util::stop_magic_bullet_shield(self);
		self EnableAimAssist();
		self show();
		self notify("teleport_done");
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
function function_ff6b67ed(target)
{
	self endon("death");
	n_distance = Distance(self.origin, target.origin);
	n_move_time = n_distance / 400;
	if(n_move_time > 0.6)
	{
		self clientfield::increment("raven_teleport_limb_effect");
		n_move_time = 1;
	}
	else
	{
		self clientfield::increment("raven_juke_limb_effect");
		n_move_time = 0.45;
	}
	self ghost();
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	util::magic_bullet_shield(self);
	self DisableAimAssist();
	var_fb20f2e1 = self.angles;
	var_4fa09666 = VectorToAngles(target.origin - self.origin);
	self.var_b1a4293e = util::spawn_model("tag_origin", self GetTagOrigin("J_Spine4"), var_4fa09666);
	wait(0.05);
	if(n_move_time == 1)
	{
		self.var_b1a4293e clientfield::increment("raven_teleport_effect");
	}
	else
	{
		self.var_b1a4293e clientfield::increment("raven_juke_effect");
	}
	self LinkTo(self.var_b1a4293e);
	self thread function_c9e8f95a(self.var_b1a4293e);
	self.var_b1a4293e moveto(target.origin + VectorScale((0, 0, 1), 25), n_move_time);
	self.var_b1a4293e waittill("movedone");
	self Unlink();
	self ForceTeleport(target.origin, var_fb20f2e1, 1, 0);
	self setgoalpos(target.origin, 1);
	self.var_b1a4293e moveto(self GetTagOrigin("J_Spine4"), 0.05);
	self.var_b1a4293e clientfield::increment("raven_teleport_in_effect");
	wait(1.4);
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	util::stop_magic_bullet_shield(self);
	self EnableAimAssist();
	self show();
	self notify("teleport_done");
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
function function_d8c91e6b(n_dist)
{
	self endon("death");
	if(!isdefined(n_dist))
	{
		n_dist = 4000;
	}
	while(1)
	{
		if(!(isdefined(self player_can_see_me(n_dist)) && self player_can_see_me(n_dist)))
		{
			if(isalive(self) && !self util::is_hero())
			{
				self util::stop_magic_bullet_shield();
				self kill();
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
	a_ai = GetAITeamArray("axis", "allies", "team3");
	Array::spread_all(a_ai, &function_914c331d);
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
	if(isalive(self) && !self util::is_hero())
	{
		self util::stop_magic_bullet_shield();
		self delete();
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
	if(isalive(self) && !self util::is_hero())
	{
		self util::stop_magic_bullet_shield();
		self kill();
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
	self endon("death");
	self waittill("spawned");
	self thread function_d8c91e6b(4000);
	while(1)
	{
		e_player = ArrayGetClosest(self.origin, level.activePlayers);
		if(isdefined(e_player) && Distance(e_player.origin, self.origin) > 2000)
		{
			v_pos = e_player.origin + AnglesToForward(e_player.angles) * 512;
			var_c540825 = GetClosestPointOnNavMesh(v_pos, 100, 30);
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
function function_8ac3f026(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, damageFromUnderneath, modelIndex, partName)
{
	if(isai(eAttacker))
	{
		if(self.team == "allies" && eAttacker.team == "axis" || (self.team == "axis" && eAttacker.team == "allies"))
		{
			n_scale = function_411dc61b(5, -1);
			iDamage = Int(iDamage * n_scale);
		}
	}
	return iDamage;
}

/*
	Name: player_can_see_me
	Namespace: namespace_8e9083ff
	Checksum: 0x980CA28D
	Offset: 0x66C0
	Size: 0x12F
	Parameters: 1
	Flags: None
*/
function player_can_see_me(n_dist)
{
	if(!isdefined(n_dist))
	{
		n_dist = 512;
	}
	for(i = 0; i < level.players.size; i++)
	{
		v_player_pos = level.players[i] GetEye();
		if(SightTracePassed(v_player_pos, self.origin + VectorScale((0, 0, 1), 32), 0, level.players[i]))
		{
			return 1;
		}
		var_b08b4a3b = Distance2DSquared(self.origin, level.players[i] GetEye());
		n_dist_sq = n_dist * n_dist;
		if(var_b08b4a3b < n_dist_sq)
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
function function_2361541e(str_location)
{
	switch(str_location)
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
	var_cf560aad = struct::get_array(str_location + "_oneshot_bodies", "targetname");
	if(var_cf560aad.size)
	{
		foreach(var_9ff4fb81 in var_cf560aad)
		{
			var_5db4d3e4 = GetEntArray("zurich_ambient_civ", "targetname");
			e_civ = Array::random(var_5db4d3e4);
			ai_civ = spawner::simple_spawn_single(e_civ);
			ai_civ ai::set_ignoreme(1);
			ai_civ ForceTeleport(var_9ff4fb81.origin, var_9ff4fb81.angles);
			ai_civ thread scene::init(var_9ff4fb81.scriptbundlename, ai_civ);
		}
	}
	var_f201bfb1 = struct::get_array(str_location + "_dead_bodies", "targetname");
	if(!var_f201bfb1.size)
	{
		return;
	}
	level thread scene::Play(str_location + "_dead_bodies", "targetname");
	level waittill(str_location + "_ambient_cleanup");
	level scene::stop(str_location + "_dead_bodies", "targetname", 1);
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
function function_1eb6ea27(trigger, str_location)
{
	var_f201bfb1 = struct::get_array(str_location + "_dead_bodies", "targetname");
	if(!var_f201bfb1.size)
	{
		return;
	}
	trigger::wait_till(trigger);
	level scene::stop(str_location + "_dead_bodies", "targetname", 1);
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
	scene::add_scene_func("cin_zur_vign_conversation", &function_6a0676d9, "play");
	scene::add_scene_func("cin_zur_vign_seizure_soldier", &function_6a0676d9, "play");
	scene::add_scene_func("cin_zur_m_floor_stomach_wounded_zsf", &function_6a0676d9, "play");
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
function function_6a0676d9(a_ents)
{
	foreach(e_ent in a_ents)
	{
		e_ent SetCanDamage(1);
		e_ent.health = 100000;
		e_ent thread function_16f4964d();
		e_ent thread util::auto_delete(16, 0, 1000);
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
	self endon("death");
	while(isdefined(self))
	{
		self waittill("damage", n_damage, e_attacker);
		if(isPlayer(e_attacker))
		{
			level.var_71aac273++;
		}
		if(level.var_71aac273 >= 4)
		{
			level.var_71aac273 = 0;
			util::missionfailedwrapper_nodeath(&"SCRIPT_MISSIONFAIL_KILLTEAM_AMERICAN");
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
	scene::add_scene_func("p7_fxanim_cp_zurich_train_seats_bundle", &function_9f90bc0f, "play", "rails_ambient_cleanup");
	level scene::init("p7_fxanim_cp_zurich_train_seats_bundle");
	trigger::wait_till("t_enter_train");
	level thread scene::Play("p7_fxanim_cp_zurich_train_seats_bundle");
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
	var_4239eb0b = GetEntArray("zurich_skipto", "targetname");
	Array::thread_all(var_4239eb0b, &function_ca33eb60);
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
		self waittill("trigger", who);
		if(isPlayer(who))
		{
			str_objective = self.script_objective;
			if(!isdefined(str_objective))
			{
				str_objective = "zurich";
			}
			level notify(str_objective + "_done");
			skipto::function_be8adfb8(str_objective);
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
function function_a1851f86(str_objective)
{
	var_e061e0f4 = GetEntArray("root_end_skipto", "targetname");
	foreach(var_8fb0849a in var_e061e0f4)
	{
		if(var_8fb0849a.script_string === str_objective)
		{
			var_8fb0849a thread function_3da5d43b(str_objective);
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
function function_3da5d43b(str_objective)
{
	if(!isdefined(str_objective))
	{
		/#
			Assert(isdefined(str_objective), "Dev Block strings are not supported");
		#/
	}
	var_779fea3 = GetEnt(self.target, "targetname");
	level thread function_8bd6820f(str_objective);
	self thread function_61f7fc15();
	self.var_afacae68 = 0;
	self function_17b739e2(var_779fea3);
	level notify(str_objective + "_done");
	wait(1);
	self delete();
	var_779fea3 delete();
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
function function_8bd6820f(str_objective)
{
	switch(str_objective)
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
	level thread scene::Play(var_9e7910c3, "targetname");
	level waittill(str_objective + "_done");
	level thread scene::stop(var_9e7910c3, "targetname");
	playsoundatposition("evt_heart_burn", (0, 0, 0));
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
	self notify("brn");
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
	self waittill("brn");
	level util::clientNotify("stp_mus");
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
function function_dd842585(str_objective, var_ed1d0e16, str_trig)
{
	level endon(str_objective + "_done");
	level endon(var_ed1d0e16 + "_done");
	var_50f524fe = GetEnt(str_trig, "targetname");
	while(1)
	{
		var_50f524fe waittill("trigger", who);
		if(isPlayer(who) && (!isdefined(who.teleporting) && who.teleporting))
		{
			who thread function_c51939f4(str_objective, var_ed1d0e16);
			who function_b0f0dd1f(0);
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
function function_c51939f4(str_objective, var_ed1d0e16)
{
	level notify(str_objective + "enter_vortex");
	str_shader = "black";
	self PlayRumbleOnEntity("damage_heavy");
	self.teleporting = 1;
	self EnableInvulnerability();
	self thread hud::fade_to_black_for_x_sec(0, 2, 0.5, 1, str_shader);
	self playsoundtoplayer("evt_teleport", self);
	wait(0 + 2);
	a_s_spots = skipto::function_3529c409(var_ed1d0e16, 0);
	s_spot = Array::random(a_s_spots);
	self SetOrigin(s_spot.origin);
	self SetPlayerAngles(s_spot.angles);
	wait(0.5);
	self.teleporting = undefined;
	self DisableInvulnerability();
	self clientfield::increment_to_player("vortex_teleport");
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
function function_a03f30f2(str_objective, var_ed1d0e16, str_trig)
{
	trigger::wait_till(str_trig);
	level flag::set(var_ed1d0e16);
	level notify(str_objective + "_done");
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
	if(isdefined(self.target))
	{
		var_5e4d2a14 = struct::get_array(self.target, "targetname");
		if(var_5e4d2a14.size)
		{
			for(i = 0; i < var_5e4d2a14.size; i++)
			{
				if(var_5e4d2a14[i].script_noteworthy === "burn_pos")
				{
					self.var_aba567c1 = var_5e4d2a14[i];
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
	self.var_90971f20 = util::function_14518e76(self, var_376507c0, &"CP_MI_ZURICH_COALESCENCE_BURN", &function_64158e74);
	self TriggerEnable(1);
	level waittill("hash_914d02c2");
	self notify("hash_3600bf2b");
	e_player = self.var_90971f20.e_player;
	self.var_90971f20 gameobjects::disable_object();
	if(isdefined(e_player))
	{
		e_player thread function_4a447e94();
		e_pos = e_player;
		if(!var_929e1778)
		{
			if(isdefined(self.var_aba567c1))
			{
				e_pos = self.var_aba567c1;
			}
			e_pos scene::Play("p_zur_burn_vines_bundle", e_player);
		}
		if(isdefined(self.target))
		{
			util::function_93831e79(self.target);
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
function function_64158e74(e_player)
{
	self.e_player = e_player;
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
	self cybercom::function_f8669cbf(1);
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
function function_cdd5119b(e_attacker, v_impact_point)
{
	var_19fd2f7 = VectorToAngles(e_attacker.origin - v_impact_point);
	self FX::Play("corvus_blood", v_impact_point, var_19fd2f7);
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
	var_2cfeb5a9 = GetEntArray("zurich_vinewalls", "targetname");
	Array::thread_all(var_2cfeb5a9, &function_ff5e6201);
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
	if(isdefined(self.script_string))
	{
		var_8d6d1339 = self.script_string;
	}
	var_72af3c25 = GetEntArray(self.target, "targetname");
	for(i = 0; i < var_72af3c25.size; i++)
	{
		if(var_72af3c25[i].script_noteworthy === "vinewall_clip")
		{
			var_9d50b546 = var_72af3c25[i];
			continue;
		}
		if(var_72af3c25[i].script_noteworthy === "vinewall_vine")
		{
			var_ecf05dd0 = var_72af3c25[i];
		}
	}
	if(isdefined(self.script_flag_true))
	{
		level flag::wait_till(self.script_flag_true);
	}
	else if(isdefined(var_8d6d1339))
	{
		self SetInvisibleToAll();
		level waittill(var_8d6d1339);
		self SetVisibleToAll();
	}
	self function_30a6b901(0, var_ecf05dd0);
	var_9d50b546 notsolid();
	var_9d50b546 connectpaths();
	var_ecf05dd0 delete();
	wait(0.1);
	var_9d50b546 delete();
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
function function_3e4d643b(bank)
{
	self clientfield::set_to_player("set_world_fog", bank);
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
	n_num = var_a8a66403 - var_df47d27;
	foreach(e_player in level.players)
	{
		n_num = n_num + var_df47d27;
	}
	return n_num;
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
	s_start = struct::get(var_2c34daa1 + "_start");
	s_end = struct::get(s_start.target);
	function_9b385ca5();
	var_a3decff = RobotPhalanx;
	Initialize(var_a3decff, var_6fc1c7c6, s_start.origin, s_end.origin, var_f67c8a8e);
	wait(var_7b2612a);
	if(isdefined(var_6f456ea4) && level flag::exists(var_6f456ea4))
	{
		level flag::wait_till(var_6f456ea4);
	}
	if(var_bf7b0d42 && var_a3decff.scattered_ == 0)
	{
		var_a3decff thread RobotPhalanx::ScatterPhalanx();
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
function function_da579a5d(str_objective, var_d44e356e)
{
	level.var_3d556bcd = util::function_740f8516("kane");
	if(var_d44e356e)
	{
		level.var_3d556bcd thread function_fe5160df(1);
	}
	skipto::teleport_ai(str_objective, level.heroes);
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
		a_players = ArrayCopy(level.activePlayers);
		Array::randomize(a_players);
		a_enemies = GetAITeamArray("axis", "team3");
		a_enemies = ArraySort(a_enemies, self.origin, 0);
		foreach(player in a_players)
		{
			for(i = 0; i < a_enemies.size; i++)
			{
				var_10b4a7a6 = a_enemies[i] GetEye();
				var_b8f6e26f = player util::is_player_looking_at(var_10b4a7a6, var_62320a5b, 1, player);
				in_range = DistanceSquared(self.origin, a_enemies[i].origin) >= var_95fca89b * var_95fca89b;
				var_7792c65f = SightTracePassed(self GetEye(), var_10b4a7a6, 0, a_enemies[i]);
				var_39e0fee4 = isalive(a_enemies[i]) && a_enemies[i].allowdeath !== 0 && a_enemies[i].magic_bullet_shield !== 1 && a_enemies[i].ignoreme == 0;
				if(var_b8f6e26f && var_7792c65f && var_39e0fee4 && in_range && a_enemies[i] function_50c2e8b0())
				{
					self thread function_fc91db35(a_enemies[i]);
					break;
				}
			}
		}
		n_min_wait = function_411dc61b(5, 2);
		n_max_wait = function_411dc61b(10, 2);
		wait(randomIntRange(n_min_wait, n_max_wait));
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
	if(isdefined(self.scriptvehicletype))
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
	self ai::stop_shoot_at_target();
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
function function_fc91db35(ai_enemy)
{
	self notify("hash_65af34bc");
	self endon("hash_65af34bc");
	self ai::stop_shoot_at_target();
	str_mode = "kill_within_time";
	str_tag = "j_head";
	var_9b192fc6 = ai_enemy.scriptvehicletype;
	if(isdefined(var_9b192fc6))
	{
		switch(var_9b192fc6)
		{
			case "quadtank":
			{
				str_mode = "shoot_until_target_dead";
				str_tag = undefined;
				break;
			}
			case default:
			{
				str_mode = "normal";
				str_tag = undefined;
				break;
			}
		}
	}
	self ai::set_ignoreme(1);
	self ai::shoot_at_target(str_mode, ai_enemy, str_tag, 5);
	self ai::set_ignoreme(0);
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
	if(isalive(var_51d0e2ea) && isdefined(var_51d0e2ea.scriptvehicletype))
	{
		switch(var_51d0e2ea.scriptvehicletype)
		{
			case "quadtank":
			{
				self waittill("shoot");
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
	var_51d0e2ea waittill("death", e_attacker);
	if(self === e_attacker)
	{
		if(isdefined(var_51d0e2ea.scriptvehicletype))
		{
			switch(var_51d0e2ea.scriptvehicletype)
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
	switch(RandomInt(2))
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
	self endon("death");
	while(1)
	{
		while(self HasPath() || self function_f8645b6(128, self GetEye(), 0.65))
		{
			wait(2);
		}
		var_8dc746d1 = undefined;
		var_1f5a4954 = Distance2DSquared(self.goalpos, self GetEye());
		var_564617aa = ArraySortClosest(level.activePlayers, self.origin, 1);
		foreach(e_player in var_564617aa)
		{
			var_8dc746d1 = Distance2DSquared(self.origin, e_player.origin);
		}
		var_10dc781e = self.goalRadius * self.goalRadius;
		var_1535123f = !self player_can_see_me(256) && !self function_f8645b6(128, self.goalpos + VectorScale((0, 0, 1), 72), 0.65);
		var_63f4e3a5 = isdefined(var_8dc746d1) && var_8dc746d1 > 360 * 360 && var_1f5a4954 > var_10dc781e;
		var_92315b88 = !self HasPath() && var_1f5a4954 > var_10dc781e;
		if(var_1535123f && (var_63f4e3a5 || var_92315b88))
		{
			/#
				iprintln("Dev Block strings are not supported");
			#/
			self ForceTeleport(self.goalpos);
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
function function_f8645b6(n_dist, v_pos, n_dot)
{
	if(!isdefined(n_dot))
	{
		n_dot = 0.7;
	}
	if(!isdefined(n_dist))
	{
		n_dist = 320;
	}
	for(i = 0; i < level.players.size; i++)
	{
		v_player_pos = level.players[i] GetEye();
		if(level.players[i] util::is_player_looking_at(v_pos, n_dot, 1, level.players[i]))
		{
			return 1;
		}
		var_b08b4a3b = Distance2DSquared(v_pos, level.players[i] GetEye());
		n_dist_sq = n_dist * n_dist;
		if(var_b08b4a3b < n_dist_sq)
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
	if(!self vehicle_ai::IsCooldownReady("trophy_down"))
	{
		return 1;
	}
	return 0;
}

/*
	Name: move_model
	Namespace: namespace_8e9083ff
	Checksum: 0xE47FB789
	Offset: 0x8A20
	Size: 0x103
	Parameters: 3
	Flags: None
*/
function move_model(n_multiplier, var_2ad5d7ab, var_bd62ea22)
{
	if(!isdefined(n_multiplier))
	{
		n_multiplier = 1;
	}
	self endon("death");
	s_start = self;
	if(isdefined(var_2ad5d7ab))
	{
		s_start = struct::get(var_2ad5d7ab);
	}
	do
	{
		s_next = struct::get(s_start.target);
		self function_2153e0ef(s_start, s_next, n_multiplier, var_bd62ea22);
		s_start = s_next;
	}
	while(!isdefined(s_start.target));
	self RotateTo(s_next.angles, 0.05);
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
function function_2153e0ef(s_start, s_next, n_multiplier, var_bd62ea22)
{
	if(!isdefined(s_start))
	{
		s_start = self;
	}
	if(!isdefined(var_bd62ea22))
	{
		var_bd62ea22 = 1;
	}
	n_move = Distance(s_next.origin, s_start.origin) / 72 / n_multiplier;
	self moveto(s_next.origin, n_move);
	if(var_bd62ea22)
	{
		var_d9f4bdfd = s_next.origin - s_start.origin;
		self.angles = VectorToAngles(var_d9f4bdfd);
	}
	wait(n_move);
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
function function_f9afa212(str_key, str_val, var_d646fb81)
{
	if(!isdefined(str_val))
	{
		str_val = "targetname";
	}
	var_33b370d9 = GetSpawnerArray(str_key, str_val);
	foreach(var_907b6d46 in var_33b370d9)
	{
		var_d697d6e2[n_index] = spawner::simple_spawn_single(var_907b6d46, &function_12141c31);
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
	self vehicle::lights_off();
	self DisableAimAssist();
	self ai::set_ignoreme(1);
	self cybercom::function_58c312f2();
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
function function_3adbd846(str_val, str_key, var_34b81fdb)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	if(!isdefined(var_34b81fdb))
	{
		var_34b81fdb = 0;
	}
	t_trig = GetEnt(str_val, str_key);
	if(isdefined(t_trig))
	{
		t_trig endon("death");
		while(1)
		{
			t_trig waittill("trigger", e_triggerer);
			var_ccf2685a = isdefined(e_triggerer.owner) && isPlayer(e_triggerer.owner);
			if(isPlayer(e_triggerer) || var_ccf2685a)
			{
				break;
			}
		}
		if(var_34b81fdb)
		{
			t_trig delete();
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
function function_1b3dfa61(str_name, str_type, n_width, n_height, n_length, var_88090aa5, str_objective)
{
	if(!isdefined(str_type))
	{
		str_type = "trigger_radius";
	}
	if(!isdefined(n_width))
	{
		n_width = 128;
	}
	if(!isdefined(n_height))
	{
		n_height = 128;
	}
	if(!isdefined(var_88090aa5))
	{
		var_88090aa5 = 1;
	}
	t_trig = GetEnt(str_name, "targename");
	if(var_88090aa5)
	{
		t_trig = function_3789d4db(str_name, str_type, n_width, n_height, n_length, str_objective);
	}
	t_trig waittill("trigger");
	if(isdefined(t_trig))
	{
		t_trig delete();
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
function function_3789d4db(str_name, str_type, n_width, n_height, n_length, str_objective)
{
	if(!isdefined(str_type))
	{
		str_type = "trigger_radius";
	}
	if(!isdefined(n_height))
	{
		n_height = 128;
	}
	if(!isdefined(n_length))
	{
		n_length = 0;
	}
	s_spot = struct::get(str_name);
	if(!isdefined(s_spot))
	{
		s_spot = GetEnt(str_name, "targetname");
	}
	if(!isdefined(n_width))
	{
		n_width = 128;
		if(isdefined(s_spot.radius))
		{
			n_width = s_spot.radius;
		}
	}
	t_trig = spawn(str_type, s_spot.origin, 0, n_width, n_height, n_length);
	t_trig.angles = s_spot.angles;
	t_trig.targetname = s_spot.targetname;
	t_trig.target = s_spot.target;
	t_trig.script_noteworthy = s_spot.script_noteworthy;
	t_trig.script_objective = str_objective;
	return t_trig;
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
function function_5bb4d484(str_val, str_key, n_count, var_a3e7056a)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	if(!isdefined(var_a3e7056a))
	{
		var_a3e7056a = 0.05;
	}
	sp_spawner = self;
	if(sp_spawner == level)
	{
		sp_spawner = GetEnt(str_val, str_key);
	}
	a_ai = [];
	for(i = 0; i < n_count; i++)
	{
		a_ai[i] = spawner::simple_spawn_single(sp_spawner);
		wait(var_a3e7056a);
	}
	return a_ai;
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
function function_b0dd51f4(str_spawner, str_key, var_a3e7056a)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	if(!isdefined(var_a3e7056a))
	{
		var_a3e7056a = 0.05;
	}
	a_sp = GetSpawnerArray(str_spawner, str_key);
	if(a_sp.size == 0)
	{
		a_sp = GetVehicleSpawnerArray(str_spawner, str_key);
	}
	a_ents = [];
	foreach(SP in a_sp)
	{
		a_ents[n_index] = spawner::simple_spawn_single(SP);
		wait(var_a3e7056a);
	}
	return a_ents;
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
function function_33ec653f(str_val, str_key, var_a3e7056a, spawn_func, param1, param2, param3, param4, param5)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	if(!isdefined(var_a3e7056a))
	{
		var_a3e7056a = 0.05;
	}
	var_3979e78 = struct::get(str_val, str_key);
	var_3979e78 endon("stop");
	var_3979e78.a_ai = [];
	var_3979e78.n_spawned = 0;
	/#
		Assert(isdefined(var_3979e78.target), "Dev Block strings are not supported" + var_3979e78.origin + "Dev Block strings are not supported" + var_3979e78.targetname + "Dev Block strings are not supported");
	#/
	var_3979e78.var_431a4b23 = GetNodeArray(var_3979e78.target, "targetname");
	if(var_3979e78.var_431a4b23.size == 0)
	{
		var_3979e78.var_431a4b23 = getvehiclenodearray(var_3979e78.target, "targetname");
	}
	if(var_3979e78.var_431a4b23.size == 0)
	{
		var_3979e78.var_431a4b23 = struct::get_array(var_3979e78.target);
	}
	var_3979e78.var_431a4b23 = Array::randomize(var_3979e78.var_431a4b23);
	foreach(nd_point in var_3979e78.var_431a4b23)
	{
		if(isdefined(nd_point.script_int) && nd_point.script_int > level.players.size)
		{
			continue;
		}
		var_3979e78.a_ai[i] = var_3979e78 function_a569867c(nd_point, spawn_func, i, param1, param2, param3, param4, param5);
		if(i === var_3979e78.script_int)
		{
			break;
		}
		wait(var_a3e7056a);
	}
	return var_3979e78.a_ai;
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
function function_a569867c(nd_point, spawn_func, i, param1, param2, param3, param4, param5)
{
	if(!isdefined(nd_point))
	{
		nd_point = self;
	}
	if(!isdefined(i))
	{
		i = 0;
	}
	/#
		Assert(isdefined(nd_point.script_noteworthy), "Dev Block strings are not supported" + nd_point.origin + "Dev Block strings are not supported" + self.targetname + "Dev Block strings are not supported");
	#/
	var_2a999a2c = GetEnt(nd_point.script_noteworthy, "targetname");
	/#
		Assert(isdefined(var_2a999a2c), "Dev Block strings are not supported" + nd_point.script_noteworthy);
	#/
	self.a_ai[i] = spawner::simple_spawn_single(var_2a999a2c);
	if(!isalive(self.a_ai[i]))
	{
		return;
	}
	if(!isdefined(self.n_spawned))
	{
		self.n_spawned = 0;
	}
	self.n_spawned++;
	if(IsActor(self.a_ai[i]))
	{
		self.a_ai[i] ForceTeleport(nd_point.origin, nd_point.angles);
	}
	self.a_ai[i].var_cdb0be8 = nd_point;
	self.a_ai[i].script_string = nd_point.script_string;
	self.a_ai[i].script_parameters = nd_point.script_parameters;
	if(isdefined(self.a_ai[i].var_cdb0be8.radius))
	{
		self.a_ai[i].goalRadius = self.a_ai[i].var_cdb0be8.radius;
	}
	if(isdefined(spawn_func))
	{
		util::single_thread(self.a_ai[i], spawn_func, param1, param2, param3, param4, param5);
	}
	if(isVehicle(self.a_ai[i]))
	{
		self.a_ai[i] thread function_e8d7d9();
	}
	else
	{
		self.a_ai[i] thread function_dea7f09f();
	}
	return self.a_ai[i];
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
	self endon("death");
	target = self.var_cdb0be8;
	if(!isdefined(target.target))
	{
		return;
	}
	var_5bcb8a4d = struct::get_array(target.target);
	s_scene = Array::random(var_5bcb8a4d);
	wait(0.05);
	while(isdefined(s_scene) && isdefined(s_scene.scriptbundlename))
	{
		level scene::Play(s_scene.targetname, "targetname", self);
		target = s_scene;
		if(!isdefined(target.target))
		{
			break;
		}
		s_scene = struct::get(target.target, "targetname");
	}
	if(!isdefined(target.target) || isdefined(self.scriptvehicletype))
	{
		return;
	}
	goals = GetNodeArray(target.target, "targetname");
	if(goals.size == 0)
	{
		goals = GetEntArray(target.target, "targetname");
	}
	if(goals.size == 0)
	{
		goal = target;
	}
	else
	{
		goal = Array::random(goals);
	}
	if(isdefined(goal) && !IsPointOnNavMesh(goal.origin))
	{
		return;
	}
	self SetGoal(goal);
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
	self endon("death");
	if(isdefined(self.scriptvehicletype))
	{
		self ai::set_ignoreme(1);
		self vehicle_ai::function_81b6f1ac();
	}
	self vehicle::get_on_and_go_path(self.var_cdb0be8);
	if(!isdefined(self.scriptvehicletype))
	{
		return;
	}
	self ai::set_ignoreme(0);
	self vehicle_ai::function_efe9815e();
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
function function_3ee4a3b3(var_5f69ad96, str_objective)
{
	a_trigs = [];
	a_s_triggers = struct::get_array(var_5f69ad96);
	foreach(s_trig in a_s_triggers)
	{
		a_trigs[i] = function_3789d4db(s_trig.targetname, undefined, undefined, undefined, 768, str_objective);
	}
	Array::thread_all(a_trigs, &function_1fb1b1c4);
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
	self endon("death");
	self waittill("trigger");
	function_33ec653f(self.target, undefined, undefined, &function_d065a580);
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
	self endon("death");
	wait(0.05);
	for(var_5f2b7673 = self.var_cdb0be8; isdefined(var_5f2b7673);  = self.var_cdb0be8)
	{
		self function_ff6b67ed(var_5f2b7673);
		if(!isdefined(var_5f2b7673.target))
		{
			break;
		}
		wait(RandomFloatRange(0.25, 0.38));
		var_b3a8bd53 = GetNodeArray(var_5f2b7673.target, "targetname");
		if(var_b3a8bd53.size < 1)
		{
			var_b3a8bd53 = struct::get_array(var_5f2b7673.target);
		}
		if(var_b3a8bd53.size < 1)
		{
			break;
		}
	}
	self delete();
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
function function_a00fa665(str_objective)
{
	if(isdefined(level.var_65070634))
	{
		level.var_65070634 notify("hash_11a8c313");
	}
	switch(str_objective)
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
			var_ef5507a6 = str_objective;
			break;
		}
	}
	var_b1e02cab = struct::get(var_ef5507a6, "script_noteworthy");
	if(isdefined(var_9636f088))
	{
		var_814bdb75 = var_9636f088;
	}
	else
	{
		var_814bdb75 = var_b1e02cab.model;
	}
	if(!isdefined(var_814bdb75))
	{
		var_814bdb75 = "p7_zur_coalescence_dni_tree";
	}
	level.var_65070634 = util::spawn_model(var_814bdb75, var_b1e02cab.origin, var_b1e02cab.angles);
	if(!isdefined(var_b1e02cab.script_float))
	{
		var_b1e02cab.script_float = 1;
	}
	level.var_65070634 SetScale(var_b1e02cab.script_float);
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
	self clientfield::set("corvus_tree_shader", 1);
	self waittill("hash_11a8c313");
	self clientfield::set("corvus_tree_shader", 0);
	if(isdefined(self.var_73c84646))
	{
		self.var_73c84646 delete();
	}
	util::wait_network_frame();
	self delete();
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
function function_b0f0dd1f(is_on, str_effect)
{
	if(is_on && isdefined(str_effect))
	{
		switch(str_effect)
		{
			case "regular_snow":
			{
				if(isPlayer(self))
				{
					self clientfield::set_to_player("player_weather", 1);
					break;
				}
				foreach(player in level.players)
				{
					player clientfield::set_to_player("player_weather", 1);
				}
				break;
			}
			case "light_snow":
			{
				if(isPlayer(self))
				{
					self clientfield::set_to_player("player_weather", 4);
					break;
				}
				foreach(player in level.players)
				{
					player clientfield::set_to_player("player_weather", 4);
				}
				break;
			}
			case "red_rain":
			{
				if(isPlayer(self))
				{
					self clientfield::set_to_player("player_weather", 2);
					break;
				}
				foreach(player in level.players)
				{
					player clientfield::set_to_player("player_weather", 2);
				}
				break;
			}
			case "reverse_snow":
			{
				if(isPlayer(self))
				{
					self clientfield::set_to_player("player_weather", 3);
					break;
				}
				foreach(player in level.players)
				{
					player clientfield::set_to_player("player_weather", 3);
				}
				break;
			}
		}
		break;
	}
	if(isPlayer(self))
	{
		self clientfield::set_to_player("player_weather", 0);
		break;
	}
	foreach(player in level.players)
	{
		player clientfield::set_to_player("player_weather", 0);
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
function function_7be427b1(n_damage)
{
	if(!isdefined(n_damage))
	{
		n_damage = 5;
	}
	self endon("hash_17344cca");
	self endon("death");
	var_dd075cd2 = 1;
	self hazard::function_459e5eff("biohazard", 0);
	level.overridePlayerDamage = &function_6255dfdc;
	while(1)
	{
		wait(1);
		var_dd075cd2 = self hazard::do_damage("biohazard", n_damage);
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
	level.overridePlayerDamage = undefined;
	self hazard::function_459e5eff("biohazard", 1);
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
function function_6255dfdc(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, psOffsetTime, boneIndex)
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
	foreach(e_player in level.activePlayers)
	{
		if(e_player flagsys::get("mobile_armory_in_use"))
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
		Assert(isdefined(var_b14c1a2c[var_8907c2b8]), "Dev Block strings are not supported" + var_8907c2b8);
	#/
	wait(RandomFloat(0.25));
	self thread clientfield::increment_to_player(var_b14c1a2c[var_8907c2b8]);
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
function function_11b424e5(is_on)
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	if(isdefined(is_on) && !isPlayer(self))
	{
		if(is_on)
		{
			level.var_60bad7a5 = 1;
			Array::run_all(level.players, &util::function_16c71b8, 1);
		}
		else
		{
			level.var_60bad7a5 = 0;
			Array::run_all(level.players, &util::function_16c71b8, 0);
		}
	}
	else if(isdefined(level.var_60bad7a5))
	{
		if(level.var_60bad7a5)
		{
			self util::function_16c71b8(1);
		}
		else
		{
			self util::function_16c71b8(0);
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
function function_c049667c(IS_TRUE)
{
	if(IS_TRUE)
	{
		var_cc4031e3 = GetWeapon("smg_standard_hero");
	}
	else
	{
		var_cc4031e3 = level.var_3d556bcd.primaryWeapon;
	}
	level.var_3d556bcd ai::gun_switchto(var_cc4031e3, "right");
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
	str_hint = &"CP_MI_ZURICH_COALESCENCE_HACK";
	self hacking::function_68df65d8(3, var_376507c0, str_hint);
	e_who = self hacking::trigger_wait();
	self TriggerEnable(0);
	return e_who;
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
function function_9bb12e2f(params)
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
	str_hint = &"CP_MI_ZURICH_COALESCENCE_HACK";
	util::function_14518e76(self, var_376507c0, str_hint, &function_89a1383e);
	self TriggerEnable(1);
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
function function_89a1383e(e_player)
{
	self gameobjects::disable_object();
	self.e_player = e_player;
	e_player cybercom::function_f8669cbf(1);
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
	str_hint = &"CP_MI_ZURICH_COALESCENCE_BURN";
	util::function_14518e76(self, var_376507c0, str_hint, &function_b6a9fc24);
	self TriggerEnable(1);
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
function function_b6a9fc24(e_player)
{
	self gameobjects::disable_object();
	e_player thread function_4a447e94();
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
	self endon("death");
	self.var_48772f67 = 1;
	while(1)
	{
		e_player = util::get_closest_player(self.origin, "allies");
		if(isdefined(e_player))
		{
			var_eb23928c = GetClosestPointOnNavMesh(e_player.origin, 128, 32);
			if(isdefined(var_eb23928c))
			{
				self ai::force_goal(var_eb23928c, 128, 1);
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
function function_f3e247d6(a_ents)
{
	if(isdefined(a_ents["corvus"]))
	{
		a_ents["corvus"] clientfield::set("corvus_body_fx", 1);
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
	var_347ccc07 = GetEnt("garage_bounds", "targetname");
	var_347ccc07 SetInvisibleToAll();
	trigger::wait_till("triage_regroup");
	var_347ccc07 SetVisibleToAll();
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
function function_2e1830eb(var_c7d3f5b3, str_objective)
{
	s_scene = undefined;
	var_3bc473a5 = [];
	var_85178a47 = undefined;
	var_3ecdb245 = struct::get_array(var_c7d3f5b3);
	foreach(var_a2365998 in var_3ecdb245)
	{
		if(isdefined(var_a2365998.scriptbundlename))
		{
			s_scene = var_a2365998;
			continue;
		}
		wait(0.05);
		if(var_a2365998.script_noteworthy === "origin")
		{
			var_85178a47 = util::spawn_model("tag_origin", var_a2365998.origin, var_a2365998.angles);
			var_85178a47.targetname = var_a2365998.targetname;
			var_85178a47.script_objective = str_objective;
			/#
				RecordEnt(var_85178a47);
			#/
			continue;
		}
		if(!isdefined(var_a2365998.model))
		{
			continue;
		}
		var_3bc473a5[i] = util::spawn_model("p7_sgen_charging_station_pod_white", var_a2365998.origin, var_a2365998.angles);
		var_3bc473a5[i].script_objective = str_objective;
		/#
			RecordEnt(var_3bc473a5[i]);
		#/
	}
	foreach(var_71e3d70a in var_3bc473a5)
	{
		var_71e3d70a LinkTo(var_85178a47);
		var_85178a47.var_3bc473a5[j] = var_71e3d70a;
	}
	var_85178a47.s_scene = s_scene;
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
function function_27904cd4(var_c7d3f5b3, str_objective, n_count, var_31561fde, n_min_time, n_max_time)
{
	if(!isdefined(n_count))
	{
		n_count = 0;
	}
	if(!isdefined(var_31561fde))
	{
		var_31561fde = 1;
	}
	if(!isdefined(n_min_time))
	{
		n_min_time = 1;
	}
	if(!isdefined(n_max_time))
	{
		n_max_time = 4;
	}
	level endon(str_objective + "_completed");
	str_scenedef = "cin_zur_02_01_climb_aie_charging_station";
	var_18dfedfa = Array("sec_assault_ar", "sec_suppressor_ar", "sec_cqb_shotgun", "sec_rpg_rocket", "sec_suppressor_mg", "sec_sniper", "sec_rusher", "sec_exploder");
	var_ce83537c = GetEnt(var_c7d3f5b3, "targetname");
	var_ce83537c endon("death");
	var_ce83537c endon("disable");
	if(!isdefined(var_ce83537c.var_85178a47))
	{
		var_ce83537c.var_85178a47 = util::spawn_model("tag_origin", var_ce83537c.s_scene.origin, var_ce83537c.s_scene.angles);
	}
	var_ce83537c.v_start_angles = var_ce83537c.angles;
	var_ce83537c.var_85178a47.script_objective = str_objective;
	var_ce83537c.a_ai = [];
	var_ce83537c.n_spawned = 0;
	var_ce83537c.b_active = 1;
	wait(0.05);
	do
	{
		var_ce83537c.a_ai = Array::remove_dead(var_ce83537c.a_ai);
		if(var_ce83537c.a_ai.size >= var_31561fde)
		{
			wait(2);
		}
		else
		{
			str_spawner = Array::random(var_18dfedfa);
			var_ce83537c.ai_spawned = spawner::simple_spawn_single(str_spawner);
			var_ce83537c.var_85178a47 LinkTo(var_ce83537c);
			if(!isalive(var_ce83537c.ai_spawned))
			{
				wait(0.05);
			}
			else
			{
				var_ce83537c.ai_spawned ai::set_ignoreme(1);
				if(isdefined(var_ce83537c.s_scene.script_label))
				{
					var_ce83537c.ai_spawned colors::set_force_color(var_ce83537c.s_scene.script_label);
				}
				if(!isdefined(var_ce83537c.a_ai))
				{
					var_ce83537c.a_ai = [];
				}
				else if(!IsArray(var_ce83537c.a_ai))
				{
					var_ce83537c.a_ai = Array(var_ce83537c.a_ai);
				}
				var_ce83537c.a_ai[var_ce83537c.a_ai.size] = var_ce83537c.ai_spawned;
				var_ce83537c.n_spawned++;
				var_ce83537c.ai_spawned ForceTeleport(var_ce83537c.var_85178a47.origin, var_ce83537c.var_85178a47.angles);
				var_ce83537c.ai_spawned LinkTo(var_ce83537c.var_85178a47);
				var_ce83537c.var_85178a47 scene::init(str_scenedef, var_ce83537c.ai_spawned);
				var_ce83537c RotateYaw(180, RandomFloatRange(0.89, 1.4));
				var_ce83537c waittill("rotatedone");
				if(!isalive(var_ce83537c.ai_spawned))
				{
					var_ce83537c.var_85178a47 Unlink();
					var_ce83537c.var_85178a47.origin = var_ce83537c.s_scene.origin;
					var_ce83537c.var_85178a47.angles = var_ce83537c.s_scene.angles;
				}
				else
				{
					var_ce83537c.var_85178a47 scene::Play(str_scenedef, var_ce83537c.ai_spawned);
					if(isalive(var_ce83537c.ai_spawned))
					{
						var_ce83537c.ai_spawned ai::set_ignoreme(0);
						var_ce83537c.ai_spawned Unlink();
					}
					var_ce83537c.ai_spawned = undefined;
					var_ce83537c.var_85178a47 Unlink();
					var_ce83537c.var_85178a47.origin = var_ce83537c.s_scene.origin;
					var_ce83537c.var_85178a47.angles = var_ce83537c.s_scene.angles;
					wait(RandomFloatRange(n_min_time, n_max_time));
					if(n_count != 0 && var_ce83537c.n_spawned >= n_count)
					{
						b_active = 0;
					}
				}
			}
		}
	}
	while(!(isdefined(var_ce83537c.b_active) && var_ce83537c.b_active));
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
	var_ce83537c = GetEnt(var_c7d3f5b3, "targetname");
	if(!isdefined(var_ce83537c))
	{
		/#
			iprintln("Dev Block strings are not supported" + var_c7d3f5b3 + "Dev Block strings are not supported");
		#/
		return;
	}
	var_ce83537c notify("disable");
	var_ce83537c.b_active = 0;
	if(isalive(var_ce83537c.ai_spawned))
	{
		var_ce83537c.ai_spawned kill();
	}
	var_ce83537c RotateTo(var_ce83537c.v_start_angles, 1);
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
	self endon("death");
	if(var_f553b6d0)
	{
		wait(RandomFloatRange(1, 3));
		self clientfield::set("hero_cold_breath", 1);
	}
	else
	{
		self clientfield::set("hero_cold_breath", 0);
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
function function_e547724d(a_ents)
{
	a_ents["raven"] Hide();
	level waittill("hash_755edaa4");
	a_ents["raven"] show();
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
function function_3f6f483d(a_ents)
{
	a_ents["raven"] show();
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
function function_86b1cd8a(a_ents)
{
	a_ents["raven"] endon("death");
	a_ents["raven"] Hide();
	a_ents["raven"] waittill("hash_db8335ba");
	a_ents["raven"] show();
	a_ents["raven"] waittill("hash_c03e8e55");
	a_ents["raven"] clientfield::set("raven_fade_out", 1);
	wait(0.5);
	a_ents["raven"] Hide();
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
function function_2504fb31(b_on)
{
	a_clip = GetEntArray("hq_atrium_player_clip", "targetname");
	if(b_on)
	{
		Array::run_all(a_clip, &solid);
	}
	else
	{
		Array::run_all(a_clip, &notsolid);
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
function function_df1fc23b(b_hacked)
{
	if(b_hacked)
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
function function_162b9ea0(a_ents)
{
	e_door = a_ents["tower_door"];
	level waittill("hash_1851c43a");
	e_door delete();
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
function function_4a00a473(str_location)
{
	if(str_location == "street")
	{
		level struct::delete_script_bundle("scene", "cin_zur_01_01_intro_1st_lost_contact");
	}
	else if(str_location == "garage")
	{
		level struct::delete_script_bundle("scene", "cin_zur_melee_robot_choke_throw");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_car_crash_stuck_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_parking_wall_explode_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_truck_crash_01_bundle");
	}
	else if(str_location == "plaza_battle")
	{
		level struct::delete_script_bundle("scene", "cin_zur_02_01_climb_aie_charging_station");
		level struct::delete_script_bundle("scene", "cin_zur_03_01_train_vign_bodies02");
		level struct::delete_script_bundle("scene", "cin_zur_03_01_train_vign_bodies03");
		level struct::delete_script_bundle("scene", "cin_zur_03_01_train_vign_bodies04");
		level struct::delete_script_bundle("scene", "cin_zur_03_01_train_vign_strapped");
		level struct::delete_script_bundle("scene", "cin_zur_04_01_ext_vign_lockdown");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_car_crash_01_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_car_crash_02_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_car_crash_03_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_car_crash_04_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_car_crash_05_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_hunter_start_01_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_hunter_start_02_bundle");
	}
	else if(str_location == "server_room")
	{
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_train_seats_bundle");
		level struct::delete_script_bundle("scene", "cin_zur_06_02_decontamination_vign_schematic");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh010");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh020");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh030");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh040");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh050");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh060");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh070");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh080");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh090");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh100");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh110");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh120");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh130");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh140");
		level struct::delete_script_bundle("scene", "cin_zur_06_sacrifice_3rd_sh150");
	}
	else if(str_location == "clearing_hub")
	{
		level struct::delete_script_bundle("scene", "cin_zur_09_01_standoff_1st_hostage");
		level struct::delete_script_bundle("scene", "cin_zur_09_02_standoff_1st_forest");
		level struct::delete_script_bundle("scene", "cin_zur_09_02_standoff_3rd_forest_part2_sh010");
		level struct::delete_script_bundle("scene", "cin_zur_09_01_standoff_vign_far_as_i_go");
		level struct::delete_script_bundle("scene", "cin_zur_10_01_kruger_3rd_questioned_sh010");
		level struct::delete_script_bundle("scene", "cin_zur_10_01_kruger_3rd_questioned_sh020");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_rock_slide_bundle");
	}
	else if(str_location == "root_zurich")
	{
		level struct::delete_script_bundle("scene", "cin_zur_12_01_root_1st_mirror_01");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_roots_train_bundle");
	}
	else if(str_location == "root_cairo")
	{
		level struct::delete_script_bundle("scene", "cin_zur_14_01_cairo_root_1st_fall");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_checkpoint_wall_01_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_wall_drop_bundle");
	}
	else if(str_location == "clearing_hub_3")
	{
		level struct::delete_script_bundle("scene", "cin_zur_12_01_root_1st_crumble");
		level struct::delete_script_bundle("scene", "cin_zur_12_01_root_1st_crumble3");
	}
	else if(str_location == "root_singapore")
	{
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_ferris_wheel_wave_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_container_collapse_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_ferris_wheel_bundle");
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_zurich_car_slide_bundle");
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
function function_9f90bc0f(a_ents, str_notify)
{
	if(isdefined(str_notify))
	{
		level waittill(str_notify);
	}
	if(isdefined(self.scriptbundlename))
	{
		level struct::delete_script_bundle("scene", self.scriptbundlename);
	}
	a_ents = Array::remove_undefined(a_ents);
	if(a_ents.size)
	{
		foreach(e_ent in a_ents)
		{
			if(!isPlayer(e_ent))
			{
				e_ent delete();
			}
		}
	}
}

/*
	Name: enable_nodes
	Namespace: namespace_8e9083ff
	Checksum: 0x4AE0212
	Offset: 0xCB08
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function enable_nodes(str_key, str_val, b_enable)
{
	if(!isdefined(str_val))
	{
		str_val = "targetname";
	}
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	a_nodes = GetNodeArray(str_key, str_val);
	foreach(nd in a_nodes)
	{
		SetEnableNode(nd, b_enable);
	}
}

/*
	Name: debug_draw_line
	Namespace: namespace_8e9083ff
	Checksum: 0x81D5CF5
	Offset: 0xCC10
	Size: 0xD7
	Parameters: 7
	Flags: None
*/
function debug_draw_line(var_eff163a9, e_ent2, str_endon, v_color, str_endon2, str_tag1, str_tag2)
{
	/#
		if(!isdefined(str_endon))
		{
			str_endon = "Dev Block strings are not supported";
		}
		if(!isdefined(v_color))
		{
			v_color = (0, 1, 0);
		}
		var_eff163a9 endon(str_endon);
		e_ent2 endon(str_endon);
		self endon(str_endon2);
		while(1)
		{
			recordLine(var_eff163a9.origin, e_ent2.origin, v_color, "Dev Block strings are not supported", var_eff163a9);
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
function function_9ff5370d(n_radius, v_color, e_owner)
{
	/#
		if(!isdefined(n_radius))
		{
			n_radius = 64;
		}
		if(!isdefined(v_color))
		{
			v_color = (0, 1, 0);
		}
		if(!isdefined(e_owner))
		{
			e_owner = self;
		}
		self endon("hash_dc898c8");
		while(isdefined(self))
		{
			RecordCircle(self.origin, n_radius, v_color, "Dev Block strings are not supported", e_owner);
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
function function_68a764f6(n_radius, v_color, e_owner)
{
	/#
		if(!isdefined(n_radius))
		{
			n_radius = 64;
		}
		if(!isdefined(v_color))
		{
			v_color = (0, 1, 0);
		}
		if(!isdefined(e_owner))
		{
			e_owner = self;
		}
		self endon("hash_5322c93b");
		while(isdefined(self))
		{
			RecordSphere(self.origin, n_radius, v_color, "Dev Block strings are not supported", e_owner);
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
function function_ff016910(str_text, v_color, e_owner)
{
	/#
		if(!isdefined(v_color))
		{
			v_color = (0, 1, 0);
		}
		if(!isdefined(e_owner))
		{
			e_owner = self;
		}
		self endon("hash_8fba9");
		while(isdefined(self))
		{
			Record3DText(str_text, self.origin, v_color, "Dev Block strings are not supported", e_owner);
			wait(0.05);
		}
	#/
}

/*
	Name: debug_player_damage
	Namespace: namespace_8e9083ff
	Checksum: 0xA4CAEC46
	Offset: 0xCEE8
	Size: 0x11
	Parameters: 0
	Flags: None
*/
function debug_player_damage()
{
	/#
		self endon("death");
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
		self endon("death");
		while(1)
		{
			self waittill("damage", n_damage, e_attacker, v_direction, v_point, str_type, str_tagname, str_modelname, str_partname, w_weapon);
			str_class = "Dev Block strings are not supported";
			if(!isdefined(str_type))
			{
				str_type = "Dev Block strings are not supported";
			}
			if(IsEntity(e_attacker))
			{
				str_class = e_attacker.classname;
				if(str_class === "Dev Block strings are not supported")
				{
					str_class = e_attacker.scriptvehicletype;
				}
				self thread function_4363773d(e_attacker, v_point, n_damage, str_class, str_type);
			}
			iprintln("Dev Block strings are not supported" + n_damage);
			iprintln("Dev Block strings are not supported" + str_class);
			iprintln("Dev Block strings are not supported" + str_type);
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
function function_4363773d(e_attacker, v_hit, n_damage, str_class, str_type)
{
	/#
		self endon("damage");
		self endon("death");
		var_7cc4d7ae = e_attacker.origin;
		v_player_pos = self.origin;
		var_ba43239b = e_attacker GetTagOrigin("Dev Block strings are not supported");
		if(!isdefined(var_ba43239b))
		{
			var_ba43239b = e_attacker.origin;
		}
		var_b19349be = Distance(var_ba43239b, v_hit);
		while(1)
		{
			Record3DText("Dev Block strings are not supported" + str_class, var_ba43239b + VectorScale((0, 0, 1), 8), (1, 0, 0), "Dev Block strings are not supported", self);
			Record3DText("Dev Block strings are not supported" + n_damage, var_ba43239b, (1, 0, 0), "Dev Block strings are not supported", self);
			Record3DText("Dev Block strings are not supported" + str_type, var_ba43239b + VectorScale((0, 0, -1), 8), (1, 0, 0), "Dev Block strings are not supported", self);
			Record3DText("Dev Block strings are not supported" + var_b19349be, var_ba43239b + VectorScale((0, 0, -1), 16), (1, 0, 0), "Dev Block strings are not supported", self);
			RecordCircle(var_7cc4d7ae, 32, (1, 0, 0), "Dev Block strings are not supported", self);
			RecordCircle(v_player_pos, 32, (0, 1, 0), "Dev Block strings are not supported", self);
			RecordSphere(var_ba43239b, 6, (1, 0, 0), "Dev Block strings are not supported", self);
			RecordSphere(v_hit, 6, (1, 1, 0), "Dev Block strings are not supported", self);
			recordLine(var_ba43239b, v_hit, (1, 0, 0), "Dev Block strings are not supported", self);
			if(isdefined(e_attacker))
			{
				RecordCircle(e_attacker.origin, 24, (1, 1, 0), "Dev Block strings are not supported", self);
				recordLine(var_7cc4d7ae, e_attacker.origin, (1, 1, 0), "Dev Block strings are not supported", self);
			}
			wait(0.05);
		}
	#/
}


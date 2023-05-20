#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_oed;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_accolades;
#using scripts\cp\cp_mi_cairo_aquifer_ambience;
#using scripts\cp\cp_mi_cairo_aquifer_fx;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\_oob;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\player_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_death_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_hunter;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_786319bb;

/*
	Name: function_2dc19561
	Namespace: namespace_786319bb
	Checksum: 0x5CC360BF
	Offset: 0x2168
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("aquifer_util", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_786319bb
	Checksum: 0xBA982737
	Offset: 0x21A8
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_2ea898a8();
	var_23b7868d = [];
	var_23b7868d[var_23b7868d.size] = %v_aqu_vtol_cockpit_close;
	var_23b7868d[var_23b7868d.size] = %v_aqu_vtol_cockpit_open;
	var_23b7868d[var_23b7868d.size] = %v_aqu_vtol_engine_hover;
	var_23b7868d[var_23b7868d.size] = %v_aqu_vtol_engine_fly;
	var_23b7868d[var_23b7868d.size] = %v_aqu_vtol_engine_idle;
}

/*
	Name: function_2ea898a8
	Namespace: namespace_786319bb
	Checksum: 0x3895D176
	Offset: 0x2250
	Size: 0x543
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("toplayer", "play_body_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "water_motes", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_dust_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_bubbles_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_snow_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "frost_post_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "splash_post_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "highlight_ai", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "robot_bubbles_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "kane_bubbles_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "toggle_enemy_highlight", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_dogfighting", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_show_damage_stages", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_canopy_state", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_engines_state", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_enable_wash_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_damage_state", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_set_active_landing_zone_num", 1, 4, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_set_missile_lock_percent", 1, 8, "float");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_show_missile_lock", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("vehicle", "vtol_screen_shake", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_fog_banks", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_pbg_banks", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "vehicle.weaponIndex", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "vehicle.lockOn", 1, 8, "float");
	namespace_71e9cb84::function_50f16166("clientuimodel", "vehicle.showLandHint", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "vehicle.showAimHint", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("clientuimodel", "hackUpload.percent", 1, 8, "float");
}

/*
	Name: function_23f52199
	Namespace: namespace_786319bb
	Checksum: 0xCBC1B525
	Offset: 0x27A0
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_23f52199()
{
	level.var_c1aa5253["boss_explosion"] = "explosions/fx_exp_generic_lg";
	level.var_c1aa5253["boss_disabled"] = "fire/fx_fire_gas_pipe_china";
	level.var_c1aa5253["boss_fire"] = "fire/fx_fire_floor_lrg";
	level.var_c1aa5253["bubbles"] = "player/fx_plyr_swim_bubbles_body";
}

/*
	Name: function_68714b99
	Namespace: namespace_786319bb
	Checksum: 0xB8D86A87
	Offset: 0x2820
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_68714b99()
{
	var_e9c55452 = function_9b7fda5e("script_origin", self.var_722885f3);
	self function_37f7858a(var_e9c55452);
	self waittill("hash_fb0f160e");
	var_e9c55452 function_dc8c8404();
}

/*
	Name: function_c2768198
	Namespace: namespace_786319bb
	Checksum: 0xF939458F
	Offset: 0x2898
	Size: 0x1AB
	Parameters: 0
	Flags: None
*/
function function_c2768198()
{
	wait(1);
	namespace_80983c42::function_80983c42("lighting_server_perf_lights");
	namespace_80983c42::function_80983c42("lighting_hangar_hallways_perf_lights");
	namespace_80983c42::function_67e7a937("lighting_hangar_a");
	namespace_80983c42::function_67e7a937("lighting_hangar_b");
	if(level namespace_ad23e503::function_7922262b("inside_aquifer"))
	{
		namespace_80983c42::function_67e7a937("lighting_hangar_hallways_perf_lights");
	}
	if(level namespace_ad23e503::function_dbca4c5d("water_room_exit") && level namespace_ad23e503::function_7922262b("water_room_exit"))
	{
		namespace_80983c42::function_67e7a937("lighting_server_perf_lights");
	}
	if(level namespace_ad23e503::function_dbca4c5d("post_breach") && level namespace_ad23e503::function_7922262b("post_breach"))
	{
		namespace_80983c42::function_80983c42("lighting_hangar_a");
	}
	if(level namespace_ad23e503::function_dbca4c5d("hideout_completed") && level namespace_ad23e503::function_7922262b("hideout_completed"))
	{
		namespace_80983c42::function_80983c42("lighting_hangar_b");
	}
}

/*
	Name: function_4dc4bd2c
	Namespace: namespace_786319bb
	Checksum: 0xD4F00411
	Offset: 0x2A50
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_4dc4bd2c()
{
	self.var_32d8f367 = &function_a3fd472e;
}

/*
	Name: function_a3fd472e
	Namespace: namespace_786319bb
	Checksum: 0xDB9C2B0A
	Offset: 0x2A78
	Size: 0x14D
	Parameters: 0
	Flags: None
*/
function function_a3fd472e()
{
	var_4fb2233 = [];
	var_4fb2233[var_4fb2233.size] = "res_vtol1_vh";
	var_4fb2233[var_4fb2233.size] = "res_vtol2_vh";
	var_4fb2233[var_4fb2233.size] = "port_vtol1_vh";
	var_4fb2233[var_4fb2233.size] = "port_vtol2_vh";
	var_66172ffc = function_e7cf1abe();
	foreach(var_4be20d44 in var_4fb2233)
	{
		var_c89e148a = function_6ada35ba(var_4be20d44, "targetname");
		if(isdefined(var_c89e148a))
		{
			var_c89e148a.var_8b71928 = 1;
			namespace_84970cc4::function_69554b3e(var_66172ffc, var_c89e148a);
		}
	}
	return var_66172ffc;
}

/*
	Name: function_716b5d66
	Namespace: namespace_786319bb
	Checksum: 0x4BF322E2
	Offset: 0x2BD0
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_716b5d66(var_25294cfe)
{
}

/*
	Name: function_44287aa3
	Namespace: namespace_786319bb
	Checksum: 0xB402F42F
	Offset: 0x2BE8
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_44287aa3()
{
	while(1)
	{
		var_e78c0153 = namespace_4dbf3ae3::function_1ab5ebec("pipe_splash_trig");
		if(!isdefined(var_e78c0153.var_aef176e7.var_ddcbc2bb))
		{
			var_e78c0153.var_aef176e7 function_247bade9();
		}
	}
}

/*
	Name: function_247bade9
	Namespace: namespace_786319bb
	Checksum: 0x30465AFD
	Offset: 0x2C60
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_247bade9()
{
	if(!isdefined(self.var_ddcbc2bb))
	{
		self.var_ddcbc2bb = 1;
		wait(2);
		self.var_ddcbc2bb = undefined;
	}
}

/*
	Name: function_b86ff37e
	Namespace: namespace_786319bb
	Checksum: 0x79AEEDD1
	Offset: 0x2C98
	Size: 0x12B
	Parameters: 3
	Flags: None
*/
function function_b86ff37e(var_498bbabf, var_a67db03e, var_d66abd8d)
{
	var_5948b3df = function_6ada35ba(var_d66abd8d, "targetname");
	var_5948b3df.var_611ccff1 = namespace_82b91a51::function_14518e76(var_5948b3df, function_483c3c51(var_a67db03e), &"CP_MI_CAIRO_AQUIFER_OPEN", &function_ee5d34cb);
	var_5948b3df.var_611ccff1 namespace_a230c2b1::function_df0e9e69(var_498bbabf);
	var_5948b3df.var_611ccff1.var_cfce9b82 = &function_eae79770;
	var_5948b3df.var_611ccff1.var_a454a59a = &function_35e9f08;
	level waittill("hash_26700a52");
	var_5948b3df.var_611ccff1 namespace_a230c2b1::function_e54c54c3();
}

/*
	Name: function_ee5d34cb
	Namespace: namespace_786319bb
	Checksum: 0xA98501E2
	Offset: 0x2DD0
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_ee5d34cb(var_2e09a44e)
{
	self notify("hash_221e0b70");
	level notify("hash_26700a52");
}

/*
	Name: function_eae79770
	Namespace: namespace_786319bb
	Checksum: 0x5128A486
	Offset: 0x2E00
	Size: 0x15
	Parameters: 1
	Flags: None
*/
function function_eae79770(var_5dc5e20a)
{
}

/*
	Name: function_35e9f08
	Namespace: namespace_786319bb
	Checksum: 0x8DB8A7CF
	Offset: 0x2E20
	Size: 0x65
	Parameters: 3
	Flags: None
*/
function function_35e9f08(var_3e94206a, var_5dc5e20a, var_3c61bfc2)
{
	if(isdefined(var_5dc5e20a))
	{
		if(isdefined(var_3c61bfc2) && var_3c61bfc2)
		{
			self.var_4dbf3ae3 notify("hash_ece70538", var_5dc5e20a);
			level notify("hash_221e0b70", var_3c61bfc2, var_5dc5e20a);
		}
	}
}

/*
	Name: function_a643bffd
	Namespace: namespace_786319bb
	Checksum: 0x1F4509E9
	Offset: 0x2E90
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function function_a643bffd()
{
	if(isdefined(level.var_c719b7b7))
	{
		return;
	}
	level.var_c719b7b7 = 1;
	level namespace_ad23e503::function_1ab5ebec("player_active_in_level");
	/#
	#/
	level.var_c1aa5253["fx_server_explosion_destructible"] = "electric/fx_elec_sparks_burst_blue_fall_amb";
	level.var_c1aa5253["fx_lg_explosion_destructible"] = "explosions/fx_exp_generic_lg";
	level.var_c1aa5253["fx_lg_explosion_pillar_destructible"] = "explosions/fx_exp_generic_lg";
	level.var_c1aa5253["fx_med_explosion_room_destructible"] = "explosions/fx_exp_quadtank_death_sm";
	level.var_c1aa5253["fx_glass_destructible"] = "destruct/fx_dest_ramses_plaza_glass_bldg";
	level.var_c1aa5253["fx_glass_explode_destructible"] = "explosions/fx_exp_phosphorus_prologue";
	level.var_c1aa5253["fx_electrical_destructible"] = "explosions/fx_exp_phosphorus_prologue";
	level.var_c1aa5253["fx_electrical_med_destructible"] = "electric/fx_elec_burst_med_monitor_lotus";
	level.var_c1aa5253["fx_lg_steam_destructible"] = "steam/fx_steam_hpressure_hose_burst_sgen";
	level.var_c1aa5253["fx_med_steam_destructible"] = "steam/fx_steam_hpressure_hose_burst_sgen";
	level.var_c1aa5253["fx_lg_water_destructible"] = "water/fx_water_burst_xxxlrg_far";
	level.var_c1aa5253["fx_exlg_water_destructible"] = "water/fx_water_fall_os_burst_sgen";
	var_338b3066 = function_99201f25("reusable_destructible", "targetname");
	var_c08b6e63 = function_99201f25("reusable_destructible_players", "targetname");
	namespace_84970cc4::function_966ecb29(var_338b3066, &function_14519736);
	namespace_84970cc4::function_966ecb29(var_c08b6e63, &function_dd7031ad);
	var_afe76451 = function_99201f25("environment_destructible", "targetname");
	namespace_84970cc4::function_966ecb29(var_afe76451, &function_eee6cbf2);
}

/*
	Name: function_14519736
	Namespace: namespace_786319bb
	Checksum: 0xE0B2278D
	Offset: 0x3118
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_14519736()
{
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_4dbf3ae3", var_a3d46ee4);
		self function_cc4d91b(var_a3d46ee4);
	}
}

/*
	Name: function_cc4d91b
	Namespace: namespace_786319bb
	Checksum: 0x12EAD580
	Offset: 0x3170
	Size: 0x165
	Parameters: 1
	Flags: None
*/
function function_cc4d91b(var_a3d46ee4)
{
	var_5acbeba0 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	var_a24a5370 = function_bc7ce905(var_5acbeba0.var_6ab6f4fd);
	var_b5f6560e = function_aba60185(var_5acbeba0.var_6ab6f4fd);
	if(isdefined(var_a3d46ee4) && (isdefined(var_a3d46ee4.var_8fedf36c) && var_a3d46ee4 function_c7e339d1(var_a3d46ee4.var_8fedf36c) || function_85e4c3b3(var_a3d46ee4)))
	{
		function_fd4ba5e1(level.var_c1aa5253[self.var_caae374e], var_5acbeba0.var_722885f3, var_a24a5370, var_b5f6560e);
		if(isdefined(self.var_a33b36db) && function_680650d9(self.var_a33b36db))
		{
			wait(function_b6b79a0(self.var_a33b36db));
		}
		else
		{
			wait(10);
		}
	}
}

/*
	Name: function_eee6cbf2
	Namespace: namespace_786319bb
	Checksum: 0x293B0E2B
	Offset: 0x32E0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_eee6cbf2()
{
	self endon("hash_128f8789");
	self waittill("hash_4dbf3ae3", var_a3d46ee4);
	self function_9c6e51f(var_a3d46ee4);
}

/*
	Name: function_9c6e51f
	Namespace: namespace_786319bb
	Checksum: 0x358D7AEB
	Offset: 0x3330
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_9c6e51f(var_a3d46ee4)
{
	var_6df9264 = function_6ada35ba(self.var_b07228b6, "targetname");
	if(isdefined(var_a3d46ee4) && (isdefined(var_a3d46ee4.var_8fedf36c) && var_a3d46ee4 function_c7e339d1(var_a3d46ee4.var_8fedf36c) || function_85e4c3b3(var_a3d46ee4)))
	{
		var_23b7868d = [];
		var_23b7868d[var_23b7868d.size] = "p7_fxanim_cp_aqu_radar_array_01";
		var_23b7868d[var_23b7868d.size] = "p7_fxanim_cp_aqu_radar_array_02";
		var_dc837ae8 = namespace_84970cc4::function_47d18840(var_23b7868d);
		var_6df9264 thread namespace_cc27597::function_43718187(var_dc837ae8, var_6df9264);
	}
}

/*
	Name: function_fe17c18
	Namespace: namespace_786319bb
	Checksum: 0xF526221
	Offset: 0x3440
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_fe17c18()
{
	namespace_82b91a51::function_46d3a558(&"CP_MI_CAIRO_AQUIFER_INTRO_LINE_2_FULL", "", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_3_FULL", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_3_SHORT", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_4_FULL", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_4_SHORT", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_5_FULL", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_5_SHORT");
	level namespace_ad23e503::function_74d6b22f("intro_chryon_done");
}

/*
	Name: function_913d882
	Namespace: namespace_786319bb
	Checksum: 0x4E730C7E
	Offset: 0x34C0
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_913d882()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	while(!level namespace_ad23e503::function_7922262b("flag_khalil_water_exit"))
	{
		if(self function_8213df59() && (!isdefined(self.var_5ea9c8b7) && self.var_5ea9c8b7))
		{
			self namespace_71e9cb84::function_e9c3870b("water_motes", 1);
		}
		else
		{
			self namespace_71e9cb84::function_e9c3870b("water_motes", 0);
		}
		wait(0.5);
	}
	self namespace_71e9cb84::function_e9c3870b("water_motes", 0);
}

/*
	Name: function_a05f9e55
	Namespace: namespace_786319bb
	Checksum: 0xE3042D44
	Offset: 0x35A0
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_a05f9e55()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_a66e492f = 0;
	while(!level namespace_ad23e503::function_7922262b("inside_aquifer"))
	{
		if(self function_cb8df3d0() || self function_8213df59() || level namespace_ad23e503::function_7922262b("inside_data_center") || level namespace_ad23e503::function_7922262b("flag_force_off_dust"))
		{
			if(self.var_a66e492f)
			{
				self namespace_71e9cb84::function_e9c3870b("player_dust_fx", 0);
				self.var_a66e492f = 0;
			}
		}
		else if(!self.var_a66e492f)
		{
			self namespace_71e9cb84::function_e9c3870b("player_dust_fx", 1);
			self.var_a66e492f = 1;
		}
		wait(0.5);
	}
	self namespace_71e9cb84::function_e9c3870b("player_dust_fx", 0);
	self.var_a66e492f = 0;
}

/*
	Name: function_3de8b7b4
	Namespace: namespace_786319bb
	Checksum: 0xADB4B030
	Offset: 0x3708
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_3de8b7b4()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	level namespace_ad23e503::function_1ab5ebec("flag_snow_room");
	self namespace_71e9cb84::function_e9c3870b("player_snow_fx", 1);
	self function_921a1574("evt_dni_glitch");
	self function_c2931a36("evt_snowverlay");
	wait(5);
	level namespace_ad23e503::function_d3de6822("flag_snow_room");
	self namespace_71e9cb84::function_e9c3870b("player_snow_fx", 0);
	self function_eaa69754(1);
	self function_921a1574("evt_dni_delusion_outro");
}

/*
	Name: function_dd7031ad
	Namespace: namespace_786319bb
	Checksum: 0x1131580B
	Offset: 0x3820
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_dd7031ad()
{
	self endon("hash_128f8789");
	var_5acbeba0 = namespace_14b42b8a::function_7922262b(self.var_b07228b6, "targetname");
	var_a24a5370 = function_bc7ce905(var_5acbeba0.var_6ab6f4fd);
	var_b5f6560e = function_aba60185(var_5acbeba0.var_6ab6f4fd);
	while(1)
	{
		self waittill("hash_4dbf3ae3");
		function_fd4ba5e1(level.var_c1aa5253[self.var_caae374e], var_5acbeba0.var_722885f3, var_a24a5370, var_b5f6560e);
		if(isdefined(self.var_a33b36db) && function_680650d9(self.var_a33b36db))
		{
			wait(function_b6b79a0(self.var_a33b36db));
		}
		else
		{
			wait(5);
		}
	}
}

/*
	Name: function_db077321
	Namespace: namespace_786319bb
	Checksum: 0x1AAC0B53
	Offset: 0x3950
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function function_db077321(var_c4ea019e, var_25d8ef6f)
{
	if(!isdefined(level.var_ef297e7c))
	{
		level.var_ef297e7c = [];
	}
	if(!isdefined(level.var_ef297e7c[var_c4ea019e]))
	{
		level.var_ef297e7c[var_c4ea019e] = function_a8fb77bd();
		level.var_ef297e7c[var_c4ea019e].var_4b0a3d4c = var_25d8ef6f;
		level.var_ef297e7c[var_c4ea019e].var_3dd910c5 = [];
	}
}

/*
	Name: function_8b84bb6c
	Namespace: namespace_786319bb
	Checksum: 0xAB8802BD
	Offset: 0x39F8
	Size: 0x63
	Parameters: 3
	Flags: None
*/
function function_8b84bb6c(var_c4ea019e, var_26e12fb, var_25d8ef6f)
{
	function_db077321(var_c4ea019e, var_25d8ef6f);
	namespace_84970cc4::function_69554b3e(level.var_ef297e7c[var_c4ea019e].var_3dd910c5, var_26e12fb, 0);
}

/*
	Name: function_11a9191
	Namespace: namespace_786319bb
	Checksum: 0x5A6D7FBA
	Offset: 0x3A68
	Size: 0x2BD
	Parameters: 0
	Flags: None
*/
function function_11a9191()
{
	var_fba3cf4 = function_1556496c("gamedata/tables/cp/cp_dogfightPaths.csv");
	for(var_3947a807 = 1; var_3947a807 < var_fba3cf4; var_3947a807++)
	{
		var_c4ea019e = function_57b2be45(function_5a31ce6c("gamedata/tables/cp/cp_dogfightPaths.csv", var_3947a807, 1));
		var_25d8ef6f = function_33724181(function_5a31ce6c("gamedata/tables/cp/cp_dogfightPaths.csv", var_3947a807, 2));
		if(!isdefined(var_c4ea019e) && var_c4ea019e != "")
		{
			break;
		}
		var_cff394b4 = 3;
		var_74cbf04d = function_57b2be45(function_5a31ce6c("gamedata/tables/cp/cp_dogfightPaths.csv", var_3947a807, var_cff394b4));
		var_ddc5eafb = function_33724181(function_5a31ce6c("gamedata/tables/cp/cp_dogfightPaths.csv", var_3947a807, var_cff394b4 + 1));
		while(isdefined(var_74cbf04d) && var_74cbf04d != "")
		{
			if(!isdefined(var_ddc5eafb))
			{
				var_ddc5eafb = 0;
			}
			var_26e12fb = function_a8fb77bd();
			var_26e12fb.var_74cbf04d = var_74cbf04d;
			var_26e12fb.var_ddc5eafb = var_ddc5eafb / function_e1c7a0c8(var_74cbf04d);
			function_8b84bb6c(var_c4ea019e, var_26e12fb, var_25d8ef6f);
			var_cff394b4 = var_cff394b4 + 2;
			var_74cbf04d = function_57b2be45(function_5a31ce6c("gamedata/tables/cp/cp_dogfightPaths.csv", var_3947a807, var_cff394b4));
			var_ddc5eafb = function_33724181(function_5a31ce6c("gamedata/tables/cp/cp_dogfightPaths.csv", var_3947a807, var_cff394b4 + 1));
		}
	}
}

/*
	Name: function_c7676d36
	Namespace: namespace_786319bb
	Checksum: 0xDF2CB6AD
	Offset: 0x3D30
	Size: 0x293
	Parameters: 0
	Flags: None
*/
function function_c7676d36()
{
	self endon("hash_128f8789");
	self endon("hash_e568e158");
	self function_8c8e79fe();
	self function_422037f5();
	self function_a9dcd549(0);
	self namespace_71e9cb84::function_74d6b22f("vtol_dogfighting", 0);
	self.var_53125b70 = 1;
	self notify("hash_53125b70");
	self.var_8f9e6a04 function_618593a2();
	wait(0.5);
	self notify("hash_8aa591e9");
	self.var_8f9e6a04.var_8fedf36c function_13193225("veh_bo3_mil_vtol_fighter_player_dogfight_slow");
	wait(3.5);
	self.var_7757fc7b = 1;
	self notify("hash_7757fc7b");
	self.var_8f9e6a04.var_8fedf36c function_13193225("veh_bo3_mil_vtol_fighter_player_dogfight");
	if(!isdefined(self.var_3ae26974))
	{
		self waittill("hash_3ae26974");
	}
	self.var_8f9e6a04 function_c477757c(self.var_3ae26974);
	wait(0.05);
	while(!isdefined(self.var_3c6a99b9) && self.var_3c6a99b9 && function_cb3d1c9b(self.var_722885f3, self.var_3ae26974.var_722885f3) > 14400 && (self.var_c63462fd != self.var_3ae26974.var_c63462fd || self function_f2f3368f(self.var_c63462fd) < self.var_3ae26974 function_f2f3368f(self.var_3ae26974.var_c63462fd)))
	{
		wait(0.05);
	}
	self notify("hash_e18de71a");
	wait(0.05);
	self.var_aab0d56f = 0;
	self function_2992720d(self.var_722885f3, self.var_8f9e6a04);
	wait(0.1);
	self function_dc8c8404();
}

/*
	Name: function_cb795cc3
	Namespace: namespace_786319bb
	Checksum: 0xAF19A8F6
	Offset: 0x3FD0
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_cb795cc3()
{
	self endon("hash_128f8789");
	self endon("hash_e568e158");
	self endon("hash_53125b70");
	wait(12);
	if(isdefined(self.var_8f9e6a04))
	{
		if(self.var_d4f48128 <= 1)
		{
			self.var_8f9e6a04 function_fe19b920("props");
		}
		else
		{
			wait(8);
			if(isdefined(self.var_8f9e6a04))
			{
				self.var_8f9e6a04 function_fe19b920("props");
			}
		}
	}
}

/*
	Name: function_78e66c54
	Namespace: namespace_786319bb
	Checksum: 0x8B4DE31C
	Offset: 0x4080
	Size: 0x5D7
	Parameters: 0
	Flags: None
*/
function function_78e66c54()
{
	self endon("hash_128f8789");
	self endon("hash_e568e158");
	self.var_3a90f16b = 100000;
	self.var_47c252e3 = self.var_3a90f16b;
	self.var_d4f48128 = 0;
	var_b1e0b5bc = self.var_d4f48128;
	var_cdfde28c = 3;
	var_3c794781 = 1;
	var_c357667 = [];
	var_c357667[0] = 10;
	var_c357667[1] = 20;
	var_c357667[2] = 10;
	switch(function_afedf5ee("g_gameskill"))
	{
		case 0:
		{
			var_3c794781 = 0.333;
			var_c357667[0] = 5;
			var_c357667[1] = 10;
			var_c357667[2] = 5;
			break;
		}
		case 2:
		{
			var_c357667[0] = 15;
			var_c357667[1] = 25;
			var_c357667[2] = 10;
			break;
		}
		case 3:
		{
			var_c357667[0] = 20;
			var_c357667[1] = 30;
			var_c357667[2] = 10;
			break;
		}
		case 4:
		{
			var_c357667[0] = 25;
			var_c357667[1] = 35;
			var_c357667[2] = 10;
			break;
		}
	}
	var_fa51bc25 = 0;
	var_29fc3405 = 0;
	self namespace_71e9cb84::function_74d6b22f("vtol_show_damage_stages", 1);
	while(isdefined(self) && function_5b49d38c(self))
	{
		self waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_bd00ff2a, var_c8a3ac29, var_fe311e35, var_6df9264, var_b31a6ddf, var_1b2a0d26, var_dfcc01fd, var_980d0a72);
		if(isdefined(self.var_8f9e6a04) && var_a0ad4f34 == self.var_8f9e6a04)
		{
			var_94bdacf3 = 0;
			if(function_5dbf7eca(var_fe311e35, "BULLET"))
			{
				var_fa51bc25++;
				if(var_fa51bc25 >= var_c357667[self.var_d4f48128])
				{
					self.var_d4f48128++;
					var_fa51bc25 = 0;
				}
			}
			else if(function_5dbf7eca(var_fe311e35, "PROJECTILE"))
			{
				self.var_c12a181e = 1;
				var_29fc3405++;
				if(var_29fc3405 >= var_3c794781)
				{
					self.var_d4f48128 = self.var_d4f48128 + function_b6b79a0(var_29fc3405 / var_3c794781);
					var_fa51bc25 = 0;
					var_29fc3405 = 0;
				}
			}
			if(self.var_d4f48128 != var_b1e0b5bc)
			{
				self.var_d4f48128 = namespace_d73b9283::function_31931862(self.var_d4f48128, 0, var_cdfde28c);
				self function_10686b8a(self.var_d4f48128);
				self namespace_82b91a51::function_ef3f75eb("damage_stage_changed");
				var_b1e0b5bc = self.var_d4f48128;
			}
			if(self.var_d4f48128 >= var_cdfde28c)
			{
				if(!isdefined(self.var_8f9e6a04.var_3dca6783))
				{
					self.var_8f9e6a04.var_3dca6783 = 0;
				}
				self.var_8f9e6a04.var_3dca6783++;
				self.var_8f9e6a04 function_78d2c721("fire");
				self.var_8f9e6a04 function_78d2c721("nolock");
				self.var_8f9e6a04 function_78d2c721("lock");
				self.var_8f9e6a04 function_78d2c721("props");
				self.var_8f9e6a04 function_fe19b920("killed");
				function_37cbcf1a("evt_vehicle_explosion_lyr", self.var_722885f3);
				self thread function_c7676d36();
				if(!isdefined(self.var_c12a181e))
				{
					self.var_8f9e6a04 namespace_b5b83650::function_c27610f9("aq_dogfight_kill_only_guns");
				}
				return;
			}
			else if(self.var_d4f48128 > 1)
			{
				self.var_8f9e6a04 function_78d2c721("props");
			}
		}
		self.var_3a90f16b = self.var_47c252e3;
	}
}

/*
	Name: function_14f37b59
	Namespace: namespace_786319bb
	Checksum: 0xF766AD3
	Offset: 0x4660
	Size: 0x7AF
	Parameters: 6
	Flags: None
*/
function function_14f37b59(var_c4ea019e, var_f721d9a5, var_8f9e6a04, var_eb969a93, var_2f06d687, var_71824009)
{
	if(!isdefined(var_2f06d687))
	{
		if(isdefined(var_8f9e6a04) && isdefined(var_8f9e6a04.var_1e9fba3))
		{
			var_2f06d687 = "flight_path_spawner" + var_8f9e6a04.var_1e9fba3;
		}
		else
		{
			var_2f06d687 = "flight_path_spawner1";
		}
	}
	var_c82fd082 = namespace_96fa87af::function_7387a40a(var_2f06d687);
	var_c82fd082 function_4f87e1b9(-1);
	var_c82fd082.var_399c262e = "generic";
	var_c82fd082.var_e897aef6 = "explode";
	var_c82fd082 thread function_78e66c54();
	var_c82fd082 namespace_71e9cb84::function_74d6b22f("vtol_dogfighting", 1);
	if(!isdefined(level.var_40f90b42))
	{
		level.var_40f90b42 = [];
	}
	level.var_40f90b42[level.var_40f90b42.size] = var_c82fd082;
	if(!isdefined(var_c4ea019e))
	{
		var_c4ea019e = namespace_84970cc4::function_47d18840(function_391512da(level.var_ef297e7c));
	}
	var_59faf216 = 0.2;
	if(!isdefined(var_71824009))
	{
		var_71824009 = function_6ada35ba("dogfighting_scene", "targetname");
	}
	if(!isdefined(var_f721d9a5))
	{
		var_f721d9a5 = 0;
	}
	var_c82fd082 namespace_1fb6a2e5::function_f58fccb8(var_c4ea019e, var_71824009, undefined, var_f721d9a5);
	if(isdefined(var_8f9e6a04))
	{
		var_8f9e6a04.var_1d195e2c = var_c82fd082;
	}
	if(!isdefined(var_eb969a93))
	{
		var_eb969a93 = 1;
	}
	var_4b0a3d4c = level.var_ef297e7c[var_c4ea019e].var_4b0a3d4c * var_eb969a93;
	while(1)
	{
		var_c82fd082.var_c63462fd = var_c4ea019e;
		var_c82fd082 thread namespace_1fb6a2e5::function_43718187(var_c4ea019e, var_71824009, undefined, var_4b0a3d4c, 0, 0, var_59faf216, var_f721d9a5);
		var_60db70fa = function_aaeec8c5(0.05, function_ed96839(function_e1c7a0c8(var_c4ea019e) * 1 - var_f721d9a5 / 0.05) * 0.05 - var_59faf216) / var_4b0a3d4c;
		var_f721d9a5 = 0;
		var_5d74e4a2 = var_c82fd082 namespace_82b91a51::function_9fcf3cd8(var_60db70fa, "death", "bug_out", "slow_dogfight", "chain_dogfight", "beginning_dogfight");
		if(var_5d74e4a2 == "slow_dogfight")
		{
			var_eb969a93 = 0.7;
			var_4b0a3d4c = var_4b0a3d4c * var_eb969a93;
			var_59faf216 = 0;
			var_f721d9a5 = var_c82fd082 function_f2f3368f(var_c4ea019e);
			continue;
		}
		else if(var_5d74e4a2 == "chain_dogfight")
		{
			var_eb969a93 = 1.1;
			var_4b0a3d4c = level.var_ef297e7c[var_c4ea019e].var_4b0a3d4c * var_eb969a93;
			var_59faf216 = 0;
			var_f721d9a5 = var_c82fd082 function_f2f3368f(var_c4ea019e);
			continue;
		}
		else if(var_5d74e4a2 == "beginning_dogfight")
		{
			var_eb969a93 = 1;
			var_4b0a3d4c = level.var_ef297e7c[var_c4ea019e].var_4b0a3d4c;
			var_59faf216 = 0;
			var_f721d9a5 = var_c82fd082 function_f2f3368f(var_c4ea019e);
			continue;
		}
		else if(var_5d74e4a2 != "timeout")
		{
			function_81403b2f(level.var_40f90b42, var_c82fd082);
			return;
		}
		var_7ba7c005 = var_c4ea019e;
		if(isdefined(var_c82fd082.var_3ae26974) && isdefined(var_c82fd082.var_3ae26974.var_c63462fd))
		{
			var_c4ea019e = var_c82fd082.var_3ae26974.var_c63462fd;
			if(var_c4ea019e == var_7ba7c005)
			{
				var_c82fd082.var_3c6a99b9 = 1;
				function_81403b2f(level.var_40f90b42, var_c82fd082);
				return;
				break;
			}
			foreach(var_74cbf04d in level.var_ef297e7c[var_7ba7c005].var_3dd910c5)
			{
				if(var_74cbf04d.var_74cbf04d == var_c4ea019e)
				{
					var_f721d9a5 = var_74cbf04d.var_ddc5eafb;
					break;
				}
			}
		}
		else
		{
			var_26e12fb = namespace_84970cc4::function_47d18840(level.var_ef297e7c[var_c4ea019e].var_3dd910c5);
			var_c4ea019e = var_26e12fb.var_74cbf04d;
			var_f721d9a5 = var_26e12fb.var_ddc5eafb;
		}
		var_4b0a3d4c = level.var_ef297e7c[var_c4ea019e].var_4b0a3d4c * var_eb969a93;
		var_59faf216 = 0.2 * var_eb969a93;
		/#
			if(function_4bd0142f("Dev Block strings are not supported") > 0)
			{
				var_f08dfc9c = function_b9b16acf(var_71824009.var_722885f3, var_71824009.var_6ab6f4fd, var_c4ea019e, var_f721d9a5);
				if(function_cb3d1c9b(var_c82fd082.var_722885f3, var_f08dfc9c) > 1000000)
				{
					/#
						namespace_33b293fd::function_94739542("Dev Block strings are not supported" + var_7ba7c005 + "Dev Block strings are not supported" + var_c4ea019e + "Dev Block strings are not supported");
					#/
				}
			}
		#/
	}
}

/*
	Name: function_3ed8bf0e
	Namespace: namespace_786319bb
	Checksum: 0xB5988C56
	Offset: 0x4E18
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function function_3ed8bf0e()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self waittill("hash_b4a5f622");
	self.var_b55ae1ed = 0;
	if(isdefined(self.var_1d195e2c))
	{
		self.var_1d195e2c notify("hash_e568e158");
		self.var_1d195e2c.var_8a707c29 = 1;
		if(!isdefined(self.var_1d195e2c.var_53125b70) && self.var_1d195e2c.var_53125b70 && function_5b49d38c(self.var_1d195e2c))
		{
			self.var_1d195e2c function_10686b8a(3);
			self.var_1d195e2c namespace_82b91a51::function_ef3f75eb("damage_stage_changed");
		}
		wait(0.1);
		if(isdefined(self.var_1d195e2c) && function_5b49d38c(self.var_1d195e2c))
		{
			self.var_1d195e2c function_dc8c8404();
		}
		self.var_1d195e2c = undefined;
	}
	wait(1.5);
	var_b07228b6 = undefined;
	if(isdefined(self function_a9d982da()))
	{
		var_b07228b6 = self function_a9d982da();
		var_b07228b6 notify("hash_e568e158");
		var_b07228b6.var_8a707c29 = 1;
		if(!isdefined(var_b07228b6.var_53125b70) && var_b07228b6.var_53125b70 && function_5b49d38c(var_b07228b6))
		{
			var_b07228b6 function_10686b8a(3);
			var_b07228b6 namespace_82b91a51::function_ef3f75eb("damage_stage_changed");
		}
	}
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_dogfighting", 0);
	self thread function_cc401f5c();
	wait(0.1);
	if(isdefined(var_b07228b6) && function_5b49d38c(var_b07228b6))
	{
		var_b07228b6 function_dc8c8404();
	}
}

/*
	Name: function_c5a27940
	Namespace: namespace_786319bb
	Checksum: 0x76EEDF4A
	Offset: 0x50C8
	Size: 0x445
	Parameters: 1
	Flags: None
*/
function function_c5a27940(var_84fe82cd)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self endon("hash_b4a5f622");
	var_852345b1 = 2;
	self thread function_3ed8bf0e();
	self.var_b55ae1ed = 1;
	while(!isdefined(self function_a9d982da()))
	{
		wait(0.05);
	}
	self.var_1d195e2c = undefined;
	while(isdefined(self function_a9d982da()))
	{
		var_b07228b6 = self function_a9d982da();
		var_b07228b6 thread function_cb795cc3();
		var_5d74e4a2 = var_b07228b6 namespace_82b91a51::function_45ce26d("chain_dogfight", "death");
		var_c4ea019e = var_b07228b6.var_c63462fd;
		var_7a591ed2 = 0;
		var_885895d1 = var_852345b1;
		var_c6140bfd = var_b07228b6 function_f2f3368f(var_c4ea019e);
		var_51cba8c6 = function_e1c7a0c8(var_c4ea019e);
		var_7a591ed2 = var_51cba8c6 * 1 - var_c6140bfd;
		var_f721d9a5 = var_c6140bfd;
		while(var_7a591ed2 < var_885895d1)
		{
			var_885895d1 = var_885895d1 - var_7a591ed2;
			var_26e12fb = namespace_84970cc4::function_47d18840(level.var_ef297e7c[var_c4ea019e].var_3dd910c5);
			var_c4ea019e = var_26e12fb.var_74cbf04d;
			var_f721d9a5 = var_26e12fb.var_ddc5eafb;
			var_51cba8c6 = function_e1c7a0c8(var_c4ea019e);
			var_7a591ed2 = var_51cba8c6;
		}
		var_f721d9a5 = var_f721d9a5 + var_885895d1 / var_51cba8c6;
		self.var_1d195e2c = undefined;
		if(level namespace_957e94ce::function_7922262b("dogfight_ending") || level namespace_ad23e503::function_7922262b(var_84fe82cd))
		{
			level notify("hash_526f5a72");
			self notify("hash_b4a5f622");
		}
		thread function_14f37b59(var_c4ea019e, var_f721d9a5, self, 0.7);
		while(!isdefined(self.var_1d195e2c))
		{
			wait(0.05);
		}
		var_b07228b6.var_3ae26974 = self.var_1d195e2c;
		var_b07228b6 notify("hash_3ae26974");
		if(var_5d74e4a2 != "death")
		{
			var_b07228b6 namespace_82b91a51::function_5b7e3888("death", "switch_targets");
		}
		self function_46724ab2(self.var_1d195e2c);
		self.var_1d195e2c.var_8f9e6a04 = self;
		self.var_1d195e2c notify("hash_2961d3b9");
		self.var_1d195e2c = undefined;
		while(self function_a9d982da() == var_b07228b6)
		{
			wait(0.05);
		}
	}
	if(level namespace_957e94ce::function_7922262b("dogfight_ending") || level namespace_ad23e503::function_7922262b(var_84fe82cd))
	{
		level notify("hash_526f5a72");
		self notify("hash_b4a5f622");
	}
}

/*
	Name: function_a99964bc
	Namespace: namespace_786319bb
	Checksum: 0xCD73A8B0
	Offset: 0x5518
	Size: 0x2F
	Parameters: 1
	Flags: None
*/
function function_a99964bc(var_c4ea019e)
{
	/#
		while(1)
		{
			function_14f37b59(var_c4ea019e);
		}
	#/
}

/*
	Name: function_dbe3d86f
	Namespace: namespace_786319bb
	Checksum: 0xC32CDACE
	Offset: 0x5550
	Size: 0xE9
	Parameters: 0
	Flags: None
*/
function function_dbe3d86f()
{
	/#
		var_94d50501 = [];
		var_94d50501[var_94d50501.size] = "Dev Block strings are not supported";
		var_94d50501[var_94d50501.size] = "Dev Block strings are not supported";
		var_94d50501[var_94d50501.size] = "Dev Block strings are not supported";
		var_94d50501[var_94d50501.size] = "Dev Block strings are not supported";
		foreach(var_c4ea019e in var_94d50501)
		{
			thread function_a99964bc(var_c4ea019e);
		}
	#/
}

/*
	Name: function_e9a25955
	Namespace: namespace_786319bb
	Checksum: 0xCFE77C66
	Offset: 0x5648
	Size: 0xA43
	Parameters: 0
	Flags: None
*/
function function_e9a25955()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_522698b3 = function_6ada35ba("dogfighting_scene", "targetname");
	var_f8456b37 = 10000;
	var_dda84f1a = function_99201f25("landing_zone_1", "script_noteworthy");
	self thread function_a43cfbf3(1);
	var_e363b850 = self.var_8fedf36c function_8d974e5a((var_522698b3.var_722885f3[0], var_522698b3.var_722885f3[1], var_dda84f1a[0].var_722885f3[2]));
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_dogfighting", 0);
	self namespace_71e9cb84::function_cc4d5165("vehicle.lockOn", 0);
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_missile_lock_percent", 0);
	self namespace_957e94ce::function_9d134160("dogfighting");
	if(function_69c2f683(var_e363b850 - self.var_8fedf36c.var_722885f3[2]) > 2500 || function_316422d1(var_522698b3.var_722885f3, self.var_8fedf36c.var_722885f3) > var_f8456b37 * var_f8456b37 || function_863ee84(self.var_8fedf36c function_1439c75a()) > 50)
	{
		self.var_8fedf36c function_13193225("veh_bo3_mil_vtol_fighter_player_dogfight_slow");
		var_c30a0e54 = (var_522698b3.var_722885f3[0], var_522698b3.var_722885f3[1], var_e363b850);
		var_c82fd082 = namespace_96fa87af::function_7387a40a("flight_path_spawner" + self.var_1e9fba3);
		var_c82fd082 function_8c8e79fe();
		var_c82fd082 function_422037f5();
		var_c82fd082 function_a9dcd549(0);
		var_c82fd082 function_c05708b5();
		if(self namespace_957e94ce::function_7922262b("dogfighting"))
		{
			var_c82fd082.var_722885f3 = self function_a9d982da().var_722885f3;
			var_c82fd082.var_6ab6f4fd = self function_a9d982da().var_6ab6f4fd;
		}
		else
		{
			var_cb30cca = function_f679a325(self.var_722885f3 - var_c30a0e54);
			var_d768f7b8 = function_bc7ce905(self.var_8fedf36c.var_6ab6f4fd);
			if(function_5f9a4869(var_cb30cca, var_d768f7b8) < 0)
			{
				var_c82fd082.var_722885f3 = self.var_8fedf36c.var_722885f3 + var_d768f7b8 * 7500;
				var_c82fd082.var_6ab6f4fd = self.var_8fedf36c.var_6ab6f4fd;
			}
			else
			{
				var_51aed079 = function_bdcdc423(var_cb30cca);
				var_3ade70a0 = function_298b8148(var_51aed079);
				if(function_5f9a4869(var_3ade70a0, var_d768f7b8) < 0)
				{
					var_3ade70a0 = var_3ade70a0 * -1;
				}
				var_c82fd082.var_722885f3 = self.var_8fedf36c.var_722885f3 + var_3ade70a0 * 7500;
				var_c82fd082.var_6ab6f4fd = function_bdcdc423(var_3ade70a0);
			}
		}
		self function_46724ab2(var_c82fd082);
		self.var_8fedf36c function_2c935359(1);
		var_c6f525f9 = 0;
		while(isdefined(self) && isdefined(self.var_8fedf36c) && (function_cb3d1c9b(var_c30a0e54, var_c82fd082.var_722885f3) > var_f8456b37 * var_f8456b37 || function_863ee84(self.var_8fedf36c function_1439c75a()) > 50))
		{
			var_e363b850 = self.var_8fedf36c function_8d974e5a((var_c82fd082.var_722885f3[0], var_c82fd082.var_722885f3[1], var_dda84f1a[0].var_722885f3[2]));
			var_c30a0e54 = (var_522698b3.var_722885f3[0], var_522698b3.var_722885f3[1], var_e363b850);
			var_45e2d162 = var_c30a0e54 + function_f679a325((var_c82fd082.var_722885f3[0], var_c82fd082.var_722885f3[1], var_e363b850) - var_c30a0e54) * var_f8456b37 * 0.9;
			var_1b0f1bbd = function_aca9299(namespace_d73b9283::function_31931862(function_7d15e2f8(var_c82fd082.var_722885f3, var_45e2d162) / 2400, 0, 1), 2);
			var_35edc664 = function_bdcdc423(var_45e2d162 - var_c82fd082.var_722885f3);
			var_3e02e245 = function_3dfa27b4(var_35edc664[1]);
			var_e8e62a06 = function_3dfa27b4(var_35edc664[0]);
			var_8f590d6c = function_3dfa27b4(var_3e02e245 - var_c82fd082.var_6ab6f4fd[1]);
			var_cd190041 = function_3dfa27b4(var_e8e62a06 - var_c82fd082.var_6ab6f4fd[0]);
			var_c82fd082.var_6ab6f4fd = (function_3dfa27b4(var_c82fd082.var_6ab6f4fd[0]) + namespace_d73b9283::function_31931862(var_cd190041, -2.25, 2.25), function_3dfa27b4(var_c82fd082.var_6ab6f4fd[1]) + namespace_d73b9283::function_31931862(var_8f590d6c, -2.25, 2.25), var_c82fd082.var_6ab6f4fd[2] * 0.9);
			var_c82fd082.var_722885f3 = var_c82fd082.var_722885f3 + function_bc7ce905(var_c82fd082.var_6ab6f4fd) * 300 * 17.6 * var_1b0f1bbd * 0.05;
			if(var_1b0f1bbd < 0.5 && !var_c6f525f9)
			{
				self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 0);
				var_c6f525f9 = 1;
				self function_b8862210("veh_vtol_engage_lr", self);
			}
			wait(0.05);
		}
		if(isdefined(self))
		{
			self function_46724ab2(undefined);
		}
		var_c82fd082 function_dc8c8404();
	}
	else
	{
		self function_46724ab2(undefined);
	}
	self function_c20e893e(1);
}

/*
	Name: function_cc401f5c
	Namespace: namespace_786319bb
	Checksum: 0x8C486933
	Offset: 0x6098
	Size: 0x197
	Parameters: 0
	Flags: None
*/
function function_cc401f5c()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(!(isdefined(self.var_9749d396) && self.var_9749d396))
	{
		self.var_9749d396 = 1;
		self function_e9a25955();
		self.var_8fedf36c function_2c935359(0);
		self namespace_6ece97b7::function_113a0740(0);
		self.var_8fedf36c namespace_96fa87af::function_54055cfb();
		self.var_8fedf36c function_13193225("veh_bo3_mil_vtol_fighter_player_agile");
		self namespace_71e9cb84::function_cc4d5165("vehicle.weaponIndex", 1);
		self thread function_a43cfbf3(1);
		self namespace_957e94ce::function_9d134160("dogfighting");
		self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_dogfighting", 0);
		self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 0);
		self.var_8fedf36c function_66909ebb(1);
		self.var_8fedf36c function_12613b3a();
		self.var_9749d396 = 0;
	}
}

/*
	Name: function_c375b495
	Namespace: namespace_786319bb
	Checksum: 0x6299055F
	Offset: 0x6238
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_c375b495()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_6a1f4649");
	while(self function_5c971cb7())
	{
		self waittill("hash_d24e5ba0");
		self function_cc401f5c();
	}
}

/*
	Name: function_73d90572
	Namespace: namespace_786319bb
	Checksum: 0x5BF33766
	Offset: 0x62A8
	Size: 0x507
	Parameters: 0
	Flags: None
*/
function function_73d90572()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_34a199f1 = undefined;
	var_3e14ed79 = 5;
	while(self function_5c971cb7())
	{
		var_67b50ce1 = self.var_8fedf36c function_6bf94056(1);
		if(!self namespace_957e94ce::function_7922262b("dogfighting") && (!isdefined(self.var_9749d396) && self.var_9749d396) && isdefined(var_67b50ce1) && !self.var_8fedf36c namespace_957e94ce::function_7922262b("scriptedanim"))
		{
			var_57ce6df1 = undefined;
			var_657b1773 = function_b8494651("axis");
			var_657b1773 = function_525ae497(var_657b1773, function_2d2ddfd9("axis"), 0, 0);
			var_6798eb4a = 63;
			if(self namespace_82b91a51::function_552ba2e2())
			{
				var_6798eb4a = 24;
			}
			var_76b22b65 = var_6798eb4a;
			var_350b74ea = var_67b50ce1.var_a1b9cf66 * var_67b50ce1.var_a1b9cf66;
			foreach(var_6050ab17 in var_657b1773)
			{
				if(function_85e4c3b3(var_6050ab17) && function_5b49d38c(var_6050ab17))
				{
					var_cf92da34 = var_6050ab17 function_d48f2ab3("tag_body");
					var_67f2cbb8 = function_bdcdc423(var_cf92da34 - self function_52d99059()) - self function_89c87c9c();
					var_67f2cbb8 = (function_89a42b0a(var_67f2cbb8[0]), function_89a42b0a(var_67f2cbb8[1]), 0);
					var_113769e1 = var_67f2cbb8[0] + var_67f2cbb8[1] / 2;
					var_2a97d9fd = function_cb3d1c9b(self function_501eb072(), var_cf92da34);
					if(isdefined(self.var_34a199f1) && var_6050ab17 == self.var_34a199f1 || var_113769e1 <= var_76b22b65 && var_67f2cbb8[0] <= var_6798eb4a && var_67f2cbb8[1] <= var_6798eb4a && var_2a97d9fd <= var_350b74ea && function_7a924494(var_6050ab17, self, var_6798eb4a, var_67b50ce1.var_b715cbfd) && function_7178c13c(self function_52d99059(), var_cf92da34, 0, self.var_8fedf36c, var_6050ab17, 1))
					{
						var_57ce6df1 = var_6050ab17;
						var_76b22b65 = var_113769e1;
						if(isdefined(self.var_34a199f1) && var_6050ab17 == self.var_34a199f1)
						{
							var_76b22b65 = var_76b22b65 - var_3e14ed79;
							if(var_76b22b65 <= 0)
							{
								break;
							}
						}
					}
				}
			}
			if(isdefined(var_57ce6df1))
			{
				if(!isdefined(self.var_34a199f1) || self.var_34a199f1 != var_57ce6df1)
				{
					self.var_34a199f1 = var_57ce6df1;
					self function_c477757c(var_57ce6df1);
				}
			}
			else
			{
				self.var_34a199f1 = undefined;
				self function_618593a2();
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_d0732c68
	Namespace: namespace_786319bb
	Checksum: 0x7C485798
	Offset: 0x67B8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_d0732c68()
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("highlight_ai", 1);
	self namespace_82b91a51::function_5b7e3888("vtol_starting_landing", "vtol_exit", "death");
	self namespace_71e9cb84::function_e9c3870b("highlight_ai", 0);
}

/*
	Name: function_d2db9d30
	Namespace: namespace_786319bb
	Checksum: 0x7B633954
	Offset: 0x6840
	Size: 0x1F1
	Parameters: 0
	Flags: None
*/
function function_d2db9d30()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_6a1f4649");
	var_5f6c4b = 2500;
	var_f29ae186 = 4;
	var_6b1c0c6 = 0;
	if(!isdefined(self.var_cf011976))
	{
		self.var_cf011976 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < var_f29ae186; var_c957f6b6++)
		{
			self.var_cf011976[var_c957f6b6] = 0;
		}
	}
	while(1)
	{
		var_b5ef1165 = 0;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_f29ae186; var_c957f6b6++)
		{
			if(self.var_cf011976[var_c957f6b6] < self.var_cf011976[var_b5ef1165])
			{
				var_b5ef1165 = var_c957f6b6;
			}
		}
		if(self.var_cf011976[var_b5ef1165] > GetTime())
		{
			self.var_8fedf36c function_6e9c95ff(var_6b1c0c6, 1);
			wait(self.var_cf011976[var_b5ef1165] - GetTime() / 1000);
			self.var_8fedf36c function_6e9c95ff(var_6b1c0c6, 0);
		}
		var_f20c9b55 = -1;
		while(var_f20c9b55 != var_6b1c0c6)
		{
			self.var_8fedf36c waittill("hash_1323c42e", var_f20c9b55, var_4a93c703);
			self thread function_6174aaa2(var_4a93c703);
		}
		self.var_cf011976[var_b5ef1165] = GetTime() + var_5f6c4b;
	}
}

/*
	Name: function_6174aaa2
	Namespace: namespace_786319bb
	Checksum: 0xDC9F5656
	Offset: 0x6A40
	Size: 0x2DB
	Parameters: 1
	Flags: None
*/
function function_6174aaa2(var_4a93c703)
{
	if(!isdefined(var_4a93c703) || (self namespace_957e94ce::function_7922262b("dogfighting") && isdefined(var_4a93c703 function_f175f855())))
	{
		return;
	}
	var_b07228b6 = self function_a9d982da();
	var_a4e8111c = (0, 0, 0);
	var_3c972657 = undefined;
	if(isdefined(var_b07228b6) && (self namespace_957e94ce::function_7922262b("dogfighting") || isdefined(var_4a93c703 function_f175f855())))
	{
		if(self namespace_957e94ce::function_7922262b("dogfighting"))
		{
			var_4a93c703 function_454720a3(function_c4d5ec1f("vtol_fighter_player_dogfight_unlocked_missile_turret"));
			var_3c972657 = 0.75;
		}
		if(!function_5b49d38c(var_b07228b6))
		{
			return;
		}
		if(function_85e4c3b3(var_b07228b6))
		{
			var_a4e8111c = var_b07228b6 function_d48f2ab3("tag_body") - var_b07228b6.var_722885f3;
		}
		var_4a93c703 function_7847c931(var_b07228b6, var_a4e8111c);
	}
	else
	{
		var_3c972657 = 0.5;
		var_a52faa04 = function_e1dc201c(self function_52d99059(), self function_52d99059() + function_bc7ce905(self function_89c87c9c()) * 10000, 1, self, 0, 0, self.var_8fedf36c);
		var_49992acb = function_9b7fda5e("script_origin", var_a52faa04["position"]);
		var_4a93c703 function_7847c931(var_49992acb);
	}
	if(isdefined(var_3c972657))
	{
		wait(var_3c972657);
		if(isdefined(var_4a93c703))
		{
			var_4a93c703 function_7847c931(undefined);
		}
		if(isdefined(var_49992acb))
		{
			var_49992acb function_dc8c8404();
		}
	}
}

/*
	Name: function_fe19b920
	Namespace: namespace_786319bb
	Checksum: 0x6FC72709
	Offset: 0x6D28
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_fe19b920(var_fe311e35)
{
	if(namespace_84970cc4::function_307b88f2(function_391512da(self.var_d60b48f3), var_fe311e35))
	{
		self.var_861efedd[var_fe311e35] = GetTime();
		self notify("hash_6f6a7106");
	}
	else
	{
		namespace_33b293fd::function_94739542(var_fe311e35 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_78d2c721
	Namespace: namespace_786319bb
	Checksum: 0xCC3445EE
	Offset: 0x6DB8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_78d2c721(var_fe311e35)
{
	self.var_861efedd = namespace_84970cc4::function_8fdf50c0(self.var_861efedd, var_fe311e35, 1);
}

/*
	Name: function_f3ec4eac
	Namespace: namespace_786319bb
	Checksum: 0x932A664C
	Offset: 0x6DF8
	Size: 0x6E7
	Parameters: 0
	Flags: None
*/
function function_f3ec4eac()
{
	self.var_d60b48f3 = [];
	self.var_d60b48f3["nolock"] = [];
	self.var_d60b48f3["lock"] = [];
	self.var_d60b48f3["fire"] = [];
	self.var_d60b48f3["killed"] = [];
	self.var_d60b48f3["incoming"] = [];
	self.var_d60b48f3["warning"] = [];
	self.var_d60b48f3["banter"] = [];
	self.var_d60b48f3["props"] = [];
	self.var_d60b48f3["nolock"][self.var_d60b48f3["nolock"].size] = "kane_they_re_too_fast_yo_0";
	self.var_d60b48f3["nolock"][self.var_d60b48f3["nolock"].size] = "kane_you_need_a_lock_on_0";
	self.var_d60b48f3["lock"][self.var_d60b48f3["lock"].size] = "plyr_i_ve_got_him_painted_0";
	self.var_d60b48f3["lock"][self.var_d60b48f3["lock"].size] = "plyr_i_ve_got_good_tone_0";
	self.var_d60b48f3["lock"][self.var_d60b48f3["lock"].size] = "plyr_sights_locked_0";
	self.var_d60b48f3["lock"][self.var_d60b48f3["lock"].size] = "plyr_target_painted_0";
	self.var_d60b48f3["fire"][self.var_d60b48f3["fire"].size] = "plyr_missile_away_0";
	self.var_d60b48f3["fire"][self.var_d60b48f3["fire"].size] = "plyr_firing_0";
	self.var_d60b48f3["killed"][self.var_d60b48f3["killed"].size] = "plyr_target_down_0";
	self.var_d60b48f3["killed"][self.var_d60b48f3["killed"].size] = "plyr_bogey_neutralized_0";
	self.var_d60b48f3["killed"][self.var_d60b48f3["killed"].size] = "plyr_bandit_destroyed_0";
	self.var_d60b48f3["killed"][self.var_d60b48f3["killed"].size] = "plyr_target_splashed_0";
	self.var_d60b48f3["killed"][self.var_d60b48f3["killed"].size] = "plyr_good_night_0";
	self.var_d60b48f3["incoming"][self.var_d60b48f3["incoming"].size] = "kane_we_ve_got_more_bandi_0";
	self.var_d60b48f3["incoming"][self.var_d60b48f3["incoming"].size] = "kane_you_ve_got_two_more_0";
	self.var_d60b48f3["incoming"][self.var_d60b48f3["incoming"].size] = "kane_i_ve_got_visuals_on_0";
	self.var_d60b48f3["incoming"][self.var_d60b48f3["incoming"].size] = "kane_radar_s_picking_up_m_0";
	self.var_d60b48f3["warning"][self.var_d60b48f3["warning"].size] = "kane_watch_that_ground_fi_0";
	self.var_d60b48f3["warning"][self.var_d60b48f3["warning"].size] = "kane_that_was_close_watc_0";
	self.var_d60b48f3["warning"][self.var_d60b48f3["warning"].size] = "kane_keep_em_off_the_egy_0";
	self.var_d60b48f3["warning"][self.var_d60b48f3["warning"].size] = "plyr_watch_the_fire_from_0";
	self.var_d60b48f3["banter"][self.var_d60b48f3["banter"].size] = "kane_having_trouble_shaki_0";
	self.var_d60b48f3["banter"][self.var_d60b48f3["banter"].size] = "kane_pulling_hard_right_0";
	self.var_d60b48f3["banter"][self.var_d60b48f3["banter"].size] = "plyr_i_m_coming_around_t_0";
	self.var_d60b48f3["banter"][self.var_d60b48f3["banter"].size] = "kane_i_m_in_the_weeds_pu_0";
	self.var_d60b48f3["banter"][self.var_d60b48f3["banter"].size] = "plyr_we_can_out_maneuver_0";
	self.var_d60b48f3["banter"][self.var_d60b48f3["banter"].size] = "kane_i_m_going_to_swing_a_0";
	self.var_d60b48f3["props"][self.var_d60b48f3["props"].size] = "plyr_these_guys_know_how_0";
	self.var_d60b48f3["props"][self.var_d60b48f3["props"].size] = "plyr_this_guy_s_good_0";
	var_e22c8ccd = function_391512da(self.var_d60b48f3);
	foreach(var_f54b9c82 in var_e22c8ccd)
	{
		self.var_d60b48f3[var_f54b9c82] = namespace_84970cc4::function_8332f7f6(self.var_d60b48f3[var_f54b9c82]);
	}
}

/*
	Name: function_35142384
	Namespace: namespace_786319bb
	Checksum: 0xD15D41A2
	Offset: 0x74E8
	Size: 0x273
	Parameters: 0
	Flags: None
*/
function function_35142384()
{
	if(!isdefined(self.var_740cbab7))
	{
		self.var_740cbab7 = [];
		self.var_e9c4f888 = [];
		var_e22c8ccd = function_391512da(self.var_d60b48f3);
		foreach(var_f54b9c82 in var_e22c8ccd)
		{
			self.var_740cbab7[var_f54b9c82] = function_a8fb77bd();
			self.var_740cbab7[var_f54b9c82].var_61e9af10 = 0;
			self.var_740cbab7[var_f54b9c82].var_caf26bab = 0;
			var_41f3bc5c = 15;
			var_b5d5c862 = 3;
			var_aa9634bb = 1;
			switch(var_f54b9c82)
			{
				case "fire":
				case "lock":
				{
					var_41f3bc5c = 15;
					var_b5d5c862 = 1;
					var_aa9634bb = 0;
					break;
				}
				case "nolock":
				{
					var_41f3bc5c = 5;
					var_b5d5c862 = 2.5;
					var_aa9634bb = 0;
					break;
				}
				case "killed":
				{
					var_41f3bc5c = 5;
					var_b5d5c862 = 1;
					var_aa9634bb = 0;
					break;
				}
				case "props":
				{
					var_41f3bc5c = 30;
					var_b5d5c862 = 10;
					var_aa9634bb = 0;
					break;
				}
			}
			self.var_740cbab7[var_f54b9c82].var_41f3bc5c = var_41f3bc5c;
			self.var_740cbab7[var_f54b9c82].var_b5d5c862 = var_b5d5c862;
			if(var_aa9634bb)
			{
				self.var_e9c4f888[self.var_e9c4f888.size] = var_f54b9c82;
			}
		}
	}
}

/*
	Name: function_4b6c1d1b
	Namespace: namespace_786319bb
	Checksum: 0x99FB789F
	Offset: 0x7768
	Size: 0xF1
	Parameters: 0
	Flags: None
*/
function function_4b6c1d1b()
{
	var_cb115f04 = function_391512da(self.var_861efedd);
	foreach(var_fe311e35 in var_cb115f04)
	{
		if(GetTime() - self.var_861efedd[var_fe311e35] / 1000 > self.var_740cbab7[var_fe311e35].var_b5d5c862)
		{
			self.var_861efedd = namespace_84970cc4::function_8fdf50c0(self.var_861efedd, var_fe311e35, 1);
		}
	}
}

/*
	Name: function_a7d6fd77
	Namespace: namespace_786319bb
	Checksum: 0xE2C47416
	Offset: 0x7868
	Size: 0x41B
	Parameters: 1
	Flags: None
*/
function function_a7d6fd77(var_27114ecf)
{
	var_4031190e = undefined;
	self function_4b6c1d1b();
	var_cb115f04 = function_391512da(self.var_861efedd);
	foreach(var_fe311e35 in var_cb115f04)
	{
		if(self.var_740cbab7[var_fe311e35].var_caf26bab <= 0 || GetTime() - self.var_740cbab7[var_fe311e35].var_caf26bab / 1000 > self.var_740cbab7[var_fe311e35].var_41f3bc5c)
		{
			var_4031190e = var_fe311e35;
			self.var_861efedd = namespace_84970cc4::function_8fdf50c0(self.var_861efedd, var_fe311e35, 1);
			break;
		}
	}
	if(!isdefined(var_4031190e) && (!isdefined(var_27114ecf) && var_27114ecf))
	{
		var_5f2cda7b = [];
		foreach(var_fe311e35 in self.var_e9c4f888)
		{
			if(self.var_740cbab7[var_fe311e35].var_caf26bab <= 0 || GetTime() - self.var_740cbab7[var_fe311e35].var_caf26bab / 1000 > self.var_740cbab7[var_fe311e35].var_41f3bc5c)
			{
				var_5f2cda7b[var_5f2cda7b.size] = var_fe311e35;
			}
		}
		var_4031190e = namespace_84970cc4::function_47d18840(var_5f2cda7b);
	}
	if(isdefined(var_4031190e))
	{
		var_8d753d94 = self.var_d60b48f3[var_4031190e][self.var_740cbab7[var_4031190e].var_61e9af10];
		if(function_39c15145(var_8d753d94, "plyr"))
		{
			self namespace_71b8dba1::function_13b3b16a(var_8d753d94, 0);
		}
		else
		{
			level namespace_71b8dba1::function_a463d127(var_8d753d94, 0, "dni", self);
		}
		self.var_740cbab7[var_4031190e].var_caf26bab = GetTime();
		self.var_740cbab7[var_4031190e].var_61e9af10++;
		self.var_740cbab7[var_4031190e].var_41f3bc5c = self.var_740cbab7[var_4031190e].var_41f3bc5c * 1.1;
		if(self.var_740cbab7[var_4031190e].var_61e9af10 >= self.var_d60b48f3[var_4031190e].size)
		{
			self.var_740cbab7[var_4031190e].var_61e9af10 = 0;
			self.var_740cbab7[var_4031190e].var_41f3bc5c = self.var_740cbab7[var_4031190e].var_41f3bc5c * 2;
		}
	}
	else
	{
		wait(0.05);
	}
}

/*
	Name: function_a1c2d8ac
	Namespace: namespace_786319bb
	Checksum: 0x6A4740F2
	Offset: 0x7C90
	Size: 0x1E7
	Parameters: 0
	Flags: None
*/
function function_a1c2d8ac()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self endon("hash_b4a5f622");
	level endon("hash_982117a3");
	self function_f3ec4eac();
	self function_35142384();
	self.var_861efedd = [];
	var_f5789fb5 = 2.5;
	var_33533e17 = 5;
	while(self function_5c971cb7())
	{
		self waittill("hash_3b4d6693");
		level namespace_957e94ce::function_d3de6822("dogfight_intro_dialog");
		var_caf26bab = GetTime();
		var_3865186 = function_72a94f05(var_f5789fb5, var_33533e17);
		while(self namespace_957e94ce::function_7922262b("dogfighting"))
		{
			var_5d74e4a2 = namespace_82b91a51::function_9fcf3cd8(function_aaeec8c5(0.05, var_3865186 - GetTime() - var_caf26bab / 1000), "dogfight_vo_added");
			if(!self namespace_957e94ce::function_7922262b("dogfighting"))
			{
				continue;
			}
			self function_a7d6fd77(var_5d74e4a2 != "timeout");
			var_caf26bab = GetTime();
			var_3865186 = function_72a94f05(var_f5789fb5, var_33533e17);
		}
	}
}

/*
	Name: function_a9d982da
	Namespace: namespace_786319bb
	Checksum: 0x46E0283E
	Offset: 0x7E80
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_a9d982da()
{
	var_b07228b6 = self function_188a8bd6();
	if(isdefined(var_b07228b6) && (isdefined(var_b07228b6.var_53125b70) && var_b07228b6.var_53125b70))
	{
		var_b07228b6 = var_b07228b6.var_3ae26974;
	}
	else if(!self namespace_957e94ce::function_7922262b("dogfighting"))
	{
		var_b07228b6 = self.var_34a199f1;
	}
	return var_b07228b6;
}

/*
	Name: function_3e5c7ab3
	Namespace: namespace_786319bb
	Checksum: 0x35F78B10
	Offset: 0x7F28
	Size: 0x3DB
	Parameters: 0
	Flags: None
*/
function function_3e5c7ab3()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_a3ad629b = undefined;
	var_9fff05bc = 0;
	while(self function_5c971cb7())
	{
		var_851d9145 = self function_a9d982da();
		var_67b50ce1 = self.var_8fedf36c function_6bf94056(0);
		var_b99062a4 = var_67b50ce1.var_b99062a4 / 1000;
		if(isdefined(var_851d9145) && (isdefined(var_851d9145.var_cba6bd1d) && var_851d9145.var_cba6bd1d == "plane" || (isdefined(var_851d9145.var_cba6bd1d) && var_851d9145.var_cba6bd1d == "helicopter")) && var_851d9145 namespace_957e94ce::function_7922262b("scriptedanim") && !var_851d9145 function_ee1f5a49())
		{
			if(!isdefined(var_a3ad629b) || var_851d9145 != var_a3ad629b)
			{
				var_a3ad629b = var_851d9145;
				var_9fff05bc = 0;
				self.var_8fedf36c function_66909ebb(1);
				self.var_8fedf36c function_12613b3a();
			}
			else if(function_7a924494(var_a3ad629b, self, 30, var_67b50ce1.var_b715cbfd) && function_cb3d1c9b(var_a3ad629b function_d48f2ab3("tag_body"), self.var_8fedf36c.var_722885f3) < var_67b50ce1.var_a1b9cf66 * var_67b50ce1.var_a1b9cf66)
			{
				var_9fff05bc = var_9fff05bc + 0.05;
			}
			else
			{
				var_9fff05bc = var_9fff05bc - 0.05;
			}
		}
		else if(isdefined(var_a3ad629b))
		{
			var_a3ad629b = undefined;
			var_9fff05bc = 0;
			self.var_8fedf36c function_66909ebb(1);
			self.var_8fedf36c function_12613b3a();
		}
		var_9fff05bc = namespace_d73b9283::function_31931862(var_9fff05bc, 0, var_b99062a4);
		if(isdefined(var_a3ad629b))
		{
			if(var_9fff05bc >= var_b99062a4)
			{
				self.var_8fedf36c function_66909ebb(0);
				self.var_8fedf36c function_65453879(var_a3ad629b);
			}
			else
			{
				self.var_8fedf36c function_66909ebb(1);
				self.var_8fedf36c function_12613b3a();
			}
		}
		wait(0.05);
	}
	if(isdefined(self.var_8fedf36c))
	{
		self.var_8fedf36c function_66909ebb(1);
		self.var_8fedf36c function_12613b3a();
	}
}

/*
	Name: function_8fe34f32
	Namespace: namespace_786319bb
	Checksum: 0x6F244AAD
	Offset: 0x8310
	Size: 0x72F
	Parameters: 0
	Flags: None
*/
function function_8fe34f32()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_a3ad629b = undefined;
	var_9fff05bc = 0;
	var_a9e2f7e7 = 0;
	var_f40b679d = 0;
	self namespace_71e9cb84::function_cc4d5165("vehicle.lockOn", 0);
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_missile_lock_percent", 0);
	self thread function_d2db9d30();
	while(self function_5c971cb7())
	{
		if(self.var_8fedf36c namespace_957e94ce::function_7922262b("scriptedanim"))
		{
			wait(0.05);
			continue;
		}
		var_67b50ce1 = self.var_8fedf36c function_6bf94056(1);
		var_b99062a4 = var_67b50ce1.var_b99062a4 / 1000;
		var_b07228b6 = self function_a9d982da();
		var_8f9a21ac = function_afedf5ee("g_gameskill");
		var_b99062a4 = var_b99062a4 + var_8f9a21ac - 1;
		if(var_b99062a4 <= 0)
		{
			var_b99062a4 = 0.5;
		}
		var_6798eb4a = 63;
		if(self namespace_957e94ce::function_7922262b("dogfighting"))
		{
			var_6798eb4a = 30;
		}
		else if(self namespace_82b91a51::function_552ba2e2())
		{
			var_6798eb4a = 24;
		}
		if(isdefined(var_b07228b6) && function_85e4c3b3(var_b07228b6) && !var_b07228b6 function_ee1f5a49())
		{
			if(!isdefined(var_a3ad629b) || var_b07228b6 != var_a3ad629b)
			{
				var_a3ad629b = var_b07228b6;
				self function_c477757c(var_b07228b6);
				var_9fff05bc = 0;
				var_a9e2f7e7 = 0;
			}
			else if(function_7a924494(var_a3ad629b, self, var_6798eb4a, var_67b50ce1.var_b715cbfd) && function_cb3d1c9b(var_a3ad629b function_d48f2ab3("tag_body"), self.var_8fedf36c.var_722885f3) < var_67b50ce1.var_a1b9cf66 * var_67b50ce1.var_a1b9cf66)
			{
				var_9fff05bc = var_9fff05bc + 0.05;
			}
			else
			{
				var_9fff05bc = var_9fff05bc - 0.05;
			}
		}
		else if(isdefined(var_a3ad629b) || var_9fff05bc > 0)
		{
			self function_618593a2();
			var_a3ad629b = undefined;
			var_9fff05bc = 0;
			var_a9e2f7e7 = 0;
		}
		if(isdefined(var_a3ad629b))
		{
			if(!var_a9e2f7e7 && !var_f40b679d && self namespace_957e94ce::function_7922262b("dogfighting") && self.var_8fedf36c function_52ede9f5(0))
			{
				function_fe19b920("nolock");
			}
			else if(var_a9e2f7e7 && !var_f40b679d && self.var_8fedf36c function_52ede9f5(0) && self namespace_957e94ce::function_7922262b("dogfighting"))
			{
				self function_618593a2();
				self function_c477757c(var_a3ad629b);
				var_9fff05bc = var_9fff05bc * 0.75;
				var_a9e2f7e7 = 0;
				var_f40b679d = 1;
				self function_78d2c721("lock");
				self function_fe19b920("fire");
			}
			else if(function_7178c13c(self function_52d99059(), var_a3ad629b function_d48f2ab3("tag_body"), 0, self.var_8fedf36c, var_a3ad629b, 1))
			{
				if(var_9fff05bc >= var_b99062a4)
				{
					self function_a953e0e6(var_b07228b6);
					var_a9e2f7e7 = 1;
					self function_fe19b920("lock");
				}
			}
			else if(self namespace_957e94ce::function_7922262b("dogfighting"))
			{
				var_9fff05bc = var_9fff05bc - 0.05;
			}
			if(var_f40b679d && !self.var_8fedf36c function_52ede9f5(0))
			{
				var_f40b679d = 0;
			}
		}
		if(var_a9e2f7e7)
		{
			var_9fff05bc = var_b99062a4;
			var_943fec4e = 1;
		}
		else
		{
			var_9fff05bc = namespace_d73b9283::function_31931862(var_9fff05bc, 0, var_b99062a4);
			var_943fec4e = var_9fff05bc / var_b99062a4;
		}
		if(isdefined(self.var_decbf609) && self.var_decbf609)
		{
			self namespace_71e9cb84::function_cc4d5165("vehicle.lockOn", 0);
		}
		else
		{
			self namespace_71e9cb84::function_cc4d5165("vehicle.lockOn", var_943fec4e);
		}
		self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_missile_lock_percent", var_943fec4e);
		wait(0.05);
	}
}

/*
	Name: function_3034fbb
	Namespace: namespace_786319bb
	Checksum: 0xD8FDDA0A
	Offset: 0x8A48
	Size: 0x3A5
	Parameters: 1
	Flags: None
*/
function function_3034fbb(var_8ebc5b3f)
{
	if(isdefined(self.var_8fedf36c.var_86c93e40))
	{
		switch(self.var_8fedf36c.var_86c93e40)
		{
			case "autopilot":
			{
				self.var_8fedf36c function_48f26766();
				self.var_8fedf36c function_4083a98e();
				self.var_8fedf36c function_470f7e4c(0);
				self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 0);
				self.var_8fedf36c notify("hash_7b977278");
				break;
			}
			case "landing_mode":
			{
				self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_active_landing_zone_num", 0);
				self namespace_71e9cb84::function_cc4d5165("vehicle.showLandHint", 0);
				break;
			}
			case "call":
			{
				if(isdefined(var_8ebc5b3f) && var_8ebc5b3f != "enter")
				{
					self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_canopy_state", 0);
					self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 0);
				}
				self.var_8fedf36c function_28bbff14();
				self.var_8fedf36c function_ada64136();
				self.var_8fedf36c function_470f7e4c(0);
				break;
			}
			case "enter":
			{
				self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_canopy_state", 0);
				self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 0);
				if(self namespace_957e94ce::function_7922262b("scriptedanim") && !isdefined(self.var_67c7c241) && !isdefined(self.var_dd686719))
				{
					self thread namespace_1fb6a2e5::function_fcf56ab5();
				}
				break;
			}
			case "exit":
			{
				if(isdefined(self.var_6f5c6fa1) && self.var_6f5c6fa1 && self namespace_957e94ce::function_7922262b("scriptedanim") && !isdefined(self.var_67c7c241) && !isdefined(self.var_dd686719))
				{
					self thread namespace_1fb6a2e5::function_fcf56ab5();
				}
				break;
			}
			case "piloted":
			{
				if(var_8ebc5b3f != "landing_mode")
				{
					self namespace_71e9cb84::function_cc4d5165("vehicle.lockOn", 0);
					self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_missile_lock_percent", 0);
					self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_show_missile_lock", 0);
					self function_618593a2();
				}
				self.var_255b9315 = 0;
				break;
			}
			case "scripted":
			{
				break;
			}
		}
	}
}

/*
	Name: function_22a0413d
	Namespace: namespace_786319bb
	Checksum: 0x5D1FAF5
	Offset: 0x8DF8
	Size: 0x2DB
	Parameters: 4
	Flags: None
*/
function function_22a0413d(var_8ebc5b3f, var_b3dc65a3, var_41d4f668, var_67d770d1)
{
	self function_d683f26a();
	if(isdefined(var_8ebc5b3f))
	{
		if(isdefined(self.var_8fedf36c.var_86c93e40) && var_8ebc5b3f == self.var_8fedf36c.var_86c93e40 && var_8ebc5b3f != "exit" && var_8ebc5b3f != "landing_mode")
		{
			return;
		}
		if(function_5c971cb7() && (var_8ebc5b3f == "autopilot" || var_8ebc5b3f == "enter" || var_8ebc5b3f == "call"))
		{
			return;
		}
		if(!function_5c971cb7() && var_8ebc5b3f == "landing_mode")
		{
			return;
		}
		self.var_8fedf36c notify("hash_c38e4003");
		self function_3034fbb(var_8ebc5b3f);
		switch(var_8ebc5b3f)
		{
			case "autopilot":
			{
				self thread function_2b89d912(var_b3dc65a3);
				break;
			}
			case "landing_mode":
			{
				self thread function_fc017a35();
				break;
			}
			case "call":
			{
				self thread function_e34692a9(var_b3dc65a3, var_41d4f668, var_67d770d1);
				break;
			}
			case "enter":
			{
				self thread function_e1fcf95(var_b3dc65a3, var_41d4f668);
				break;
			}
			case "exit":
			{
				self thread function_6a1f4649(var_b3dc65a3, var_41d4f668, var_67d770d1);
				break;
			}
			case "piloted":
			{
				self thread function_8bb76a9(var_b3dc65a3, 0);
				break;
			}
			case "scripted":
			{
				self thread function_8bb76a9(var_b3dc65a3, 1);
				break;
			}
			case "idle":
			{
				self.var_8fedf36c.var_86c93e40 = "idle";
			}
		}
	}
	else
	{
		self.var_8fedf36c notify("hash_c38e4003");
		self function_3034fbb();
		if(!self function_5c971cb7())
		{
			self thread function_8bb76a9(undefined, 0);
		}
	}
}

/*
	Name: function_191fff49
	Namespace: namespace_786319bb
	Checksum: 0xEAD12BE0
	Offset: 0x90E0
	Size: 0xC9
	Parameters: 4
	Flags: None
*/
function function_191fff49(var_86c93e40, var_b3dc65a3, var_41d4f668, var_67d770d1)
{
	level.var_4063f562 = var_86c93e40;
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		var_5dc5e20a thread function_22a0413d(var_86c93e40, var_b3dc65a3, var_41d4f668, var_67d770d1);
	}
}

/*
	Name: function_e3fab6a1
	Namespace: namespace_786319bb
	Checksum: 0x565FDF14
	Offset: 0x91B8
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function function_e3fab6a1()
{
	var_dda84f1a = function_99201f25("landing_zone_player_" + self.var_1e9fba3, "targetname");
	var_72ae61b3 = undefined;
	foreach(var_eec37b7b in var_dda84f1a)
	{
		if(!isdefined(var_72ae61b3))
		{
			var_72ae61b3 = var_eec37b7b;
			var_a0d5844a = function_cb3d1c9b(self.var_722885f3, var_72ae61b3.var_722885f3);
			continue;
		}
		var_2a97d9fd = function_cb3d1c9b(self.var_722885f3, var_eec37b7b.var_722885f3);
		if(var_2a97d9fd < var_a0d5844a)
		{
			var_72ae61b3 = var_eec37b7b;
			var_a0d5844a = var_2a97d9fd;
		}
	}
	return var_72ae61b3;
}

/*
	Name: function_1215f9e4
	Namespace: namespace_786319bb
	Checksum: 0x3494D589
	Offset: 0x9328
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_1215f9e4(var_5e76f0af)
{
	if(!isdefined(level.var_b91023ce))
	{
		level.var_b91023ce = [];
	}
	namespace_84970cc4::function_69554b3e(level.var_b91023ce, var_5e76f0af, 0);
}

/*
	Name: function_e1e437cb
	Namespace: namespace_786319bb
	Checksum: 0x40AB194C
	Offset: 0x9378
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_e1e437cb(var_5e76f0af)
{
	if(isdefined(level.var_b91023ce))
	{
		function_81403b2f(level.var_b91023ce, var_5e76f0af);
	}
}

/*
	Name: function_fc653485
	Namespace: namespace_786319bb
	Checksum: 0x183FA23
	Offset: 0x93B8
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_fc653485()
{
	level.var_b91023ce = [];
}

/*
	Name: function_5739554b
	Namespace: namespace_786319bb
	Checksum: 0xFC2D12D0
	Offset: 0x93D0
	Size: 0x10B
	Parameters: 2
	Flags: None
*/
function function_5739554b(var_e8e62a06, var_60db70fa)
{
	self endon("hash_128f8789");
	self notify("hash_5739554b");
	self endon("hash_5739554b");
	var_f721d9a5 = var_60db70fa;
	var_e1336bc4 = self.var_6ab6f4fd[0];
	do
	{
		var_60db70fa = var_60db70fa - 0.05;
		self.var_6ab6f4fd = (var_e1336bc4 + var_e8e62a06 - var_e1336bc4 * var_f721d9a5 - var_60db70fa / var_f721d9a5, self.var_6ab6f4fd[1], self.var_6ab6f4fd[2]);
		wait(0.05);
	}
	while(!(isdefined(self) && var_60db70fa > 0));
	if(isdefined(self))
	{
		self.var_6ab6f4fd = (var_e8e62a06, self.var_6ab6f4fd[1], self.var_6ab6f4fd[2]);
	}
}

/*
	Name: function_e34692a9
	Namespace: namespace_786319bb
	Checksum: 0x85C467EC
	Offset: 0x94E8
	Size: 0x5FB
	Parameters: 3
	Flags: None
*/
function function_e34692a9(var_7e8d0707, var_f58fccb8, var_acaabf08)
{
	if(!isdefined(var_acaabf08))
	{
		var_acaabf08 = 1;
	}
	self endon("hash_643a7daf");
	self.var_8fedf36c endon("hash_c38e4003");
	var_74df67ae = -1;
	var_f561e15e = 120;
	if(isdefined(var_7e8d0707))
	{
		var_74df67ae = var_7e8d0707;
		var_dda84f1a = function_99201f25("landing_zone_" + var_7e8d0707, "script_noteworthy");
		foreach(var_eec37b7b in var_dda84f1a)
		{
			if(var_eec37b7b.var_170527fb === "landing_zone_player_" + self.var_1e9fba3)
			{
				var_72ae61b3 = var_eec37b7b;
				break;
			}
		}
	}
	else
	{
		var_72ae61b3 = self function_e3fab6a1();
	}
	if(isdefined(var_72ae61b3))
	{
		if(isdefined(var_f58fccb8) && var_f58fccb8)
		{
			self.var_8fedf36c.var_722885f3 = var_72ae61b3.var_722885f3 + (0, 0, var_f561e15e);
			self.var_8fedf36c.var_6ab6f4fd = var_72ae61b3.var_6ab6f4fd;
			self.var_8fedf36c function_c05708b5();
			wait(0.05);
		}
		else if(isdefined(self.var_719c336f) && self.var_719c336f > 0.05)
		{
			self.var_8fedf36c function_8c8e79fe();
			wait(self.var_719c336f);
			self.var_719c336f = undefined;
			self.var_8fedf36c function_48f26766();
		}
		var_da144683 = 1;
		if(isdefined(self.var_23a61090))
		{
			var_da144683 = self.var_23a61090;
		}
		self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 1);
		self.var_8fedf36c thread namespace_1fb6a2e5::function_43718187("v_aqu_vtol_land_enter", var_72ae61b3.var_722885f3, var_72ae61b3.var_6ab6f4fd, var_da144683, 0, 0.01, 0);
		self.var_8fedf36c waittillmatch("hash_5d9bca70");
		self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 1);
		self.var_8fedf36c waittillmatch("hash_5d9bca70");
		self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_canopy_state", 1);
		self.var_8fedf36c waittillmatch("hash_5d9bca70");
		self.var_8fedf36c function_470f7e4c(0);
		self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 0);
		self.var_8fedf36c function_c985552d(var_72ae61b3.var_722885f3 + VectorScale((0, 0, 1), 120), 1);
		self.var_8fedf36c function_e3efbe09(var_72ae61b3.var_6ab6f4fd[1]);
		self.var_8fedf36c function_333fd8f0(25, 25, 25);
		self.var_8fedf36c function_b53ebe89(59, 360, 360);
		self.var_8fedf36c function_42cddf81(28, 24, 24);
	}
	if(!var_acaabf08 && self function_67f028cc())
	{
		while(self function_67f028cc())
		{
			wait(0.05);
		}
		break;
	}
	self thread function_e267ae99();
	while(!function_5b49d38c(self) || !self function_8029a253() || self namespace_564407fb::function_38a9aff8() || function_316422d1(self.var_722885f3, self.var_8fedf36c function_d48f2ab3("tag_driver_camera")) > 62500)
	{
		wait(0.05);
	}
	self thread function_22a0413d("enter", var_acaabf08, var_74df67ae);
}

/*
	Name: function_e1fcf95
	Namespace: namespace_786319bb
	Checksum: 0x6CCBC994
	Offset: 0x9AF0
	Size: 0x683
	Parameters: 2
	Flags: None
*/
function function_e1fcf95(var_27d070cd, var_74df67ae)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_8fedf36c endon("hash_c38e4003");
	if(self function_5c971cb7())
	{
		return;
	}
	self.var_8fedf36c.var_86c93e40 = "enter";
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_active_landing_zone_num", 0);
	self function_83fd42b5();
	self.var_8fedf36c endon("hash_128f8789");
	if(isdefined(var_27d070cd) && var_27d070cd)
	{
		self.var_8fedf36c namespace_96fa87af::function_fdf99c07();
		self.var_8fedf36c function_42cddf81(0);
		self.var_8fedf36c function_8f87de5f(0.01);
		self.var_8fedf36c function_333fd8f0(0.01, 100, 100);
		self.var_8fedf36c function_b53ebe89(0.01, 100, 100);
		self.var_8fedf36c function_ada64136();
		self.var_8fedf36c function_28bbff14();
		var_67f2cbb8 = function_3dfa27b4(self.var_8fedf36c.var_6ab6f4fd[1] - function_bdcdc423(self.var_722885f3 - self.var_8fedf36c function_d48f2ab3("tag_driver_camera"))[1]);
		var_64d19a9c = "r";
		if(var_67f2cbb8 < 0)
		{
			var_64d19a9c = "l";
			var_67f2cbb8 = var_67f2cbb8 * -1;
		}
		var_7204da72 = 90;
		if(var_67f2cbb8 < 5)
		{
			var_7204da72 = 0;
		}
		else if(var_67f2cbb8 < 15)
		{
			var_7204da72 = 15;
		}
		else if(var_67f2cbb8 < 45)
		{
			var_7204da72 = 45;
		}
		var_c94a0984 = "r";
		if(var_7204da72 >= 45 && var_64d19a9c == "l")
		{
			var_c94a0984 = "l";
		}
		var_ccd2da90 = "pb_aqu_vtol_enter_jump_start_" + var_64d19a9c;
		self thread namespace_1fb6a2e5::function_43718187(var_ccd2da90, self.var_722885f3, self.var_6ab6f4fd, 1, 0.2, 0, 0.2);
		self waittillmatch(var_ccd2da90);
		var_bfa4502a = function_9b7fda5e("script_model", self.var_722885f3);
		var_bfa4502a function_e48f905e("tag_origin");
		var_bfa4502a.var_6ab6f4fd = self.var_6ab6f4fd;
		var_bfa4502a function_c05708b5();
		var_8f8a1689 = "pb_aqu_vtol_enter_" + var_7204da72 + "_" + var_c94a0984;
		if(var_7204da72 == 0)
		{
			var_8f8a1689 = "pb_aqu_vtol_enter";
		}
		var_49992acb = function_b9b16acf(self.var_8fedf36c.var_722885f3, self.var_8fedf36c.var_6ab6f4fd, var_8f8a1689);
		var_544bbb55 = function_1cdb4ab1(self.var_8fedf36c.var_722885f3, self.var_8fedf36c.var_6ab6f4fd, var_8f8a1689);
		var_ccd2da90 = "pb_aqu_vtol_enter_jump_loop_" + var_c94a0984;
		var_59faf216 = 0.5;
		var_f79f9206 = function_e1c7a0c8(var_ccd2da90);
		var_da144683 = var_f79f9206 / var_59faf216;
		self thread namespace_1fb6a2e5::function_43718187(var_ccd2da90, var_bfa4502a, "tag_origin", var_da144683, 0.2, 0, 0);
		var_bfa4502a function_a96a2721(var_49992acb, var_59faf216, 0, 0);
		var_bfa4502a function_c0b6566f(var_544bbb55, var_59faf216, 0, 0);
		wait(var_59faf216 - 0.05);
		self thread namespace_1fb6a2e5::function_43718187(var_8f8a1689, self.var_8fedf36c, "tag_origin", 1, 0.2, 0.1, 0, 0, 0, 0);
		self waittillmatch(var_8f8a1689);
		self function_b8862210("veh_vtol_close", self);
		var_bfa4502a function_dc8c8404();
		self.var_8fedf36c namespace_96fa87af::function_54055cfb();
	}
	self thread function_22a0413d("piloted", var_74df67ae);
}

/*
	Name: function_e267ae99
	Namespace: namespace_786319bb
	Checksum: 0xF708DE12
	Offset: 0xA180
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function function_e267ae99()
{
	self endon("hash_128f8789");
	self endon("hash_8923fa32");
	while(1)
	{
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a != self)
			{
				if(var_5dc5e20a function_32fa5072(self.var_8fedf36c))
				{
					var_8bfb9994 = namespace_4a43ba8::function_93d52c4f(1);
					var_39f734b7 = function_e7bdc1a1(var_5dc5e20a.var_722885f3, var_8bfb9994);
					var_b2577cba = var_39f734b7.var_722885f3;
					var_b2577cba = var_5dc5e20a namespace_5dc5e20a::function_1f591d91(var_b2577cba);
					var_5dc5e20a function_a30814d(var_b2577cba);
					if(isdefined(var_39f734b7.var_6ab6f4fd))
					{
						var_5dc5e20a function_eda2be50(var_39f734b7.var_6ab6f4fd);
					}
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_f924d730
	Namespace: namespace_786319bb
	Checksum: 0x5A55CA7D
	Offset: 0xA330
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_f924d730(var_60db70fa)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_255b9315 = 1;
	wait(var_60db70fa);
	self.var_255b9315 = 0;
}

/*
	Name: function_8bb76a9
	Namespace: namespace_786319bb
	Checksum: 0x844C7937
	Offset: 0xA378
	Size: 0x35B
	Parameters: 2
	Flags: None
*/
function function_8bb76a9(var_74df67ae, var_6cff281b)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_8fedf36c endon("hash_c38e4003");
	self function_a65d16ff();
	self function_83fd42b5();
	if(!(isdefined(var_6cff281b) && var_6cff281b))
	{
		self.var_8fedf36c.var_86c93e40 = "piloted";
		self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_show_missile_lock", 1);
		if(!(isdefined(self.var_1b9475b4) && self.var_1b9475b4))
		{
			self thread function_a1c2d8ac();
			self thread function_73d90572();
			self thread function_3e5c7ab3();
			self thread function_8fe34f32();
			self thread function_d0732c68();
			self thread function_c10544f();
			self thread function_c375b495();
			self.var_1b9475b4 = 1;
		}
		self.var_8fedf36c function_34ef7d07();
		self.var_8fedf36c function_5e9446b8(0);
		self.var_8fedf36c function_6e9c95ff(0, 0);
		self function_c20e893e(1);
		self.var_5bf5e8eb = "none";
		self.var_8fedf36c function_92cc1e27(1);
		self thread function_a43cfbf3(1);
		if(isdefined(var_74df67ae))
		{
			level notify("hash_8d91bdcf", self, var_74df67ae);
		}
		self notify("hash_8d91bdcf");
		self thread function_e351b3d6();
		self thread function_f924d730(3);
	}
	else
	{
		self.var_8fedf36c.var_86c93e40 = "scripted";
		self.var_8fedf36c function_c6a7810e();
		self.var_8fedf36c function_5e9446b8(1);
		self.var_8fedf36c function_6e9c95ff(0, 1);
		self function_c20e893e(0);
	}
	if(isdefined(level.var_4063f562) && level.var_4063f562 == "landing_mode")
	{
		self thread function_22a0413d("landing_mode");
	}
}

/*
	Name: function_e351b3d6
	Namespace: namespace_786319bb
	Checksum: 0xA9CC36F5
	Offset: 0xA6E0
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_e351b3d6()
{
	self endon("hash_128f8789");
	wait(3);
	self notify("hash_8923fa32");
}

/*
	Name: function_a65d16ff
	Namespace: namespace_786319bb
	Checksum: 0x72829373
	Offset: 0xA710
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_a65d16ff()
{
	self function_d683f26a();
	if(!self function_5c971cb7())
	{
		self.var_8fedf36c function_991ad231();
		var_22ae8d39 = self.var_8fedf36c function_d48f2ab3("tag_driver_camera");
		var_37831ac3 = self.var_8fedf36c function_cd1d99bd("tag_driver_camera");
		self function_a30814d(var_22ae8d39);
		self function_eda2be50((0, var_37831ac3[1], 0));
		self.var_8fedf36c function_16337f9e(self, 0);
		self.var_8fedf36c function_9ed72b0c();
		self.var_8fedf36c thread namespace_4fe3eef1::function_ba7b948c(1);
		self.var_32218fc7 = 1;
		level notify("hash_2c534be8", self, 1);
		self.var_1e983b11 = 0;
		self.var_d829fe9f = 0;
		self namespace_16f9ecd3::function_12a9df06(0);
		self namespace_16f9ecd3::function_1c59df50(0);
	}
	self.var_8fedf36c function_48f26766();
	self namespace_71e9cb84::function_cc4d5165("vehicle.weaponIndex", 1);
	self namespace_71e9cb84::function_cc4d5165("vehicle.lockOn", 0);
	function_aa332733("bulletrange", 15000);
	self function_c7708f99("players_vtol");
}

/*
	Name: function_c0fa671d
	Namespace: namespace_786319bb
	Checksum: 0x5872AAAD
	Offset: 0xA960
	Size: 0x1BB
	Parameters: 1
	Flags: None
*/
function function_c0fa671d(var_dda84f1a)
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_8fedf36c endon("hash_c38e4003");
	self endon("hash_fd4242d1");
	var_53c0a512 = 0;
	var_42d92efd = 0;
	while(self function_5c971cb7() && !self namespace_957e94ce::function_7922262b("vtol_force_land"))
	{
		var_53c0a512 = 0;
		foreach(var_eec37b7b in var_dda84f1a)
		{
			if(function_316422d1(self.var_8fedf36c.var_722885f3, var_eec37b7b.var_722885f3) < 1000000)
			{
				var_53c0a512 = 1;
				break;
			}
		}
		if(var_42d92efd != var_53c0a512)
		{
			self namespace_71e9cb84::function_cc4d5165("vehicle.showLandHint", var_53c0a512);
			var_42d92efd = var_53c0a512;
		}
		wait(0.05);
	}
	self namespace_71e9cb84::function_cc4d5165("vehicle.showLandHint", 0);
}

/*
	Name: function_f513fb82
	Namespace: namespace_786319bb
	Checksum: 0xE9683398
	Offset: 0xAB28
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_f513fb82()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_8fedf36c endon("hash_c38e4003");
	while(!self namespace_82b91a51::function_9ba72e41() && !self namespace_957e94ce::function_7922262b("vtol_force_land"))
	{
		wait(0.05);
	}
}

/*
	Name: function_fc017a35
	Namespace: namespace_786319bb
	Checksum: 0x23B42743
	Offset: 0xABA8
	Size: 0x827
	Parameters: 0
	Flags: None
*/
function function_fc017a35()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	self.var_8fedf36c endon("hash_c38e4003");
	self.var_8fedf36c.var_86c93e40 = "landing_mode";
	var_2aff5bd5 = [];
	var_77637fea = function_99201f25("landing_zone", "targetname");
	var_3403f039 = 0;
	foreach(var_eec37b7b in var_77637fea)
	{
		if(isdefined(var_eec37b7b.var_caae374e))
		{
			var_5e76f0af = function_b6b79a0(var_eec37b7b.var_caae374e);
			if(namespace_84970cc4::function_307b88f2(level.var_b91023ce, var_5e76f0af))
			{
				var_2aff5bd5[var_2aff5bd5.size] = var_eec37b7b;
				var_3403f039 = var_3403f039 + function_aca9299(2, var_5e76f0af - 1);
			}
		}
	}
	self thread function_c0fa671d(var_2aff5bd5);
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_active_landing_zone_num", function_b6b79a0(var_3403f039));
	while(self function_5c971cb7())
	{
		self function_f513fb82();
		foreach(var_eec37b7b in var_2aff5bd5)
		{
			if(function_316422d1(self.var_8fedf36c.var_722885f3, var_eec37b7b.var_722885f3) < 1000000)
			{
				namespace_9f824288::function_5d2cdd99();
				var_cd4db992 = -1;
				self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 1);
				if(isdefined(var_eec37b7b.var_caae374e))
				{
					var_cd4db992 = function_b6b79a0(var_eec37b7b.var_caae374e);
				}
				self notify("hash_fd4242d1", var_cd4db992);
				var_426e4bae = var_eec37b7b;
				foreach(var_7e8d0707 in self.var_dda84f1a)
				{
					if("landing_zone_" + var_eec37b7b.var_caae374e == var_7e8d0707.var_caae374e)
					{
						var_426e4bae = var_7e8d0707;
						break;
					}
				}
				self namespace_71e9cb84::function_cc4d5165("vehicle.showLandHint", 0);
				thread namespace_1d1d22be::function_976c341d(self, var_426e4bae);
				self.var_8fedf36c function_c6a7810e();
				self.var_8fedf36c function_92cc1e27(0);
				var_9ba68f7b = self.var_8fedf36c function_d48f2ab3("tag_driver") - self.var_8fedf36c.var_722885f3;
				var_9ba68f7b = (var_9ba68f7b[0], var_9ba68f7b[1], 0);
				var_fbb25d33 = var_426e4bae.var_722885f3 + function_163c99d6(var_9ba68f7b, var_426e4bae.var_6ab6f4fd) + VectorScale((0, 0, 1), 120);
				self.var_8fedf36c function_333fd8f0(50, 100, 100);
				self.var_8fedf36c function_b53ebe89(59, 360, 360);
				self.var_8fedf36c function_c985552d(var_fbb25d33, 1);
				self.var_8fedf36c function_e3efbe09(var_426e4bae.var_6ab6f4fd[1]);
				self.var_8fedf36c function_500dc2f7(12);
				self.var_8fedf36c function_42cddf81(0);
				self.var_8fedf36c thread function_da487b0c();
				self.var_8fedf36c function_422037f5();
				self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_canopy_state", 1);
				var_41d1aaf0 = self.var_8fedf36c namespace_82b91a51::function_9fcf3cd8(5, "goal", "near_goal", "goal_yaw");
				if(var_41d1aaf0 == "goal_yaw")
				{
					self.var_8fedf36c namespace_82b91a51::function_9fcf3cd8(5, "near_goal", "goal");
				}
				else if(function_89a42b0a(var_426e4bae.var_6ab6f4fd[1] - self.var_8fedf36c.var_6ab6f4fd[1]) > 1)
				{
					self.var_8fedf36c namespace_82b91a51::function_9fcf3cd8(5, "goal_yaw");
				}
				self.var_8fedf36c function_b53ebe89(0.01, 99999, 99999);
				self.var_8fedf36c function_28bbff14();
				self.var_8fedf36c.var_6ab6f4fd = (0, var_426e4bae.var_6ab6f4fd[1], 0);
				self.var_8fedf36c function_c05708b5();
				wait(0.05);
				self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_active_landing_zone_num", 0);
				thread namespace_1d1d22be::function_77b5283a(self);
				self thread function_22a0413d("exit", var_426e4bae);
				return;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_da487b0c
	Namespace: namespace_786319bb
	Checksum: 0xE076EFF
	Offset: 0xB3D8
	Size: 0x1EF
	Parameters: 0
	Flags: None
*/
function function_da487b0c()
{
	self endon("hash_128f8789");
	var_6f554d84 = 1.5;
	var_e1336bc4 = function_3dfa27b4(self.var_6ab6f4fd[0]);
	var_5e782953 = function_3dfa27b4(self.var_6ab6f4fd[2]);
	while(isdefined(self) && self.var_6ab6f4fd[0] != 0 && self.var_6ab6f4fd[2] != 0)
	{
		var_74d0e601 = function_3dfa27b4(self.var_6ab6f4fd[0]) - var_6f554d84 * namespace_d73b9283::function_cad75d7e(var_e1336bc4);
		if(namespace_d73b9283::function_cad75d7e(var_74d0e601) != namespace_d73b9283::function_cad75d7e(var_e1336bc4))
		{
			var_74d0e601 = 0;
		}
		var_e61f2df0 = function_3dfa27b4(self.var_6ab6f4fd[2]) - var_6f554d84 * namespace_d73b9283::function_cad75d7e(var_5e782953);
		if(namespace_d73b9283::function_cad75d7e(var_e61f2df0) != namespace_d73b9283::function_cad75d7e(var_5e782953))
		{
			var_e61f2df0 = 0;
		}
		self.var_6ab6f4fd = (var_74d0e601, self.var_6ab6f4fd[1], var_e61f2df0);
		wait(0.05);
	}
}

/*
	Name: function_6a1f4649
	Namespace: namespace_786319bb
	Checksum: 0x48F5182E
	Offset: 0xB5D0
	Size: 0x653
	Parameters: 3
	Flags: None
*/
function function_6a1f4649(var_eec37b7b, var_e8e0644c, var_fe173168)
{
	if(!isdefined(var_e8e0644c))
	{
		var_e8e0644c = 1;
	}
	if(!isdefined(var_fe173168))
	{
		var_fe173168 = 0;
	}
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(!self function_5c971cb7())
	{
		self notify("hash_4936a0ca", "end");
		if(isdefined(self.var_6f5c6fa1) && self.var_6f5c6fa1 && self namespace_957e94ce::function_7922262b("scriptedanim") && !isdefined(self.var_67c7c241) && !isdefined(self.var_dd686719))
		{
			self thread namespace_1fb6a2e5::function_fcf56ab5();
		}
		return;
	}
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_set_active_landing_zone_num", 0);
	self.var_8fedf36c.var_86c93e40 = "exit";
	self notify("hash_6a1f4649");
	self function_83fd42b5();
	self.var_8fedf36c namespace_96fa87af::function_fdf99c07();
	self.var_8fedf36c function_28bbff14();
	self.var_8fedf36c function_ada64136();
	self.var_8fedf36c function_991ad231();
	self.var_8fedf36c function_16337f9e(self, self.var_8fedf36c function_6f256229(self));
	self.var_8fedf36c function_9ed72b0c();
	self.var_1b9475b4 = 0;
	self.var_8fedf36c thread namespace_4fe3eef1::function_ba7b948c(0);
	self.var_8fedf36c.var_ac442e94 = 0;
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
	if(var_e8e0644c)
	{
		self thread namespace_1fb6a2e5::function_43718187("pb_aqu_vtol_exit", self.var_8fedf36c, "tag_origin", 1, 0.2, 0.05);
		self.var_6f5c6fa1 = 1;
		self waittillmatch("hash_4936a0ca");
	}
	self.var_6f5c6fa1 = 0;
	var_cd4db992 = -1;
	if(isdefined(var_eec37b7b) && isdefined(var_eec37b7b.var_caae374e))
	{
		var_cd4db992 = function_b6b79a0(function_d6df1f20(var_eec37b7b.var_caae374e, "landing_zone_")[0]);
	}
	level notify("hash_2e0c12cd", self, var_cd4db992, "end");
	self.var_8fedf36c function_28bbff14();
	self.var_8fedf36c function_ada64136();
	self function_6c8f914f();
	self function_4890e520();
	self.var_8fedf36c namespace_96fa87af::function_54055cfb();
	self.var_1e983b11 = 1;
	self.var_32218fc7 = 0;
	level notify("hash_786c76a1", self);
	self function_a0b29c50(0, 100);
	self function_a0b29c50(1, 100);
	self function_a0b29c50(2, 100);
	self.var_d829fe9f = 1;
	self namespace_16f9ecd3::function_fc1750c9(1);
	self.var_8fedf36c function_42cddf81(24, 24, 24);
	var_15f4ba8b = 1;
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(isdefined(var_5dc5e20a.var_8fedf36c) && var_5dc5e20a function_c7e339d1(var_5dc5e20a.var_8fedf36c))
		{
			var_15f4ba8b = 0;
			break;
		}
	}
	if(var_15f4ba8b)
	{
		function_aa332733("bulletrange", 8192);
	}
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_canopy_state", 0);
	wait(2);
	self function_c7708f99("players_ground");
	if(!var_fe173168)
	{
		self thread function_22a0413d("autopilot", var_eec37b7b);
	}
	else
	{
		self thread function_22a0413d("idle");
		self.var_8fedf36c function_5ba4a2fd((0, 0, 0));
		self.var_8fedf36c function_d064aa4a((0, 0, 0));
	}
}

/*
	Name: function_ae0b01fe
	Namespace: namespace_786319bb
	Checksum: 0xEDF2E408
	Offset: 0xBC30
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_ae0b01fe(var_fe173168)
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_8fedf36c) && var_5dc5e20a function_c7e339d1(var_5dc5e20a.var_8fedf36c))
		{
			var_5dc5e20a namespace_84eb777e::function_a5b8f98();
			var_5dc5e20a thread function_8f99207(var_fe173168);
		}
	}
	level thread namespace_84eb777e::function_31e37f85();
}

/*
	Name: function_8f99207
	Namespace: namespace_786319bb
	Checksum: 0x2EE81C3
	Offset: 0xBD30
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_8f99207(var_fe173168)
{
	self thread function_22a0413d("exit", undefined, 0, var_fe173168);
}

/*
	Name: function_5c971cb7
	Namespace: namespace_786319bb
	Checksum: 0x9F3842DF
	Offset: 0xBD70
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_5c971cb7()
{
	if(!isdefined(self) || !isdefined(self.var_8fedf36c))
	{
		return 0;
	}
	if(!isdefined(self function_dd4657f1()) || self function_dd4657f1() != self.var_8fedf36c)
	{
		return 0;
	}
	var_7b3da062 = self.var_8fedf36c function_6f256229(self);
	if(isdefined(var_7b3da062) && var_7b3da062 == 0)
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_2b89d912
	Namespace: namespace_786319bb
	Checksum: 0x8877F0DD
	Offset: 0xBE18
	Size: 0x22F
	Parameters: 1
	Flags: None
*/
function function_2b89d912(var_eec37b7b)
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	self.var_8fedf36c endon("hash_c38e4003");
	self.var_8fedf36c.var_86c93e40 = "autopilot";
	self.var_8fedf36c function_42cddf81(0);
	self.var_8fedf36c function_ada64136();
	self.var_8fedf36c function_28bbff14();
	self.var_8fedf36c function_422037f5();
	var_1f21c6ab = self.var_8fedf36c.var_722885f3[2];
	self.var_8fedf36c thread namespace_1fb6a2e5::function_43718187("v_aqu_vtol_land_exit", self.var_8fedf36c.var_722885f3, self.var_8fedf36c.var_6ab6f4fd, 1, 0.5, 0.5, 0.5);
	wait(1);
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_enable_wash_fx", 0);
	self.var_8fedf36c waittillmatch("hash_fce0770a");
	self.var_8fedf36c function_470f7e4c(0);
	self.var_8fedf36c function_8c8e79fe();
	self.var_8fedf36c.var_722885f3 = (self.var_8fedf36c.var_722885f3[0], self.var_8fedf36c.var_722885f3[1], var_1f21c6ab);
	self.var_8fedf36c function_c985552d(self.var_8fedf36c.var_722885f3, 1);
	self.var_8fedf36c notify("hash_7b977278", "end");
}

/*
	Name: function_edfe2d40
	Namespace: namespace_786319bb
	Checksum: 0x29254AC2
	Offset: 0xC050
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_edfe2d40()
{
	/#
		wait(2);
		while(1)
		{
			if(!isdefined(level.var_fee90489) || !isdefined(level.var_e07f6589[level.var_fee90489[0]]))
			{
				function_d52b076d("Dev Block strings are not supported");
			}
			var_5d74e4a2 = function_c43fe5d3();
			if(var_5d74e4a2)
			{
				function_d52b076d("Dev Block strings are not supported" + level.var_fee90489[0]);
			}
			else
			{
				function_d52b076d("Dev Block strings are not supported" + level.var_fee90489[0]);
			}
			wait(1);
		}
	#/
}

/*
	Name: function_c43fe5d3
	Namespace: namespace_786319bb
	Checksum: 0xF0A5D93E
	Offset: 0xC130
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function function_c43fe5d3()
{
	if(!isdefined(level.var_fee90489) || !isdefined(level.var_e07f6589[level.var_fee90489[0]]))
	{
		return 1;
	}
	var_e7493c8e = level.var_e07f6589[level.var_fee90489[0]].var_cbb15570;
	if(!isdefined(var_e7493c8e))
	{
		var_e7493c8e = level.var_e07f6589[level.var_fee90489[0]].var_4537ac00;
	}
	var_d761f857 = undefined;
	if(function_77fdb408(var_e7493c8e, "spawnvtol"))
	{
		return 1;
	}
	else if(function_77fdb408(var_e7493c8e, "checkkayneexist"))
	{
		if(level namespace_ad23e503::function_7922262b("exterior_hack_trig_left_1_started") && level namespace_ad23e503::function_7922262b("exterior_hack_trig_left_1_finished") || (level namespace_ad23e503::function_7922262b("exterior_hack_trig_right_1_started") && level namespace_ad23e503::function_7922262b("exterior_hack_trig_right_1_finished")))
		{
			level notify("hash_563a7486");
			return 1;
		}
		var_d761f857 = !isdefined(level.var_89ea8991);
	}
	else if(function_77fdb408(var_e7493c8e, "checkenteredwater"))
	{
		var_d761f857 = !level namespace_ad23e503::function_7922262b("flag_enter_water_moment");
	}
	else if(function_77fdb408(var_e7493c8e, "checkplayerlanded"))
	{
		var_d761f857 = !level namespace_ad23e503::function_7922262b("lcombat_respawn_ground");
	}
	if(isdefined(var_d761f857))
	{
		if(!var_d761f857)
		{
			self namespace_84eb777e::function_a5b8f98();
		}
		return var_d761f857;
	}
	return 0;
}

/*
	Name: function_a43cfbf3
	Namespace: namespace_786319bb
	Checksum: 0x5EFE91A4
	Offset: 0xC380
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_a43cfbf3(var_f9d4d24e)
{
	self notify("hash_729b5fe2");
	self notify("hash_b153204b");
	self endon("hash_729b5fe2");
	wait(0.05);
	if(level namespace_ad23e503::function_dbca4c5d("hack_terminal_right") && !level namespace_ad23e503::function_7922262b("hack_terminal_right_completed"))
	{
		self function_3d7bb92e(var_f9d4d24e);
	}
	else if(level namespace_ad23e503::function_dbca4c5d("hack_terminals2") && !level namespace_ad23e503::function_7922262b("hack_terminals2_completed"))
	{
		self function_91acd8c6(var_f9d4d24e);
	}
	else if(level namespace_ad23e503::function_dbca4c5d("water_room") && !level namespace_ad23e503::function_7922262b("water_room_completed"))
	{
		self function_a0567298(var_f9d4d24e);
	}
	else
	{
		self function_ca2b9743(var_f9d4d24e);
	}
}

/*
	Name: function_eb188466
	Namespace: namespace_786319bb
	Checksum: 0x6E0DA3FD
	Offset: 0xC508
	Size: 0x137
	Parameters: 3
	Flags: None
*/
function function_eb188466(var_5dc5e20a, var_fc2c26a9, var_ddf71858)
{
	var_5dc5e20a endon("hash_128f8789");
	var_5dc5e20a endon("hash_643a7daf");
	if(!isdefined(var_5dc5e20a.var_8fedf36c))
	{
		return 1;
	}
	if(!isdefined(var_ddf71858))
	{
		var_ddf71858 = 1;
	}
	if(!isdefined(var_fc2c26a9))
	{
		var_fc2c26a9 = "contains_whole_aquifer";
	}
	var_bc601a70 = function_6ada35ba(var_fc2c26a9, "targetname");
	if(!isdefined(var_bc601a70))
	{
		return 1;
	}
	if(!var_ddf71858)
	{
		return !var_5dc5e20a function_32fa5072(var_bc601a70);
	}
	while(1)
	{
		if(var_5dc5e20a function_c7e339d1(var_5dc5e20a.var_8fedf36c))
		{
			if(!var_5dc5e20a function_32fa5072(var_bc601a70))
			{
				return 1;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_465b0eba
	Namespace: namespace_786319bb
	Checksum: 0x366A5131
	Offset: 0xC648
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_465b0eba(var_f9d4d24e)
{
	if(!isdefined(var_f9d4d24e))
	{
		var_f9d4d24e = 0;
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(!isdefined(var_5dc5e20a.var_5bf5e8eb))
		{
			var_5dc5e20a.var_5bf5e8eb = "none";
		}
		var_5dc5e20a thread function_3d7bb92e(var_f9d4d24e);
	}
}

/*
	Name: function_3d7bb92e
	Namespace: namespace_786319bb
	Checksum: 0x9490BB88
	Offset: 0xC728
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_3d7bb92e(var_f9d4d24e)
{
	self notify("hash_b153204b");
	self endon("hash_b153204b");
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(!isdefined(var_f9d4d24e))
	{
		var_f9d4d24e = 0;
	}
	var_8a7bc8e1 = "intro";
	if(var_f9d4d24e || self.var_5bf5e8eb != var_8a7bc8e1)
	{
		if(!var_f9d4d24e)
		{
			function_eb188466(self);
		}
		self.var_5bf5e8eb = var_8a7bc8e1;
		function_bcb42feb("heightmap_objective1", 1, self);
		function_bcb42feb("heightmap_objective3", 0, self);
		function_bcb42feb("heightmap_water_room", 0, self);
		function_bcb42feb("heightmap_wasp_defend", 0, self);
	}
}

/*
	Name: function_5497473c
	Namespace: namespace_786319bb
	Checksum: 0x9C5018C3
	Offset: 0xC858
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_5497473c(var_f9d4d24e)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(!isdefined(var_5dc5e20a.var_5bf5e8eb))
		{
			var_5dc5e20a.var_5bf5e8eb = "none";
		}
		var_5dc5e20a thread function_a0567298();
	}
}

/*
	Name: function_a0567298
	Namespace: namespace_786319bb
	Checksum: 0x7BB38BC
	Offset: 0xC920
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_a0567298(var_f9d4d24e)
{
	self notify("hash_b153204b");
	self endon("hash_b153204b");
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(!isdefined(var_f9d4d24e))
	{
		var_f9d4d24e = 0;
	}
	var_8a7bc8e1 = "waterroom";
	if(self.var_5bf5e8eb != var_8a7bc8e1)
	{
		if(!var_f9d4d24e)
		{
			function_eb188466(self);
		}
		self.var_5bf5e8eb = var_8a7bc8e1;
		function_bcb42feb("heightmap_objective3", 0, self);
		function_bcb42feb("heightmap_objective1", 0, self);
		function_bcb42feb("heightmap_water_room", 1, self);
		function_bcb42feb("heightmap_wasp_defend", 0, self);
	}
}

/*
	Name: function_9cea70b7
	Namespace: namespace_786319bb
	Checksum: 0x3751E998
	Offset: 0xCA48
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_9cea70b7(var_f9d4d24e)
{
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		if(!isdefined(var_5dc5e20a.var_5bf5e8eb))
		{
			var_5dc5e20a.var_5bf5e8eb = "none";
		}
		var_5dc5e20a thread function_ca2b9743();
	}
}

/*
	Name: function_ca2b9743
	Namespace: namespace_786319bb
	Checksum: 0x3846313E
	Offset: 0xCB10
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_ca2b9743(var_f9d4d24e)
{
	self notify("hash_b153204b");
	self endon("hash_b153204b");
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(!isdefined(var_f9d4d24e))
	{
		var_f9d4d24e = 0;
	}
	var_8a7bc8e1 = "breach";
	if(self.var_5bf5e8eb != var_8a7bc8e1)
	{
		if(!var_f9d4d24e)
		{
			function_eb188466(self);
		}
		self.var_5bf5e8eb = var_8a7bc8e1;
		function_bcb42feb("heightmap_objective3", 1, self);
		function_bcb42feb("heightmap_objective1", 0, self);
		function_bcb42feb("heightmap_water_room", 0, self);
		function_bcb42feb("heightmap_wasp_defend", 0, self);
	}
}

/*
	Name: function_beb1031a
	Namespace: namespace_786319bb
	Checksum: 0x63D539F6
	Offset: 0xCC38
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_beb1031a()
{
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(!isdefined(var_5dc5e20a.var_5bf5e8eb))
		{
			var_5dc5e20a.var_5bf5e8eb = "none";
		}
		var_5dc5e20a thread function_91acd8c6();
	}
}

/*
	Name: function_91acd8c6
	Namespace: namespace_786319bb
	Checksum: 0x56F82B02
	Offset: 0xCCF8
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_91acd8c6(var_f9d4d24e)
{
	self notify("hash_b153204b");
	self endon("hash_b153204b");
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	if(!isdefined(var_f9d4d24e))
	{
		var_f9d4d24e = 0;
	}
	var_8a7bc8e1 = "obj3";
	if(self.var_5bf5e8eb != var_8a7bc8e1)
	{
		if(!var_f9d4d24e)
		{
			function_eb188466(self);
		}
		self.var_5bf5e8eb = var_8a7bc8e1;
		function_bcb42feb("heightmap_objective3", 1, self);
		function_bcb42feb("heightmap_water_room", 0, self);
		function_bcb42feb("heightmap_objective1", 0, self);
		function_bcb42feb("heightmap_wasp_defend", 0, self);
	}
}

/*
	Name: function_b89a23e6
	Namespace: namespace_786319bb
	Checksum: 0x331F8F59
	Offset: 0xCE20
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_b89a23e6()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	var_c89e148a = self.var_8fedf36c;
	self.var_b48e2568 = self function_c7e339d1(var_c89e148a);
	while(1)
	{
		if(!self function_c7e339d1(var_c89e148a))
		{
			var_c89e148a function_ada64136();
			var_c89e148a function_5ba4a2fd((0, 0, 0));
			var_c89e148a function_d064aa4a((0, 0, 0));
			wait(0.2);
		}
		else
		{
			self.var_b48e2568 = 1;
			level namespace_ad23e503::function_74d6b22f("start_aquifer_objectives");
		}
		wait(0.05);
	}
}

/*
	Name: function_857c216
	Namespace: namespace_786319bb
	Checksum: 0xEAB9DBFA
	Offset: 0xCF28
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function function_857c216()
{
	if(isdefined(level.var_d4e6c95e))
	{
		return;
	}
	level.var_d4e6c95e = 1;
	wait(15);
	level.var_68b8237a = [];
	level.var_68b8237a = namespace_96fa87af::function_22356ba7("ambient_enemy");
	for(var_c957f6b6 = 0; var_c957f6b6 < level.var_68b8237a.size; var_c957f6b6++)
	{
		var_90ca1fdd = function_243bb261(level.var_68b8237a[var_c957f6b6].var_b07228b6, "targetname");
		level.var_68b8237a[var_c957f6b6] function_5c586b0b(var_90ca1fdd);
		level.var_68b8237a[var_c957f6b6] function_d142a882();
		level.var_68b8237a[var_c957f6b6] thread function_1d7c2e65();
		/#
		#/
		wait(4);
	}
}

/*
	Name: function_1d7c2e65
	Namespace: namespace_786319bb
	Checksum: 0x7500CA47
	Offset: 0xD058
	Size: 0x517
	Parameters: 0
	Flags: None
*/
function function_1d7c2e65()
{
	self endon("hash_128f8789");
	var_91bf33ae = self.var_b07228b6;
	self.var_427a4b17 = function_243bb261(var_91bf33ae, "targetname");
	self.var_75cdb9a5 = 0;
	var_6e1bba72 = function_8f8fb3b0("restart_node_rear", "script_noteworthy");
	var_76bfebca = function_8f8fb3b0("restart_node_rear", "script_noteworthy");
	self.var_5ba3ea63 = function_9b7fda5e("script_origin", self.var_722885f3);
	while(1)
	{
		var_81c67049 = var_91bf33ae;
		var_b113e18e = self namespace_82b91a51::function_45ce26d("path_restart", "delete_me", "path_jump_node");
		if(var_b113e18e == "delete_me" || !isdefined(var_81c67049))
		{
			self function_dc8c8404();
			return;
		}
		self namespace_96fa87af::function_a03a4445();
		var_871231ef = GetTime();
		var_76bfebca = [];
		var_1c9539 = [];
		if(isdefined(self.var_ca0bcf64.var_a33b36db))
		{
			var_1c9539 = function_8f8fb3b0(self.var_ca0bcf64.var_a33b36db, "script_noteworthy");
		}
		else
		{
			function_2e4b8c78("ERROR: no script parameter of next nodes to go to.");
			var_1c9539 = var_6e1bba72;
		}
		foreach(var_90ca1fdd in var_1c9539)
		{
			if(!isdefined(var_90ca1fdd.var_bd3aecb1) || var_871231ef > var_90ca1fdd.var_bd3aecb1)
			{
				var_76bfebca[var_76bfebca.size] = var_90ca1fdd;
			}
		}
		var_ea475169 = namespace_84970cc4::function_47d18840(var_76bfebca);
		if(!isdefined(var_ea475169))
		{
			self function_2992720d();
			return;
		}
		var_ea475169.var_bd3aecb1 = var_871231ef + 3000;
		var_2a97d9fd = function_7d15e2f8(self.var_722885f3, var_ea475169.var_722885f3);
		if(var_2a97d9fd > 128)
		{
			self function_333fd8f0(120, 50, 125);
			self function_c985552d(var_ea475169.var_722885f3, 0, 1);
			var_48b2ad0a = function_243bb261(var_ea475169.var_b07228b6, "targetname");
			self.var_5ba3ea63.var_722885f3 = var_48b2ad0a.var_722885f3;
			self function_df42c640(self.var_5ba3ea63);
			while(var_2a97d9fd > 150)
			{
				wait(0.05);
				var_2a97d9fd = function_7d15e2f8(self.var_722885f3, var_ea475169.var_722885f3);
			}
			self function_8d87b0f9();
			self function_8642a7fe();
			self function_ada64136();
		}
		else
		{
			self function_8642a7fe();
			self function_ada64136();
		}
		wait(0.05);
		self function_5c586b0b(var_ea475169);
		self.var_427a4b17 = var_ea475169;
		self function_d142a882();
		wait(0.05);
	}
}

/*
	Name: function_160cf352
	Namespace: namespace_786319bb
	Checksum: 0x9C3E8ACE
	Offset: 0xD578
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function function_160cf352()
{
	level.var_68b8237a = namespace_84970cc4::function_b87262e(level.var_68b8237a);
	return level.var_68b8237a;
}

/*
	Name: function_cea27223
	Namespace: namespace_786319bb
	Checksum: 0x4ADE8EA
	Offset: 0xD5B0
	Size: 0x3F7
	Parameters: 0
	Flags: None
*/
function function_cea27223()
{
	self endon("hash_643a7daf");
	self endon("hash_128f8789");
	wait(1);
	var_649d368b = 0.9;
	var_d2877b0d = 1024;
	var_74de1c26 = 500;
	var_8662a9e8 = 0.707;
	/#
		var_649d368b = 0.7;
		var_d2877b0d = 6024;
		var_74de1c26 = 100;
	#/
	var_c70d7c4a = undefined;
	var_4faf77e2 = undefined;
	while(1)
	{
		if(!self.var_b48e2568)
		{
			wait(0.1);
			continue;
		}
		var_c70d7c4a = var_4faf77e2;
		var_4faf77e2 = undefined;
		var_388e0ae3 = -1;
		var_b3db42a9 = level function_160cf352();
		foreach(var_6050ab17 in level.var_68b8237a)
		{
			var_244064d7 = var_6050ab17.var_722885f3 - self.var_722885f3;
			var_3846dfda = function_73b84f4d(var_244064d7);
			if(var_3846dfda > var_d2877b0d)
			{
				continue;
			}
			var_1a859714 = function_bc7ce905(self function_89c87c9c());
			var_97b38341 = function_bc7ce905(var_6050ab17.var_6ab6f4fd);
			var_6bf94dd9 = function_5f9a4869(var_1a859714, var_97b38341);
			if(var_6bf94dd9 >= var_8662a9e8)
			{
				var_288785e8 = function_f679a325(var_244064d7);
				var_42bd74de = function_5f9a4869(var_1a859714, var_288785e8);
				if(var_42bd74de > var_649d368b && var_42bd74de > var_388e0ae3)
				{
					var_388e0ae3 = var_42bd74de;
					var_4faf77e2 = var_6050ab17;
				}
			}
			if(isdefined(var_4faf77e2))
			{
				if(!isdefined(var_c70d7c4a) || var_c70d7c4a != var_4faf77e2)
				{
					if(function_5b49d38c(var_c70d7c4a))
					{
						var_c70d7c4a.var_6b45f351 = -1;
					}
					var_4faf77e2.var_6b45f351 = GetTime() + var_74de1c26;
				}
				if(GetTime() > var_4faf77e2.var_6b45f351)
				{
					if(self function_b9a85331())
					{
						self function_9bda23d2(var_4faf77e2);
						continue;
					}
					/#
						function_8f3e0f73(var_4faf77e2.var_722885f3 + VectorScale((0, 0, 1), 100), "Dev Block strings are not supported", (0, 0, 1), 1, 2, 1);
					#/
				}
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_863ee84
	Namespace: namespace_786319bb
	Checksum: 0x195816D0
	Offset: 0xD9B0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_863ee84(var_6039ba26)
{
	return function_73b84f4d(var_6039ba26) * 0.05681818;
}

/*
	Name: function_9bda23d2
	Namespace: namespace_786319bb
	Checksum: 0x7881F377
	Offset: 0xD9E8
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_9bda23d2(var_6050ab17)
{
	self.var_8fedf36c function_c6a7810e();
	var_6b7e11cd = 0.5;
	self.var_8fedf36c function_cc185a14(var_6b7e11cd);
	self.var_8fedf36c function_5c586b0b(var_6050ab17.var_ca0bcf64);
	wait(var_6b7e11cd);
	self.var_8fedf36c function_d142a882();
	while(self function_b9a85331() && function_5b49d38c(var_6050ab17))
	{
		wait(0.05);
	}
	self.var_8fedf36c function_8d87b0f9();
	self.var_8fedf36c function_8642a7fe();
	self.var_8fedf36c function_ada64136();
	wait(0.05);
	self.var_8fedf36c function_16337f9e(self, 0);
	self.var_8fedf36c function_16337f9e(self, 0);
	self.var_8fedf36c function_34ef7d07();
}

/*
	Name: function_3daeb4b6
	Namespace: namespace_786319bb
	Checksum: 0x30F30F73
	Offset: 0xDB78
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_3daeb4b6()
{
	self endon("hash_128f8789");
	wait(1);
	self function_ca711294("axis");
	if(!self namespace_37b990db::function_12434548(1))
	{
		self namespace_37b990db::function_bae40a28(1);
	}
	while(1)
	{
		wait(0.05);
	}
}

/*
	Name: function_ce276271
	Namespace: namespace_786319bb
	Checksum: 0x7A6D26EA
	Offset: 0xDBF8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ce276271()
{
	self function_dc8c8404();
}

/*
	Name: function_3fce552c
	Namespace: namespace_786319bb
	Checksum: 0x895F7EB4
	Offset: 0xDC20
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_3fce552c(var_85e4915e)
{
	if(0)
	{
		var_a3d46ee4 = function_6ada35ba("boss_tree", "targetname");
		var_a3d46ee4 function_422037f5();
		if(var_85e4915e)
		{
			var_a3d46ee4 function_48f26766();
		}
		else
		{
			var_a3d46ee4 function_50ccee8d();
		}
	}
}

/*
	Name: function_75ab4ede
	Namespace: namespace_786319bb
	Checksum: 0x1DC40E1E
	Offset: 0xDCB8
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_75ab4ede(var_f462de69)
{
	var_c4c41a9 = var_f462de69;
	function_2085bf94("boss_door", var_c4c41a9);
	function_2085bf94("backwash_door", var_c4c41a9);
	function_2085bf94("fallen_pile_big", var_c4c41a9);
	function_2085bf94("fallen_pile_small", var_c4c41a9);
	function_2085bf94("runout_crusher", var_c4c41a9);
	var_c4c41a9 = !var_f462de69;
	function_2085bf94("stair_door", var_c4c41a9);
	function_2085bf94("double_closed", var_c4c41a9);
	function_2085bf94("intact_small", var_c4c41a9);
	function_2085bf94("roller_door", var_c4c41a9);
	function_2085bf94("hangar_door", var_c4c41a9);
	function_2085bf94("stairwell_door", var_c4c41a9);
	function_2085bf94("hideout_door2", var_c4c41a9);
	function_2085bf94("hideout_doors_closed", var_c4c41a9);
	function_2085bf94("Hangar_Door_Intact", 1);
}

/*
	Name: function_2085bf94
	Namespace: namespace_786319bb
	Checksum: 0x104843E1
	Offset: 0xDEA8
	Size: 0x151
	Parameters: 2
	Flags: None
*/
function function_2085bf94(var_4be20d44, var_c4c41a9)
{
	var_40e28af4 = function_99201f25(var_4be20d44, "targetname");
	foreach(var_79c2aae5 in var_40e28af4)
	{
		if(isdefined(var_79c2aae5))
		{
			if(var_c4c41a9)
			{
				var_79c2aae5 function_50ccee8d();
				var_79c2aae5 function_422037f5();
				var_79c2aae5 function_de8377bf();
				continue;
			}
			var_79c2aae5 function_48f26766();
			var_79c2aae5 function_4083a98e();
			var_79c2aae5 function_14c24d9d();
		}
	}
}

/*
	Name: function_9f296d9f
	Namespace: namespace_786319bb
	Checksum: 0x42AA79D7
	Offset: 0xE008
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_9f296d9f(var_4be20d44)
{
	var_5948b3df = function_6ada35ba(var_4be20d44, "targetname");
	if(isdefined(var_5948b3df))
	{
		var_5948b3df namespace_4dbf3ae3::function_42e87952();
	}
}

/*
	Name: function_9baa6cb5
	Namespace: namespace_786319bb
	Checksum: 0x8B8505BC
	Offset: 0xE070
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_9baa6cb5()
{
	self notify("hash_9baa6cb5");
	self endon("hash_9baa6cb5");
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	if(!isdefined(self.var_aa3f3ac2))
	{
		self.var_aa3f3ac2 = 0;
	}
	while(1)
	{
		if(self function_7db80007())
		{
			self.var_aa3f3ac2 = !isdefined(self.var_aa3f3ac2) && self.var_aa3f3ac2;
			self namespace_16f9ecd3::function_1c59df50(self.var_aa3f3ac2);
			while(self function_7db80007())
			{
				wait(0.05);
			}
		}
		else
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_c10544f
	Namespace: namespace_786319bb
	Checksum: 0xC9EF1A0B
	Offset: 0xE160
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_c10544f()
{
	self endon("hash_128f8789");
	self endon("hash_643a7daf");
	if(!isdefined(self.var_4324603c))
	{
		self.var_4324603c = function_a8fb77bd();
	}
	while(self function_5c971cb7() && function_5b49d38c(self))
	{
		self.var_8fedf36c waittill("hash_f9348fda", var_f9348fda, var_a0ad4f34, var_bd00ff2a, var_c8a3ac29, var_fe311e35, var_6df9264, var_b31a6ddf, var_1b2a0d26, var_dfcc01fd, var_980d0a72);
		self.var_4324603c.var_a0ad4f34 = var_a0ad4f34;
		self.var_4324603c.var_c8a3ac29 = var_c8a3ac29;
		self.var_4324603c.var_dfcc01fd = var_dfcc01fd;
		self function_4ede0101(var_f9348fda, var_bd00ff2a);
	}
}

/*
	Name: function_2d64c4b0
	Namespace: namespace_786319bb
	Checksum: 0xA50DA4CC
	Offset: 0xE2C8
	Size: 0x78F
	Parameters: 1
	Flags: None
*/
function function_2d64c4b0(var_5dc5e20a)
{
	var_5dc5e20a endon("hash_643a7daf");
	var_8f9a21ac = function_afedf5ee("g_gameskill");
	var_269acedc = 1000 * var_8f9a21ac + 1;
	var_a9208969 = 100 / var_8f9a21ac + 1;
	var_fb7e6cf1 = 4 - var_8f9a21ac;
	var_fa963e85 = var_fb7e6cf1 > 0;
	var_e3454d01 = 0;
	self.var_47c252e3 = function_b6b79a0(100000 / var_8f9a21ac + 1);
	self.var_3a90f16b = self.var_47c252e3;
	var_973e5962 = self.var_3a90f16b;
	var_e4fefce2 = function_b6b79a0(self.var_47c252e3 * 0.033);
	var_7b71e577 = function_b6b79a0(self.var_47c252e3 * 0.066);
	var_ecd3ee40 = function_b6b79a0(self.var_47c252e3 * 0.085);
	var_f53b8d29 = 0;
	var_2f9cc55d = 0;
	while(isdefined(self))
	{
		var_ec01147f = self function_b4980289(0);
		if(isdefined(var_ec01147f))
		{
			if(self.var_3a90f16b >= var_973e5962 && self.var_3a90f16b < self.var_47c252e3)
			{
				if(var_e3454d01 + var_269acedc < GetTime())
				{
					self.var_3a90f16b = function_b6b79a0(function_95d0212b(self.var_3a90f16b + var_a9208969, self.var_47c252e3));
					if(self.var_3a90f16b >= self.var_47c252e3)
					{
						var_fa963e85 = 1;
					}
				}
			}
			else if(self.var_3a90f16b < var_973e5962)
			{
				var_ec01147f notify("hash_3ed4c2bf");
				if(self.var_47c252e3 - self.var_3a90f16b >= var_ecd3ee40)
				{
					if(var_fa963e85 && var_8f9a21ac < 4)
					{
						self.var_3a90f16b = self.var_47c252e3 - var_ecd3ee40;
						self namespace_96fa87af::function_fdf99c07();
						wait(var_fb7e6cf1);
						self namespace_96fa87af::function_54055cfb();
						var_fa963e85 = 0;
					}
					else
					{
						self namespace_96fa87af::function_fdf99c07();
						self function_c6a7810e();
						var_ec01147f notify("hash_3b4858b5");
						var_ec01147f.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_dogfighting", 0);
						var_ec01147f namespace_71e9cb84::function_cc4d5165("vehicle.lockOn", 0);
						self namespace_71e9cb84::function_74d6b22f("vtol_set_missile_lock_percent", 0);
						self namespace_71e9cb84::function_74d6b22f("vtol_show_missile_lock", 0);
						var_ec01147f function_618593a2();
						var_60db70fa = 3;
						var_ec01147f thread function_59b80342(var_60db70fa);
						self thread namespace_8276f484::function_21afa0a();
						var_5d74e4a2 = self namespace_82b91a51::function_9fcf3cd8(var_60db70fa, "crash_move_done");
						if(isdefined(var_ec01147f))
						{
							var_ec01147f function_4890e520();
							var_ec01147f.var_3a90f16b = 1;
							var_ec01147f.var_e1700654 = 1;
							var_ec01147f function_494925ca(0);
							var_ec01147f function_2992720d(var_ec01147f.var_4324603c.var_c8a3ac29, var_ec01147f.var_4324603c.var_a0ad4f34, undefined, var_ec01147f.var_4324603c.var_dfcc01fd);
						}
						if(var_5d74e4a2 == "timeout" && isdefined(self))
						{
							self notify("hash_831c5309");
							self namespace_96fa87af::function_54055cfb();
							self thread namespace_8276f484::function_6b93afbc(0);
							namespace_82b91a51::function_76f13293();
							if(isdefined(self))
							{
								self function_dc8c8404();
							}
						}
						wait(1);
						if(isdefined(var_ec01147f) && !function_5b49d38c(var_ec01147f) && !var_ec01147f function_67f028cc())
						{
							var_ec01147f thread namespace_ce7c3ed5::function_7e61de2b(0.5);
						}
						return;
					}
				}
				if(self.var_47c252e3 - self.var_3a90f16b >= var_7b71e577)
				{
					var_f53b8d29 = function_aaeec8c5(var_f53b8d29, 2);
				}
				else if(self.var_47c252e3 - self.var_3a90f16b >= var_e4fefce2)
				{
					var_f53b8d29 = function_aaeec8c5(var_f53b8d29, 1);
				}
				var_e3454d01 = GetTime();
			}
			var_973e5962 = self.var_3a90f16b;
		}
		else
		{
			self namespace_82b91a51::function_5b7e3888("reset_damage_state", "enter_vehicle");
			self.var_3a90f16b = self.var_47c252e3;
			var_f53b8d29 = 0;
		}
		if(var_f53b8d29 != var_2f9cc55d)
		{
			self namespace_71e9cb84::function_74d6b22f("vtol_damage_state", function_b6b79a0(var_f53b8d29));
			var_2f9cc55d = var_f53b8d29;
			self namespace_96fa87af::function_fdf99c07();
			wait(var_fb7e6cf1 / 2);
			self namespace_96fa87af::function_54055cfb();
			var_e3454d01 = GetTime();
		}
		wait(0.05);
	}
}

/*
	Name: function_59b80342
	Namespace: namespace_786319bb
	Checksum: 0xD7F47465
	Offset: 0xEA60
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_59b80342(var_60db70fa)
{
	var_f721d9a5 = var_60db70fa;
	while(isdefined(self) && var_60db70fa > 0)
	{
		self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1 - var_60db70fa / var_f721d9a5);
		wait(0.05);
		var_60db70fa = var_60db70fa - 0.05;
	}
	if(isdefined(self))
	{
		self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
	}
}

/*
	Name: function_d683f26a
	Namespace: namespace_786319bb
	Checksum: 0x2532E151
	Offset: 0xEB18
	Size: 0x25B
	Parameters: 1
	Flags: None
*/
function function_d683f26a(var_f58fccb8)
{
	if(!isdefined(self.var_8fedf36c) && isdefined(self.var_1e9fba3) && !self namespace_957e94ce::function_7922262b("vtol_spawning"))
	{
		self namespace_71e9cb84::function_cc4d5165("vehicle.weaponIndex", 1);
		self namespace_71e9cb84::function_cc4d5165("vehicle.lockOn", 0);
		self namespace_957e94ce::function_74d6b22f("vtol_spawning");
		self.var_8fedf36c = namespace_96fa87af::function_7387a40a("player" + self.var_1e9fba3 + "_vtol_spawner");
		self.var_8fedf36c function_13193225("veh_bo3_mil_vtol_fighter_player_agile");
		self.var_8fedf36c thread function_2d64c4b0(self);
		self namespace_957e94ce::function_9d134160("vtol_spawning");
		if(!isdefined(var_f58fccb8))
		{
			var_f58fccb8 = 1;
		}
		if(var_f58fccb8)
		{
			var_42267048 = namespace_14b42b8a::function_7922262b("player" + self.var_1e9fba3 + "_vtol_start_loc");
			if(isdefined(var_42267048))
			{
				self.var_8fedf36c.var_722885f3 = var_42267048.var_722885f3;
				self.var_8fedf36c.var_6ab6f4fd = var_42267048.var_6ab6f4fd;
				self.var_8fedf36c function_c05708b5();
			}
		}
		if(isdefined(self.var_1e9fba3))
		{
			self.var_dda84f1a = function_99201f25("landing_zone_player_" + self.var_1e9fba3, "targetname");
		}
	}
	else
	{
		self namespace_957e94ce::function_d3de6822("vtol_spawning");
	}
}

/*
	Name: function_b7cf4d2d
	Namespace: namespace_786319bb
	Checksum: 0x4D298962
	Offset: 0xED80
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_b7cf4d2d(var_5dc5e20a)
{
	if(!isdefined(var_5dc5e20a))
	{
		var_5dc5e20a = undefined;
	}
	var_97c660b9 = 0.1;
	var_48006b13 = 0.2;
	var_ea34fead = level;
	if(isdefined(var_5dc5e20a))
	{
		var_5dc5e20a endon("hash_643a7daf");
		var_ea34fead = var_5dc5e20a;
	}
	level namespace_957e94ce::function_74d6b22f("dogfight_intro_dialog");
	level namespace_71b8dba1::function_a463d127("kane_watch_out_multiple_b_0", 0, "dni", var_5dc5e20a);
	var_ea34fead namespace_71b8dba1::function_13b3b16a("plyr_break_formation_and_0", function_72a94f05(var_97c660b9, var_48006b13));
	var_ea34fead namespace_71b8dba1::function_13b3b16a("plyr_hendricks_proceed_to_0", function_72a94f05(var_97c660b9, var_48006b13));
	level namespace_71b8dba1::function_a463d127("hend_copy_all_drop_em_0", function_72a94f05(var_97c660b9, var_48006b13), "dni", var_5dc5e20a);
	level namespace_957e94ce::function_9d134160("dogfight_intro_dialog");
}

/*
	Name: function_61b71c43
	Namespace: namespace_786319bb
	Checksum: 0xCD6939D4
	Offset: 0xEF20
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_61b71c43()
{
	namespace_cc27597::function_8f9f34e0("cin_aqu_01_10_intro_1st_flyin_main", &function_f005cfe, "done");
	namespace_cc27597::function_c35e6aab("cin_aqu_01_10_intro_1st_flyin_main");
	level.var_39c3b76e = namespace_96fa87af::function_7387a40a("hendricks_vtol");
	level.var_52aa09ce = function_6ada35ba("kane_intro", "targetname") namespace_2f06d687::function_9b7fda5e(1);
	level.var_ae4620ba = namespace_96fa87af::function_7387a40a("kane_vtol");
}

/*
	Name: function_2c69b4a0
	Namespace: namespace_786319bb
	Checksum: 0x906ACEAD
	Offset: 0xEFF8
	Size: 0x59B
	Parameters: 1
	Flags: None
*/
function function_2c69b4a0(var_24223342)
{
	var_f13bfa4a = [];
	var_20ba1d57 = [];
	if(!isdefined(var_f13bfa4a))
	{
		var_f13bfa4a = [];
	}
	else if(!function_6e2770d8(var_f13bfa4a))
	{
		var_f13bfa4a = function_84970cc4(var_f13bfa4a);
	}
	var_f13bfa4a[var_f13bfa4a.size] = var_24223342;
	if(!isdefined(var_f13bfa4a))
	{
		var_f13bfa4a = [];
	}
	else if(!function_6e2770d8(var_f13bfa4a))
	{
		var_f13bfa4a = function_84970cc4(var_f13bfa4a);
	}
	var_f13bfa4a[var_f13bfa4a.size] = level.var_39c3b76e;
	if(!isdefined(var_f13bfa4a))
	{
		var_f13bfa4a = [];
	}
	else if(!function_6e2770d8(var_f13bfa4a))
	{
		var_f13bfa4a = function_84970cc4(var_f13bfa4a);
	}
	var_f13bfa4a[var_f13bfa4a.size] = level.var_52aa09ce;
	if(!isdefined(var_f13bfa4a))
	{
		var_f13bfa4a = [];
	}
	else if(!function_6e2770d8(var_f13bfa4a))
	{
		var_f13bfa4a = function_84970cc4(var_f13bfa4a);
	}
	var_f13bfa4a[var_f13bfa4a.size] = level.var_ae4620ba;
	level namespace_ad23e503::function_1ab5ebec("intro_chryon_done");
	level.var_39c3b76e namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 1);
	level.var_ae4620ba namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 1);
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_d683f26a();
		var_f13bfa4a[var_f13bfa4a.size] = var_5dc5e20a.var_8fedf36c;
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_aqu_war_airassault_bundle");
	level thread namespace_cc27597::function_43718187("cin_aqu_01_10_intro_1st_flyin_main", var_f13bfa4a);
	level.var_c8595f3e = GetTime();
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		level.var_2395e945[var_5e76f0af] thread function_22a0413d("scripted");
		level.var_2395e945[var_5e76f0af] namespace_71e9cb84::function_cc4d5165("vehicle.weaponIndex", 0);
		level.var_2395e945[var_5e76f0af].var_8fedf36c function_c6a7810e();
		level.var_2395e945[var_5e76f0af].var_8fedf36c function_5e9446b8(1);
		level.var_2395e945[var_5e76f0af].var_8fedf36c function_6e9c95ff(0, 1);
		level.var_2395e945[var_5e76f0af] function_c20e893e(0);
		level.var_2395e945[var_5e76f0af] thread function_af376a0e("v_aqu_01_10_intro_1st_flyin_player" + var_5e76f0af + 1, var_5e76f0af, "v_aqu_dogfight_intro_enemy" + var_5e76f0af + 1, "intro_dogfight_global_active");
		level.var_2395e945[var_5e76f0af].var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_screen_shake", 1);
	}
	level thread namespace_1d1d22be::function_c800052a();
	level namespace_ad23e503::function_1ab5ebec("intro_dialog_finished");
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		level.var_2395e945[var_5e76f0af].var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_screen_shake", 0);
	}
	level thread function_b7cf4d2d();
	level namespace_ad23e503::function_1ab5ebec("flying_main_scene_done");
	level namespace_ad23e503::function_74d6b22f("intro_finished");
}

/*
	Name: function_f005cfe
	Namespace: namespace_786319bb
	Checksum: 0xAFD4A55D
	Offset: 0xF5A0
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_f005cfe(var_c77d2837)
{
	level namespace_ad23e503::function_74d6b22f("flying_main_scene_done");
}

/*
	Name: function_af376a0e
	Namespace: namespace_786319bb
	Checksum: 0xAB5D29BF
	Offset: 0xF5D8
	Size: 0x3AB
	Parameters: 4
	Flags: None
*/
function function_af376a0e(var_b691b9cf, var_5e76f0af, var_c4ea019e, var_84fe82cd)
{
	self endon("hash_643a7daf");
	self thread function_22a0413d("scripted");
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_show_missile_lock", 0);
	self.var_8fedf36c waittillmatch(var_b691b9cf);
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_engines_state", 1);
	thread function_14f37b59(var_c4ea019e, 0, self, undefined, "flight_path_spawner" + var_5e76f0af + 1);
	while(!isdefined(self.var_1d195e2c))
	{
		wait(0.05);
	}
	self function_c477757c(self.var_1d195e2c);
	self thread function_9d40b42c();
	self.var_8fedf36c waittillmatch(var_b691b9cf);
	self.var_8fedf36c function_2c935359(1);
	level namespace_ad23e503::function_74d6b22f("dogfighting");
	self function_46724ab2(self.var_1d195e2c);
	self.var_1d195e2c.var_8f9e6a04 = self;
	self function_d683f26a();
	self thread function_22a0413d("piloted");
	self function_83fd42b5();
	self.var_8fedf36c namespace_96fa87af::function_fdf99c07();
	self.var_8fedf36c function_470f7e4c(0);
	self.var_8fedf36c function_5e9446b8(0);
	self.var_8fedf36c function_6e9c95ff(0, 0);
	self.var_8fedf36c function_34ef7d07();
	self function_c20e893e(0);
	self namespace_957e94ce::function_74d6b22f("dogfighting");
	self.var_8fedf36c namespace_71e9cb84::function_74d6b22f("vtol_dogfighting", 1);
	self.var_8fedf36c namespace_96fa87af::function_500f51c7(0);
	self namespace_71e9cb84::function_cc4d5165("vehicle.weaponIndex", 2);
	self.var_8fedf36c function_13193225("veh_bo3_mil_vtol_fighter_player_dogfight");
	self namespace_6ece97b7::function_113a0740(1);
	self thread function_c5a27940(var_84fe82cd);
	namespace_82b91a51::function_76f13293();
	self.var_8fedf36c namespace_96fa87af::function_500f51c7(1);
}

/*
	Name: function_9d40b42c
	Namespace: namespace_786319bb
	Checksum: 0xFD36F625
	Offset: 0xF990
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_9d40b42c()
{
	self endon("hash_643a7daf");
	level namespace_82b91a51::function_9fcf3cd8(7, "dogfighting");
	self namespace_71e9cb84::function_cc4d5165("vehicle.showAimHint", 1);
	wait(3);
	self namespace_71e9cb84::function_cc4d5165("vehicle.showAimHint", 0);
	var_b444826e = function_a8fb77bd();
	var_b444826e.var_2888112b = &"CP_MI_CAIRO_AQUIFER_VTOL_MISSILE_HINT";
	var_b444826e.var_62240a71 = 5;
	self namespace_4d476a30::function_a73c3a23(var_b444826e);
	wait(var_b444826e.var_62240a71);
	var_b444826e.var_2888112b = &"CP_MI_CAIRO_AQUIFER_VTOL_MG_HINT";
	self namespace_4d476a30::function_a73c3a23(var_b444826e);
	wait(var_b444826e.var_62240a71);
	self namespace_4d476a30::function_efac4cb1();
	var_f6a2729b = 5;
	while(var_f6a2729b > 0 && function_f781860c(self function_86bd5886()) == 0)
	{
		var_f6a2729b = var_f6a2729b - 0.05;
		wait(0.05);
	}
	if(var_f6a2729b <= 0)
	{
		var_b444826e.var_2888112b = &"CP_MI_CAIRO_AQUIFER_VTOL_AIM_HINT";
		var_b444826e.var_62240a71 = 5;
		self namespace_4d476a30::function_a73c3a23(var_b444826e);
		wait(var_b444826e.var_62240a71);
		self namespace_4d476a30::function_efac4cb1();
	}
}

/*
	Name: function_a97555a0
	Namespace: namespace_786319bb
	Checksum: 0xCD4AFA39
	Offset: 0xFBD0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_a97555a0(var_5d9e4a9f, var_bc601a70)
{
	namespace_2f06d687::function_c6ffd13e(var_5d9e4a9f, &function_c11cfb53, var_bc601a70);
}

/*
	Name: function_c11cfb53
	Namespace: namespace_786319bb
	Checksum: 0xAFEB5B8F
	Offset: 0xFC18
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_c11cfb53(var_1f5ba763)
{
	self endon("hash_128f8789");
	self namespace_82b91a51::function_958c7633();
	while(!isdefined(self.var_96fa87af))
	{
		wait(0.1);
	}
	var_3770a3b5 = function_6ada35ba(var_1f5ba763, "targetname");
	wait(1);
	self namespace_82b91a51::function_4b741fdc();
	self function_ab5de970(var_3770a3b5);
}

/*
	Name: function_7aa64289
	Namespace: namespace_786319bb
	Checksum: 0xB75AB92A
	Offset: 0xFCC8
	Size: 0x1E3
	Parameters: 3
	Flags: None
*/
function function_7aa64289(var_68044d19, var_f8456b37, var_a87ad6ce)
{
	/#
		namespace_33b293fd::function_a7ee953(function_4451c715(var_68044d19));
	#/
	if(!isdefined(var_f8456b37))
	{
		var_f8456b37 = 512;
	}
	if(!isdefined(var_a87ad6ce))
	{
		var_a87ad6ce = "aqu_explosion_launcher";
	}
	var_64dd447f = function_99201f25(var_a87ad6ce, "targetname");
	var_64dd447f = function_57efbe1(var_64dd447f, var_68044d19, 2, 0, var_f8456b37);
	if(isdefined(var_64dd447f[0]))
	{
		var_d8e7bbc = var_64dd447f[0];
		var_22ae8d39 = var_d8e7bbc.var_722885f3 - var_68044d19 / 2;
		var_c3d535db = function_73b84f4d(var_22ae8d39) + 200;
		var_22ae8d39 = var_d8e7bbc.var_722885f3 - var_22ae8d39 - VectorScale((0, 0, 1), 72);
		var_f9d4d24e = 2;
		function_534b3cba(var_22ae8d39, function_b6b79a0(var_c3d535db), function_b6b79a0(var_c3d535db * 0.75), var_f9d4d24e);
		var_d8e7bbc function_dc8c8404();
		return 1;
	}
	return 0;
}

/*
	Name: function_ab5de970
	Namespace: namespace_786319bb
	Checksum: 0x98CC1A1D
	Offset: 0xFEB8
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_ab5de970(var_bc601a70)
{
	self endon("hash_128f8789");
	self function_dec5be9a();
	self function_fb5720f7();
	self function_e11ce512();
	wait(0.05);
	self function_86408aa8(var_bc601a70);
}

/*
	Name: function_c1bd6415
	Namespace: namespace_786319bb
	Checksum: 0x3F36864A
	Offset: 0xFF40
	Size: 0xC9
	Parameters: 2
	Flags: None
*/
function function_c1bd6415(var_4be20d44, var_86c93e40)
{
	var_cbf69fd2 = function_99201f25(var_4be20d44, "targetname");
	foreach(var_4dbf3ae3 in var_cbf69fd2)
	{
		var_4dbf3ae3 function_175e6b8e(var_86c93e40);
	}
}

/*
	Name: function_7cd236c3
	Namespace: namespace_786319bb
	Checksum: 0x5109467D
	Offset: 0x10018
	Size: 0xF9
	Parameters: 2
	Flags: None
*/
function function_7cd236c3(var_170527fb, var_86c93e40)
{
	var_cbf69fd2 = function_99201f25(var_170527fb, "targetname");
	foreach(var_4dbf3ae3 in var_cbf69fd2)
	{
		if(var_4dbf3ae3.var_5f8b9cbf > 0)
		{
			var_4dbf3ae3 function_a54b5ecf(10);
		}
		var_4dbf3ae3 function_175e6b8e(var_86c93e40);
	}
}

/*
	Name: function_77fde091
	Namespace: namespace_786319bb
	Checksum: 0xEE54CF47
	Offset: 0x10120
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_77fde091(var_86c93e40)
{
	var_b340b98b = function_6ada35ba("vtol_water_room_clip", "targetname");
	if(var_86c93e40 == 1)
	{
		var_b340b98b function_4083a98e();
	}
	else
	{
		var_b340b98b function_422037f5();
	}
}

/*
	Name: function_5a160fe7
	Namespace: namespace_786319bb
	Checksum: 0xC9885621
	Offset: 0x101A0
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_5a160fe7()
{
	wait(3);
	var_96747128 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone02_6");
	wait(0.1);
	foreach(var_6b45b25e in var_96747128)
	{
		if(isdefined(var_6b45b25e) || function_5b49d38c(var_6b45b25e))
		{
			var_6b45b25e function_2992720d();
			wait(function_72a94f05(0.8, 2.5));
		}
	}
}

/*
	Name: function_7d76ae16
	Namespace: namespace_786319bb
	Checksum: 0x505761DC
	Offset: 0x102B0
	Size: 0x181
	Parameters: 2
	Flags: None
*/
function function_7d76ae16(var_8d8c2f96, var_29f8e61c)
{
	var_8173bf49 = function_6ada35ba(var_8d8c2f96, "targetname");
	var_a77639b2 = function_6ada35ba(var_29f8e61c, "targetname");
	var_35ef0ec1 = function_b8494651("axis");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		if(isdefined(var_6b45b25e) || function_5b49d38c(var_6b45b25e))
		{
			if(var_6b45b25e function_32fa5072(var_8173bf49))
			{
				var_6b45b25e thread function_ef807253(var_a77639b2);
				wait(function_72a94f05(0.2, 0.8));
			}
		}
	}
}

/*
	Name: function_ef807253
	Namespace: namespace_786319bb
	Checksum: 0xCBF4DA86
	Offset: 0x10440
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_ef807253(var_bc601a70)
{
	self endon("hash_128f8789");
	self function_dec5be9a();
	self function_fb5720f7();
	self function_e11ce512();
	self namespace_d84e54db::function_b4f5e3b9(1);
	wait(function_72a94f05(0.2, 1));
	self function_86408aa8(var_bc601a70);
	self namespace_d84e54db::function_b4f5e3b9(0);
}

/*
	Name: function_367616d8
	Namespace: namespace_786319bb
	Checksum: 0xDA2210E6
	Offset: 0x10510
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_367616d8()
{
	namespace_4dbf3ae3::function_1ab5ebec("lcombat_ambient_flyby", "targetname");
	var_86f40d8a = namespace_96fa87af::function_2962e239("flyby_lcombat_ambient1");
	level thread namespace_1d1d22be::function_5dcd1d9();
	level namespace_ad23e503::function_1ab5ebec("lcombat_flyby_shake");
	function_9cf04c2e(0.5, 3, var_86f40d8a.var_722885f3, 4000);
}

/*
	Name: function_fd0dbe22
	Namespace: namespace_786319bb
	Checksum: 0x1B50B67A
	Offset: 0x105C8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_fd0dbe22()
{
	level thread namespace_cc27597::function_43718187("lcombat_hunter_event_anim", "targetname");
	wait(3);
	level namespace_cc27597::function_43718187("lcombat_hunter_crash_trans", "targetname");
}

/*
	Name: function_dfc31fd4
	Namespace: namespace_786319bb
	Checksum: 0xB3498AB2
	Offset: 0x10628
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_dfc31fd4()
{
	namespace_4dbf3ae3::function_42e87952("redshirt_explode_event", "targetname");
	level namespace_ad23e503::function_1ab5ebec("player_really_landed");
	level thread namespace_1d1d22be::function_c3d203d6();
	var_cba21689 = namespace_14b42b8a::function_7922262b("redshirt_explosion", "targetname");
	namespace_5753664b::function_43718187("boss_explosion", var_cba21689.var_722885f3);
	function_eac31668(var_cba21689.var_722885f3, 120, 1000, 1000, undefined, undefined);
}

/*
	Name: function_8c7dc4c3
	Namespace: namespace_786319bb
	Checksum: 0x378267DE
	Offset: 0x10710
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_8c7dc4c3()
{
	var_36e5f35c = namespace_96fa87af::function_2962e239("lcombat_amb_hunter");
	namespace_d5067552::function_bae40a28("spawn_manager_amb_hack_zone02_6");
	level namespace_ad23e503::function_1ab5ebec("inside_aquifer");
	namespace_d5067552::function_54bdb053("spawn_manager_amb_hack_zone02_6");
	if(isdefined(var_36e5f35c) && function_5b49d38c(var_36e5f35c))
	{
		var_36e5f35c namespace_96fa87af::function_543527b0();
	}
	var_4e7924f6 = namespace_d5067552::function_423eae50("spawn_manager_amb_hack_zone02_6");
	foreach(var_6b45b25e in var_4e7924f6)
	{
		if(isdefined(var_6b45b25e) && function_5b49d38c(var_6b45b25e))
		{
			var_6b45b25e function_2992720d();
			wait(function_72a94f05(0.2, 0.8));
		}
	}
}

/*
	Name: function_9cf1804b
	Namespace: namespace_786319bb
	Checksum: 0x24BAD7F
	Offset: 0x108C0
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_9cf1804b()
{
	level namespace_ad23e503::function_1ab5ebec("lcombat_vtol_flyin");
	level.var_bd9300b5 = namespace_96fa87af::function_2962e239("lcombat_dropoff_vtol");
	level.var_bd9300b5 waittill("hash_6cf6ac7e");
	if(isdefined(level.var_bd9300b5))
	{
		level.var_bd9300b5 function_dc8c8404();
	}
	var_5f515cec = namespace_2f06d687::function_289e6fd1("lcombat_enemy_vtol_riders");
	foreach(var_41c2a7ed in var_5f515cec)
	{
		if(isdefined(var_41c2a7ed) || function_5b49d38c(var_41c2a7ed))
		{
			var_41c2a7ed function_dc8c8404();
		}
	}
}

/*
	Name: function_3ba6e66c
	Namespace: namespace_786319bb
	Checksum: 0xAC80C072
	Offset: 0x10A18
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_3ba6e66c()
{
	wait(6);
	var_35ef0ec1 = namespace_2f06d687::function_289e6fd1("rpg_guys_lcombat");
	foreach(var_6b45b25e in var_35ef0ec1)
	{
		var_6b45b25e function_c7708f99("lcombat_air_attack");
	}
	function_49e95dc0("players_vtol", "lcombat_air_attack", 10000);
}

/*
	Name: function_255e711
	Namespace: namespace_786319bb
	Checksum: 0x34A1441D
	Offset: 0x10B00
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_255e711(var_35ef0ec1)
{
	wait(1);
	if(isdefined(var_35ef0ec1))
	{
		foreach(var_6b45b25e in var_35ef0ec1)
		{
			if(isdefined(var_6b45b25e))
			{
				var_6b45b25e function_2992720d();
			}
		}
	}
}

/*
	Name: function_f8243869
	Namespace: namespace_786319bb
	Checksum: 0xF5F8DC1D
	Offset: 0x10BB8
	Size: 0x321
	Parameters: 0
	Flags: None
*/
function function_f8243869()
{
	thread function_f0905754();
	level namespace_ad23e503::function_1ab5ebec("inside_aquifer");
	var_e27965fa = namespace_d5067552::function_423eae50("spawn_manager_lcombat_trans_wave1");
	thread function_255e711(var_e27965fa);
	var_bc76eb91 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone02_4");
	thread function_255e711(var_bc76eb91);
	var_96747128 = namespace_d5067552::function_423eae50("spawn_manager_hack_zone02_5");
	thread function_255e711(var_96747128);
	var_2481af4f = namespace_2f06d687::function_289e6fd1("lcombat_shotgun_guys");
	foreach(var_49396bcc in var_2481af4f)
	{
		if(isdefined(var_49396bcc) || function_5b49d38c(var_49396bcc))
		{
			var_49396bcc function_dc8c8404();
		}
	}
	foreach(var_6b45b25e in level.var_6657ee03)
	{
		if(isdefined(var_6b45b25e) || function_5b49d38c(var_6b45b25e))
		{
			var_6b45b25e function_dc8c8404();
		}
	}
	var_1753830a = namespace_2f06d687::function_289e6fd1("lcombat_ally_secondwave");
	foreach(var_3d9162f in var_1753830a)
	{
		if(isdefined(var_3d9162f) || function_5b49d38c(var_3d9162f))
		{
			var_3d9162f function_dc8c8404();
		}
	}
}

/*
	Name: function_f0905754
	Namespace: namespace_786319bb
	Checksum: 0x12BC92DE
	Offset: 0x10EE8
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_f0905754()
{
	var_ba59b973 = namespace_2f06d687::function_289e6fd1("lcombat_wasp_wave");
	foreach(var_7a91f98 in var_ba59b973)
	{
		if(isdefined(var_7a91f98) || function_5b49d38c(var_7a91f98))
		{
			var_7a91f98 function_2992720d();
		}
	}
}

/*
	Name: function_287ca2ad
	Namespace: namespace_786319bb
	Checksum: 0x3A9BE91B
	Offset: 0x10FC8
	Size: 0x173
	Parameters: 1
	Flags: None
*/
function function_287ca2ad(var_86c93e40)
{
	var_79ce89aa = function_6ada35ba("hangar_umbra_top_door", "targetname");
	var_79ce89aa function_8c8e79fe();
	var_79ce89aa function_422037f5();
	var_5781ea4d = function_6ada35ba("hangar_umbra_sidedoor_1", "targetname");
	var_5781ea4d function_8c8e79fe();
	var_5781ea4d function_422037f5();
	var_7d8464b6 = function_6ada35ba("hangar_umbra_sidedoor_2", "targetname");
	var_7d8464b6 function_8c8e79fe();
	var_7d8464b6 function_422037f5();
	function_bab1ff00("hangar_top_door", var_86c93e40);
	function_bab1ff00("hangar_sidedoor1", var_86c93e40);
	function_bab1ff00("hangar_sidedoor2", var_86c93e40);
}

/*
	Name: function_c6b73822
	Namespace: namespace_786319bb
	Checksum: 0x853149BE
	Offset: 0x11148
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_c6b73822(var_6c968618)
{
	level notify("hash_96450f49");
	level.var_c37cadc1 function_500dc2f7(120);
	level.var_c37cadc1 function_333fd8f0(75, 30, 30);
	level.var_c37cadc1 function_b53ebe89(59, 180, 180);
	level.var_c37cadc1 function_42cddf81(128, 35, 35);
	level.var_c37cadc1 function_8d87b0f9();
	var_5acbeba0 = namespace_14b42b8a::function_7922262b(var_6c968618);
	level.var_c37cadc1.var_d925663e[0] function_c15140d4();
	level.var_c37cadc1 function_c985552d(var_5acbeba0.var_722885f3, 1, 1);
	level waittill("hash_7e64f485");
	wait(1);
	level.var_c37cadc1.var_d925663e[0] function_dc8c8404();
	level.var_c37cadc1 function_dc8c8404();
}

/*
	Name: function_f3326322
	Namespace: namespace_786319bb
	Checksum: 0x1DC1654C
	Offset: 0x112E0
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_f3326322(var_a87ad6ce)
{
	level waittill("hash_ac2ce9fc");
	wait(8);
	var_16d4a623 = function_99201f25(var_a87ad6ce, "targetname");
	foreach(var_c82fd082 in var_16d4a623)
	{
		var_c82fd082 function_dc8c8404();
	}
}

/*
	Name: function_99b61785
	Namespace: namespace_786319bb
	Checksum: 0x8EFCF116
	Offset: 0x113B8
	Size: 0x1DB
	Parameters: 0
	Flags: None
*/
function function_99b61785()
{
	self endon("hash_128f8789");
	self endon("hash_ac2ce9fc");
	self.var_c6dedab7 = level.var_c37cadc1.var_d925663e[0];
	level.var_c37cadc1.var_d925663e[0].var_78436f04 = self;
	self function_500dc2f7(512);
	self.var_c6dedab7 = level.var_c37cadc1.var_d925663e[0];
	self function_c985552d(level.var_c37cadc1.var_d925663e[0].var_722885f3, 1, 1);
	self namespace_82b91a51::function_9fcf3cd8(20, "near_goal", "goal");
	self function_ada64136();
	while(1)
	{
		if(!isdefined(self.var_6050ab17))
		{
			self.var_c6dedab7 = level.var_c37cadc1.var_d925663e[0];
			self function_c985552d(level.var_c37cadc1.var_d925663e[0].var_722885f3, 1, 1);
			self namespace_82b91a51::function_9fcf3cd8(20, "near_goal", "goal");
			self function_ada64136();
			self.var_c6dedab7 = level.var_c37cadc1.var_d925663e[0];
			wait(5);
		}
		wait(0.5);
	}
}

/*
	Name: function_c386420b
	Namespace: namespace_786319bb
	Checksum: 0xBB13E064
	Offset: 0x115A0
	Size: 0x97
	Parameters: 0
	Flags: None
*/
function function_c386420b()
{
	self function_c7708f99("defend_hunters");
	function_67df0abc("players_ground", "defend_hunters");
	self.var_d3f57f67 = 1;
	self function_b7cc66c6(level.var_c37cadc1.var_d925663e[0], 1);
	self.var_c6dedab7 = level.var_c37cadc1.var_d925663e[0];
}

/*
	Name: function_722dc186
	Namespace: namespace_786319bb
	Checksum: 0xA9A91AF1
	Offset: 0x11640
	Size: 0x2E3
	Parameters: 0
	Flags: None
*/
function function_722dc186()
{
	if(isdefined(level.var_3bfa4edb))
	{
		return;
	}
	level.var_3bfa4edb = 1;
	level endon("hash_ac2ce9fc");
	var_a87ad6ce = "hunter_exterior_auto1";
	namespace_96fa87af::function_994832bd(var_a87ad6ce, &function_c386420b);
	thread function_f3326322(var_a87ad6ce + "_vh");
	var_2f9ba9ba = function_99201f25(var_a87ad6ce, "targetname");
	wait(3);
	while(1)
	{
		if(isdefined(level.var_fee90489) && isdefined(level.var_fee90489[0]))
		{
			if(level.var_fee90489[0] == "destroy_defenses_mid")
			{
				wait(5);
				continue;
			}
		}
		var_736c8af = 0;
		while(!var_736c8af)
		{
			var_9b96cc44 = namespace_84970cc4::function_47d18840(var_2f9ba9ba);
			foreach(var_5dc5e20a in level.var_9b1393e7)
			{
				if(var_5dc5e20a function_cb8df3d0())
				{
					var_c6107c9b = "tag_flash";
					var_8fe07f25 = var_5dc5e20a.var_8fedf36c;
				}
				else
				{
					var_c6107c9b = "tag_eye";
					var_8fe07f25 = var_5dc5e20a;
				}
				if(function_e7865c4b(var_8fe07f25 function_d48f2ab3(var_c6107c9b), var_9b96cc44.var_722885f3, 0, var_5dc5e20a))
				{
					var_736c8af = 0;
					break;
					continue;
				}
				var_736c8af = 1;
			}
			wait(0.05);
		}
		var_c82fd082 = namespace_96fa87af::function_af70b4e0(var_9b96cc44);
		var_c82fd082.var_e897aef6 = "explode";
		var_c82fd082 thread function_99b61785();
		var_c82fd082 waittill("hash_128f8789");
		wait(1);
	}
}

/*
	Name: function_96450f49
	Namespace: namespace_786319bb
	Checksum: 0xF827F681
	Offset: 0x11930
	Size: 0x517
	Parameters: 2
	Flags: None
*/
function function_96450f49(var_6c968618, var_a3a78823)
{
	level notify("hash_96450f49");
	level endon("hash_96450f49");
	/#
	#/
	if(!isdefined(level.var_c37cadc1))
	{
		wait(1);
		level.var_c37cadc1 = namespace_96fa87af::function_7387a40a("vtol_hendricks_flysit");
		wait(1);
	}
	if(!isdefined(level.var_c37cadc1))
	{
		return;
	}
	level thread function_722dc186();
	var_a8728a16 = [];
	for(var_5acbeba0 = namespace_14b42b8a::function_7922262b(var_6c968618 + var_a8728a16.size + 1); isdefined(var_5acbeba0);  = namespace_14b42b8a::function_7922262b(var_6c968618 + var_a8728a16.size + 1))
	{
		var_a8728a16[var_a8728a16.size] = var_5acbeba0;
	}
	var_51e4ce63 = function_6ada35ba(var_6c968618 + "focus", "targetname");
	var_587d73f9 = 1;
	if(var_587d73f9)
	{
		level.var_c37cadc1 function_3f3534a8(function_c4d5ec1f("vtol_fighter_player_missile_turret"));
		level.var_c37cadc1 namespace_37b990db::function_bae40a28(1, 0);
		level.var_c37cadc1 namespace_37b990db::function_54bdb053(0);
	}
	else
	{
		level.var_c37cadc1 function_3f3534a8(function_c4d5ec1f("vtol_fighter_player_turret"));
		level.var_c37cadc1 namespace_37b990db::function_bae40a28(0, 0);
		level.var_c37cadc1 namespace_37b990db::function_54bdb053(1);
	}
	level.var_c37cadc1 namespace_96fa87af::function_fdf99c07();
	level.var_c37cadc1.var_d925663e[0] namespace_82b91a51::function_958c7633();
	level.var_c37cadc1 thread function_5b6daa1a(var_51e4ce63, var_587d73f9, var_a3a78823);
	var_e0ad81ed = 1;
	var_69554b3e = -1;
	level.var_c37cadc1 function_500dc2f7(120);
	level.var_c37cadc1 function_333fd8f0(75, 30, 30);
	level.var_c37cadc1 function_b53ebe89(59, 180, 180);
	level.var_c37cadc1 function_42cddf81(128, 35, 35);
	var_ae11119e = var_a8728a16[var_e0ad81ed].var_722885f3;
	var_d8ee79d1 = var_a8728a16[var_e0ad81ed].var_6ab6f4fd[1];
	var_24223342 = level.var_c37cadc1.var_d925663e[0];
	var_24223342 namespace_d84e54db::function_fd6c4374();
	var_c89e148a = level.var_c37cadc1;
	var_c89e148a function_df42c640(var_51e4ce63);
	while(isdefined(level.var_c37cadc1))
	{
		var_24223342 function_c15140d4();
		var_c89e148a function_c985552d(var_ae11119e, 1, 1);
		var_c89e148a namespace_82b91a51::function_9fcf3cd8(15, "near_goal", "goal");
		var_e0ad81ed = var_e0ad81ed + var_69554b3e;
		if(var_e0ad81ed < 0 || var_e0ad81ed >= var_a8728a16.size)
		{
			var_69554b3e = var_69554b3e * -1;
			var_e0ad81ed = var_e0ad81ed + var_69554b3e * 2;
		}
		var_ae11119e = var_a8728a16[var_e0ad81ed].var_722885f3;
		var_d8ee79d1 = var_a8728a16[var_e0ad81ed].var_6ab6f4fd[1];
		wait(8);
	}
}

/*
	Name: function_9476c2d5
	Namespace: namespace_786319bb
	Checksum: 0x7FF4140A
	Offset: 0x11E50
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function function_9476c2d5()
{
	self endon("hash_128f8789");
	level endon("hash_96450f49");
	self.var_36c3df0c = 0.5;
	if(!isdefined(self.var_51cc2ae))
	{
		self.var_51cc2ae = 0;
	}
	while(1)
	{
		var_6d4fe22b = 0;
		if(isdefined(self.var_bded8100))
		{
			var_6d4fe22b = function_3dfa27b4(function_bdcdc423(self.var_bded8100.var_722885f3 - self.var_722885f3)[0]);
			var_6d4fe22b = namespace_d73b9283::function_31931862(var_6d4fe22b, -30, 30);
		}
		if(function_69c2f683(var_6d4fe22b - self.var_51cc2ae) <= self.var_36c3df0c)
		{
			self.var_51cc2ae = var_6d4fe22b;
		}
		else if(var_6d4fe22b < self.var_51cc2ae)
		{
			self.var_51cc2ae = self.var_51cc2ae - self.var_36c3df0c;
		}
		else
		{
			self.var_51cc2ae = self.var_51cc2ae + self.var_36c3df0c;
		}
		self function_7ce0ffc4(self.var_51cc2ae);
		wait(0.05);
	}
}

/*
	Name: function_5b6daa1a
	Namespace: namespace_786319bb
	Checksum: 0xEBE429E3
	Offset: 0x11FD8
	Size: 0x517
	Parameters: 3
	Flags: None
*/
function function_5b6daa1a(var_51e4ce63, var_587d73f9, var_a3a78823)
{
	self endon("hash_128f8789");
	level endon("hash_96450f49");
	self.var_bded8100 = undefined;
	self thread function_9476c2d5();
	while(1)
	{
		var_6050ab17 = var_51e4ce63;
		if(isdefined(self.var_6050ab17))
		{
			var_6050ab17 = self.var_6050ab17;
			break;
		}
		if(isdefined(self.var_d925663e[0]) && isdefined(self.var_d925663e[0].var_6050ab17))
		{
			var_6050ab17 = self.var_d925663e[0].var_6050ab17;
			break;
		}
		if(isdefined(self.var_d925663e[0].var_c6dedab7))
		{
			var_6050ab17 = self.var_d925663e[0].var_c6dedab7;
			break;
		}
		var_1639b2e9 = function_b8494651("axis");
		var_1639b2e9 = function_57efbe1(var_1639b2e9, self.var_722885f3, 15, 512, 10000);
		foreach(var_d84e54db in var_1639b2e9)
		{
			if(!isdefined(var_d84e54db))
			{
				continue;
			}
			if(var_a3a78823 && !function_85e4c3b3(var_d84e54db))
			{
				continue;
			}
			if(self function_8b6935f4(var_d84e54db))
			{
				var_6050ab17 = var_d84e54db;
				self.var_d925663e[0].var_c6dedab7 = var_6050ab17;
				break;
			}
			wait(0.05);
		}
		if(var_6050ab17 == var_51e4ce63)
		{
			self.var_bded8100 = undefined;
			wait(0.5);
			continue;
		}
		self.var_bded8100 = var_6050ab17;
		self function_df42c640(var_6050ab17);
		if(var_587d73f9)
		{
			self function_3488d445(var_6050ab17, var_6050ab17.var_722885f3 + VectorScale((0, 0, 1), 60));
		}
		else
		{
			self function_3488d445(var_6050ab17, var_6050ab17.var_722885f3 + VectorScale((0, 0, 1), 60));
		}
		wait(0.4);
		if(isdefined(var_6050ab17))
		{
			if(var_587d73f9)
			{
				for(var_c957f6b6 = 0; var_c957f6b6 < 2 && isdefined(var_6050ab17); var_c957f6b6++)
				{
					thread namespace_84eb777e::function_6a7fa9c7(function_c4d5ec1f("vtol_fighter_player_missile_turret"));
					self function_90ad4ed1(0, var_6050ab17);
					var_a7491a97 = 1;
					wait(0.25);
				}
			}
			else
			{
				self namespace_72ee5da4::function_afb82faf(function_72a94f05(0.3, 0.6));
			}
		}
		if(var_587d73f9)
		{
			if(isdefined(var_6050ab17) && function_e70ab977(var_6050ab17))
			{
				wait(function_72a94f05(1, 2));
			}
			else
			{
				wait(function_72a94f05(3, 5));
			}
		}
		else if(isdefined(var_6050ab17) && function_e70ab977(var_6050ab17))
		{
			wait(function_72a94f05(2, 2.5));
		}
		else
		{
			wait(function_72a94f05(0.5, 1.5));
		}
		wait(0.4);
		if(!self function_8b6935f4(var_6050ab17))
		{
			self.var_d925663e[0] function_c15140d4();
		}
	}
}

/*
	Name: function_8b6935f4
	Namespace: namespace_786319bb
	Checksum: 0x9D04D19
	Offset: 0x124F8
	Size: 0xCD
	Parameters: 1
	Flags: None
*/
function function_8b6935f4(var_d84e54db)
{
	if(!isdefined(var_d84e54db))
	{
		return 0;
	}
	var_42bd74de = function_884a8b8b(self.var_722885f3, self.var_6ab6f4fd, var_d84e54db.var_722885f3);
	if(var_42bd74de >= 0.7)
	{
		if(function_e7865c4b(self.var_d925663e[0].var_722885f3 + VectorScale((0, 0, 1), 150), var_d84e54db.var_722885f3 + VectorScale((0, 0, 1), 72), 0, var_d84e54db))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_11b961b7
	Namespace: namespace_786319bb
	Checksum: 0x9CB507DB
	Offset: 0x125D0
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_11b961b7(var_a8563e07)
{
	self endon("hash_128f8789");
	self endon("hash_d5beb6f3");
	self function_c014d7a0(1);
	function_197eec5b(self);
}

/*
	Name: function_197eec5b
	Namespace: namespace_786319bb
	Checksum: 0x79E4D898
	Offset: 0x12630
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function function_197eec5b(var_74c176c9)
{
	if(!isdefined(level.var_be665c))
	{
		level.var_be665c = [];
	}
	level.var_be665c[level.var_be665c.size] = var_74c176c9;
}

/*
	Name: function_25207b76
	Namespace: namespace_786319bb
	Checksum: 0x7CA603C8
	Offset: 0x12678
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_25207b76()
{
	level notify("hash_194eb1ad");
	level.var_be665c = [];
}

/*
	Name: function_16288b69
	Namespace: namespace_786319bb
	Checksum: 0xE3D94DB2
	Offset: 0x126A0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_16288b69(var_74952a22)
{
	level.var_c43e24b3 = level.var_c43e24b3 + var_74952a22;
	wait(5);
	level.var_c43e24b3 = level.var_c43e24b3 - var_74952a22;
}

/*
	Name: function_6e0553f9
	Namespace: namespace_786319bb
	Checksum: 0x57BE585D
	Offset: 0x126E8
	Size: 0x1FD
	Parameters: 0
	Flags: None
*/
function function_6e0553f9()
{
	level.var_c43e24b3 = 0;
	while(level.var_be665c.size > 0)
	{
		level.var_c9b8441d = 16;
		var_ce455ef1 = function_aaeec8c5(1, level.var_2395e945.size / 2);
		level.var_c9b8441d = function_b6b79a0(level.var_c9b8441d / var_ce455ef1);
		level.var_be665c = namespace_84970cc4::function_b87262e(level.var_be665c);
		foreach(var_74c176c9 in level.var_be665c)
		{
			if(function_5b49d38c(var_74c176c9) && level.var_c43e24b3 < level.var_c9b8441d)
			{
				var_70792a26 = level.var_c9b8441d - level.var_c43e24b3;
				var_ba3eb579 = var_74c176c9 function_9ab6fc55(function_95d0212b(3, var_70792a26), function_95d0212b(6, var_70792a26));
				if(var_ba3eb579 > 0)
				{
					thread function_16288b69(var_ba3eb579);
				}
			}
			wait(0.25);
		}
		wait(5);
	}
	var_355070e1 = 1;
}

/*
	Name: function_a330eeec
	Namespace: namespace_786319bb
	Checksum: 0xC6111202
	Offset: 0x128F0
	Size: 0x187
	Parameters: 0
	Flags: None
*/
function function_a330eeec()
{
	self endon("hash_128f8789");
	self endon("hash_44fd873a");
	self endon("hash_d5beb6f3");
	self notify("hash_97c91db2");
	self endon("hash_97c91db2");
	var_9e4acf77 = 2900;
	while(1)
	{
		if(!isdefined(self.var_6050ab17))
		{
			wait(0.3);
			continue;
		}
		var_b07228b6 = self.var_6050ab17;
		if(isdefined(self.var_6050ab17.var_8fedf36c))
		{
			var_b07228b6 = self.var_6050ab17.var_8fedf36c;
		}
		var_236ffde = var_b07228b6.var_722885f3 - self.var_722885f3 + VectorScale((0, 0, 1), 72);
		var_2a97d9fd = function_73b84f4d(var_236ffde);
		var_6e063caf = var_2a97d9fd / var_9e4acf77;
		var_6039ba26 = var_b07228b6 function_1439c75a();
		var_4596b96f = var_b07228b6.var_722885f3 + var_6039ba26 * var_6e063caf;
		/#
		#/
		self function_13022100(var_4596b96f);
		wait(0.05);
	}
}

/*
	Name: function_9ab6fc55
	Namespace: namespace_786319bb
	Checksum: 0xC6099180
	Offset: 0x12A80
	Size: 0x4D3
	Parameters: 2
	Flags: None
*/
function function_9ab6fc55(var_5fe70955, var_9cbc463b)
{
	self endon("hash_128f8789");
	self endon("hash_44fd873a");
	self namespace_96fa87af::function_2d1ff508(2, 0);
	self thread function_a330eeec();
	var_a7491a97 = 0;
	var_85596fc1 = 0;
	var_447f1b87 = 0;
	if(isdefined(self.var_6050ab17) && namespace_72ee5da4::function_e5257a7f("rocket_launcher", 0.1))
	{
		var_30e3f243 = function_316422d1(self.var_722885f3, self.var_6050ab17.var_722885f3);
		if(var_30e3f243 > 64000000)
		{
			return 0;
		}
		self namespace_96fa87af::function_2d1ff508(2, 1);
		if(var_9cbc463b > var_5fe70955)
		{
			var_85596fc1 = function_dc99997a(function_b6b79a0(var_5fe70955), function_b6b79a0(var_9cbc463b));
		}
		else
		{
			var_85596fc1 = var_9cbc463b;
		}
		if(!var_447f1b87)
		{
			self function_3f3534a8(function_c4d5ec1f("quadtank_main_turret_rocketpods_straight_homing"));
		}
		else
		{
			var_85596fc1 = 2;
			self function_921a1574("veh_quadtank_mlrs_plant_start");
			self function_3f3534a8(function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin"));
		}
		if(isdefined(self.var_6050ab17) && !function_65f192a6(self.var_6050ab17))
		{
			var_85596fc1 = 1;
		}
		if(isdefined(self.var_6050ab17) && var_30e3f243 > 350 * 350)
		{
			var_a7491a97 = 0;
			for(var_c957f6b6 = 0; var_c957f6b6 < var_85596fc1 && isdefined(self.var_6050ab17); var_c957f6b6++)
			{
				if(var_447f1b87)
				{
					var_a4e8111c = (0, 0, 0);
					self thread namespace_72ee5da4::function_e8b93d1b(self.var_6050ab17);
					self thread namespace_3fc75f50::function_c73f719e(function_c4d5ec1f("quadtank_main_turret_rocketpods_javelin"));
					if(function_85e4c3b3(self.var_6050ab17))
					{
						var_a4e8111c = self.var_6050ab17 function_d48f2ab3("tag_body") - self.var_6050ab17.var_722885f3;
					}
					self function_90ad4ed1(0, self.var_6050ab17, var_a4e8111c);
				}
				else
				{
					self thread function_b7aaca29(function_c4d5ec1f("quadtank_main_turret_rocketpods_straight_homing"));
					self function_90ad4ed1(0);
				}
				var_a7491a97 = 1;
			}
			if(var_a7491a97)
			{
				var_804ee9ae = 12;
				if(isdefined(self.var_6050ab17))
				{
					var_42bd74de = function_884a8b8b(self.var_6050ab17.var_722885f3, self.var_6050ab17.var_6ab6f4fd, self.var_722885f3);
					if(var_42bd74de > 0.9)
					{
						var_804ee9ae = 4;
					}
					else if(var_42bd74de > 0.5)
					{
						var_804ee9ae = 6;
					}
				}
				namespace_72ee5da4::function_804ee9ae("rocket_launcher", var_804ee9ae);
				if(var_447f1b87)
				{
					namespace_72ee5da4::function_804ee9ae("javelin_rocket_launcher", 20);
				}
			}
		}
		self namespace_96fa87af::function_2d1ff508(2, 0);
	}
	if(var_a7491a97)
	{
		return var_85596fc1;
	}
	return 0;
}

/*
	Name: function_b7aaca29
	Namespace: namespace_786319bb
	Checksum: 0x596B977E
	Offset: 0x12F60
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_b7aaca29(var_148fb98c)
{
	self endon("hash_d5da096");
	self endon("hash_128f8789");
	self waittill("hash_aa1618b0", var_148fb98c);
	wait(0.75);
	if(isdefined(var_148fb98c))
	{
		var_a4e8111c = (0, 0, 0);
		if(function_85e4c3b3(self.var_6050ab17))
		{
			var_a4e8111c = self.var_6050ab17 function_d48f2ab3("tag_body") - self.var_6050ab17.var_722885f3;
		}
		var_148fb98c function_7847c931(self.var_6050ab17, var_a4e8111c);
	}
	wait(4);
	if(isdefined(var_148fb98c))
	{
		var_148fb98c function_dc8c8404();
	}
}

/*
	Name: function_c897523d
	Namespace: namespace_786319bb
	Checksum: 0xEC9E0BCD
	Offset: 0x13060
	Size: 0x27B
	Parameters: 1
	Flags: None
*/
function function_c897523d(var_16d4a623)
{
	var_ede4b92d = [];
	var_ede4b92d[var_ede4b92d.size] = "respawn_ext_water_room";
	var_ede4b92d[var_ede4b92d.size] = "respawn_in_water_room";
	var_ede4b92d[var_ede4b92d.size] = "respawn_in_data_center";
	var_ede4b92d[var_ede4b92d.size] = "respawn_water_room";
	var_ede4b92d[var_ede4b92d.size] = "respawn_lcombat";
	var_ede4b92d[var_ede4b92d.size] = "respawn_right_hack";
	var_ede4b92d[var_ede4b92d.size] = "respawn_left_hack";
	if(!isdefined(var_16d4a623))
	{
		var_16d4a623 = "none";
	}
	for(var_c957f6b6 = 0; var_c957f6b6 < var_ede4b92d.size; var_c957f6b6++)
	{
		var_14edd77e = function_99201f25(var_ede4b92d[var_c957f6b6], "script_noteworthy", 1);
		var_14edd77e = namespace_14b42b8a::function_7faf4c39(var_ede4b92d[var_c957f6b6], "script_noteworthy");
		if(var_14edd77e.size == 0)
		{
			break;
		}
		if(var_ede4b92d[var_c957f6b6] == var_16d4a623)
		{
			foreach(var_2f06d687 in var_14edd77e)
			{
				var_2f06d687 namespace_4a43ba8::function_82c857e9(0);
			}
			break;
		}
		foreach(var_2f06d687 in var_14edd77e)
		{
			var_2f06d687 namespace_4a43ba8::function_82c857e9(1);
		}
	}
}

/*
	Name: function_884a8b8b
	Namespace: namespace_786319bb
	Checksum: 0x9079C448
	Offset: 0x132E8
	Size: 0x93
	Parameters: 3
	Flags: None
*/
function function_884a8b8b(var_8b1c9508, var_13b728f6, var_91627c91)
{
	var_288785e8 = function_f679a325(var_91627c91 - var_8b1c9508);
	var_1a859714 = function_bc7ce905(var_13b728f6);
	var_42bd74de = function_5f9a4869(var_1a859714, var_288785e8);
	return var_42bd74de;
}

/*
	Name: function_8bf8a765
	Namespace: namespace_786319bb
	Checksum: 0x153AF4C5
	Offset: 0x13388
	Size: 0xE9
	Parameters: 1
	Flags: None
*/
function function_8bf8a765(var_50ccee8d)
{
	if(!isdefined(var_50ccee8d))
	{
		var_50ccee8d = 1;
	}
	foreach(var_5dc5e20a in level.var_9b1393e7)
	{
		if(isdefined(var_5dc5e20a.var_8fedf36c))
		{
			if(var_50ccee8d)
			{
				var_5dc5e20a.var_8fedf36c function_8c8e79fe();
				continue;
			}
			var_5dc5e20a.var_8fedf36c function_48f26766();
		}
	}
}

/*
	Name: function_89eaa1b3
	Namespace: namespace_786319bb
	Checksum: 0xB151FA57
	Offset: 0x13480
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_89eaa1b3(var_60db70fa)
{
	self endon("hash_643a7daf");
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 1);
	wait(var_60db70fa);
	self namespace_71e9cb84::function_e9c3870b("hijack_static_effect", 0);
}

/*
	Name: function_2318c6e6
	Namespace: namespace_786319bb
	Checksum: 0x33218DE0
	Offset: 0x134E8
	Size: 0x167
	Parameters: 0
	Flags: None
*/
function function_2318c6e6()
{
	/#
		self endon("hash_128f8789");
		var_26e9bfb = 120;
		while(1)
		{
			var_26e9bfb = self function_edbe4101();
			var_d900369a = (1, 1, 1);
			var_982bfcf2 = 12;
			var_d007da9e = function_863ee84(self function_1439c75a());
			if(var_d007da9e < var_26e9bfb - 10)
			{
				var_d900369a = (0, 0, 1);
			}
			else if(var_d007da9e > var_26e9bfb + 10)
			{
				var_d900369a = (1, 0, 0);
			}
			else
			{
				var_982bfcf2 = 6;
			}
			function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, 1), 400), var_26e9bfb, (1, 1, 1), 1, 6);
			function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, 1), 120), var_d007da9e, var_d900369a, 1, var_982bfcf2);
			wait(0.05);
		}
	#/
}


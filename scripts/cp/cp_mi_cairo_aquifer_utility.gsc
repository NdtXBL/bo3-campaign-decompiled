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
	Name: __init__sytem__
	Namespace: namespace_786319bb
	Checksum: 0x5CC360BF
	Offset: 0x2168
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("aquifer_util", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_786319bb
	Checksum: 0xBA982737
	Offset: 0x21A8
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function __init__()
{
	init_clientfields();
	anims = [];
	anims[anims.size] = %v_aqu_vtol_cockpit_close;
	anims[anims.size] = %v_aqu_vtol_cockpit_open;
	anims[anims.size] = %v_aqu_vtol_engine_hover;
	anims[anims.size] = %v_aqu_vtol_engine_fly;
	anims[anims.size] = %v_aqu_vtol_engine_idle;
}

/*
	Name: init_clientfields
	Namespace: namespace_786319bb
	Checksum: 0x3895D176
	Offset: 0x2250
	Size: 0x543
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("toplayer", "play_body_loop", 1, 1, "int");
	clientfield::register("toplayer", "water_motes", 1, 1, "int");
	clientfield::register("toplayer", "player_dust_fx", 1, 1, "int");
	clientfield::register("toplayer", "player_bubbles_fx", 1, 1, "int");
	clientfield::register("toplayer", "player_snow_fx", 1, 1, "int");
	clientfield::register("toplayer", "frost_post_fx", 1, 1, "int");
	clientfield::register("toplayer", "splash_post_fx", 1, 1, "int");
	clientfield::register("toplayer", "highlight_ai", 1, 1, "int");
	clientfield::register("actor", "robot_bubbles_fx", 1, 1, "int");
	clientfield::register("actor", "kane_bubbles_fx", 1, 1, "int");
	clientfield::register("actor", "toggle_enemy_highlight", 1, 1, "int");
	clientfield::register("vehicle", "vtol_dogfighting", 1, 1, "int");
	clientfield::register("vehicle", "vtol_show_damage_stages", 1, 1, "int");
	clientfield::register("vehicle", "vtol_canopy_state", 1, 1, "int");
	clientfield::register("vehicle", "vtol_engines_state", 1, 1, "int");
	clientfield::register("vehicle", "vtol_enable_wash_fx", 1, 1, "int");
	clientfield::register("vehicle", "vtol_damage_state", 1, 2, "int");
	clientfield::register("vehicle", "vtol_set_active_landing_zone_num", 1, 4, "int");
	clientfield::register("vehicle", "vtol_set_missile_lock_percent", 1, 8, "float");
	clientfield::register("vehicle", "vtol_show_missile_lock", 1, 1, "int");
	clientfield::register("vehicle", "vtol_screen_shake", 1, 1, "int");
	clientfield::register("world", "toggle_fog_banks", 1, 1, "int");
	clientfield::register("world", "toggle_pbg_banks", 1, 1, "int");
	clientfield::register("clientuimodel", "vehicle.weaponIndex", 1, 2, "int");
	clientfield::register("clientuimodel", "vehicle.lockOn", 1, 8, "float");
	clientfield::register("clientuimodel", "vehicle.showLandHint", 1, 1, "int");
	clientfield::register("clientuimodel", "vehicle.showAimHint", 1, 1, "int");
	clientfield::register("clientuimodel", "hackUpload.percent", 1, 8, "float");
}

/*
	Name: LoadEffects
	Namespace: namespace_786319bb
	Checksum: 0xCBC1B525
	Offset: 0x27A0
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function LoadEffects()
{
	level._effect["boss_explosion"] = "explosions/fx_exp_generic_lg";
	level._effect["boss_disabled"] = "fire/fx_fire_gas_pipe_china";
	level._effect["boss_fire"] = "fire/fx_fire_floor_lrg";
	level._effect["bubbles"] = "player/fx_plyr_swim_bubbles_body";
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
	pin = spawn("script_origin", self.origin);
	self LinkTo(pin);
	self waittill("free_vehicle");
	pin delete();
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
	exploder::exploder("lighting_server_perf_lights");
	exploder::exploder("lighting_hangar_hallways_perf_lights");
	exploder::stop_exploder("lighting_hangar_a");
	exploder::stop_exploder("lighting_hangar_b");
	if(level flag::get("inside_aquifer"))
	{
		exploder::stop_exploder("lighting_hangar_hallways_perf_lights");
	}
	if(level flag::exists("water_room_exit") && level flag::get("water_room_exit"))
	{
		exploder::stop_exploder("lighting_server_perf_lights");
	}
	if(level flag::exists("post_breach") && level flag::get("post_breach"))
	{
		exploder::exploder("lighting_hangar_a");
	}
	if(level flag::exists("hideout_completed") && level flag::get("hideout_completed"))
	{
		exploder::exploder("lighting_hangar_b");
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
	self.get_stinger_target_override = &function_a3fd472e;
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
	target_array = target_getArray();
	foreach(name in var_4fb2233)
	{
		vtol = GetEnt(name, "targetname");
		if(isdefined(vtol))
		{
			vtol.allowContinuedLockonAfterInvis = 1;
			Array::add(target_array, vtol);
		}
	}
	return target_array;
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
function function_716b5d66(activate)
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
		t = trigger::wait_till("pipe_splash_trig");
		if(!isdefined(t.who.var_ddcbc2bb))
		{
			t.who splash_fx();
		}
	}
}

/*
	Name: splash_fx
	Namespace: namespace_786319bb
	Checksum: 0x30465AFD
	Offset: 0x2C60
	Size: 0x29
	Parameters: 0
	Flags: None
*/
function splash_fx()
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
function function_b86ff37e(var_498bbabf, objective, var_d66abd8d)
{
	trig = GetEnt(var_d66abd8d, "targetname");
	trig.var_611ccff1 = util::function_14518e76(trig, istring(objective), &"CP_MI_CAIRO_AQUIFER_OPEN", &function_ee5d34cb);
	trig.var_611ccff1 gameobjects::set_use_time(var_498bbabf);
	trig.var_611ccff1.onBeginUse = &function_eae79770;
	trig.var_611ccff1.onEndUse = &function_35e9f08;
	level waittill("hash_26700a52");
	trig.var_611ccff1 gameobjects::disable_object();
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
function function_eae79770(player)
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
function function_35e9f08(team, player, result)
{
	if(isdefined(player))
	{
		if(isdefined(result) && result)
		{
			self.trigger notify("hash_ece70538", player);
			level notify("hash_221e0b70", result, player);
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
	level flag::wait_till("player_active_in_level");
	/#
	#/
	level._effect["fx_server_explosion_destructible"] = "electric/fx_elec_sparks_burst_blue_fall_amb";
	level._effect["fx_lg_explosion_destructible"] = "explosions/fx_exp_generic_lg";
	level._effect["fx_lg_explosion_pillar_destructible"] = "explosions/fx_exp_generic_lg";
	level._effect["fx_med_explosion_room_destructible"] = "explosions/fx_exp_quadtank_death_sm";
	level._effect["fx_glass_destructible"] = "destruct/fx_dest_ramses_plaza_glass_bldg";
	level._effect["fx_glass_explode_destructible"] = "explosions/fx_exp_phosphorus_prologue";
	level._effect["fx_electrical_destructible"] = "explosions/fx_exp_phosphorus_prologue";
	level._effect["fx_electrical_med_destructible"] = "electric/fx_elec_burst_med_monitor_lotus";
	level._effect["fx_lg_steam_destructible"] = "steam/fx_steam_hpressure_hose_burst_sgen";
	level._effect["fx_med_steam_destructible"] = "steam/fx_steam_hpressure_hose_burst_sgen";
	level._effect["fx_lg_water_destructible"] = "water/fx_water_burst_xxxlrg_far";
	level._effect["fx_exlg_water_destructible"] = "water/fx_water_fall_os_burst_sgen";
	trigs = GetEntArray("reusable_destructible", "targetname");
	var_c08b6e63 = GetEntArray("reusable_destructible_players", "targetname");
	Array::thread_all(trigs, &function_14519736);
	Array::thread_all(var_c08b6e63, &function_dd7031ad);
	var_afe76451 = GetEntArray("environment_destructible", "targetname");
	Array::thread_all(var_afe76451, &function_eee6cbf2);
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
	self endon("death");
	while(1)
	{
		self waittill("trigger", ent);
		self function_cc4d91b(ent);
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
function function_cc4d91b(ent)
{
	sT = struct::get(self.target, "targetname");
	fwd = AnglesToForward(sT.angles);
	up = anglesToUp(sT.angles);
	if(isdefined(ent) && (isdefined(ent.var_8fedf36c) && ent islinkedto(ent.var_8fedf36c) || isVehicle(ent)))
	{
		playFX(level._effect[self.script_noteworthy], sT.origin, fwd, up);
		if(isdefined(self.script_parameters) && StrIsInt(self.script_parameters))
		{
			wait(Int(self.script_parameters));
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
	self endon("death");
	self waittill("trigger", ent);
	self function_9c6e51f(ent);
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
function function_9c6e51f(ent)
{
	model = GetEnt(self.target, "targetname");
	if(isdefined(ent) && (isdefined(ent.var_8fedf36c) && ent islinkedto(ent.var_8fedf36c) || isVehicle(ent)))
	{
		anims = [];
		anims[anims.size] = "p7_fxanim_cp_aqu_radar_array_01";
		anims[anims.size] = "p7_fxanim_cp_aqu_radar_array_02";
		rand_anim = Array::random(anims);
		model thread scene::Play(rand_anim, model);
	}
}

/*
	Name: intro_screen
	Namespace: namespace_786319bb
	Checksum: 0xF526221
	Offset: 0x3440
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function intro_screen()
{
	util::do_chyron_text(&"CP_MI_CAIRO_AQUIFER_INTRO_LINE_2_FULL", "", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_3_FULL", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_3_SHORT", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_4_FULL", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_4_SHORT", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_5_FULL", &"CP_MI_CAIRO_AQUIFER_INTRO_LINE_5_SHORT");
	level flag::set("intro_chryon_done");
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
	self endon("disconnect");
	self endon("death");
	while(!level flag::get("flag_khalil_water_exit"))
	{
		if(self IsPlayerUnderwater() && (!isdefined(self.is_underwater) && self.is_underwater))
		{
			self clientfield::set_to_player("water_motes", 1);
		}
		else
		{
			self clientfield::set_to_player("water_motes", 0);
		}
		wait(0.5);
	}
	self clientfield::set_to_player("water_motes", 0);
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
	self endon("disconnect");
	self endon("death");
	self.var_a66e492f = 0;
	while(!level flag::get("inside_aquifer"))
	{
		if(self IsInVehicle() || self IsPlayerUnderwater() || level flag::get("inside_data_center") || level flag::get("flag_force_off_dust"))
		{
			if(self.var_a66e492f)
			{
				self clientfield::set_to_player("player_dust_fx", 0);
				self.var_a66e492f = 0;
			}
		}
		else if(!self.var_a66e492f)
		{
			self clientfield::set_to_player("player_dust_fx", 1);
			self.var_a66e492f = 1;
		}
		wait(0.5);
	}
	self clientfield::set_to_player("player_dust_fx", 0);
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
	self endon("disconnect");
	self endon("death");
	level flag::wait_till("flag_snow_room");
	self clientfield::set_to_player("player_snow_fx", 1);
	self playsound("evt_dni_glitch");
	self PlayLoopSound("evt_snowverlay");
	wait(5);
	level flag::wait_till_clear("flag_snow_room");
	self clientfield::set_to_player("player_snow_fx", 0);
	self StopLoopSound(1);
	self playsound("evt_dni_delusion_outro");
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
	self endon("death");
	sT = struct::get(self.target, "targetname");
	fwd = AnglesToForward(sT.angles);
	up = anglesToUp(sT.angles);
	while(1)
	{
		self waittill("trigger");
		playFX(level._effect[self.script_noteworthy], sT.origin, fwd, up);
		if(isdefined(self.script_parameters) && StrIsInt(self.script_parameters))
		{
			wait(Int(self.script_parameters));
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
function function_db077321(SECTION, rate)
{
	if(!isdefined(level.var_ef297e7c))
	{
		level.var_ef297e7c = [];
	}
	if(!isdefined(level.var_ef297e7c[SECTION]))
	{
		level.var_ef297e7c[SECTION] = spawnstruct();
		level.var_ef297e7c[SECTION].var_4b0a3d4c = rate;
		level.var_ef297e7c[SECTION].var_3dd910c5 = [];
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
function function_8b84bb6c(SECTION, var_26e12fb, rate)
{
	function_db077321(SECTION, rate);
	Array::add(level.var_ef297e7c[SECTION].var_3dd910c5, var_26e12fb, 0);
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
	for(row = 1; row < var_fba3cf4; row++)
	{
		SECTION = ToLower(TableLookupColumnForRow("gamedata/tables/cp/cp_dogfightPaths.csv", row, 1));
		rate = float(TableLookupColumnForRow("gamedata/tables/cp/cp_dogfightPaths.csv", row, 2));
		if(!isdefined(SECTION) && SECTION != "")
		{
			break;
		}
		var_cff394b4 = 3;
		branch = ToLower(TableLookupColumnForRow("gamedata/tables/cp/cp_dogfightPaths.csv", row, var_cff394b4));
		var_ddc5eafb = float(TableLookupColumnForRow("gamedata/tables/cp/cp_dogfightPaths.csv", row, var_cff394b4 + 1));
		while(isdefined(branch) && branch != "")
		{
			if(!isdefined(var_ddc5eafb))
			{
				var_ddc5eafb = 0;
			}
			var_26e12fb = spawnstruct();
			var_26e12fb.branch = branch;
			var_26e12fb.var_ddc5eafb = var_ddc5eafb / getanimlength(branch);
			function_8b84bb6c(SECTION, var_26e12fb, rate);
			var_cff394b4 = var_cff394b4 + 2;
			branch = ToLower(TableLookupColumnForRow("gamedata/tables/cp/cp_dogfightPaths.csv", row, var_cff394b4));
			var_ddc5eafb = float(TableLookupColumnForRow("gamedata/tables/cp/cp_dogfightPaths.csv", row, var_cff394b4 + 1));
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
	self endon("death");
	self endon("hash_e568e158");
	self ghost();
	self notsolid();
	self setContents(0);
	self clientfield::set("vtol_dogfighting", 0);
	self.dying = 1;
	self notify("dying");
	self.dogfighter WeaponLockFree();
	wait(0.5);
	self notify("hash_8aa591e9");
	self.dogfighter.var_8fedf36c SetVehicleType("veh_bo3_mil_vtol_fighter_player_dogfight_slow");
	wait(3.5);
	self.var_7757fc7b = 1;
	self notify("hash_7757fc7b");
	self.dogfighter.var_8fedf36c SetVehicleType("veh_bo3_mil_vtol_fighter_player_dogfight");
	if(!isdefined(self.var_3ae26974))
	{
		self waittill("hash_3ae26974");
	}
	self.dogfighter WeaponLockStart(self.var_3ae26974);
	wait(0.05);
	while(!isdefined(self.var_3c6a99b9) && self.var_3c6a99b9 && DistanceSquared(self.origin, self.var_3ae26974.origin) > 14400 && (self.var_c63462fd != self.var_3ae26974.var_c63462fd || self GetAnimTime(self.var_c63462fd) < self.var_3ae26974 GetAnimTime(self.var_3ae26974.var_c63462fd)))
	{
		wait(0.05);
	}
	self notify("hash_e18de71a");
	wait(0.05);
	self.do_scripted_crash = 0;
	self kill(self.origin, self.dogfighter);
	wait(0.1);
	self delete();
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
	self endon("death");
	self endon("hash_e568e158");
	self endon("dying");
	wait(12);
	if(isdefined(self.dogfighter))
	{
		if(self.var_d4f48128 <= 1)
		{
			self.dogfighter function_fe19b920("props");
		}
		else
		{
			wait(8);
			if(isdefined(self.dogfighter))
			{
				self.dogfighter function_fe19b920("props");
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
	self endon("death");
	self endon("hash_e568e158");
	self.health = 100000;
	self.maxhealth = self.health;
	self.var_d4f48128 = 0;
	var_b1e0b5bc = self.var_d4f48128;
	var_cdfde28c = 3;
	var_3c794781 = 1;
	var_c357667 = [];
	var_c357667[0] = 10;
	var_c357667[1] = 20;
	var_c357667[2] = 10;
	switch(GetLocalProfileInt("g_gameskill"))
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
	self clientfield::set("vtol_show_damage_stages", 1);
	while(isdefined(self) && isalive(self))
	{
		self waittill("damage", damage, attacker, dir, loc, type, model, tag, part, weapon, flags);
		if(isdefined(self.dogfighter) && attacker == self.dogfighter)
		{
			var_94bdacf3 = 0;
			if(IsSubStr(type, "BULLET"))
			{
				var_fa51bc25++;
				if(var_fa51bc25 >= var_c357667[self.var_d4f48128])
				{
					self.var_d4f48128++;
					var_fa51bc25 = 0;
				}
			}
			else if(IsSubStr(type, "PROJECTILE"))
			{
				self.var_c12a181e = 1;
				var_29fc3405++;
				if(var_29fc3405 >= var_3c794781)
				{
					self.var_d4f48128 = self.var_d4f48128 + Int(var_29fc3405 / var_3c794781);
					var_fa51bc25 = 0;
					var_29fc3405 = 0;
				}
			}
			if(self.var_d4f48128 != var_b1e0b5bc)
			{
				self.var_d4f48128 = math::clamp(self.var_d4f48128, 0, var_cdfde28c);
				self setdamagestage(self.var_d4f48128);
				self util::clientNotify("damage_stage_changed");
				var_b1e0b5bc = self.var_d4f48128;
			}
			if(self.var_d4f48128 >= var_cdfde28c)
			{
				if(!isdefined(self.dogfighter.var_3dca6783))
				{
					self.dogfighter.var_3dca6783 = 0;
				}
				self.dogfighter.var_3dca6783++;
				self.dogfighter function_78d2c721("fire");
				self.dogfighter function_78d2c721("nolock");
				self.dogfighter function_78d2c721("lock");
				self.dogfighter function_78d2c721("props");
				self.dogfighter function_fe19b920("killed");
				playsoundatposition("evt_vehicle_explosion_lyr", self.origin);
				self thread function_c7676d36();
				if(!isdefined(self.var_c12a181e))
				{
					self.dogfighter namespace_b5b83650::function_c27610f9("aq_dogfight_kill_only_guns");
				}
				return;
			}
			else if(self.var_d4f48128 > 1)
			{
				self.dogfighter function_78d2c721("props");
			}
		}
		self.health = self.maxhealth;
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
function function_14f37b59(SECTION, start_time, dogfighter, var_eb969a93, spawner, root)
{
	if(!isdefined(spawner))
	{
		if(isdefined(dogfighter) && isdefined(dogfighter.player_num))
		{
			spawner = "flight_path_spawner" + dogfighter.player_num;
		}
		else
		{
			spawner = "flight_path_spawner1";
		}
	}
	veh = vehicle::simple_spawn_single(spawner);
	veh useanimtree(-1);
	veh.animTree = "generic";
	veh.crashType = "explode";
	veh thread function_78e66c54();
	veh clientfield::set("vtol_dogfighting", 1);
	if(!isdefined(level.dogfight_targets))
	{
		level.dogfight_targets = [];
	}
	level.dogfight_targets[level.dogfight_targets.size] = veh;
	if(!isdefined(SECTION))
	{
		SECTION = Array::random(getArrayKeys(level.var_ef297e7c));
	}
	lerp_time = 0.2;
	if(!isdefined(root))
	{
		root = GetEnt("dogfighting_scene", "targetname");
	}
	if(!isdefined(start_time))
	{
		start_time = 0;
	}
	veh animation::teleport(SECTION, root, undefined, start_time);
	if(isdefined(dogfighter))
	{
		dogfighter.var_1d195e2c = veh;
	}
	if(!isdefined(var_eb969a93))
	{
		var_eb969a93 = 1;
	}
	var_4b0a3d4c = level.var_ef297e7c[SECTION].var_4b0a3d4c * var_eb969a93;
	while(1)
	{
		veh.var_c63462fd = SECTION;
		veh thread animation::Play(SECTION, root, undefined, var_4b0a3d4c, 0, 0, lerp_time, start_time);
		time = max(0.05, floor(getanimlength(SECTION) * 1 - start_time / 0.05) * 0.05 - lerp_time) / var_4b0a3d4c;
		start_time = 0;
		ret = veh util::waittill_any_timeout(time, "death", "bug_out", "slow_dogfight", "chain_dogfight", "beginning_dogfight");
		if(ret == "slow_dogfight")
		{
			var_eb969a93 = 0.7;
			var_4b0a3d4c = var_4b0a3d4c * var_eb969a93;
			lerp_time = 0;
			start_time = veh GetAnimTime(SECTION);
			continue;
		}
		else if(ret == "chain_dogfight")
		{
			var_eb969a93 = 1.1;
			var_4b0a3d4c = level.var_ef297e7c[SECTION].var_4b0a3d4c * var_eb969a93;
			lerp_time = 0;
			start_time = veh GetAnimTime(SECTION);
			continue;
		}
		else if(ret == "beginning_dogfight")
		{
			var_eb969a93 = 1;
			var_4b0a3d4c = level.var_ef297e7c[SECTION].var_4b0a3d4c;
			lerp_time = 0;
			start_time = veh GetAnimTime(SECTION);
			continue;
		}
		else if(ret != "timeout")
		{
			ArrayRemoveValue(level.dogfight_targets, veh);
			return;
		}
		var_7ba7c005 = SECTION;
		if(isdefined(veh.var_3ae26974) && isdefined(veh.var_3ae26974.var_c63462fd))
		{
			SECTION = veh.var_3ae26974.var_c63462fd;
			if(SECTION == var_7ba7c005)
			{
				veh.var_3c6a99b9 = 1;
				ArrayRemoveValue(level.dogfight_targets, veh);
				return;
				break;
			}
			foreach(branch in level.var_ef297e7c[var_7ba7c005].var_3dd910c5)
			{
				if(branch.branch == SECTION)
				{
					start_time = branch.var_ddc5eafb;
					break;
				}
			}
		}
		else
		{
			var_26e12fb = Array::random(level.var_ef297e7c[SECTION].var_3dd910c5);
			SECTION = var_26e12fb.branch;
			start_time = var_26e12fb.var_ddc5eafb;
		}
		var_4b0a3d4c = level.var_ef297e7c[SECTION].var_4b0a3d4c * var_eb969a93;
		lerp_time = 0.2 * var_eb969a93;
		/#
			if(GetDvarInt("Dev Block strings are not supported") > 0)
			{
				start_pos = GetStartOrigin(root.origin, root.angles, SECTION, start_time);
				if(DistanceSquared(veh.origin, start_pos) > 1000000)
				{
					/#
						ASSERTMSG("Dev Block strings are not supported" + var_7ba7c005 + "Dev Block strings are not supported" + SECTION + "Dev Block strings are not supported");
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
	self endon("death");
	self endon("disconnect");
	self waittill("hash_b4a5f622");
	self.var_b55ae1ed = 0;
	if(isdefined(self.var_1d195e2c))
	{
		self.var_1d195e2c notify("hash_e568e158");
		self.var_1d195e2c.var_8a707c29 = 1;
		if(!isdefined(self.var_1d195e2c.dying) && self.var_1d195e2c.dying && isalive(self.var_1d195e2c))
		{
			self.var_1d195e2c setdamagestage(3);
			self.var_1d195e2c util::clientNotify("damage_stage_changed");
		}
		wait(0.1);
		if(isdefined(self.var_1d195e2c) && isalive(self.var_1d195e2c))
		{
			self.var_1d195e2c delete();
		}
		self.var_1d195e2c = undefined;
	}
	wait(1.5);
	target = undefined;
	if(isdefined(self function_a9d982da()))
	{
		target = self function_a9d982da();
		target notify("hash_e568e158");
		target.var_8a707c29 = 1;
		if(!isdefined(target.dying) && target.dying && isalive(target))
		{
			target setdamagestage(3);
			target util::clientNotify("damage_stage_changed");
		}
	}
	self.var_8fedf36c clientfield::set("vtol_dogfighting", 0);
	self thread function_cc401f5c();
	wait(0.1);
	if(isdefined(target) && isalive(target))
	{
		target delete();
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
	self endon("death");
	self endon("disconnect");
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
		target = self function_a9d982da();
		target thread function_cb795cc3();
		ret = target util::waittill_any_return("chain_dogfight", "death");
		SECTION = target.var_c63462fd;
		var_7a591ed2 = 0;
		timeLeft = var_852345b1;
		animtime = target GetAnimTime(SECTION);
		animlength = getanimlength(SECTION);
		var_7a591ed2 = animlength * 1 - animtime;
		start_time = animtime;
		while(var_7a591ed2 < timeLeft)
		{
			timeLeft = timeLeft - var_7a591ed2;
			var_26e12fb = Array::random(level.var_ef297e7c[SECTION].var_3dd910c5);
			SECTION = var_26e12fb.branch;
			start_time = var_26e12fb.var_ddc5eafb;
			animlength = getanimlength(SECTION);
			var_7a591ed2 = animlength;
		}
		start_time = start_time + timeLeft / animlength;
		self.var_1d195e2c = undefined;
		if(level flagsys::get("dogfight_ending") || level flag::get(var_84fe82cd))
		{
			level notify("hash_526f5a72");
			self notify("hash_b4a5f622");
		}
		thread function_14f37b59(SECTION, start_time, self, 0.7);
		while(!isdefined(self.var_1d195e2c))
		{
			wait(0.05);
		}
		target.var_3ae26974 = self.var_1d195e2c;
		target notify("hash_3ae26974");
		if(ret != "death")
		{
			target util::waittill_any("death", "switch_targets");
		}
		self function_46724ab2(self.var_1d195e2c);
		self.var_1d195e2c.dogfighter = self;
		self.var_1d195e2c notify("hash_2961d3b9");
		self.var_1d195e2c = undefined;
		while(self function_a9d982da() == target)
		{
			wait(0.05);
		}
	}
	if(level flagsys::get("dogfight_ending") || level flag::get(var_84fe82cd))
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
function function_a99964bc(SECTION)
{
	/#
		while(1)
		{
			function_14f37b59(SECTION);
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
		sections = [];
		sections[sections.size] = "Dev Block strings are not supported";
		sections[sections.size] = "Dev Block strings are not supported";
		sections[sections.size] = "Dev Block strings are not supported";
		sections[sections.size] = "Dev Block strings are not supported";
		foreach(SECTION in sections)
		{
			thread function_a99964bc(SECTION);
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
	self endon("disconnect");
	self endon("death");
	var_522698b3 = GetEnt("dogfighting_scene", "targetname");
	radius = 10000;
	var_dda84f1a = GetEntArray("landing_zone_1", "script_noteworthy");
	self thread function_a43cfbf3(1);
	height = self.var_8fedf36c GetHeliHeightLockHeight((var_522698b3.origin[0], var_522698b3.origin[1], var_dda84f1a[0].origin[2]));
	self.var_8fedf36c clientfield::set("vtol_dogfighting", 0);
	self clientfield::set_player_uimodel("vehicle.lockOn", 0);
	self.var_8fedf36c clientfield::set("vtol_set_missile_lock_percent", 0);
	self flagsys::clear("dogfighting");
	if(Abs(height - self.var_8fedf36c.origin[2]) > 2500 || Distance2DSquared(var_522698b3.origin, self.var_8fedf36c.origin) > radius * radius || function_863ee84(self.var_8fedf36c GetVelocity()) > 50)
	{
		self.var_8fedf36c SetVehicleType("veh_bo3_mil_vtol_fighter_player_dogfight_slow");
		var_c30a0e54 = (var_522698b3.origin[0], var_522698b3.origin[1], height);
		veh = vehicle::simple_spawn_single("flight_path_spawner" + self.player_num);
		veh ghost();
		veh notsolid();
		veh setContents(0);
		veh DontInterpolate();
		if(self flagsys::get("dogfighting"))
		{
			veh.origin = self function_a9d982da().origin;
			veh.angles = self function_a9d982da().angles;
		}
		else
		{
			var_cb30cca = VectorNormalize(self.origin - var_c30a0e54);
			var_d768f7b8 = AnglesToForward(self.var_8fedf36c.angles);
			if(VectorDot(var_cb30cca, var_d768f7b8) < 0)
			{
				veh.origin = self.var_8fedf36c.origin + var_d768f7b8 * 7500;
				veh.angles = self.var_8fedf36c.angles;
			}
			else
			{
				var_51aed079 = VectorToAngles(var_cb30cca);
				side_dir = AnglesToRight(var_51aed079);
				if(VectorDot(side_dir, var_d768f7b8) < 0)
				{
					side_dir = side_dir * -1;
				}
				veh.origin = self.var_8fedf36c.origin + side_dir * 7500;
				veh.angles = VectorToAngles(side_dir);
			}
		}
		self function_46724ab2(veh);
		self.var_8fedf36c function_2c935359(1);
		var_c6f525f9 = 0;
		while(isdefined(self) && isdefined(self.var_8fedf36c) && (DistanceSquared(var_c30a0e54, veh.origin) > radius * radius || function_863ee84(self.var_8fedf36c GetVelocity()) > 50))
		{
			height = self.var_8fedf36c GetHeliHeightLockHeight((veh.origin[0], veh.origin[1], var_dda84f1a[0].origin[2]));
			var_c30a0e54 = (var_522698b3.origin[0], var_522698b3.origin[1], height);
			desired_origin = var_c30a0e54 + VectorNormalize((veh.origin[0], veh.origin[1], height) - var_c30a0e54) * radius * 0.9;
			speed_scale = pow(math::clamp(Distance(veh.origin, desired_origin) / 2400, 0, 1), 2);
			desired_angles = VectorToAngles(desired_origin - veh.origin);
			var_3e02e245 = AngleClamp180(desired_angles[1]);
			var_e8e62a06 = AngleClamp180(desired_angles[0]);
			yaw_diff = AngleClamp180(var_3e02e245 - veh.angles[1]);
			var_cd190041 = AngleClamp180(var_e8e62a06 - veh.angles[0]);
			veh.angles = (AngleClamp180(veh.angles[0]) + math::clamp(var_cd190041, -2.25, 2.25), AngleClamp180(veh.angles[1]) + math::clamp(yaw_diff, -2.25, 2.25), veh.angles[2] * 0.9);
			veh.origin = veh.origin + AnglesToForward(veh.angles) * 300 * 17.6 * speed_scale * 0.05;
			if(speed_scale < 0.5 && !var_c6f525f9)
			{
				self.var_8fedf36c clientfield::set("vtol_engines_state", 0);
				var_c6f525f9 = 1;
				self playsoundtoplayer("veh_vtol_engage_lr", self);
			}
			wait(0.05);
		}
		if(isdefined(self))
		{
			self function_46724ab2(undefined);
		}
		veh delete();
	}
	else
	{
		self function_46724ab2(undefined);
	}
	self AllowAds(1);
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
	self endon("disconnect");
	self endon("death");
	if(!(isdefined(self.var_9749d396) && self.var_9749d396))
	{
		self.var_9749d396 = 1;
		self function_e9a25955();
		self.var_8fedf36c function_2c935359(0);
		self oob::disablePlayerOOB(0);
		self.var_8fedf36c vehicle::god_off();
		self.var_8fedf36c SetVehicleType("veh_bo3_mil_vtol_fighter_player_agile");
		self clientfield::set_player_uimodel("vehicle.weaponIndex", 1);
		self thread function_a43cfbf3(1);
		self flagsys::clear("dogfighting");
		self.var_8fedf36c clientfield::set("vtol_dogfighting", 0);
		self.var_8fedf36c clientfield::set("vtol_engines_state", 0);
		self.var_8fedf36c function_66909ebb(1);
		self.var_8fedf36c ClearTargetEntity();
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
	self endon("disconnect");
	self endon("death");
	self endon("hash_6a1f4649");
	while(self function_5c971cb7())
	{
		self waittill("oob_enter");
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
	self endon("disconnect");
	self endon("death");
	self.missile_target = undefined;
	var_3e14ed79 = 5;
	while(self function_5c971cb7())
	{
		veh_weapon = self.var_8fedf36c SeatGetWeapon(1);
		if(!self flagsys::get("dogfighting") && (!isdefined(self.var_9749d396) && self.var_9749d396) && isdefined(veh_weapon) && !self.var_8fedf36c flagsys::get("scriptedanim"))
		{
			best_target = undefined;
			enemies = GetAITeamArray("axis");
			enemies = ArrayCombine(enemies, GetVehicleTeamArray("axis"), 0, 0);
			fov = 63;
			if(self util::is_ads())
			{
				fov = 24;
			}
			var_76b22b65 = fov;
			var_350b74ea = veh_weapon.lockOnMaxRange * veh_weapon.lockOnMaxRange;
			foreach(enemy in enemies)
			{
				if(isVehicle(enemy) && isalive(enemy))
				{
					enemy_pos = enemy GetTagOrigin("tag_body");
					angle_diff = VectorToAngles(enemy_pos - self GetPlayerCameraPos()) - self getPlayerAngles();
					angle_diff = (AbsAngleClamp180(angle_diff[0]), AbsAngleClamp180(angle_diff[1]), 0);
					var_113769e1 = angle_diff[0] + angle_diff[1] / 2;
					dist = DistanceSquared(self GetEye(), enemy_pos);
					if(isdefined(self.missile_target) && enemy == self.missile_target || var_113769e1 <= var_76b22b65 && angle_diff[0] <= fov && angle_diff[1] <= fov && dist <= var_350b74ea && Target_IsInCircle(enemy, self, fov, veh_weapon.var_b715cbfd) && BulletTracePassed(self GetPlayerCameraPos(), enemy_pos, 0, self.var_8fedf36c, enemy, 1))
					{
						best_target = enemy;
						var_76b22b65 = var_113769e1;
						if(isdefined(self.missile_target) && enemy == self.missile_target)
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
			if(isdefined(best_target))
			{
				if(!isdefined(self.missile_target) || self.missile_target != best_target)
				{
					self.missile_target = best_target;
					self WeaponLockStart(best_target);
				}
			}
			else
			{
				self.missile_target = undefined;
				self WeaponLockFree();
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
	self endon("disconnect");
	self clientfield::set_to_player("highlight_ai", 1);
	self util::waittill_any("vtol_starting_landing", "vtol_exit", "death");
	self clientfield::set_to_player("highlight_ai", 0);
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
	self endon("disconnect");
	self endon("death");
	self endon("hash_6a1f4649");
	var_5f6c4b = 2500;
	var_f29ae186 = 4;
	var_6b1c0c6 = 0;
	if(!isdefined(self.var_cf011976))
	{
		self.var_cf011976 = [];
		for(i = 0; i < var_f29ae186; i++)
		{
			self.var_cf011976[i] = 0;
		}
	}
	while(1)
	{
		var_b5ef1165 = 0;
		for(i = 0; i < var_f29ae186; i++)
		{
			if(self.var_cf011976[i] < self.var_cf011976[var_b5ef1165])
			{
				var_b5ef1165 = i;
			}
		}
		if(self.var_cf011976[var_b5ef1165] > GetTime())
		{
			self.var_8fedf36c DisableGunnerFiring(var_6b1c0c6, 1);
			wait(self.var_cf011976[var_b5ef1165] - GetTime() / 1000);
			self.var_8fedf36c DisableGunnerFiring(var_6b1c0c6, 0);
		}
		var_f20c9b55 = -1;
		while(var_f20c9b55 != var_6b1c0c6)
		{
			self.var_8fedf36c waittill("hash_1323c42e", var_f20c9b55, missile);
			self thread function_6174aaa2(missile);
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
function function_6174aaa2(missile)
{
	if(!isdefined(missile) || (self flagsys::get("dogfighting") && isdefined(missile missile_gettarget())))
	{
		return;
	}
	target = self function_a9d982da();
	offset = (0, 0, 0);
	var_3c972657 = undefined;
	if(isdefined(target) && (self flagsys::get("dogfighting") || isdefined(missile missile_gettarget())))
	{
		if(self flagsys::get("dogfighting"))
		{
			missile setWeapon(GetWeapon("vtol_fighter_player_dogfight_unlocked_missile_turret"));
			var_3c972657 = 0.75;
		}
		if(!isalive(target))
		{
			return;
		}
		if(isVehicle(target))
		{
			offset = target GetTagOrigin("tag_body") - target.origin;
		}
		missile Missile_SetTarget(target, offset);
	}
	else
	{
		var_3c972657 = 0.5;
		trace = bullettrace(self GetPlayerCameraPos(), self GetPlayerCameraPos() + AnglesToForward(self getPlayerAngles()) * 10000, 1, self, 0, 0, self.var_8fedf36c);
		target_origin = spawn("script_origin", trace["position"]);
		missile Missile_SetTarget(target_origin);
	}
	if(isdefined(var_3c972657))
	{
		wait(var_3c972657);
		if(isdefined(missile))
		{
			missile Missile_SetTarget(undefined);
		}
		if(isdefined(target_origin))
		{
			target_origin delete();
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
function function_fe19b920(type)
{
	if(Array::contains(getArrayKeys(self.var_d60b48f3), type))
	{
		self.var_861efedd[type] = GetTime();
		self notify("hash_6f6a7106");
	}
	else
	{
		ASSERTMSG(type + "Dev Block strings are not supported");
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
function function_78d2c721(type)
{
	self.var_861efedd = Array::remove_index(self.var_861efedd, type, 1);
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
	keys = getArrayKeys(self.var_d60b48f3);
	foreach(key in keys)
	{
		self.var_d60b48f3[key] = Array::randomize(self.var_d60b48f3[key]);
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
		keys = getArrayKeys(self.var_d60b48f3);
		foreach(key in keys)
		{
			self.var_740cbab7[key] = spawnstruct();
			self.var_740cbab7[key].var_61e9af10 = 0;
			self.var_740cbab7[key].last_time = 0;
			var_41f3bc5c = 15;
			timeout_time = 3;
			var_aa9634bb = 1;
			switch(key)
			{
				case "fire":
				case "lock":
				{
					var_41f3bc5c = 15;
					timeout_time = 1;
					var_aa9634bb = 0;
					break;
				}
				case "nolock":
				{
					var_41f3bc5c = 5;
					timeout_time = 2.5;
					var_aa9634bb = 0;
					break;
				}
				case "killed":
				{
					var_41f3bc5c = 5;
					timeout_time = 1;
					var_aa9634bb = 0;
					break;
				}
				case "props":
				{
					var_41f3bc5c = 30;
					timeout_time = 10;
					var_aa9634bb = 0;
					break;
				}
			}
			self.var_740cbab7[key].var_41f3bc5c = var_41f3bc5c;
			self.var_740cbab7[key].timeout_time = timeout_time;
			if(var_aa9634bb)
			{
				self.var_e9c4f888[self.var_e9c4f888.size] = key;
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
	types = getArrayKeys(self.var_861efedd);
	foreach(type in types)
	{
		if(GetTime() - self.var_861efedd[type] / 1000 > self.var_740cbab7[type].timeout_time)
		{
			self.var_861efedd = Array::remove_index(self.var_861efedd, type, 1);
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
	types = getArrayKeys(self.var_861efedd);
	foreach(type in types)
	{
		if(self.var_740cbab7[type].last_time <= 0 || GetTime() - self.var_740cbab7[type].last_time / 1000 > self.var_740cbab7[type].var_41f3bc5c)
		{
			var_4031190e = type;
			self.var_861efedd = Array::remove_index(self.var_861efedd, type, 1);
			break;
		}
	}
	if(!isdefined(var_4031190e) && (!isdefined(var_27114ecf) && var_27114ecf))
	{
		var_5f2cda7b = [];
		foreach(type in self.var_e9c4f888)
		{
			if(self.var_740cbab7[type].last_time <= 0 || GetTime() - self.var_740cbab7[type].last_time / 1000 > self.var_740cbab7[type].var_41f3bc5c)
			{
				var_5f2cda7b[var_5f2cda7b.size] = type;
			}
		}
		var_4031190e = Array::random(var_5f2cda7b);
	}
	if(isdefined(var_4031190e))
	{
		vo = self.var_d60b48f3[var_4031190e][self.var_740cbab7[var_4031190e].var_61e9af10];
		if(StrStartsWith(vo, "plyr"))
		{
			self dialog::function_13b3b16a(vo, 0);
		}
		else
		{
			level dialog::remote(vo, 0, "dni", self);
		}
		self.var_740cbab7[var_4031190e].last_time = GetTime();
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
	self endon("disconnect");
	self endon("death");
	self endon("hash_b4a5f622");
	level endon("hash_982117a3");
	self function_f3ec4eac();
	self function_35142384();
	self.var_861efedd = [];
	var_f5789fb5 = 2.5;
	var_33533e17 = 5;
	while(self function_5c971cb7())
	{
		self waittill("Dogfighting");
		level flagsys::wait_till_clear("dogfight_intro_dialog");
		last_time = GetTime();
		wait_time = RandomFloatRange(var_f5789fb5, var_33533e17);
		while(self flagsys::get("dogfighting"))
		{
			ret = util::waittill_any_timeout(max(0.05, wait_time - GetTime() - last_time / 1000), "dogfight_vo_added");
			if(!self flagsys::get("dogfighting"))
			{
				continue;
			}
			self function_a7d6fd77(ret != "timeout");
			last_time = GetTime();
			wait_time = RandomFloatRange(var_f5789fb5, var_33533e17);
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
	target = self function_188a8bd6();
	if(isdefined(target) && (isdefined(target.dying) && target.dying))
	{
		target = target.var_3ae26974;
	}
	else if(!self flagsys::get("dogfighting"))
	{
		target = self.missile_target;
	}
	return target;
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
	self endon("disconnect");
	self endon("death");
	var_a3ad629b = undefined;
	lock_time = 0;
	while(self function_5c971cb7())
	{
		var_851d9145 = self function_a9d982da();
		veh_weapon = self.var_8fedf36c SeatGetWeapon(0);
		lockOnSpeed = veh_weapon.lockOnSpeed / 1000;
		if(isdefined(var_851d9145) && (isdefined(var_851d9145.vehicleClass) && var_851d9145.vehicleClass == "plane" || (isdefined(var_851d9145.vehicleClass) && var_851d9145.vehicleClass == "helicopter")) && var_851d9145 flagsys::get("scriptedanim") && !var_851d9145 ishidden())
		{
			if(!isdefined(var_a3ad629b) || var_851d9145 != var_a3ad629b)
			{
				var_a3ad629b = var_851d9145;
				lock_time = 0;
				self.var_8fedf36c function_66909ebb(1);
				self.var_8fedf36c ClearTargetEntity();
			}
			else if(Target_IsInCircle(var_a3ad629b, self, 30, veh_weapon.var_b715cbfd) && DistanceSquared(var_a3ad629b GetTagOrigin("tag_body"), self.var_8fedf36c.origin) < veh_weapon.lockOnMaxRange * veh_weapon.lockOnMaxRange)
			{
				lock_time = lock_time + 0.05;
			}
			else
			{
				lock_time = lock_time - 0.05;
			}
		}
		else if(isdefined(var_a3ad629b))
		{
			var_a3ad629b = undefined;
			lock_time = 0;
			self.var_8fedf36c function_66909ebb(1);
			self.var_8fedf36c ClearTargetEntity();
		}
		lock_time = math::clamp(lock_time, 0, lockOnSpeed);
		if(isdefined(var_a3ad629b))
		{
			if(lock_time >= lockOnSpeed)
			{
				self.var_8fedf36c function_66909ebb(0);
				self.var_8fedf36c SetTargetEntity(var_a3ad629b);
			}
			else
			{
				self.var_8fedf36c function_66909ebb(1);
				self.var_8fedf36c ClearTargetEntity();
			}
		}
		wait(0.05);
	}
	if(isdefined(self.var_8fedf36c))
	{
		self.var_8fedf36c function_66909ebb(1);
		self.var_8fedf36c ClearTargetEntity();
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
	self endon("disconnect");
	self endon("death");
	var_a3ad629b = undefined;
	lock_time = 0;
	var_a9e2f7e7 = 0;
	button_held = 0;
	self clientfield::set_player_uimodel("vehicle.lockOn", 0);
	self.var_8fedf36c clientfield::set("vtol_set_missile_lock_percent", 0);
	self thread function_d2db9d30();
	while(self function_5c971cb7())
	{
		if(self.var_8fedf36c flagsys::get("scriptedanim"))
		{
			wait(0.05);
			continue;
		}
		veh_weapon = self.var_8fedf36c SeatGetWeapon(1);
		lockOnSpeed = veh_weapon.lockOnSpeed / 1000;
		target = self function_a9d982da();
		skill = GetLocalProfileInt("g_gameskill");
		lockOnSpeed = lockOnSpeed + skill - 1;
		if(lockOnSpeed <= 0)
		{
			lockOnSpeed = 0.5;
		}
		fov = 63;
		if(self flagsys::get("dogfighting"))
		{
			fov = 30;
		}
		else if(self util::is_ads())
		{
			fov = 24;
		}
		if(isdefined(target) && isVehicle(target) && !target ishidden())
		{
			if(!isdefined(var_a3ad629b) || target != var_a3ad629b)
			{
				var_a3ad629b = target;
				self WeaponLockStart(target);
				lock_time = 0;
				var_a9e2f7e7 = 0;
			}
			else if(Target_IsInCircle(var_a3ad629b, self, fov, veh_weapon.var_b715cbfd) && DistanceSquared(var_a3ad629b GetTagOrigin("tag_body"), self.var_8fedf36c.origin) < veh_weapon.lockOnMaxRange * veh_weapon.lockOnMaxRange)
			{
				lock_time = lock_time + 0.05;
			}
			else
			{
				lock_time = lock_time - 0.05;
			}
		}
		else if(isdefined(var_a3ad629b) || lock_time > 0)
		{
			self WeaponLockFree();
			var_a3ad629b = undefined;
			lock_time = 0;
			var_a9e2f7e7 = 0;
		}
		if(isdefined(var_a3ad629b))
		{
			if(!var_a9e2f7e7 && !button_held && self flagsys::get("dogfighting") && self.var_8fedf36c IsGunnerFiring(0))
			{
				function_fe19b920("nolock");
			}
			else if(var_a9e2f7e7 && !button_held && self.var_8fedf36c IsGunnerFiring(0) && self flagsys::get("dogfighting"))
			{
				self WeaponLockFree();
				self WeaponLockStart(var_a3ad629b);
				lock_time = lock_time * 0.75;
				var_a9e2f7e7 = 0;
				button_held = 1;
				self function_78d2c721("lock");
				self function_fe19b920("fire");
			}
			else if(BulletTracePassed(self GetPlayerCameraPos(), var_a3ad629b GetTagOrigin("tag_body"), 0, self.var_8fedf36c, var_a3ad629b, 1))
			{
				if(lock_time >= lockOnSpeed)
				{
					self WeaponLockFinalize(target);
					var_a9e2f7e7 = 1;
					self function_fe19b920("lock");
				}
			}
			else if(self flagsys::get("dogfighting"))
			{
				lock_time = lock_time - 0.05;
			}
			if(button_held && !self.var_8fedf36c IsGunnerFiring(0))
			{
				button_held = 0;
			}
		}
		if(var_a9e2f7e7)
		{
			lock_time = lockOnSpeed;
			var_943fec4e = 1;
		}
		else
		{
			lock_time = math::clamp(lock_time, 0, lockOnSpeed);
			var_943fec4e = lock_time / lockOnSpeed;
		}
		if(isdefined(self.doingNotify) && self.doingNotify)
		{
			self clientfield::set_player_uimodel("vehicle.lockOn", 0);
		}
		else
		{
			self clientfield::set_player_uimodel("vehicle.lockOn", var_943fec4e);
		}
		self.var_8fedf36c clientfield::set("vtol_set_missile_lock_percent", var_943fec4e);
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
function function_3034fbb(NEW_STATE)
{
	if(isdefined(self.var_8fedf36c.State))
	{
		switch(self.var_8fedf36c.State)
		{
			case "autopilot":
			{
				self.var_8fedf36c show();
				self.var_8fedf36c solid();
				self.var_8fedf36c StopAnimScripted(0);
				self.var_8fedf36c clientfield::set("vtol_enable_wash_fx", 0);
				self.var_8fedf36c notify("hash_7b977278");
				break;
			}
			case "landing_mode":
			{
				self.var_8fedf36c clientfield::set("vtol_set_active_landing_zone_num", 0);
				self clientfield::set_player_uimodel("vehicle.showLandHint", 0);
				break;
			}
			case "call":
			{
				if(isdefined(NEW_STATE) && NEW_STATE != "enter")
				{
					self.var_8fedf36c clientfield::set("vtol_canopy_state", 0);
					self.var_8fedf36c clientfield::set("vtol_enable_wash_fx", 0);
				}
				self.var_8fedf36c clearTargetYaw();
				self.var_8fedf36c ClearVehGoalPos();
				self.var_8fedf36c StopAnimScripted(0);
				break;
			}
			case "enter":
			{
				self.var_8fedf36c clientfield::set("vtol_canopy_state", 0);
				self.var_8fedf36c clientfield::set("vtol_enable_wash_fx", 0);
				if(self flagsys::get("scriptedanim") && !isdefined(self.current_scene) && !isdefined(self.current_player_scene))
				{
					self thread animation::stop();
				}
				break;
			}
			case "exit":
			{
				if(isdefined(self.var_6f5c6fa1) && self.var_6f5c6fa1 && self flagsys::get("scriptedanim") && !isdefined(self.current_scene) && !isdefined(self.current_player_scene))
				{
					self thread animation::stop();
				}
				break;
			}
			case "piloted":
			{
				if(NEW_STATE != "landing_mode")
				{
					self clientfield::set_player_uimodel("vehicle.lockOn", 0);
					self.var_8fedf36c clientfield::set("vtol_set_missile_lock_percent", 0);
					self.var_8fedf36c clientfield::set("vtol_show_missile_lock", 0);
					self WeaponLockFree();
				}
				self.ignoreme = 0;
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
function function_22a0413d(NEW_STATE, var_b3dc65a3, var_41d4f668, var_67d770d1)
{
	self function_d683f26a();
	if(isdefined(NEW_STATE))
	{
		if(isdefined(self.var_8fedf36c.State) && NEW_STATE == self.var_8fedf36c.State && NEW_STATE != "exit" && NEW_STATE != "landing_mode")
		{
			return;
		}
		if(function_5c971cb7() && (NEW_STATE == "autopilot" || NEW_STATE == "enter" || NEW_STATE == "call"))
		{
			return;
		}
		if(!function_5c971cb7() && NEW_STATE == "landing_mode")
		{
			return;
		}
		self.var_8fedf36c notify("hash_c38e4003");
		self function_3034fbb(NEW_STATE);
		switch(NEW_STATE)
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
				self.var_8fedf36c.State = "idle";
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
function function_191fff49(State, var_b3dc65a3, var_41d4f668, var_67d770d1)
{
	level.var_4063f562 = State;
	foreach(player in level.activePlayers)
	{
		player thread function_22a0413d(State, var_b3dc65a3, var_41d4f668, var_67d770d1);
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
	var_dda84f1a = GetEntArray("landing_zone_player_" + self.player_num, "targetname");
	var_72ae61b3 = undefined;
	foreach(landing_zone in var_dda84f1a)
	{
		if(!isdefined(var_72ae61b3))
		{
			var_72ae61b3 = landing_zone;
			var_a0d5844a = DistanceSquared(self.origin, var_72ae61b3.origin);
			continue;
		}
		dist = DistanceSquared(self.origin, landing_zone.origin);
		if(dist < var_a0d5844a)
		{
			var_72ae61b3 = landing_zone;
			var_a0d5844a = dist;
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
function function_1215f9e4(index)
{
	if(!isdefined(level.var_b91023ce))
	{
		level.var_b91023ce = [];
	}
	Array::add(level.var_b91023ce, index, 0);
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
function function_e1e437cb(index)
{
	if(isdefined(level.var_b91023ce))
	{
		ArrayRemoveValue(level.var_b91023ce, index);
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
function function_5739554b(var_e8e62a06, time)
{
	self endon("death");
	self notify("hash_5739554b");
	self endon("hash_5739554b");
	start_time = time;
	start_pitch = self.angles[0];
	do
	{
		time = time - 0.05;
		self.angles = (start_pitch + var_e8e62a06 - start_pitch * start_time - time / start_time, self.angles[1], self.angles[2]);
		wait(0.05);
	}
	while(!(isdefined(self) && time > 0));
	if(isdefined(self))
	{
		self.angles = (var_e8e62a06, self.angles[1], self.angles[2]);
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
function function_e34692a9(zone, teleport, var_acaabf08)
{
	if(!isdefined(var_acaabf08))
	{
		var_acaabf08 = 1;
	}
	self endon("disconnect");
	self.var_8fedf36c endon("hash_c38e4003");
	var_74df67ae = -1;
	var_f561e15e = 120;
	if(isdefined(zone))
	{
		var_74df67ae = zone;
		var_dda84f1a = GetEntArray("landing_zone_" + zone, "script_noteworthy");
		foreach(landing_zone in var_dda84f1a)
		{
			if(landing_zone.targetname === "landing_zone_player_" + self.player_num)
			{
				var_72ae61b3 = landing_zone;
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
		if(isdefined(teleport) && teleport)
		{
			self.var_8fedf36c.origin = var_72ae61b3.origin + (0, 0, var_f561e15e);
			self.var_8fedf36c.angles = var_72ae61b3.angles;
			self.var_8fedf36c DontInterpolate();
			wait(0.05);
		}
		else if(isdefined(self.var_719c336f) && self.var_719c336f > 0.05)
		{
			self.var_8fedf36c ghost();
			wait(self.var_719c336f);
			self.var_719c336f = undefined;
			self.var_8fedf36c show();
		}
		anim_rate = 1;
		if(isdefined(self.var_23a61090))
		{
			anim_rate = self.var_23a61090;
		}
		self.var_8fedf36c clientfield::set("vtol_engines_state", 1);
		self.var_8fedf36c thread animation::Play("v_aqu_vtol_land_enter", var_72ae61b3.origin, var_72ae61b3.angles, anim_rate, 0, 0.01, 0);
		self.var_8fedf36c waittillmatch("hash_5d9bca70");
		self.var_8fedf36c clientfield::set("vtol_enable_wash_fx", 1);
		self.var_8fedf36c waittillmatch("hash_5d9bca70");
		self.var_8fedf36c clientfield::set("vtol_canopy_state", 1);
		self.var_8fedf36c waittillmatch("hash_5d9bca70");
		self.var_8fedf36c StopAnimScripted(0);
		self.var_8fedf36c clientfield::set("vtol_engines_state", 0);
		self.var_8fedf36c SetVehGoalPos(var_72ae61b3.origin + VectorScale((0, 0, 1), 120), 1);
		self.var_8fedf36c settargetyaw(var_72ae61b3.angles[1]);
		self.var_8fedf36c SetSpeed(25, 25, 25);
		self.var_8fedf36c setyawspeed(59, 360, 360);
		self.var_8fedf36c SetHoverParams(28, 24, 24);
	}
	if(!var_acaabf08 && self IsPlayingAnimScripted())
	{
		while(self IsPlayingAnimScripted())
		{
			wait(0.05);
		}
		break;
	}
	self thread function_e267ae99();
	while(!isalive(self) || !self IsOnGround() || self laststand::player_is_in_laststand() || Distance2DSquared(self.origin, self.var_8fedf36c GetTagOrigin("tag_driver_camera")) > 62500)
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
function function_e1fcf95(play_anim, var_74df67ae)
{
	self endon("disconnect");
	self endon("death");
	self.var_8fedf36c endon("hash_c38e4003");
	if(self function_5c971cb7())
	{
		return;
	}
	self.var_8fedf36c.State = "enter";
	self.var_8fedf36c clientfield::set("vtol_set_active_landing_zone_num", 0);
	self EnableInvulnerability();
	self.var_8fedf36c endon("death");
	if(isdefined(play_anim) && play_anim)
	{
		self.var_8fedf36c vehicle::god_on();
		self.var_8fedf36c SetHoverParams(0);
		self.var_8fedf36c SetSpeedImmediate(0.01);
		self.var_8fedf36c SetSpeed(0.01, 100, 100);
		self.var_8fedf36c setyawspeed(0.01, 100, 100);
		self.var_8fedf36c ClearVehGoalPos();
		self.var_8fedf36c clearTargetYaw();
		angle_diff = AngleClamp180(self.var_8fedf36c.angles[1] - VectorToAngles(self.origin - self.var_8fedf36c GetTagOrigin("tag_driver_camera"))[1]);
		side = "r";
		if(angle_diff < 0)
		{
			side = "l";
			angle_diff = angle_diff * -1;
		}
		angle = 90;
		if(angle_diff < 5)
		{
			angle = 0;
		}
		else if(angle_diff < 15)
		{
			angle = 15;
		}
		else if(angle_diff < 45)
		{
			angle = 45;
		}
		var_c94a0984 = "r";
		if(angle >= 45 && side == "l")
		{
			var_c94a0984 = "l";
		}
		anim_name = "pb_aqu_vtol_enter_jump_start_" + side;
		self thread animation::Play(anim_name, self.origin, self.angles, 1, 0.2, 0, 0.2);
		self waittillmatch(anim_name);
		mover_ent = spawn("script_model", self.origin);
		mover_ent SetModel("tag_origin");
		mover_ent.angles = self.angles;
		mover_ent DontInterpolate();
		var_8f8a1689 = "pb_aqu_vtol_enter_" + angle + "_" + var_c94a0984;
		if(angle == 0)
		{
			var_8f8a1689 = "pb_aqu_vtol_enter";
		}
		target_origin = GetStartOrigin(self.var_8fedf36c.origin, self.var_8fedf36c.angles, var_8f8a1689);
		target_angles = GetStartAngles(self.var_8fedf36c.origin, self.var_8fedf36c.angles, var_8f8a1689);
		anim_name = "pb_aqu_vtol_enter_jump_loop_" + var_c94a0984;
		lerp_time = 0.5;
		anim_time = getanimlength(anim_name);
		anim_rate = anim_time / lerp_time;
		self thread animation::Play(anim_name, mover_ent, "tag_origin", anim_rate, 0.2, 0, 0);
		mover_ent moveto(target_origin, lerp_time, 0, 0);
		mover_ent RotateTo(target_angles, lerp_time, 0, 0);
		wait(lerp_time - 0.05);
		self thread animation::Play(var_8f8a1689, self.var_8fedf36c, "tag_origin", 1, 0.2, 0.1, 0, 0, 0, 0);
		self waittillmatch(var_8f8a1689);
		self playsoundtoplayer("veh_vtol_close", self);
		mover_ent delete();
		self.var_8fedf36c vehicle::god_off();
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
	self endon("death");
	self endon("hash_8923fa32");
	while(1)
	{
		foreach(player in level.players)
		{
			if(player != self)
			{
				if(player istouching(self.var_8fedf36c))
				{
					a_spawn_points = spawnlogic::function_93d52c4f(1);
					var_39f734b7 = ArrayGetClosest(player.origin, a_spawn_points);
					var_b2577cba = var_39f734b7.origin;
					var_b2577cba = player player::get_snapped_spot_origin(var_b2577cba);
					player SetOrigin(var_b2577cba);
					if(isdefined(var_39f734b7.angles))
					{
						player SetPlayerAngles(var_39f734b7.angles);
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
function function_f924d730(time)
{
	self endon("disconnect");
	self endon("death");
	self.ignoreme = 1;
	wait(time);
	self.ignoreme = 0;
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
function function_8bb76a9(var_74df67ae, scripted)
{
	self endon("disconnect");
	self endon("death");
	self.var_8fedf36c endon("hash_c38e4003");
	self function_a65d16ff();
	self EnableInvulnerability();
	if(!(isdefined(scripted) && scripted))
	{
		self.var_8fedf36c.State = "piloted";
		self.var_8fedf36c clientfield::set("vtol_show_missile_lock", 1);
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
		self.var_8fedf36c ReturnPlayerControl();
		self.var_8fedf36c DisableDriverFiring(0);
		self.var_8fedf36c DisableGunnerFiring(0, 0);
		self AllowAds(1);
		self.var_5bf5e8eb = "none";
		self.var_8fedf36c SetHeliHeightLock(1);
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
		self.var_8fedf36c.State = "scripted";
		self.var_8fedf36c takeplayercontrol();
		self.var_8fedf36c DisableDriverFiring(1);
		self.var_8fedf36c DisableGunnerFiring(0, 1);
		self AllowAds(0);
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
	self endon("death");
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
		self.var_8fedf36c MakeVehicleUsable();
		org = self.var_8fedf36c GetTagOrigin("tag_driver_camera");
		ang = self.var_8fedf36c GetTagAngles("tag_driver_camera");
		self SetOrigin(org);
		self SetPlayerAngles((0, ang[1], 0));
		self.var_8fedf36c usevehicle(self, 0);
		self.var_8fedf36c MakeVehicleUnusable();
		self.var_8fedf36c thread audio::sndUpdateVehicleContext(1);
		self.var_32218fc7 = 1;
		level notify("disable_cybercom", self, 1);
		self.var_1e983b11 = 0;
		self.var_d829fe9f = 0;
		self namespace_16f9ecd3::function_12a9df06(0);
		self namespace_16f9ecd3::function_1c59df50(0);
	}
	self.var_8fedf36c show();
	self clientfield::set_player_uimodel("vehicle.weaponIndex", 1);
	self clientfield::set_player_uimodel("vehicle.lockOn", 0);
	SetSavedDvar("bulletrange", 15000);
	self SetThreatBiasGroup("players_vtol");
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
	self endon("disconnect");
	self endon("death");
	self.var_8fedf36c endon("hash_c38e4003");
	self endon("hash_fd4242d1");
	show_hint = 0;
	var_42d92efd = 0;
	while(self function_5c971cb7() && !self flagsys::get("vtol_force_land"))
	{
		show_hint = 0;
		foreach(landing_zone in var_dda84f1a)
		{
			if(Distance2DSquared(self.var_8fedf36c.origin, landing_zone.origin) < 1000000)
			{
				show_hint = 1;
				break;
			}
		}
		if(var_42d92efd != show_hint)
		{
			self clientfield::set_player_uimodel("vehicle.showLandHint", show_hint);
			var_42d92efd = show_hint;
		}
		wait(0.05);
	}
	self clientfield::set_player_uimodel("vehicle.showLandHint", 0);
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
	self endon("disconnect");
	self endon("death");
	self.var_8fedf36c endon("hash_c38e4003");
	while(!self util::use_button_held() && !self flagsys::get("vtol_force_land"))
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
	self endon("disconnect");
	self endon("death");
	self.var_8fedf36c endon("hash_c38e4003");
	self.var_8fedf36c.State = "landing_mode";
	var_2aff5bd5 = [];
	var_77637fea = GetEntArray("landing_zone", "targetname");
	var_3403f039 = 0;
	foreach(landing_zone in var_77637fea)
	{
		if(isdefined(landing_zone.script_noteworthy))
		{
			index = Int(landing_zone.script_noteworthy);
			if(Array::contains(level.var_b91023ce, index))
			{
				var_2aff5bd5[var_2aff5bd5.size] = landing_zone;
				var_3403f039 = var_3403f039 + pow(2, index - 1);
			}
		}
	}
	self thread function_c0fa671d(var_2aff5bd5);
	self.var_8fedf36c clientfield::set("vtol_set_active_landing_zone_num", Int(var_3403f039));
	while(self function_5c971cb7())
	{
		self function_f513fb82();
		foreach(landing_zone in var_2aff5bd5)
		{
			if(Distance2DSquared(self.var_8fedf36c.origin, landing_zone.origin) < 1000000)
			{
				savegame::function_5d2cdd99();
				var_cd4db992 = -1;
				self.var_8fedf36c clientfield::set("vtol_enable_wash_fx", 1);
				if(isdefined(landing_zone.script_noteworthy))
				{
					var_cd4db992 = Int(landing_zone.script_noteworthy);
				}
				self notify("hash_fd4242d1", var_cd4db992);
				var_426e4bae = landing_zone;
				foreach(zone in self.var_dda84f1a)
				{
					if("landing_zone_" + landing_zone.script_noteworthy == zone.script_noteworthy)
					{
						var_426e4bae = zone;
						break;
					}
				}
				self clientfield::set_player_uimodel("vehicle.showLandHint", 0);
				thread namespace_1d1d22be::function_976c341d(self, var_426e4bae);
				self.var_8fedf36c takeplayercontrol();
				self.var_8fedf36c SetHeliHeightLock(0);
				driver_offset = self.var_8fedf36c GetTagOrigin("tag_driver") - self.var_8fedf36c.origin;
				driver_offset = (driver_offset[0], driver_offset[1], 0);
				var_fbb25d33 = var_426e4bae.origin + RotatePoint(driver_offset, var_426e4bae.angles) + VectorScale((0, 0, 1), 120);
				self.var_8fedf36c SetSpeed(50, 100, 100);
				self.var_8fedf36c setyawspeed(59, 360, 360);
				self.var_8fedf36c SetVehGoalPos(var_fbb25d33, 1);
				self.var_8fedf36c settargetyaw(var_426e4bae.angles[1]);
				self.var_8fedf36c SetNearGoalNotifyDist(12);
				self.var_8fedf36c SetHoverParams(0);
				self.var_8fedf36c thread function_da487b0c();
				self.var_8fedf36c notsolid();
				self.var_8fedf36c clientfield::set("vtol_canopy_state", 1);
				goal = self.var_8fedf36c util::waittill_any_timeout(5, "goal", "near_goal", "goal_yaw");
				if(goal == "goal_yaw")
				{
					self.var_8fedf36c util::waittill_any_timeout(5, "near_goal", "goal");
				}
				else if(AbsAngleClamp180(var_426e4bae.angles[1] - self.var_8fedf36c.angles[1]) > 1)
				{
					self.var_8fedf36c util::waittill_any_timeout(5, "goal_yaw");
				}
				self.var_8fedf36c setyawspeed(0.01, 99999, 99999);
				self.var_8fedf36c clearTargetYaw();
				self.var_8fedf36c.angles = (0, var_426e4bae.angles[1], 0);
				self.var_8fedf36c DontInterpolate();
				wait(0.05);
				self.var_8fedf36c clientfield::set("vtol_set_active_landing_zone_num", 0);
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
	self endon("death");
	var_6f554d84 = 1.5;
	start_pitch = AngleClamp180(self.angles[0]);
	var_5e782953 = AngleClamp180(self.angles[2]);
	while(isdefined(self) && self.angles[0] != 0 && self.angles[2] != 0)
	{
		pitch = AngleClamp180(self.angles[0]) - var_6f554d84 * math::sign(start_pitch);
		if(math::sign(pitch) != math::sign(start_pitch))
		{
			pitch = 0;
		}
		roll = AngleClamp180(self.angles[2]) - var_6f554d84 * math::sign(var_5e782953);
		if(math::sign(roll) != math::sign(var_5e782953))
		{
			roll = 0;
		}
		self.angles = (pitch, self.angles[1], roll);
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
function function_6a1f4649(landing_zone, var_e8e0644c, var_fe173168)
{
	if(!isdefined(var_e8e0644c))
	{
		var_e8e0644c = 1;
	}
	if(!isdefined(var_fe173168))
	{
		var_fe173168 = 0;
	}
	self endon("disconnect");
	self endon("death");
	if(!self function_5c971cb7())
	{
		self notify("hash_4936a0ca", "end");
		if(isdefined(self.var_6f5c6fa1) && self.var_6f5c6fa1 && self flagsys::get("scriptedanim") && !isdefined(self.current_scene) && !isdefined(self.current_player_scene))
		{
			self thread animation::stop();
		}
		return;
	}
	self.var_8fedf36c clientfield::set("vtol_set_active_landing_zone_num", 0);
	self.var_8fedf36c.State = "exit";
	self notify("hash_6a1f4649");
	self EnableInvulnerability();
	self.var_8fedf36c vehicle::god_on();
	self.var_8fedf36c clearTargetYaw();
	self.var_8fedf36c ClearVehGoalPos();
	self.var_8fedf36c MakeVehicleUsable();
	self.var_8fedf36c usevehicle(self, self.var_8fedf36c GetOccupantSeat(self));
	self.var_8fedf36c MakeVehicleUnusable();
	self.var_1b9475b4 = 0;
	self.var_8fedf36c thread audio::sndUpdateVehicleContext(0);
	self.var_8fedf36c.var_ac442e94 = 0;
	self clientfield::set_to_player("hijack_static_effect", 0);
	if(var_e8e0644c)
	{
		self thread animation::Play("pb_aqu_vtol_exit", self.var_8fedf36c, "tag_origin", 1, 0.2, 0.05);
		self.var_6f5c6fa1 = 1;
		self waittillmatch("hash_4936a0ca");
	}
	self.var_6f5c6fa1 = 0;
	var_cd4db992 = -1;
	if(isdefined(landing_zone) && isdefined(landing_zone.script_noteworthy))
	{
		var_cd4db992 = Int(StrTok(landing_zone.script_noteworthy, "landing_zone_")[0]);
	}
	level notify("vtol_landed", self, var_cd4db992, "end");
	self.var_8fedf36c clearTargetYaw();
	self.var_8fedf36c ClearVehGoalPos();
	self EnableWeaponCycling();
	self DisableInvulnerability();
	self.var_8fedf36c vehicle::god_off();
	self.var_1e983b11 = 1;
	self.var_32218fc7 = 0;
	level notify("enable_cybercom", self);
	self GadgetPowerSet(0, 100);
	self GadgetPowerSet(1, 100);
	self GadgetPowerSet(2, 100);
	self.var_d829fe9f = 1;
	self namespace_16f9ecd3::function_fc1750c9(1);
	self.var_8fedf36c SetHoverParams(24, 24, 24);
	var_15f4ba8b = 1;
	foreach(player in level.players)
	{
		if(isdefined(player.var_8fedf36c) && player islinkedto(player.var_8fedf36c))
		{
			var_15f4ba8b = 0;
			break;
		}
	}
	if(var_15f4ba8b)
	{
		SetSavedDvar("bulletrange", 8192);
	}
	self.var_8fedf36c clientfield::set("vtol_canopy_state", 0);
	wait(2);
	self SetThreatBiasGroup("players_ground");
	if(!var_fe173168)
	{
		self thread function_22a0413d("autopilot", landing_zone);
	}
	else
	{
		self thread function_22a0413d("idle");
		self.var_8fedf36c SetVehVelocity((0, 0, 0));
		self.var_8fedf36c SetAngularVelocity((0, 0, 0));
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
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_8fedf36c) && player islinkedto(player.var_8fedf36c))
		{
			player namespace_84eb777e::function_a5b8f98();
			player thread function_8f99207(var_fe173168);
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
	if(!isdefined(self GetVehicleOccupied()) || self GetVehicleOccupied() != self.var_8fedf36c)
	{
		return 0;
	}
	seat = self.var_8fedf36c GetOccupantSeat(self);
	if(isdefined(seat) && seat == 0)
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
function function_2b89d912(landing_zone)
{
	self endon("death");
	self endon("disconnect");
	self.var_8fedf36c endon("hash_c38e4003");
	self.var_8fedf36c.State = "autopilot";
	self.var_8fedf36c SetHoverParams(0);
	self.var_8fedf36c ClearVehGoalPos();
	self.var_8fedf36c clearTargetYaw();
	self.var_8fedf36c notsolid();
	var_1f21c6ab = self.var_8fedf36c.origin[2];
	self.var_8fedf36c thread animation::Play("v_aqu_vtol_land_exit", self.var_8fedf36c.origin, self.var_8fedf36c.angles, 1, 0.5, 0.5, 0.5);
	wait(1);
	self.var_8fedf36c clientfield::set("vtol_enable_wash_fx", 0);
	self.var_8fedf36c waittillmatch("hash_fce0770a");
	self.var_8fedf36c StopAnimScripted(0);
	self.var_8fedf36c ghost();
	self.var_8fedf36c.origin = (self.var_8fedf36c.origin[0], self.var_8fedf36c.origin[1], var_1f21c6ab);
	self.var_8fedf36c SetVehGoalPos(self.var_8fedf36c.origin, 1);
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
				iprintln("Dev Block strings are not supported");
			}
			ret = function_c43fe5d3();
			if(ret)
			{
				iprintln("Dev Block strings are not supported" + level.var_fee90489[0]);
			}
			else
			{
				iprintln("Dev Block strings are not supported" + level.var_fee90489[0]);
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
	desc = level.var_e07f6589[level.var_fee90489[0]].str_name;
	if(!isdefined(desc))
	{
		desc = level.var_e07f6589[level.var_fee90489[0]].var_4537ac00;
	}
	return_val = undefined;
	if(StrEndsWith(desc, "spawnvtol"))
	{
		return 1;
	}
	else if(StrEndsWith(desc, "checkkayneexist"))
	{
		if(level flag::get("exterior_hack_trig_left_1_started") && level flag::get("exterior_hack_trig_left_1_finished") || (level flag::get("exterior_hack_trig_right_1_started") && level flag::get("exterior_hack_trig_right_1_finished")))
		{
			level notify("hash_563a7486");
			return 1;
		}
		return_val = !isdefined(level.var_89ea8991);
	}
	else if(StrEndsWith(desc, "checkenteredwater"))
	{
		return_val = !level flag::get("flag_enter_water_moment");
	}
	else if(StrEndsWith(desc, "checkplayerlanded"))
	{
		return_val = !level flag::get("lcombat_respawn_ground");
	}
	if(isdefined(return_val))
	{
		if(!return_val)
		{
			self namespace_84eb777e::function_a5b8f98();
		}
		return return_val;
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
function function_a43cfbf3(force)
{
	self notify("hash_729b5fe2");
	self notify("hash_b153204b");
	self endon("hash_729b5fe2");
	wait(0.05);
	if(level flag::exists("hack_terminal_right") && !level flag::get("hack_terminal_right_completed"))
	{
		self function_3d7bb92e(force);
	}
	else if(level flag::exists("hack_terminals2") && !level flag::get("hack_terminals2_completed"))
	{
		self function_91acd8c6(force);
	}
	else if(level flag::exists("water_room") && !level flag::get("water_room_completed"))
	{
		self function_a0567298(force);
	}
	else
	{
		self function_ca2b9743(force);
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
function function_eb188466(player, var_fc2c26a9, blocking)
{
	player endon("death");
	player endon("disconnect");
	if(!isdefined(player.var_8fedf36c))
	{
		return 1;
	}
	if(!isdefined(blocking))
	{
		blocking = 1;
	}
	if(!isdefined(var_fc2c26a9))
	{
		var_fc2c26a9 = "contains_whole_aquifer";
	}
	VOL = GetEnt(var_fc2c26a9, "targetname");
	if(!isdefined(VOL))
	{
		return 1;
	}
	if(!blocking)
	{
		return !player istouching(VOL);
	}
	while(1)
	{
		if(player islinkedto(player.var_8fedf36c))
		{
			if(!player istouching(VOL))
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
function function_465b0eba(force)
{
	if(!isdefined(force))
	{
		force = 0;
	}
	foreach(player in level.activePlayers)
	{
		if(!isdefined(player.var_5bf5e8eb))
		{
			player.var_5bf5e8eb = "none";
		}
		player thread function_3d7bb92e(force);
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
function function_3d7bb92e(force)
{
	self notify("hash_b153204b");
	self endon("hash_b153204b");
	self endon("disconnect");
	self endon("death");
	if(!isdefined(force))
	{
		force = 0;
	}
	var_8a7bc8e1 = "intro";
	if(force || self.var_5bf5e8eb != var_8a7bc8e1)
	{
		if(!force)
		{
			function_eb188466(self);
		}
		self.var_5bf5e8eb = var_8a7bc8e1;
		SetHeliHeightPatchEnabled("heightmap_objective1", 1, self);
		SetHeliHeightPatchEnabled("heightmap_objective3", 0, self);
		SetHeliHeightPatchEnabled("heightmap_water_room", 0, self);
		SetHeliHeightPatchEnabled("heightmap_wasp_defend", 0, self);
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
function function_5497473c(force)
{
	foreach(player in level.players)
	{
		if(!isdefined(player.var_5bf5e8eb))
		{
			player.var_5bf5e8eb = "none";
		}
		player thread function_a0567298();
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
function function_a0567298(force)
{
	self notify("hash_b153204b");
	self endon("hash_b153204b");
	self endon("disconnect");
	self endon("death");
	if(!isdefined(force))
	{
		force = 0;
	}
	var_8a7bc8e1 = "waterroom";
	if(self.var_5bf5e8eb != var_8a7bc8e1)
	{
		if(!force)
		{
			function_eb188466(self);
		}
		self.var_5bf5e8eb = var_8a7bc8e1;
		SetHeliHeightPatchEnabled("heightmap_objective3", 0, self);
		SetHeliHeightPatchEnabled("heightmap_objective1", 0, self);
		SetHeliHeightPatchEnabled("heightmap_water_room", 1, self);
		SetHeliHeightPatchEnabled("heightmap_wasp_defend", 0, self);
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
function function_9cea70b7(force)
{
	foreach(player in level.players)
	{
		if(!isdefined(player.var_5bf5e8eb))
		{
			player.var_5bf5e8eb = "none";
		}
		player thread function_ca2b9743();
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
function function_ca2b9743(force)
{
	self notify("hash_b153204b");
	self endon("hash_b153204b");
	self endon("disconnect");
	self endon("death");
	if(!isdefined(force))
	{
		force = 0;
	}
	var_8a7bc8e1 = "breach";
	if(self.var_5bf5e8eb != var_8a7bc8e1)
	{
		if(!force)
		{
			function_eb188466(self);
		}
		self.var_5bf5e8eb = var_8a7bc8e1;
		SetHeliHeightPatchEnabled("heightmap_objective3", 1, self);
		SetHeliHeightPatchEnabled("heightmap_objective1", 0, self);
		SetHeliHeightPatchEnabled("heightmap_water_room", 0, self);
		SetHeliHeightPatchEnabled("heightmap_wasp_defend", 0, self);
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
	foreach(player in level.activePlayers)
	{
		if(!isdefined(player.var_5bf5e8eb))
		{
			player.var_5bf5e8eb = "none";
		}
		player thread function_91acd8c6();
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
function function_91acd8c6(force)
{
	self notify("hash_b153204b");
	self endon("hash_b153204b");
	self endon("disconnect");
	self endon("death");
	if(!isdefined(force))
	{
		force = 0;
	}
	var_8a7bc8e1 = "obj3";
	if(self.var_5bf5e8eb != var_8a7bc8e1)
	{
		if(!force)
		{
			function_eb188466(self);
		}
		self.var_5bf5e8eb = var_8a7bc8e1;
		SetHeliHeightPatchEnabled("heightmap_objective3", 1, self);
		SetHeliHeightPatchEnabled("heightmap_water_room", 0, self);
		SetHeliHeightPatchEnabled("heightmap_objective1", 0, self);
		SetHeliHeightPatchEnabled("heightmap_wasp_defend", 0, self);
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
	self endon("disconnect");
	self endon("death");
	vtol = self.var_8fedf36c;
	self.var_b48e2568 = self islinkedto(vtol);
	while(1)
	{
		if(!self islinkedto(vtol))
		{
			vtol ClearVehGoalPos();
			vtol SetVehVelocity((0, 0, 0));
			vtol SetAngularVelocity((0, 0, 0));
			wait(0.2);
		}
		else
		{
			self.var_b48e2568 = 1;
			level flag::set("start_aquifer_objectives");
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
	level.var_68b8237a = vehicle::simple_spawn("ambient_enemy");
	for(i = 0; i < level.var_68b8237a.size; i++)
	{
		node = GetVehicleNode(level.var_68b8237a[i].target, "targetname");
		level.var_68b8237a[i] AttachPath(node);
		level.var_68b8237a[i] StartPath();
		level.var_68b8237a[i] thread function_1d7c2e65();
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
	self endon("death");
	start_node = self.target;
	self.var_427a4b17 = GetVehicleNode(start_node, "targetname");
	self.disconnectPathOnStop = 0;
	var_6e1bba72 = getvehiclenodearray("restart_node_rear", "script_noteworthy");
	var_76bfebca = getvehiclenodearray("restart_node_rear", "script_noteworthy");
	self.var_5ba3ea63 = spawn("script_origin", self.origin);
	while(1)
	{
		node_name = start_node;
		ret_val = self util::waittill_any_return("path_restart", "delete_me", "path_jump_node");
		if(ret_val == "delete_me" || !isdefined(node_name))
		{
			self delete();
			return;
		}
		self vehicle::get_off_path();
		curr_time = GetTime();
		var_76bfebca = [];
		var_1c9539 = [];
		if(isdefined(self.currentNode.script_parameters))
		{
			var_1c9539 = getvehiclenodearray(self.currentNode.script_parameters, "script_noteworthy");
		}
		else
		{
			IPrintLnBold("ERROR: no script parameter of next nodes to go to.");
			var_1c9539 = var_6e1bba72;
		}
		foreach(node in var_1c9539)
		{
			if(!isdefined(node.var_bd3aecb1) || curr_time > node.var_bd3aecb1)
			{
				var_76bfebca[var_76bfebca.size] = node;
			}
		}
		next_node = Array::random(var_76bfebca);
		if(!isdefined(next_node))
		{
			self kill();
			return;
		}
		next_node.var_bd3aecb1 = curr_time + 3000;
		dist = Distance(self.origin, next_node.origin);
		if(dist > 128)
		{
			self SetSpeed(120, 50, 125);
			self SetVehGoalPos(next_node.origin, 0, 1);
			next = GetVehicleNode(next_node.target, "targetname");
			self.var_5ba3ea63.origin = next.origin;
			self SetLookAtEnt(self.var_5ba3ea63);
			while(dist > 150)
			{
				wait(0.05);
				dist = Distance(self.origin, next_node.origin);
			}
			self ClearLookAtEnt();
			self CancelAIMove();
			self ClearVehGoalPos();
		}
		else
		{
			self CancelAIMove();
			self ClearVehGoalPos();
		}
		wait(0.05);
		self AttachPath(next_node);
		self.var_427a4b17 = next_node;
		self StartPath();
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
	level.var_68b8237a = Array::remove_dead(level.var_68b8237a);
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
	self endon("disconnect");
	self endon("death");
	wait(1);
	min_dot = 0.9;
	var_d2877b0d = 1024;
	var_74de1c26 = 500;
	var_8662a9e8 = 0.707;
	/#
		min_dot = 0.7;
		var_d2877b0d = 6024;
		var_74de1c26 = 100;
	#/
	var_c70d7c4a = undefined;
	best_enemy = undefined;
	while(1)
	{
		if(!self.var_b48e2568)
		{
			wait(0.1);
			continue;
		}
		var_c70d7c4a = best_enemy;
		best_enemy = undefined;
		var_388e0ae3 = -1;
		targets = level function_160cf352();
		foreach(enemy in level.var_68b8237a)
		{
			to_enemy = enemy.origin - self.origin;
			var_3846dfda = length(to_enemy);
			if(var_3846dfda > var_d2877b0d)
			{
				continue;
			}
			FORWARD = AnglesToForward(self getPlayerAngles());
			var_97b38341 = AnglesToForward(enemy.angles);
			var_6bf94dd9 = VectorDot(FORWARD, var_97b38341);
			if(var_6bf94dd9 >= var_8662a9e8)
			{
				normal = VectorNormalize(to_enemy);
				dot = VectorDot(FORWARD, normal);
				if(dot > min_dot && dot > var_388e0ae3)
				{
					var_388e0ae3 = dot;
					best_enemy = enemy;
				}
			}
			if(isdefined(best_enemy))
			{
				if(!isdefined(var_c70d7c4a) || var_c70d7c4a != best_enemy)
				{
					if(isalive(var_c70d7c4a))
					{
						var_c70d7c4a.var_6b45f351 = -1;
					}
					best_enemy.var_6b45f351 = GetTime() + var_74de1c26;
				}
				if(GetTime() > best_enemy.var_6b45f351)
				{
					if(self AdsButtonPressed())
					{
						self function_9bda23d2(best_enemy);
						continue;
					}
					/#
						print3d(best_enemy.origin + VectorScale((0, 0, 1), 100), "Dev Block strings are not supported", (0, 0, 1), 1, 2, 1);
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
function function_863ee84(vel)
{
	return length(vel) * 0.05681818;
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
function function_9bda23d2(enemy)
{
	self.var_8fedf36c takeplayercontrol();
	lerpTime = 0.5;
	self.var_8fedf36c SetPathTransitionTime(lerpTime);
	self.var_8fedf36c AttachPath(enemy.currentNode);
	wait(lerpTime);
	self.var_8fedf36c StartPath();
	while(self AdsButtonPressed() && isalive(enemy))
	{
		wait(0.05);
	}
	self.var_8fedf36c ClearLookAtEnt();
	self.var_8fedf36c CancelAIMove();
	self.var_8fedf36c ClearVehGoalPos();
	wait(0.05);
	self.var_8fedf36c usevehicle(self, 0);
	self.var_8fedf36c usevehicle(self, 0);
	self.var_8fedf36c ReturnPlayerControl();
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
	self endon("death");
	wait(1);
	self SetTeam("axis");
	if(!self turret::is_turret_enabled(1))
	{
		self turret::enable(1);
	}
	while(1)
	{
		wait(0.05);
	}
}

/*
	Name: delete_me
	Namespace: namespace_786319bb
	Checksum: 0x7A6D26EA
	Offset: 0xDBF8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function delete_me()
{
	self delete();
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
function function_3fce552c(on)
{
	if(0)
	{
		ent = GetEnt("boss_tree", "targetname");
		ent notsolid();
		if(on)
		{
			ent show();
		}
		else
		{
			ent Hide();
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
	open = var_f462de69;
	function_2085bf94("boss_door", open);
	function_2085bf94("backwash_door", open);
	function_2085bf94("fallen_pile_big", open);
	function_2085bf94("fallen_pile_small", open);
	function_2085bf94("runout_crusher", open);
	open = !var_f462de69;
	function_2085bf94("stair_door", open);
	function_2085bf94("double_closed", open);
	function_2085bf94("intact_small", open);
	function_2085bf94("roller_door", open);
	function_2085bf94("hangar_door", open);
	function_2085bf94("stairwell_door", open);
	function_2085bf94("hideout_door2", open);
	function_2085bf94("hideout_doors_closed", open);
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
function function_2085bf94(name, open)
{
	doors = GetEntArray(name, "targetname");
	foreach(door in doors)
	{
		if(isdefined(door))
		{
			if(open)
			{
				door Hide();
				door notsolid();
				door connectpaths();
				continue;
			}
			door show();
			door solid();
			door disconnectpaths();
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
function function_9f296d9f(name)
{
	trig = GetEnt(name, "targetname");
	if(isdefined(trig))
	{
		trig trigger::use();
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
	self endon("death");
	self endon("disconnect");
	if(!isdefined(self.var_aa3f3ac2))
	{
		self.var_aa3f3ac2 = 0;
	}
	while(1)
	{
		if(self ActionSlotFourButtonPressed())
		{
			self.var_aa3f3ac2 = !isdefined(self.var_aa3f3ac2) && self.var_aa3f3ac2;
			self namespace_16f9ecd3::function_1c59df50(self.var_aa3f3ac2);
			while(self ActionSlotFourButtonPressed())
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
	self endon("death");
	self endon("disconnect");
	if(!isdefined(self.var_4324603c))
	{
		self.var_4324603c = spawnstruct();
	}
	while(self function_5c971cb7() && isalive(self))
	{
		self.var_8fedf36c waittill("damage", damage, attacker, dir, loc, type, model, tag, part, weapon, flags);
		self.var_4324603c.attacker = attacker;
		self.var_4324603c.loc = loc;
		self.var_4324603c.weapon = weapon;
		self AddToDamageIndicator(damage, dir);
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
function function_2d64c4b0(player)
{
	player endon("disconnect");
	skill = GetLocalProfileInt("g_gameskill");
	var_269acedc = 1000 * skill + 1;
	var_a9208969 = 100 / skill + 1;
	var_fb7e6cf1 = 4 - skill;
	var_fa963e85 = var_fb7e6cf1 > 0;
	last_damage_time = 0;
	self.maxhealth = Int(100000 / skill + 1);
	self.health = self.maxhealth;
	last_health = self.health;
	var_e4fefce2 = Int(self.maxhealth * 0.033);
	var_7b71e577 = Int(self.maxhealth * 0.066);
	var_ecd3ee40 = Int(self.maxhealth * 0.085);
	var_f53b8d29 = 0;
	last_damage_state = 0;
	while(isdefined(self))
	{
		driver = self GetSeatOccupant(0);
		if(isdefined(driver))
		{
			if(self.health >= last_health && self.health < self.maxhealth)
			{
				if(last_damage_time + var_269acedc < GetTime())
				{
					self.health = Int(min(self.health + var_a9208969, self.maxhealth));
					if(self.health >= self.maxhealth)
					{
						var_fa963e85 = 1;
					}
				}
			}
			else if(self.health < last_health)
			{
				driver notify("hash_3ed4c2bf");
				if(self.maxhealth - self.health >= var_ecd3ee40)
				{
					if(var_fa963e85 && skill < 4)
					{
						self.health = self.maxhealth - var_ecd3ee40;
						self vehicle::god_on();
						wait(var_fb7e6cf1);
						self vehicle::god_off();
						var_fa963e85 = 0;
					}
					else
					{
						self vehicle::god_on();
						self takeplayercontrol();
						driver notify("vtol_death");
						driver.var_8fedf36c clientfield::set("vtol_dogfighting", 0);
						driver clientfield::set_player_uimodel("vehicle.lockOn", 0);
						self clientfield::set("vtol_set_missile_lock_percent", 0);
						self clientfield::set("vtol_show_missile_lock", 0);
						driver WeaponLockFree();
						time = 3;
						driver thread function_59b80342(time);
						self thread vehicle_death::helicopter_crash();
						ret = self util::waittill_any_timeout(time, "crash_move_done");
						if(isdefined(driver))
						{
							driver DisableInvulnerability();
							driver.health = 1;
							driver.diedOnVehicle = 1;
							driver setplayergravity(0);
							driver kill(driver.var_4324603c.loc, driver.var_4324603c.attacker, undefined, driver.var_4324603c.weapon);
						}
						if(ret == "timeout" && isdefined(self))
						{
							self notify("crash_done");
							self vehicle::god_off();
							self thread vehicle_death::helicopter_explode(0);
							util::wait_network_frame();
							if(isdefined(self))
							{
								self delete();
							}
						}
						wait(1);
						if(isdefined(driver) && !isalive(driver) && !driver IsPlayingAnimScripted())
						{
							driver thread LUI::screen_fade_out(0.5);
						}
						return;
					}
				}
				if(self.maxhealth - self.health >= var_7b71e577)
				{
					var_f53b8d29 = max(var_f53b8d29, 2);
				}
				else if(self.maxhealth - self.health >= var_e4fefce2)
				{
					var_f53b8d29 = max(var_f53b8d29, 1);
				}
				last_damage_time = GetTime();
			}
			last_health = self.health;
		}
		else
		{
			self util::waittill_any("reset_damage_state", "enter_vehicle");
			self.health = self.maxhealth;
			var_f53b8d29 = 0;
		}
		if(var_f53b8d29 != last_damage_state)
		{
			self clientfield::set("vtol_damage_state", Int(var_f53b8d29));
			last_damage_state = var_f53b8d29;
			self vehicle::god_on();
			wait(var_fb7e6cf1 / 2);
			self vehicle::god_off();
			last_damage_time = GetTime();
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
function function_59b80342(time)
{
	start_time = time;
	while(isdefined(self) && time > 0)
	{
		self clientfield::set_to_player("hijack_static_effect", 1 - time / start_time);
		wait(0.05);
		time = time - 0.05;
	}
	if(isdefined(self))
	{
		self clientfield::set_to_player("hijack_static_effect", 1);
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
function function_d683f26a(teleport)
{
	if(!isdefined(self.var_8fedf36c) && isdefined(self.player_num) && !self flagsys::get("vtol_spawning"))
	{
		self clientfield::set_player_uimodel("vehicle.weaponIndex", 1);
		self clientfield::set_player_uimodel("vehicle.lockOn", 0);
		self flagsys::set("vtol_spawning");
		self.var_8fedf36c = vehicle::simple_spawn_single("player" + self.player_num + "_vtol_spawner");
		self.var_8fedf36c SetVehicleType("veh_bo3_mil_vtol_fighter_player_agile");
		self.var_8fedf36c thread function_2d64c4b0(self);
		self flagsys::clear("vtol_spawning");
		if(!isdefined(teleport))
		{
			teleport = 1;
		}
		if(teleport)
		{
			start_loc = struct::get("player" + self.player_num + "_vtol_start_loc");
			if(isdefined(start_loc))
			{
				self.var_8fedf36c.origin = start_loc.origin;
				self.var_8fedf36c.angles = start_loc.angles;
				self.var_8fedf36c DontInterpolate();
			}
		}
		if(isdefined(self.player_num))
		{
			self.var_dda84f1a = GetEntArray("landing_zone_player_" + self.player_num, "targetname");
		}
	}
	else
	{
		self flagsys::wait_till_clear("vtol_spawning");
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
function function_b7cf4d2d(player)
{
	if(!isdefined(player))
	{
		player = undefined;
	}
	min_time = 0.1;
	max_time = 0.2;
	var_ea34fead = level;
	if(isdefined(player))
	{
		player endon("disconnect");
		var_ea34fead = player;
	}
	level flagsys::set("dogfight_intro_dialog");
	level dialog::remote("kane_watch_out_multiple_b_0", 0, "dni", player);
	var_ea34fead dialog::function_13b3b16a("plyr_break_formation_and_0", RandomFloatRange(min_time, max_time));
	var_ea34fead dialog::function_13b3b16a("plyr_hendricks_proceed_to_0", RandomFloatRange(min_time, max_time));
	level dialog::remote("hend_copy_all_drop_em_0", RandomFloatRange(min_time, max_time), "dni", player);
	level flagsys::clear("dogfight_intro_dialog");
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
	scene::add_scene_func("cin_aqu_01_10_intro_1st_flyin_main", &function_f005cfe, "done");
	scene::init("cin_aqu_01_10_intro_1st_flyin_main");
	level.var_39c3b76e = vehicle::simple_spawn_single("hendricks_vtol");
	level.var_52aa09ce = GetEnt("kane_intro", "targetname") spawner::spawn(1);
	level.var_ae4620ba = vehicle::simple_spawn_single("kane_vtol");
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
	else if(!IsArray(var_f13bfa4a))
	{
		var_f13bfa4a = Array(var_f13bfa4a);
	}
	var_f13bfa4a[var_f13bfa4a.size] = var_24223342;
	if(!isdefined(var_f13bfa4a))
	{
		var_f13bfa4a = [];
	}
	else if(!IsArray(var_f13bfa4a))
	{
		var_f13bfa4a = Array(var_f13bfa4a);
	}
	var_f13bfa4a[var_f13bfa4a.size] = level.var_39c3b76e;
	if(!isdefined(var_f13bfa4a))
	{
		var_f13bfa4a = [];
	}
	else if(!IsArray(var_f13bfa4a))
	{
		var_f13bfa4a = Array(var_f13bfa4a);
	}
	var_f13bfa4a[var_f13bfa4a.size] = level.var_52aa09ce;
	if(!isdefined(var_f13bfa4a))
	{
		var_f13bfa4a = [];
	}
	else if(!IsArray(var_f13bfa4a))
	{
		var_f13bfa4a = Array(var_f13bfa4a);
	}
	var_f13bfa4a[var_f13bfa4a.size] = level.var_ae4620ba;
	level flag::wait_till("intro_chryon_done");
	level.var_39c3b76e clientfield::set("vtol_engines_state", 1);
	level.var_ae4620ba clientfield::set("vtol_engines_state", 1);
	foreach(player in level.players)
	{
		player function_d683f26a();
		var_f13bfa4a[var_f13bfa4a.size] = player.var_8fedf36c;
	}
	level thread scene::Play("p7_fxanim_cp_aqu_war_airassault_bundle");
	level thread scene::Play("cin_aqu_01_10_intro_1st_flyin_main", var_f13bfa4a);
	level.var_c8595f3e = GetTime();
	for(index = 0; index < level.players.size; index++)
	{
		level.players[index] thread function_22a0413d("scripted");
		level.players[index] clientfield::set_player_uimodel("vehicle.weaponIndex", 0);
		level.players[index].var_8fedf36c takeplayercontrol();
		level.players[index].var_8fedf36c DisableDriverFiring(1);
		level.players[index].var_8fedf36c DisableGunnerFiring(0, 1);
		level.players[index] AllowAds(0);
		level.players[index] thread function_af376a0e("v_aqu_01_10_intro_1st_flyin_player" + index + 1, index, "v_aqu_dogfight_intro_enemy" + index + 1, "intro_dogfight_global_active");
		level.players[index].var_8fedf36c clientfield::set("vtol_screen_shake", 1);
	}
	level thread namespace_1d1d22be::function_c800052a();
	level flag::wait_till("intro_dialog_finished");
	for(index = 0; index < level.players.size; index++)
	{
		level.players[index].var_8fedf36c clientfield::set("vtol_screen_shake", 0);
	}
	level thread function_b7cf4d2d();
	level flag::wait_till("flying_main_scene_done");
	level flag::set("intro_finished");
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
function function_f005cfe(a_ents)
{
	level flag::set("flying_main_scene_done");
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
function function_af376a0e(animName, index, SECTION, var_84fe82cd)
{
	self endon("disconnect");
	self thread function_22a0413d("scripted");
	self.var_8fedf36c clientfield::set("vtol_show_missile_lock", 0);
	self.var_8fedf36c waittillmatch(animName);
	self.var_8fedf36c clientfield::set("vtol_engines_state", 1);
	thread function_14f37b59(SECTION, 0, self, undefined, "flight_path_spawner" + index + 1);
	while(!isdefined(self.var_1d195e2c))
	{
		wait(0.05);
	}
	self WeaponLockStart(self.var_1d195e2c);
	self thread function_9d40b42c();
	self.var_8fedf36c waittillmatch(animName);
	self.var_8fedf36c function_2c935359(1);
	level flag::set("dogfighting");
	self function_46724ab2(self.var_1d195e2c);
	self.var_1d195e2c.dogfighter = self;
	self function_d683f26a();
	self thread function_22a0413d("piloted");
	self EnableInvulnerability();
	self.var_8fedf36c vehicle::god_on();
	self.var_8fedf36c StopAnimScripted(0);
	self.var_8fedf36c DisableDriverFiring(0);
	self.var_8fedf36c DisableGunnerFiring(0, 0);
	self.var_8fedf36c ReturnPlayerControl();
	self AllowAds(0);
	self flagsys::set("dogfighting");
	self.var_8fedf36c clientfield::set("vtol_dogfighting", 1);
	self.var_8fedf36c vehicle::toggle_exhaust_fx(0);
	self clientfield::set_player_uimodel("vehicle.weaponIndex", 2);
	self.var_8fedf36c SetVehicleType("veh_bo3_mil_vtol_fighter_player_dogfight");
	self oob::disablePlayerOOB(1);
	self thread function_c5a27940(var_84fe82cd);
	util::wait_network_frame();
	self.var_8fedf36c vehicle::toggle_exhaust_fx(1);
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
	self endon("disconnect");
	level util::waittill_any_timeout(7, "dogfighting");
	self clientfield::set_player_uimodel("vehicle.showAimHint", 1);
	wait(3);
	self clientfield::set_player_uimodel("vehicle.showAimHint", 0);
	notifyData = spawnstruct();
	notifyData.notifyText2 = &"CP_MI_CAIRO_AQUIFER_VTOL_MISSILE_HINT";
	notifyData.duration = 5;
	self hud_message::notifyMessage(notifyData);
	wait(notifyData.duration);
	notifyData.notifyText2 = &"CP_MI_CAIRO_AQUIFER_VTOL_MG_HINT";
	self hud_message::notifyMessage(notifyData);
	wait(notifyData.duration);
	self hud_message::resetNotify();
	var_f6a2729b = 5;
	while(var_f6a2729b > 0 && LengthSquared(self GetNormalizedCameraMovement()) == 0)
	{
		var_f6a2729b = var_f6a2729b - 0.05;
		wait(0.05);
	}
	if(var_f6a2729b <= 0)
	{
		notifyData.notifyText2 = &"CP_MI_CAIRO_AQUIFER_VTOL_AIM_HINT";
		notifyData.duration = 5;
		self hud_message::notifyMessage(notifyData);
		wait(notifyData.duration);
		self hud_message::resetNotify();
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
function function_a97555a0(ai_group, VOL)
{
	spawner::add_spawn_function_ai_group(ai_group, &function_c11cfb53, VOL);
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
	self endon("death");
	self util::magic_bullet_shield();
	while(!isdefined(self.vehicle))
	{
		wait(0.1);
	}
	var_3770a3b5 = GetEnt(var_1f5ba763, "targetname");
	wait(1);
	self util::stop_magic_bullet_shield();
	self function_ab5de970(var_3770a3b5);
}

/*
	Name: explosion_launcher
	Namespace: namespace_786319bb
	Checksum: 0xB75AB92A
	Offset: 0xFCC8
	Size: 0x1E3
	Parameters: 3
	Flags: None
*/
function explosion_launcher(from, radius, tname)
{
	/#
		Assert(IsVec(from));
	#/
	if(!isdefined(radius))
	{
		radius = 512;
	}
	if(!isdefined(tname))
	{
		tname = "aqu_explosion_launcher";
	}
	ss = GetEntArray(tname, "targetname");
	ss = ArraySortClosest(ss, from, 2, 0, radius);
	if(isdefined(ss[0]))
	{
		s = ss[0];
		org = s.origin - from / 2;
		var_c3d535db = length(org) + 200;
		org = s.origin - org - VectorScale((0, 0, 1), 72);
		force = 2;
		PhysicsExplosionSphere(org, Int(var_c3d535db), Int(var_c3d535db * 0.75), force);
		s delete();
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
function function_ab5de970(VOL)
{
	self endon("death");
	self clearentitytarget();
	self ClearGoalVolume();
	self ClearForcedGoal();
	wait(0.05);
	self setgoalvolume(VOL);
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
function function_c1bd6415(name, State)
{
	triggers = GetEntArray(name, "targetname");
	foreach(trigger in triggers)
	{
		trigger TriggerEnable(State);
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
function function_7cd236c3(targetname, State)
{
	triggers = GetEntArray(targetname, "targetname");
	foreach(trigger in triggers)
	{
		if(trigger.SPAWNFLAGS > 0)
		{
			trigger function_a54b5ecf(10);
		}
		trigger TriggerEnable(State);
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
function function_77fde091(State)
{
	clip = GetEnt("vtol_water_room_clip", "targetname");
	if(State == 1)
	{
		clip solid();
	}
	else
	{
		clip notsolid();
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
	guys3 = spawn_manager::get_ai("spawn_manager_hack_zone02_6");
	wait(0.1);
	foreach(guy in guys3)
	{
		if(isdefined(guy) || isalive(guy))
		{
			guy kill();
			wait(RandomFloatRange(0.8, 2.5));
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
function function_7d76ae16(current_vol, var_29f8e61c)
{
	var_8173bf49 = GetEnt(current_vol, "targetname");
	var_a77639b2 = GetEnt(var_29f8e61c, "targetname");
	guys = GetAITeamArray("axis");
	foreach(guy in guys)
	{
		if(isdefined(guy) || isalive(guy))
		{
			if(guy istouching(var_8173bf49))
			{
				guy thread function_ef807253(var_a77639b2);
				wait(RandomFloatRange(0.2, 0.8));
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
function function_ef807253(VOL)
{
	self endon("death");
	self clearentitytarget();
	self ClearGoalVolume();
	self ClearForcedGoal();
	self ai::set_ignoreall(1);
	wait(RandomFloatRange(0.2, 1));
	self setgoalvolume(VOL);
	self ai::set_ignoreall(0);
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
	trigger::wait_till("lcombat_ambient_flyby", "targetname");
	jet = vehicle::simple_spawn_single_and_drive("flyby_lcombat_ambient1");
	level thread namespace_1d1d22be::function_5dcd1d9();
	level flag::wait_till("lcombat_flyby_shake");
	Earthquake(0.5, 3, jet.origin, 4000);
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
	level thread scene::Play("lcombat_hunter_event_anim", "targetname");
	wait(3);
	level scene::Play("lcombat_hunter_crash_trans", "targetname");
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
	trigger::use("redshirt_explode_event", "targetname");
	level flag::wait_till("player_really_landed");
	level thread namespace_1d1d22be::function_c3d203d6();
	var_cba21689 = struct::get("redshirt_explosion", "targetname");
	FX::Play("boss_explosion", var_cba21689.origin);
	RadiusDamage(var_cba21689.origin, 120, 1000, 1000, undefined, undefined);
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
	var_36e5f35c = vehicle::simple_spawn_single_and_drive("lcombat_amb_hunter");
	spawn_manager::enable("spawn_manager_amb_hack_zone02_6");
	level flag::wait_till("inside_aquifer");
	spawn_manager::disable("spawn_manager_amb_hack_zone02_6");
	if(isdefined(var_36e5f35c) && isalive(var_36e5f35c))
	{
		var_36e5f35c vehicle::kill_vehicle();
	}
	var_4e7924f6 = spawn_manager::get_ai("spawn_manager_amb_hack_zone02_6");
	foreach(guy in var_4e7924f6)
	{
		if(isdefined(guy) && isalive(guy))
		{
			guy kill();
			wait(RandomFloatRange(0.2, 0.8));
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
	level flag::wait_till("lcombat_vtol_flyin");
	level.var_bd9300b5 = vehicle::simple_spawn_single_and_drive("lcombat_dropoff_vtol");
	level.var_bd9300b5 waittill("reached_end_node");
	if(isdefined(level.var_bd9300b5))
	{
		level.var_bd9300b5 delete();
	}
	var_5f515cec = spawner::get_ai_group_ai("lcombat_enemy_vtol_riders");
	foreach(var_41c2a7ed in var_5f515cec)
	{
		if(isdefined(var_41c2a7ed) || isalive(var_41c2a7ed))
		{
			var_41c2a7ed delete();
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
	guys = spawner::get_ai_group_ai("rpg_guys_lcombat");
	foreach(guy in guys)
	{
		guy SetThreatBiasGroup("lcombat_air_attack");
	}
	setthreatbias("players_vtol", "lcombat_air_attack", 10000);
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
function function_255e711(guys)
{
	wait(1);
	if(isdefined(guys))
	{
		foreach(guy in guys)
		{
			if(isdefined(guy))
			{
				guy kill();
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
	level flag::wait_till("inside_aquifer");
	guys1 = spawn_manager::get_ai("spawn_manager_lcombat_trans_wave1");
	thread function_255e711(guys1);
	guys2 = spawn_manager::get_ai("spawn_manager_hack_zone02_4");
	thread function_255e711(guys2);
	guys3 = spawn_manager::get_ai("spawn_manager_hack_zone02_5");
	thread function_255e711(guys3);
	Shotgunners = spawner::get_ai_group_ai("lcombat_shotgun_guys");
	foreach(var_49396bcc in Shotgunners)
	{
		if(isdefined(var_49396bcc) || isalive(var_49396bcc))
		{
			var_49396bcc delete();
		}
	}
	foreach(guy in level.var_6657ee03)
	{
		if(isdefined(guy) || isalive(guy))
		{
			guy delete();
		}
	}
	var_1753830a = spawner::get_ai_group_ai("lcombat_ally_secondwave");
	foreach(backup in var_1753830a)
	{
		if(isdefined(backup) || isalive(backup))
		{
			backup delete();
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
	Wasps = spawner::get_ai_group_ai("lcombat_wasp_wave");
	foreach(wasp in Wasps)
	{
		if(isdefined(wasp) || isalive(wasp))
		{
			wasp kill();
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
function function_287ca2ad(State)
{
	top = GetEnt("hangar_umbra_top_door", "targetname");
	top ghost();
	top notsolid();
	side1 = GetEnt("hangar_umbra_sidedoor_1", "targetname");
	side1 ghost();
	side1 notsolid();
	side2 = GetEnt("hangar_umbra_sidedoor_2", "targetname");
	side2 ghost();
	side2 notsolid();
	function_bab1ff00("hangar_top_door", State);
	function_bab1ff00("hangar_sidedoor1", State);
	function_bab1ff00("hangar_sidedoor2", State);
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
	level.var_c37cadc1 SetNearGoalNotifyDist(120);
	level.var_c37cadc1 SetSpeed(75, 30, 30);
	level.var_c37cadc1 setyawspeed(59, 180, 180);
	level.var_c37cadc1 SetHoverParams(128, 35, 35);
	level.var_c37cadc1 ClearLookAtEnt();
	sT = struct::get(var_6c968618);
	level.var_c37cadc1.riders[0] ClearEnemy();
	level.var_c37cadc1 SetVehGoalPos(sT.origin, 1, 1);
	level waittill("hash_7e64f485");
	wait(1);
	level.var_c37cadc1.riders[0] delete();
	level.var_c37cadc1 delete();
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
function function_f3326322(tname)
{
	level waittill("hash_ac2ce9fc");
	wait(8);
	active = GetEntArray(tname, "targetname");
	foreach(veh in active)
	{
		veh delete();
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
	self endon("death");
	self endon("hash_ac2ce9fc");
	self.favoriteenemy = level.var_c37cadc1.riders[0];
	level.var_c37cadc1.riders[0].favorite_enemy = self;
	self SetNearGoalNotifyDist(512);
	self.favoriteenemy = level.var_c37cadc1.riders[0];
	self SetVehGoalPos(level.var_c37cadc1.riders[0].origin, 1, 1);
	self util::waittill_any_timeout(20, "near_goal", "goal");
	self ClearVehGoalPos();
	while(1)
	{
		if(!isdefined(self.enemy))
		{
			self.favoriteenemy = level.var_c37cadc1.riders[0];
			self SetVehGoalPos(level.var_c37cadc1.riders[0].origin, 1, 1);
			self util::waittill_any_timeout(20, "near_goal", "goal");
			self ClearVehGoalPos();
			self.favoriteenemy = level.var_c37cadc1.riders[0];
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
	self SetThreatBiasGroup("defend_hunters");
	setignoremegroup("players_ground", "defend_hunters");
	self.var_d3f57f67 = 1;
	self GetPerfectInfo(level.var_c37cadc1.riders[0], 1);
	self.favoriteenemy = level.var_c37cadc1.riders[0];
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
	tname = "hunter_exterior_auto1";
	vehicle::add_spawn_function(tname, &function_c386420b);
	thread function_f3326322(tname + "_vh");
	var_2f9ba9ba = GetEntArray(tname, "targetname");
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
			var_9b96cc44 = Array::random(var_2f9ba9ba);
			foreach(player in level.activePlayers)
			{
				if(player IsInVehicle())
				{
					str_tag = "tag_flash";
					var_8fe07f25 = player.var_8fedf36c;
				}
				else
				{
					str_tag = "tag_eye";
					var_8fe07f25 = player;
				}
				if(SightTracePassed(var_8fe07f25 GetTagOrigin(str_tag), var_9b96cc44.origin, 0, player))
				{
					var_736c8af = 0;
					break;
					continue;
				}
				var_736c8af = 1;
			}
			wait(0.05);
		}
		veh = vehicle::_vehicle_spawn(var_9b96cc44);
		veh.crashType = "explode";
		veh thread function_99b61785();
		veh waittill("death");
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
		level.var_c37cadc1 = vehicle::simple_spawn_single("vtol_hendricks_flysit");
		wait(1);
	}
	if(!isdefined(level.var_c37cadc1))
	{
		return;
	}
	level thread function_722dc186();
	base = [];
	for(sT = struct::get(var_6c968618 + base.size + 1); isdefined(sT);  = struct::get(var_6c968618 + base.size + 1))
	{
		base[base.size] = sT;
	}
	focus = GetEnt(var_6c968618 + "focus", "targetname");
	isRocketType = 1;
	if(isRocketType)
	{
		level.var_c37cadc1 SetVehWeapon(GetWeapon("vtol_fighter_player_missile_turret"));
		level.var_c37cadc1 turret::enable(1, 0);
		level.var_c37cadc1 turret::disable(0);
	}
	else
	{
		level.var_c37cadc1 SetVehWeapon(GetWeapon("vtol_fighter_player_turret"));
		level.var_c37cadc1 turret::enable(0, 0);
		level.var_c37cadc1 turret::disable(1);
	}
	level.var_c37cadc1 vehicle::god_on();
	level.var_c37cadc1.riders[0] util::magic_bullet_shield();
	level.var_c37cadc1 thread function_5b6daa1a(focus, isRocketType, var_a3a78823);
	var_e0ad81ed = 1;
	add = -1;
	level.var_c37cadc1 SetNearGoalNotifyDist(120);
	level.var_c37cadc1 SetSpeed(75, 30, 30);
	level.var_c37cadc1 setyawspeed(59, 180, 180);
	level.var_c37cadc1 SetHoverParams(128, 35, 35);
	goalpos = base[var_e0ad81ed].origin;
	goalYaw = base[var_e0ad81ed].angles[1];
	var_24223342 = level.var_c37cadc1.riders[0];
	var_24223342 ai::gun_remove();
	vtol = level.var_c37cadc1;
	vtol SetLookAtEnt(focus);
	while(isdefined(level.var_c37cadc1))
	{
		var_24223342 ClearEnemy();
		vtol SetVehGoalPos(goalpos, 1, 1);
		vtol util::waittill_any_timeout(15, "near_goal", "goal");
		var_e0ad81ed = var_e0ad81ed + add;
		if(var_e0ad81ed < 0 || var_e0ad81ed >= base.size)
		{
			add = add * -1;
			var_e0ad81ed = var_e0ad81ed + add * 2;
		}
		goalpos = base[var_e0ad81ed].origin;
		goalYaw = base[var_e0ad81ed].angles[1];
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
	self endon("death");
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
			var_6d4fe22b = AngleClamp180(VectorToAngles(self.var_bded8100.origin - self.origin)[0]);
			var_6d4fe22b = math::clamp(var_6d4fe22b, -30, 30);
		}
		if(Abs(var_6d4fe22b - self.var_51cc2ae) <= self.var_36c3df0c)
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
		self SetDefaultPitch(self.var_51cc2ae);
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
function function_5b6daa1a(focus, isRocketType, var_a3a78823)
{
	self endon("death");
	level endon("hash_96450f49");
	self.var_bded8100 = undefined;
	self thread function_9476c2d5();
	while(1)
	{
		enemy = focus;
		if(isdefined(self.enemy))
		{
			enemy = self.enemy;
			break;
		}
		if(isdefined(self.riders[0]) && isdefined(self.riders[0].enemy))
		{
			enemy = self.riders[0].enemy;
			break;
		}
		if(isdefined(self.riders[0].favoriteenemy))
		{
			enemy = self.riders[0].favoriteenemy;
			break;
		}
		ai_array = GetAITeamArray("axis");
		ai_array = ArraySortClosest(ai_array, self.origin, 15, 512, 10000);
		foreach(ai in ai_array)
		{
			if(!isdefined(ai))
			{
				continue;
			}
			if(var_a3a78823 && !isVehicle(ai))
			{
				continue;
			}
			if(self function_8b6935f4(ai))
			{
				enemy = ai;
				self.riders[0].favoriteenemy = enemy;
				break;
			}
			wait(0.05);
		}
		if(enemy == focus)
		{
			self.var_bded8100 = undefined;
			wait(0.5);
			continue;
		}
		self.var_bded8100 = enemy;
		self SetLookAtEnt(enemy);
		if(isRocketType)
		{
			self SetTurretTargetEnt(enemy, enemy.origin + VectorScale((0, 0, 1), 60));
		}
		else
		{
			self SetTurretTargetEnt(enemy, enemy.origin + VectorScale((0, 0, 1), 60));
		}
		wait(0.4);
		if(isdefined(enemy))
		{
			if(isRocketType)
			{
				for(i = 0; i < 2 && isdefined(enemy); i++)
				{
					thread namespace_84eb777e::function_6a7fa9c7(GetWeapon("vtol_fighter_player_missile_turret"));
					self FireWeapon(0, enemy);
					fired = 1;
					wait(0.25);
				}
			}
			else
			{
				self vehicle_ai::fire_for_time(RandomFloatRange(0.3, 0.6));
			}
		}
		if(isRocketType)
		{
			if(isdefined(enemy) && isai(enemy))
			{
				wait(RandomFloatRange(1, 2));
			}
			else
			{
				wait(RandomFloatRange(3, 5));
			}
		}
		else if(isdefined(enemy) && isai(enemy))
		{
			wait(RandomFloatRange(2, 2.5));
		}
		else
		{
			wait(RandomFloatRange(0.5, 1.5));
		}
		wait(0.4);
		if(!self function_8b6935f4(enemy))
		{
			self.riders[0] ClearEnemy();
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
function function_8b6935f4(ai)
{
	if(!isdefined(ai))
	{
		return 0;
	}
	dot = get_dot(self.origin, self.angles, ai.origin);
	if(dot >= 0.7)
	{
		if(SightTracePassed(self.riders[0].origin + VectorScale((0, 0, 1), 150), ai.origin + VectorScale((0, 0, 1), 72), 0, ai))
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
function function_11b961b7(params)
{
	self endon("death");
	self endon("change_state");
	self SetBrake(1);
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
function function_197eec5b(tank)
{
	if(!isdefined(level.var_be665c))
	{
		level.var_be665c = [];
	}
	level.var_be665c[level.var_be665c.size] = tank;
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
function function_16288b69(count)
{
	level.var_c43e24b3 = level.var_c43e24b3 + count;
	wait(5);
	level.var_c43e24b3 = level.var_c43e24b3 - count;
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
		var_ce455ef1 = max(1, level.players.size / 2);
		level.var_c9b8441d = Int(level.var_c9b8441d / var_ce455ef1);
		level.var_be665c = Array::remove_dead(level.var_be665c);
		foreach(tank in level.var_be665c)
		{
			if(isalive(tank) && level.var_c43e24b3 < level.var_c9b8441d)
			{
				var_70792a26 = level.var_c9b8441d - level.var_c43e24b3;
				shots_fired = tank function_9ab6fc55(min(3, var_70792a26), min(6, var_70792a26));
				if(shots_fired > 0)
				{
					thread function_16288b69(shots_fired);
				}
			}
			wait(0.25);
		}
		wait(5);
	}
	done = 1;
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
	self endon("death");
	self endon("end_attack_thread");
	self endon("change_state");
	self notify("hash_97c91db2");
	self endon("hash_97c91db2");
	missile_speed = 2900;
	while(1)
	{
		if(!isdefined(self.enemy))
		{
			wait(0.3);
			continue;
		}
		target = self.enemy;
		if(isdefined(self.enemy.var_8fedf36c))
		{
			target = self.enemy.var_8fedf36c;
		}
		to = target.origin - self.origin + VectorScale((0, 0, 1), 72);
		dist = length(to);
		travel_time = dist / missile_speed;
		vel = target GetVelocity();
		aim_org = target.origin + vel * travel_time;
		/#
		#/
		self SetTurretTargetVec(aim_org);
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
function function_9ab6fc55(var_5fe70955, max_missiles)
{
	self endon("death");
	self endon("end_attack_thread");
	self vehicle::toggle_ambient_anim_group(2, 0);
	self thread function_a330eeec();
	fired = 0;
	var_85596fc1 = 0;
	useJavelin = 0;
	if(isdefined(self.enemy) && vehicle_ai::IsCooldownReady("rocket_launcher", 0.1))
	{
		var_30e3f243 = Distance2DSquared(self.origin, self.enemy.origin);
		if(var_30e3f243 > 64000000)
		{
			return 0;
		}
		self vehicle::toggle_ambient_anim_group(2, 1);
		if(max_missiles > var_5fe70955)
		{
			var_85596fc1 = randomIntRange(Int(var_5fe70955), Int(max_missiles));
		}
		else
		{
			var_85596fc1 = max_missiles;
		}
		if(!useJavelin)
		{
			self SetVehWeapon(GetWeapon("quadtank_main_turret_rocketpods_straight_homing"));
		}
		else
		{
			var_85596fc1 = 2;
			self playsound("veh_quadtank_mlrs_plant_start");
			self SetVehWeapon(GetWeapon("quadtank_main_turret_rocketpods_javelin"));
		}
		if(isdefined(self.enemy) && !isPlayer(self.enemy))
		{
			var_85596fc1 = 1;
		}
		if(isdefined(self.enemy) && var_30e3f243 > 350 * 350)
		{
			fired = 0;
			for(i = 0; i < var_85596fc1 && isdefined(self.enemy); i++)
			{
				if(useJavelin)
				{
					offset = (0, 0, 0);
					self thread vehicle_ai::Javelin_LoseTargetAtRightTime(self.enemy);
					self thread quadtank::javeline_incoming(GetWeapon("quadtank_main_turret_rocketpods_javelin"));
					if(isVehicle(self.enemy))
					{
						offset = self.enemy GetTagOrigin("tag_body") - self.enemy.origin;
					}
					self FireWeapon(0, self.enemy, offset);
				}
				else
				{
					self thread function_b7aaca29(GetWeapon("quadtank_main_turret_rocketpods_straight_homing"));
					self FireWeapon(0);
				}
				fired = 1;
			}
			if(fired)
			{
				Cooldown = 12;
				if(isdefined(self.enemy))
				{
					dot = get_dot(self.enemy.origin, self.enemy.angles, self.origin);
					if(dot > 0.9)
					{
						Cooldown = 4;
					}
					else if(dot > 0.5)
					{
						Cooldown = 6;
					}
				}
				vehicle_ai::Cooldown("rocket_launcher", Cooldown);
				if(useJavelin)
				{
					vehicle_ai::Cooldown("javelin_rocket_launcher", 20);
				}
			}
		}
		self vehicle::toggle_ambient_anim_group(2, 0);
	}
	if(fired)
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
function function_b7aaca29(projectile)
{
	self endon("entityshutdown");
	self endon("death");
	self waittill("weapon_fired", projectile);
	wait(0.75);
	if(isdefined(projectile))
	{
		offset = (0, 0, 0);
		if(isVehicle(self.enemy))
		{
			offset = self.enemy GetTagOrigin("tag_body") - self.enemy.origin;
		}
		projectile Missile_SetTarget(self.enemy, offset);
	}
	wait(4);
	if(isdefined(projectile))
	{
		projectile delete();
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
function function_c897523d(active)
{
	respawners = [];
	respawners[respawners.size] = "respawn_ext_water_room";
	respawners[respawners.size] = "respawn_in_water_room";
	respawners[respawners.size] = "respawn_in_data_center";
	respawners[respawners.size] = "respawn_water_room";
	respawners[respawners.size] = "respawn_lcombat";
	respawners[respawners.size] = "respawn_right_hack";
	respawners[respawners.size] = "respawn_left_hack";
	if(!isdefined(active))
	{
		active = "none";
	}
	for(i = 0; i < respawners.size; i++)
	{
		spawners = GetEntArray(respawners[i], "script_noteworthy", 1);
		spawners = struct::get_array(respawners[i], "script_noteworthy");
		if(spawners.size == 0)
		{
			break;
		}
		if(respawners[i] == active)
		{
			foreach(spawner in spawners)
			{
				spawner spawnlogic::function_82c857e9(0);
			}
			break;
		}
		foreach(spawner in spawners)
		{
			spawner spawnlogic::function_82c857e9(1);
		}
	}
}

/*
	Name: get_dot
	Namespace: namespace_786319bb
	Checksum: 0x9079C448
	Offset: 0x132E8
	Size: 0x93
	Parameters: 3
	Flags: None
*/
function get_dot(start_origin, start_angles, end_origin)
{
	normal = VectorNormalize(end_origin - start_origin);
	FORWARD = AnglesToForward(start_angles);
	dot = VectorDot(FORWARD, normal);
	return dot;
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
function function_8bf8a765(Hide)
{
	if(!isdefined(Hide))
	{
		Hide = 1;
	}
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_8fedf36c))
		{
			if(Hide)
			{
				player.var_8fedf36c ghost();
				continue;
			}
			player.var_8fedf36c show();
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
function function_89eaa1b3(time)
{
	self endon("disconnect");
	self clientfield::set_to_player("hijack_static_effect", 1);
	wait(time);
	self clientfield::set_to_player("hijack_static_effect", 0);
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
		self endon("death");
		var_26e9bfb = 120;
		while(1)
		{
			var_26e9bfb = self GetSpeedMPH();
			color = (1, 1, 1);
			SIZE = 12;
			speed = function_863ee84(self GetVelocity());
			if(speed < var_26e9bfb - 10)
			{
				color = (0, 0, 1);
			}
			else if(speed > var_26e9bfb + 10)
			{
				color = (1, 0, 0);
			}
			else
			{
				SIZE = 6;
			}
			print3d(self.origin + VectorScale((0, 0, 1), 400), var_26e9bfb, (1, 1, 1), 1, 6);
			print3d(self.origin + VectorScale((0, 0, 1), 120), speed, color, 1, SIZE);
			wait(0.05);
		}
	#/
}


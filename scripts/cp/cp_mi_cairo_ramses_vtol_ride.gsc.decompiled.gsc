#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_ramses_fx;
#using scripts\cp\cp_mi_cairo_ramses_sound;
#using scripts\cp\cp_mi_cairo_ramses_station_fight;
#using scripts\cp\cp_mi_cairo_ramses_station_walk;
#using scripts\cp\cp_mi_cairo_ramses_utility;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\compass;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_80a43443;

/*
	Name: function_c35e6aab
	Namespace: namespace_80a43443
	Checksum: 0x8BDFF98D
	Offset: 0x1940
	Size: 0x16B
	Parameters: 2
	Flags: None
*/
function function_c35e6aab(var_b04bc952, var_74cd64bc)
{
	function_51a2f97e();
	namespace_84970cc4::function_966ecb29(function_99201f25("ammo_cache", "script_noteworthy"), &namespace_16f9ecd3::function_e228c18a, 1);
	level.var_c1aa5253["vtol_thruster"] = "vehicle/fx_vtol_thruster_vista";
	namespace_76d95162::function_d9f49fba(0, "bc");
	namespace_2f06d687::function_2b37a3c9("staging_area_jumpdirect_guy01", "targetname", &function_163908b8);
	namespace_2f06d687::function_2b37a3c9("staging_area_allies", "script_string", &function_d61ac79f);
	namespace_96fa87af::function_7ea92662("veh_bo3_mil_vtol", &function_b946efd6);
	function_9520a3b9(var_b04bc952, var_74cd64bc);
	function_d290ebfa();
	namespace_1d795d47::function_be8adfb8("vtol_ride");
}

/*
	Name: function_51a2f97e
	Namespace: namespace_80a43443
	Checksum: 0x996E0F23
	Offset: 0x1AB8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_51a2f97e()
{
	level namespace_ad23e503::function_c35e6aab("jumpdirect_loops_started");
	level namespace_ad23e503::function_c35e6aab("jumpdirect_scene_done");
	level namespace_ad23e503::function_c35e6aab("staging_area_enter_started");
	level namespace_ad23e503::function_c35e6aab("trucks_ready");
	level namespace_ad23e503::function_c35e6aab("heroes_start_truck_anims");
	level namespace_ad23e503::function_c35e6aab("player_enter_hero_truck_started");
	level namespace_ad23e503::function_c35e6aab("players_ready");
	level namespace_ad23e503::function_c35e6aab("vtol_ride_players_in_position");
	level namespace_ad23e503::function_c35e6aab("vtol_ride_temp_probe_linked");
}

/*
	Name: function_9520a3b9
	Namespace: namespace_80a43443
	Checksum: 0xA9A36198
	Offset: 0x1BE8
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_9520a3b9(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_7434c6b7::function_bbd12ed2(0);
		namespace_80983c42::function_80983c42("fx_exploder_vtol_crash");
		namespace_bedc6a60::function_6327cae3();
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_lotus_towers_hunters_swarm_bundle");
	}
	level thread function_4492caaa();
	namespace_80983c42::function_80983c42("fx_exploder_staging_area_mortars");
	function_e29f0dd6(var_b04bc952, var_74cd64bc);
	function_f87b2c29(var_74cd64bc);
}

/*
	Name: function_355070e1
	Namespace: namespace_80a43443
	Checksum: 0x6F0A2D59
	Offset: 0x1CE0
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_355070e1(var_b04bc952, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level namespace_ad23e503::function_74d6b22f("vtol_ride_done");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_80a43443
	Checksum: 0x50093671
	Offset: 0x1D30
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	level namespace_ad23e503::function_74d6b22f("vtol_ride_event_started");
	level.var_e32d239b = 0;
	level.var_6b2d0ae6 = 0;
	level thread function_d0ef8521();
	level thread function_f25b564e();
	level thread function_8d753d94();
	function_e8e62f90();
	level notify("hash_f8453165");
	level.var_e32d239b = undefined;
	level.var_6b2d0ae6 = undefined;
}

/*
	Name: function_e29f0dd6
	Namespace: namespace_80a43443
	Checksum: 0x3BFDB7E2
	Offset: 0x1DF0
	Size: 0x173
	Parameters: 2
	Flags: None
*/
function function_e29f0dd6(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
	}
	level.var_2fd26037 namespace_6f7b2095::function_54bdb053();
	level.var_9db406db namespace_6f7b2095::function_54bdb053();
	level.var_2fd26037.var_7dfaf62 = 64;
	level.var_9db406db.var_7dfaf62 = 64;
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("disablesprint", 1);
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
	level.var_9db406db namespace_d84e54db::function_ceb883cd("disablesprint", 1);
	level.var_9db406db namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
}

/*
	Name: function_f87b2c29
	Namespace: namespace_80a43443
	Checksum: 0x58503A18
	Offset: 0x1F70
	Size: 0x3B3
	Parameters: 1
	Flags: None
*/
function function_f87b2c29(var_74cd64bc)
{
	if(var_74cd64bc)
	{
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_station_ceiling_vtol_bundle");
		level namespace_cc27597::function_5c143f59("p7_fxanim_cp_ramses_station_ceiling_vtol_crashed_bundle");
		level namespace_cc27597::function_c35e6aab("p_ramses_lift_wing_blockage");
		level thread namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks");
		level thread namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil");
		level notify("hash_1ca7165");
		level notify("hash_77815dc");
		namespace_80983c42::function_80983c42("vtol_crash");
		namespace_80983c42::function_80983c42("fx_exploder_station_ambient_post_collapse");
		namespace_80983c42::function_80983c42("fx_exploder_dropship_hits_floor");
		namespace_80983c42::function_80983c42("fx_exploder_dropship_through_ceiling");
		namespace_80983c42::function_80983c42("fx_exploder_dropship_hits_column");
		namespace_80983c42::function_80983c42("fx_exploder_dropship_through_ceiling_02");
		namespace_80983c42::function_80983c42("fx_exploder_dropship_through_ceiling_03");
		level thread namespace_bedc6a60::function_e4e450c1();
		var_673a4bf = function_99201f25("station_ceiling_pristine", "targetname");
		foreach(var_fd7c985 in var_673a4bf)
		{
			var_fd7c985 function_dc8c8404();
		}
		var_2f5160f4 = function_99201f25("roof_hole_blocker", "targetname");
		foreach(var_4c225fa1 in var_2f5160f4)
		{
			var_4c225fa1 function_50ccee8d();
		}
		level namespace_82b91a51::function_d8eaed3d(3, 1);
		namespace_d7916d65::function_a2995f22(1);
		namespace_bedc6a60::function_eede49df();
		namespace_bedc6a60::function_c5b9bd41("_combat");
		namespace_bedc6a60::function_14b2c542();
		namespace_391e4301::function_e950228a();
		level namespace_ad23e503::function_74d6b22f("ceiling_collapse_complete");
		level notify("hash_eae489c0");
		level notify("hash_d758e82");
		level thread namespace_bedc6a60::function_1d0e7c11();
	}
}

/*
	Name: function_b946efd6
	Namespace: namespace_80a43443
	Checksum: 0xCCFB315B
	Offset: 0x2330
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_b946efd6()
{
	namespace_82b91a51::function_76f13293();
	function_da6acfd2(level.var_c1aa5253["vtol_thruster"], self, "tag_fx_engine_left");
	function_da6acfd2(level.var_c1aa5253["vtol_thruster"], self, "tag_fx_engine_right");
	self namespace_96fa87af::function_42496438(0);
}

/*
	Name: function_d61ac79f
	Namespace: namespace_80a43443
	Checksum: 0x12F265B8
	Offset: 0x23C8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_d61ac79f()
{
	self.var_7dfaf62 = 64;
	self namespace_d84e54db::function_b4f5e3b9(1);
	self namespace_d84e54db::function_c9e45d52(1);
	self namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	self namespace_d84e54db::function_ceb883cd("disablesprint", 1);
	self namespace_d84e54db::function_ceb883cd("vignette_mode", "slow");
	if(self.var_caae374e === "does_walk")
	{
		self namespace_d84e54db::function_ceb883cd("patrol", 1);
	}
}

/*
	Name: function_e8e62f90
	Namespace: namespace_80a43443
	Checksum: 0x15CF88E0
	Offset: 0x24B8
	Size: 0x21B
	Parameters: 0
	Flags: None
*/
function function_e8e62f90()
{
	level thread function_b7170f9e("staging_area_background_vtol", 3);
	function_4199310b();
	function_719a5145();
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_protect_salim");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_eastern_checkpoint");
	function_bb173a03();
	namespace_dabbe128::function_356a4ee1(&function_9778ae44);
	namespace_dabbe128::function_356a4ee1(&namespace_391e4301::function_c3080ff8);
	level.var_2395e945 function_9778ae44();
	level thread function_8ec9bf83();
	level thread function_4e3398e0();
	namespace_2f06d687::function_22356ba7("staging_area_background_technical_01", &function_226410e6);
	level namespace_ad23e503::function_1ab5ebec("trucks_ready");
	namespace_d0ef8521::function_74d6b22f("cp_level_ramses_board");
	namespace_4dbf3ae3::function_1ab5ebec("staging_area_enter_trig");
	level thread function_b7170f9e("staging_area_overhead_vtol", 3);
	level namespace_ad23e503::function_1ab5ebec("players_ready");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_board");
	level notify("hash_e99a85b4");
	level namespace_82b91a51::function_ef3f75eb("sndLevelEnd");
	namespace_82b91a51::function_7e61de2b(2);
}

/*
	Name: function_719a5145
	Namespace: namespace_80a43443
	Checksum: 0x99B9738D
	Offset: 0x26E0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_719a5145()
{
	level endon("hash_ddf95d21");
	level thread function_d3b86c9f(10);
	level thread function_637a00da();
	level thread function_5813f4ec();
	level namespace_ad23e503::function_1ab5ebec("jumpdirect_loops_started");
	level namespace_ad23e503::function_1ab5ebec("hendricks_jumpdirect_looping");
	level namespace_ad23e503::function_1ab5ebec("khalil_jumpdirect_looping");
}

/*
	Name: function_d3b86c9f
	Namespace: namespace_80a43443
	Checksum: 0x20C2E3B1
	Offset: 0x27A0
	Size: 0x1D
	Parameters: 1
	Flags: None
*/
function function_d3b86c9f(var_3eac426f)
{
	wait(var_3eac426f);
	level notify("hash_ddf95d21");
}

/*
	Name: function_637a00da
	Namespace: namespace_80a43443
	Checksum: 0xCAA31CEA
	Offset: 0x27C8
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_637a00da()
{
	level waittill("hash_1910f11d");
	level namespace_ad23e503::function_74d6b22f("hendricks_jumpdirect_looping");
}

/*
	Name: function_5813f4ec
	Namespace: namespace_80a43443
	Checksum: 0xEDF659BF
	Offset: 0x2800
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_5813f4ec()
{
	level waittill("hash_2cca5b8f");
	level namespace_ad23e503::function_74d6b22f("khalil_jumpdirect_looping");
}

/*
	Name: function_4e3398e0
	Namespace: namespace_80a43443
	Checksum: 0x926CE03F
	Offset: 0x2838
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_4e3398e0()
{
	level waittill("hash_585a73e3");
	namespace_dabbe128::function_a0ac4434(&function_9778ae44);
	namespace_dabbe128::function_356a4ee1(&function_a10d0d8a);
	level.var_2395e945 function_81f6093f();
	foreach(var_5dc5e20a in level.var_2395e945)
	{
		var_5dc5e20a function_ed04153c(1);
		var_5dc5e20a function_7c34e9c7(0);
	}
}

/*
	Name: function_a10d0d8a
	Namespace: namespace_80a43443
	Checksum: 0xD286D22F
	Offset: 0x2958
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_a10d0d8a()
{
	self function_ed04153c(1);
	self function_7c34e9c7(0);
}

/*
	Name: function_9778ae44
	Namespace: namespace_80a43443
	Checksum: 0x2E5851E5
	Offset: 0x2998
	Size: 0xF1
	Parameters: 1
	Flags: None
*/
function function_9778ae44(var_d9cd2a00)
{
	if(!isdefined(var_d9cd2a00))
	{
		var_d9cd2a00 = 0.4;
	}
	if(function_6e2770d8(self))
	{
		var_9be07199 = self;
	}
	else
	{
		var_9be07199 = function_84970cc4(self);
	}
	foreach(var_6bfe1586 in var_9be07199)
	{
		var_6bfe1586 thread function_bfaa9238(var_d9cd2a00);
	}
}

/*
	Name: function_bfaa9238
	Namespace: namespace_80a43443
	Checksum: 0x4C4469A0
	Offset: 0x2A98
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_bfaa9238(var_d9cd2a00)
{
	if(!isdefined(var_d9cd2a00))
	{
		var_d9cd2a00 = 0.4;
	}
	self endon("hash_fc969024");
	self endon("hash_128f8789");
	namespace_4dbf3ae3::function_1ab5ebec("trig_start_station_exit_tether", "targetname", self);
	self thread namespace_391e4301::function_24b86d60(level.var_9db406db, "stop_tether", 72, 144, var_d9cd2a00, 1, 66);
	self thread namespace_391e4301::function_c3080ff8();
}

/*
	Name: function_81f6093f
	Namespace: namespace_80a43443
	Checksum: 0xBD94D847
	Offset: 0x2B50
	Size: 0x151
	Parameters: 0
	Flags: None
*/
function function_81f6093f()
{
	if(function_6e2770d8(self))
	{
		var_9be07199 = self;
	}
	else
	{
		var_9be07199 = function_84970cc4(self);
	}
	foreach(var_6bfe1586 in var_9be07199)
	{
		var_6bfe1586 notify("hash_fc969024");
	}
	wait(0.05);
	foreach(var_6bfe1586 in var_9be07199)
	{
		var_6bfe1586 function_5a7dd25d(1);
	}
}

/*
	Name: function_20a0583c
	Namespace: namespace_80a43443
	Checksum: 0x46F65105
	Offset: 0x2CB0
	Size: 0x2AF
	Parameters: 4
	Flags: None
*/
function function_20a0583c(var_d0d78bd6, var_14edd77e, var_7e13c74c, var_20c5aada)
{
	if(!isdefined(var_7e13c74c))
	{
		var_7e13c74c = 2;
	}
	if(!isdefined(var_20c5aada))
	{
		var_20c5aada = 3;
	}
	var_b53abf06 = 0;
	var_89e465d0 = 64;
	var_c6eac35a = 96;
	while(var_b53abf06 < var_d0d78bd6)
	{
		var_65184ffa = namespace_2f06d687::function_22356ba7(namespace_84970cc4::function_47d18840(var_14edd77e));
		var_b53abf06++;
		foreach(var_d84e54db in var_65184ffa)
		{
			var_d84e54db.var_7dfaf62 = function_dc99997a(var_89e465d0, var_c6eac35a);
			if(function_26299103(100) < 30)
			{
				var_d84e54db namespace_d84e54db::function_ceb883cd("sprint", 1);
			}
			if(function_26299103(100) < 25)
			{
				var_1c4260d1 = function_9b7fda5e("script_origin", var_d84e54db.var_722885f3);
				var_1c4260d1 function_37f7858a(var_d84e54db);
				var_1c4260d1 function_c2931a36("amb_walla_battlechatter", 1);
				var_d84e54db thread function_587c5a03(var_1c4260d1);
			}
		}
		if(var_b53abf06 == 1)
		{
			var_7000f414 = namespace_84970cc4::function_47d18840(var_65184ffa);
			if(isdefined(var_7000f414))
			{
				var_7000f414 thread function_b8a391f4();
			}
		}
		wait(function_dc99997a(var_7e13c74c, var_20c5aada));
	}
}

/*
	Name: function_587c5a03
	Namespace: namespace_80a43443
	Checksum: 0x4410BE52
	Offset: 0x2F68
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_587c5a03(var_1c4260d1)
{
	self waittill("hash_128f8789");
	var_1c4260d1 function_dc8c8404();
}

/*
	Name: function_28cbacfb
	Namespace: namespace_80a43443
	Checksum: 0x8853AA29
	Offset: 0x2FA0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_28cbacfb()
{
	var_300210d5 = function_99201f25("staging_area_sidewalk_guys_left", "targetname");
	var_abb4d038 = function_99201f25("staging_area_sidewalk_guys_right", "targetname");
	var_d0d78bd6 = 4;
	var_6e3117c = 6;
	level thread function_20a0583c(var_d0d78bd6, var_300210d5, 3, 6);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
	wait(var_6e3117c);
	level namespace_ad23e503::function_1ab5ebec("trucks_ready");
	namespace_4dbf3ae3::function_4ab4cb6(var_6e3117c, "staging_area_enter_trig", "targetname");
	level thread function_20a0583c(var_d0d78bd6, var_300210d5);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038);
}

/*
	Name: function_749a5dc9
	Namespace: namespace_80a43443
	Checksum: 0x72BB0DC5
	Offset: 0x3108
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_749a5dc9()
{
	var_300210d5 = function_99201f25("staging_area_background_runners_left", "targetname");
	var_abb4d038 = function_99201f25("staging_area_background_runners_right", "targetname");
	var_d0d78bd6 = 3;
	var_6e3117c = 10;
	level thread function_20a0583c(var_d0d78bd6, var_300210d5, 3, 6);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
	wait(var_6e3117c);
	level thread function_20a0583c(var_d0d78bd6, var_300210d5, 3, 6);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
}

/*
	Name: function_7bac890d
	Namespace: namespace_80a43443
	Checksum: 0xB4C7D244
	Offset: 0x3238
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_7bac890d()
{
	var_abb4d038 = function_99201f25("staging_area_background_runners2", "targetname");
	var_d0d78bd6 = 3;
	var_6e3117c = 10;
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
	wait(var_6e3117c);
	level thread function_20a0583c(var_d0d78bd6, var_abb4d038, 3, 6);
}

/*
	Name: function_ae408b2c
	Namespace: namespace_80a43443
	Checksum: 0x5317EA4E
	Offset: 0x32E8
	Size: 0x177
	Parameters: 0
	Flags: None
*/
function function_ae408b2c()
{
	var_ddb0d40f = 36;
	while(1)
	{
		if(function_c20c2e8().size < var_ddb0d40f)
		{
			level thread function_28cbacfb();
		}
		level namespace_ad23e503::function_1ab5ebec("trucks_ready");
		var_f877f15f = 7;
		var_44179775 = 11;
		wait(function_dc99997a(var_f877f15f, var_44179775));
		if(function_c20c2e8().size < var_ddb0d40f)
		{
			level thread function_749a5dc9();
		}
		var_f877f15f = 11;
		var_44179775 = 13;
		wait(function_dc99997a(var_f877f15f, var_44179775));
		if(function_c20c2e8().size < var_ddb0d40f)
		{
			level thread function_7bac890d();
		}
		var_f877f15f = 10;
		var_44179775 = 14;
		wait(function_dc99997a(var_f877f15f, var_44179775));
	}
}

/*
	Name: function_bb173a03
	Namespace: namespace_80a43443
	Checksum: 0x58A43413
	Offset: 0x3468
	Size: 0x1CB
	Parameters: 0
	Flags: None
*/
function function_bb173a03()
{
	var_e59c9ae3 = namespace_14b42b8a::function_7922262b("ramses_station_exit_obj", "targetname");
	var_aa79ca36 = function_9b7fda5e("trigger_radius_use", var_e59c9ae3.var_722885f3, 0, 50, 64);
	var_aa79ca36 function_1d5013fa();
	var_aa79ca36 function_bb863f19();
	var_aa79ca36 function_dc378587("none");
	var_2661661a = namespace_82b91a51::function_14518e76(var_aa79ca36, &"cp_level_ramses_exit_station", &"CP_MI_CAIRO_RAMSES_MOVE_ASIDE", &function_9b7c2788);
	var_2661661a waittill("hash_c2b847e5");
	if(isdefined(level.var_71d5e545))
	{
		level thread [[level.var_71d5e545]]();
	}
	level namespace_ad23e503::function_74d6b22f("station_exit_removed");
	var_4c225fa1 = function_6ada35ba(var_e59c9ae3.var_b07228b6, "targetname");
	var_4c225fa1 function_dc8c8404();
	var_2661661a namespace_a230c2b1::function_e54c54c3();
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_exit_station");
}

/*
	Name: function_8ec9bf83
	Namespace: namespace_80a43443
	Checksum: 0xA5562C17
	Offset: 0x3640
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_8ec9bf83()
{
	level endon("hash_e99a85b4");
	var_c4a1b346 = function_6ada35ba("staging_area_ai_cleanup_aitrig", "targetname");
	while(1)
	{
		var_c4a1b346 waittill("hash_4dbf3ae3", var_74df00be);
		if(function_e70ab977(var_74df00be))
		{
			var_74df00be function_dc8c8404();
		}
	}
}

/*
	Name: function_5cb0e184
	Namespace: namespace_80a43443
	Checksum: 0x3EA2B140
	Offset: 0x36D8
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_5cb0e184()
{
	var_3b0df191 = 0;
	var_cbb15570 = "";
	foreach(var_8339cb0d in self)
	{
		if(var_cbb15570 != var_8339cb0d.var_170527fb)
		{
			var_3b0df191++;
		}
		var_cbb15570 = var_8339cb0d.var_170527fb;
	}
	return var_3b0df191;
}

/*
	Name: function_7f4396ab
	Namespace: namespace_80a43443
	Checksum: 0xAD321806
	Offset: 0x37A8
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_7f4396ab(var_4b5be224)
{
	var_186e2482 = [];
	for(var_c957f6b6 = 1; var_c957f6b6 < var_4b5be224 + 1; var_c957f6b6++)
	{
		var_a1235c6c = function_d35375b8("staging_area_background_runners" + var_c957f6b6, "targetname");
		if(!isdefined(var_186e2482))
		{
			var_186e2482 = [];
		}
		else if(!function_6e2770d8(var_186e2482))
		{
			var_186e2482 = function_84970cc4(var_186e2482);
		}
		var_186e2482[var_186e2482.size] = var_a1235c6c;
	}
	return var_186e2482;
}

/*
	Name: function_49a7f92a
	Namespace: namespace_80a43443
	Checksum: 0x53B8F877
	Offset: 0x3890
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_49a7f92a(var_6c5c89e1)
{
	var_9de10fe3 = function_b4cb3503(var_6c5c89e1, "targetname");
	self function_169cc712(var_9de10fe3, 1);
	self waittill("hash_41d1aaf0");
	self function_e11ce512();
}

/*
	Name: function_4199310b
	Namespace: namespace_80a43443
	Checksum: 0xFEC243FD
	Offset: 0x3910
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_4199310b()
{
	var_dfac08c2 = namespace_14b42b8a::function_7faf4c39("vtol_ride_staging_area_prop_spots", "script_noteworthy");
	foreach(var_d8e7bbc in var_dfac08c2)
	{
		var_6be11642 = namespace_82b91a51::function_b9fd52a4(var_d8e7bbc.var_6df9264, var_d8e7bbc.var_722885f3, var_d8e7bbc.var_6ab6f4fd);
		var_6be11642.var_170527fb = var_d8e7bbc.var_170527fb;
		var_6be11642.var_ff1f6868 = "vtol_ride";
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_80a43443
	Namespace: namespace_80a43443
	Checksum: 0x1BB52F6E
	Offset: 0x3A40
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_80a43443()
{
	var_6e02a600 = function_99201f25("vtol_ride_trig", "script_noteworthy");
	level waittill("hash_3d44865d");
	var_6e02a600 function_37af8a07("_ready");
	var_6e02a600 function_9b92c048("_ready");
	level namespace_ad23e503::function_74d6b22f("vtol_ride_started");
	level thread function_6c678d00();
	level namespace_ad23e503::function_1ab5ebec("mobile_wall_fxanim_start");
	level namespace_ad23e503::function_74d6b22f("dead_turret_stop_station_ambients");
}

/*
	Name: function_6c678d00
	Namespace: namespace_80a43443
	Checksum: 0x21B3317C
	Offset: 0x3B40
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6c678d00()
{
	level thread function_8dfea4a5();
	level thread function_58382ac0();
	level thread function_aa774b42();
}

/*
	Name: function_8dfea4a5
	Namespace: namespace_80a43443
	Checksum: 0xBC6D5481
	Offset: 0x3B98
	Size: 0x46B
	Parameters: 0
	Flags: None
*/
function function_8dfea4a5()
{
	var_48964153 = [];
	foreach(var_76bcdea7 in level.var_9657b09b)
	{
		if(isdefined(var_76bcdea7.var_8202763a) && var_76bcdea7.var_8202763a == 1)
		{
			var_48964153[var_48964153.size] = var_76bcdea7;
		}
	}
	var_bbfd71d6 = function_243bb261("spawn_amb_vtol_1", "script_noteworthy");
	var_bbfd71d6 waittill("hash_4dbf3ae3");
	var_299edd3a = function_99201f25("amb_vtol_quads", "targetname");
	var_ed1d84d = function_243bb261("vtol_1_crash_node", "script_noteworthy");
	var_6300e38d = namespace_82b91a51::function_b9fd52a4("script_origin", var_ed1d84d.var_722885f3, var_ed1d84d.var_6ab6f4fd);
	var_6300e38d function_8c1f7070();
	foreach(var_76bcdea7 in var_48964153)
	{
		var_76bcdea7 namespace_37b990db::function_16045f9d(var_6300e38d, undefined, 0);
	}
	var_ed1d84d waittill("hash_4dbf3ae3");
	foreach(var_76bcdea7 in var_48964153)
	{
		var_76bcdea7 thread namespace_37b990db::function_afb82faf(4, 0);
	}
	var_34d452b6 = function_243bb261("vtol_2_crash_node", "script_noteworthy");
	var_6300e38d = namespace_82b91a51::function_b9fd52a4("script_origin", var_34d452b6.var_722885f3, var_34d452b6.var_6ab6f4fd);
	var_6300e38d function_8c1f7070();
	foreach(var_76bcdea7 in var_48964153)
	{
		var_76bcdea7 namespace_37b990db::function_16045f9d(var_6300e38d, undefined, 0);
	}
	var_34d452b6 waittill("hash_4dbf3ae3");
	foreach(var_76bcdea7 in var_48964153)
	{
		var_76bcdea7 thread namespace_37b990db::function_afb82faf(4, 0);
	}
	var_6300e38d function_dc8c8404();
}

/*
	Name: function_58382ac0
	Namespace: namespace_80a43443
	Checksum: 0xB330E96A
	Offset: 0x4010
	Size: 0x3FB
	Parameters: 0
	Flags: None
*/
function function_58382ac0()
{
	var_48964153 = [];
	foreach(var_76bcdea7 in level.var_9657b09b)
	{
		if(isdefined(var_76bcdea7.var_8202763a) && var_76bcdea7.var_8202763a == 0)
		{
			var_48964153[var_48964153.size] = var_76bcdea7;
		}
	}
	var_1969a71e = function_243bb261("vtol_3_crash_node", "script_noteworthy");
	var_6300e38d = namespace_82b91a51::function_b9fd52a4("script_origin", var_1969a71e.var_722885f3, var_1969a71e.var_6ab6f4fd);
	var_6300e38d function_8c1f7070();
	foreach(var_76bcdea7 in var_48964153)
	{
		var_76bcdea7 namespace_37b990db::function_16045f9d(var_6300e38d, undefined, 0);
	}
	var_1969a71e waittill("hash_4dbf3ae3");
	foreach(var_76bcdea7 in var_48964153)
	{
		var_76bcdea7 thread namespace_37b990db::function_afb82faf(4, 0);
	}
	var_5b5d4311 = function_243bb261("vtol_4_crash_node", "script_noteworthy");
	var_6300e38d = namespace_82b91a51::function_b9fd52a4("script_origin", var_5b5d4311.var_722885f3, var_5b5d4311.var_6ab6f4fd);
	var_6300e38d function_8c1f7070();
	foreach(var_76bcdea7 in var_48964153)
	{
		var_76bcdea7 namespace_37b990db::function_16045f9d(var_6300e38d, undefined, 0);
	}
	var_5b5d4311 waittill("hash_4dbf3ae3");
	foreach(var_76bcdea7 in var_48964153)
	{
		var_76bcdea7 thread namespace_37b990db::function_afb82faf(4, 0);
	}
	var_6300e38d function_dc8c8404();
}

/*
	Name: function_aa774b42
	Namespace: namespace_80a43443
	Checksum: 0x107293FA
	Offset: 0x4418
	Size: 0x2B1
	Parameters: 0
	Flags: None
*/
function function_aa774b42()
{
	var_e416d54a = function_243bb261("start_egypt_runners_1", "script_noteworthy");
	var_e416d54a waittill("hash_4dbf3ae3");
	var_f24c69d3 = function_99201f25("vtol_egyptian_runners_1", "targetname");
	foreach(var_8339cb0d in var_f24c69d3)
	{
		var_67440414 = var_8339cb0d namespace_2f06d687::function_9b7fda5e();
		var_67440414 thread function_e89af9c8();
	}
	var_be145ae1 = function_243bb261("start_egypt_runners_2", "script_noteworthy");
	var_be145ae1 waittill("hash_4dbf3ae3");
	var_f24c69d3 = function_99201f25("vtol_egyptian_runners_2", "targetname");
	foreach(var_8339cb0d in var_f24c69d3)
	{
		var_67440414 = var_8339cb0d namespace_2f06d687::function_9b7fda5e();
		var_67440414 thread function_e89af9c8();
	}
	var_f24c69d3 = function_99201f25("vtol_egyptian_runners_3", "targetname");
	foreach(var_8339cb0d in var_f24c69d3)
	{
		var_67440414 = var_8339cb0d namespace_2f06d687::function_9b7fda5e();
		var_67440414 thread function_e89af9c8();
	}
}

/*
	Name: function_e89af9c8
	Namespace: namespace_80a43443
	Checksum: 0x318228EE
	Offset: 0x46D8
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_e89af9c8()
{
	self endon("hash_128f8789");
	var_9de10fe3 = function_b4cb3503(self.var_b07228b6, "targetname");
	self thread namespace_d84e54db::function_19e98020(var_9de10fe3, 32, 0);
	self waittill("hash_41d1aaf0");
	wait(5);
	self function_dc8c8404();
}

/*
	Name: function_d0ef8521
	Namespace: namespace_80a43443
	Checksum: 0xB1A380D0
	Offset: 0x4760
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d0ef8521()
{
	level namespace_ad23e503::function_1ab5ebec("players_ready");
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_eastern_checkpoint");
}

/*
	Name: function_f25b564e
	Namespace: namespace_80a43443
	Checksum: 0x2327CA72
	Offset: 0x47A8
	Size: 0x48B
	Parameters: 0
	Flags: None
*/
function function_f25b564e()
{
	level.var_9db406db namespace_ad23e503::function_c35e6aab("khalil_ready");
	level.var_9db406db namespace_ad23e503::function_c35e6aab("khalil_init");
	level namespace_71e9cb84::function_74d6b22f("staging_area_intro", 1);
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_wall_carry_bundle", &function_ca7c574d, "init");
	namespace_cc27597::function_8f9f34e0("cin_ram_04_01_staging_vign_finisher", &function_29d8f4e5, "done");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_wall_carry_bundle");
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_wall_carry_02_bundle");
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_wall_carry_03_bundle");
	level namespace_cc27597::function_c35e6aab("cin_ram_04_01_staging_vign_help");
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("cin_ram_04_01_staging_vign_help_alt");
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("cin_ram_04_01_staging_vign_logistics");
	namespace_82b91a51::function_76f13293();
	level namespace_cc27597::function_c35e6aab("cin_ram_04_01_staging_vign_trafficcop");
	level namespace_cc27597::function_c35e6aab("cin_ram_04_02_easterncheck_vign_jumpdirect");
	level thread namespace_cc27597::function_43718187("staging_area_ambient_egyptians", "targetname");
	level namespace_ad23e503::function_74d6b22f("jumpdirect_loops_started");
	function_55051636();
	level thread function_429ae99d();
	level waittill("hash_55490bd7");
	level thread function_b33ae280();
	level namespace_ad23e503::function_1ab5ebec("staging_area_enter_started");
	level thread function_ca24177d(20);
	level namespace_ad23e503::function_d266a8b4(20, "staging_area_ambient_start");
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_wall_carry_bundle");
	level namespace_71e9cb84::function_74d6b22f("staging_area_intro", 0);
	level thread function_d8e0d27e();
	level waittill("hash_3d44865d");
	level thread namespace_cc27597::function_43718187("cin_ram_04_01_staging_vign_help_alt");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_vtol_ride_bundle", &function_b8babc3, "init");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_ramses_vtol_ride_bundle");
	level waittill("hash_e8369b0d");
	level thread namespace_cc27597::function_43718187("cin_ram_04_01_staging_vign_help");
	level thread namespace_cc27597::function_43718187("cin_ram_04_01_staging_vign_logistics");
	level thread namespace_cc27597::function_43718187("cin_ram_04_01_staging_vign_trafficcop");
	wait(function_72a94f05(2, 4));
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_wall_carry_03_bundle");
	wait(3);
	level thread function_ae408b2c();
}

/*
	Name: function_ca7c574d
	Namespace: namespace_80a43443
	Checksum: 0x8309C76F
	Offset: 0x4C40
	Size: 0x109
	Parameters: 0
	Flags: None
*/
function function_ca7c574d()
{
	level.var_7902293a = function_84970cc4(function_6ada35ba("wall_carry_wall", "targetname"), function_6ada35ba("wall_carry_doors", "targetname"), function_6ada35ba("wall_carry_harness", "targetname"));
	foreach(var_1b2a0d26 in level.var_7902293a)
	{
		var_1b2a0d26 function_b97730be(1);
	}
}

/*
	Name: function_55051636
	Namespace: namespace_80a43443
	Checksum: 0x10C546BC
	Offset: 0x4D58
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_55051636()
{
	var_53d1df2a = function_84970cc4("cin_sgen_12_02_corvus_vign_deadpose_robot01_ontummy", "cin_sgen_12_02_corvus_vign_deadpose_robot02_onback01", "cin_sgen_12_02_corvus_vign_deadpose_robot03_onback02", "cin_sgen_12_02_corvus_vign_deadpose_robot04_onside", "cin_sgen_12_02_corvus_vign_deadpose_robot05_onwallsitting");
	foreach(var_294306eb in var_53d1df2a)
	{
		var_1479fabb = function_4c890267();
		level thread namespace_cc27597::function_43718187(var_294306eb, var_1479fabb);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_4c890267
	Namespace: namespace_80a43443
	Checksum: 0x98BBAF52
	Offset: 0x4E68
	Size: 0x1BF
	Parameters: 0
	Flags: None
*/
function function_4c890267()
{
	var_58f06a18 = 80;
	var_7471f3fc = "c_nrc_robot_grunt_head";
	var_44bc45bf = function_84970cc4("c_nrc_robot_grunt_g_upclean", "c_nrc_robot_grunt_g_rarmoff", "c_nrc_robot_grunt_g_larmoff");
	var_1fee561d = function_84970cc4("c_nrc_robot_grunt_g_lowclean", "c_nrc_robot_grunt_g_blegsoff", "c_nrc_robot_grunt_g_rlegoff");
	var_1479fabb = namespace_82b91a51::function_b9fd52a4(namespace_84970cc4::function_47d18840(var_44bc45bf), (0, 0, 0), (0, 0, 0));
	var_1bc1366 = namespace_84970cc4::function_47d18840(var_1fee561d);
	var_1479fabb function_8ff2374e(var_1bc1366);
	if(var_1bc1366 == "c_nrc_robot_grunt_g_blegsoff")
	{
		var_1479fabb function_db20c8d6("j_knee_ri_dam");
	}
	else
	{
		var_1479fabb function_8ff2374e("c_nrc_robot_dam_1_g_llegspawn");
	}
	var_1479fabb function_8ff2374e("c_nrc_robot_dam_1_g_rlegspawn");
	if(function_26299103(100) < var_58f06a18)
	{
		var_1479fabb function_8ff2374e(var_7471f3fc);
	}
	return var_1479fabb;
}

/*
	Name: function_b33ae280
	Namespace: namespace_80a43443
	Checksum: 0x942B88A2
	Offset: 0x5030
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_b33ae280()
{
	if(namespace_cc27597::function_444aea32("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks"))
	{
		namespace_cc27597::function_fcf56ab5("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks");
	}
	if(namespace_cc27597::function_444aea32("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil"))
	{
		namespace_cc27597::function_fcf56ab5("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil");
	}
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	}
	namespace_cc27597::function_8f9f34e0("cin_ram_04_02_easterncheck_vign_jumpdirect", &function_b1758ff5, "done");
	level thread namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_vign_jumpdirect");
	namespace_84970cc4::function_1ab5ebec(function_84970cc4(level.var_2fd26037, level.var_9db406db), "ready_to_move");
	level namespace_ad23e503::function_74d6b22f("jumpdirect_scene_done");
}

/*
	Name: function_b1758ff5
	Namespace: namespace_80a43443
	Checksum: 0x370E4550
	Offset: 0x5178
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_b1758ff5(var_c77d2837)
{
	var_edc5d3d5 = var_c77d2837["staging_area_jumpdirect_guy02"];
	wait(function_dc99997a(11, 12));
	var_77739c8f = function_b4cb3503("node_jumpdirect_guy02_path", "targetname");
	var_edc5d3d5 namespace_d84e54db::function_99e190ff(var_77739c8f);
}

/*
	Name: function_163908b8
	Namespace: namespace_80a43443
	Checksum: 0xC82126DF
	Offset: 0x5210
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_163908b8()
{
	var_5dc95129 = function_b4cb3503("node_jumpdirect_guy01_wait", "targetname");
	self function_169cc712(var_5dc95129, 1);
	level namespace_ad23e503::function_1ab5ebec("heroes_start_truck_anims");
	wait(function_dc99997a(2, 3));
	var_77739c8f = function_b4cb3503("node_jumpdirect_guy01_path", "targetname");
	self namespace_d84e54db::function_99e190ff(var_77739c8f);
}

/*
	Name: function_ca24177d
	Namespace: namespace_80a43443
	Checksum: 0x8AC116F5
	Offset: 0x52E8
	Size: 0x1EB
	Parameters: 1
	Flags: None
*/
function function_ca24177d(var_637636ed)
{
	var_2422bd4b = "cin_ram_04_01_staging_vign_finisher";
	var_b4d3a3bd = function_84970cc4("c_nrc_robot_grunt_g_blegsoff", "c_nrc_robot_grunt_head");
	var_5aac3d30 = function_84970cc4("j_hip_le_dam", "j_knee_ri_dam");
	var_db276508 = function_84970cc4("c_nrc_robot_grunt_g_rlegoff", "c_nrc_robot_grunt_head");
	var_b478c00a = namespace_82b91a51::function_b9fd52a4("c_nrc_robot_grunt_g_upclean", (0, 0, 0), (0, 0, 0));
	var_424a279d = namespace_82b91a51::function_b9fd52a4("c_nrc_robot_grunt_g_rarmoff", (0, 0, 0), (0, 0, 0));
	var_424a279d function_96449bd2(var_db276508);
	var_b478c00a function_96449bd2(var_b4d3a3bd, var_5aac3d30);
	var_fbbef3a["robot_crawler_01"] = var_424a279d;
	var_fbbef3a["robot_crawler_02"] = var_b478c00a;
	level namespace_cc27597::function_c35e6aab(var_2422bd4b, var_fbbef3a);
	level namespace_ad23e503::function_1ff63c0f(var_637636ed, function_84970cc4("staging_area_kills_start", "staging_area_ambient_start"));
	level namespace_cc27597::function_43718187(var_2422bd4b, var_fbbef3a);
}

/*
	Name: function_29d8f4e5
	Namespace: namespace_80a43443
	Checksum: 0x6C5CF40B
	Offset: 0x54E0
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_29d8f4e5(var_c77d2837)
{
	var_78080f8f = var_c77d2837["staging_area_vign_finisher_guy"];
	var_78080f8f function_169cc712(self.var_722885f3);
	wait(function_dc99997a(8, 10));
	var_77739c8f = function_b4cb3503("node_vign_finisher_path", "targetname");
	var_78080f8f namespace_d84e54db::function_99e190ff(var_77739c8f);
}

/*
	Name: function_96449bd2
	Namespace: namespace_80a43443
	Checksum: 0xFCFB395C
	Offset: 0x5590
	Size: 0x131
	Parameters: 2
	Flags: None
*/
function function_96449bd2(var_c2aab2dd, var_3a2aaa4f)
{
	if(!isdefined(var_3a2aaa4f))
	{
		var_3a2aaa4f = [];
	}
	foreach(var_fbcf7972 in var_c2aab2dd)
	{
		self function_8ff2374e(var_fbcf7972);
	}
	foreach(var_c6107c9b in var_3a2aaa4f)
	{
		self function_db20c8d6(var_c6107c9b);
	}
}

/*
	Name: function_9b7c2788
	Namespace: namespace_80a43443
	Checksum: 0x478D84D8
	Offset: 0x56D0
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_9b7c2788(var_6bfe1586)
{
	var_cbb15570 = "p_ramses_lift_wing_blockage";
	namespace_cc27597::function_8f9f34e0(var_cbb15570, &function_3031a196, "play");
	namespace_cc27597::function_8f9f34e0(var_cbb15570, &function_75f74956, "done");
	level thread namespace_cc27597::function_43718187(var_cbb15570, var_6bfe1586);
	self notify("hash_c2b847e5");
}

/*
	Name: function_3031a196
	Namespace: namespace_80a43443
	Checksum: 0xEEAAA888
	Offset: 0x5780
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_3031a196(var_c77d2837)
{
	level notify("hash_55490bd7");
	level waittill("hash_15aca665");
	level namespace_ad23e503::function_74d6b22f("staging_area_enter_started");
}

/*
	Name: function_75f74956
	Namespace: namespace_80a43443
	Checksum: 0x65AB9C5C
	Offset: 0x57D0
	Size: 0x1B
	Parameters: 1
	Flags: None
*/
function function_75f74956(var_c77d2837)
{
	namespace_82b91a51::function_a0938376();
}

/*
	Name: function_3e1010fa
	Namespace: namespace_80a43443
	Checksum: 0x5D05795E
	Offset: 0x57F8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_3e1010fa()
{
	level notify("hash_585a73e3");
	level thread function_9f0cc2c4();
	function_6a212876();
}

/*
	Name: function_6a212876
	Namespace: namespace_80a43443
	Checksum: 0xCBAA0768
	Offset: 0x5838
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function function_6a212876()
{
	level namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_vign_jumpdirect_hendricks_end");
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
	level.var_2fd26037.var_7dfaf62 = 64;
	level.var_2fd26037 function_169cc712(function_b4cb3503("vtol_ride_temp_hendricks_goal", "targetname"));
	level.var_2fd26037 namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	level.var_2fd26037 waittill("hash_41d1aaf0");
	level namespace_ad23e503::function_74d6b22f("heroes_start_truck_anims");
	level.var_2fd26037 function_cea50a94(1);
	level namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_1st_entertruck_demo_hendricks");
}

/*
	Name: function_9f0cc2c4
	Namespace: namespace_80a43443
	Checksum: 0x5FB9B291
	Offset: 0x5978
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_9f0cc2c4()
{
	level namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_vign_jumpdirect_khalil_end");
	level.var_9db406db namespace_d84e54db::function_ceb883cd("vignette_mode", "fast");
	level.var_9db406db.var_7dfaf62 = 64;
	level.var_9db406db function_169cc712(function_b4cb3503("vtol_ride_temp_khalil_goal", "targetname"));
	level.var_9db406db namespace_d84e54db::function_ceb883cd("disablearrivals", 1);
	level.var_9db406db waittill("hash_41d1aaf0");
	level.var_9db406db function_cea50a94(1);
	level thread namespace_cc27597::function_c35e6aab("cin_ram_04_02_easterncheck_1st_entertruck_demo_khalil");
	level.var_9db406db waittill("hash_9ef0805");
	level.var_9db406db namespace_ad23e503::function_74d6b22f("khalil_init");
	level.var_9db406db waittill("hash_fecf35c0");
	level.var_9db406db namespace_ad23e503::function_74d6b22f("khalil_ready");
	level thread namespace_e4c0c552::function_973b77f9();
}

/*
	Name: function_3ae58c71
	Namespace: namespace_80a43443
	Checksum: 0xFC2F8FBC
	Offset: 0x5B10
	Size: 0xB9
	Parameters: 3
	Flags: None
*/
function function_3ae58c71(var_6bfe1586, var_c6107c9b, var_35a302af)
{
	if(var_c6107c9b == "tag_antenna1")
	{
		var_35a302af thread namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_1st_entertruck_demo2", var_6bfe1586);
	}
	else
	{
		var_35a302af thread namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_1st_entertruck_demo", var_6bfe1586);
	}
	level namespace_ad23e503::function_74d6b22f("player_enter_hero_truck_started");
	var_6bfe1586 thread function_77af1dc();
	var_6bfe1586 waittill("hash_15add06c");
}

/*
	Name: function_77af1dc
	Namespace: namespace_80a43443
	Checksum: 0xC314DB67
	Offset: 0x5BD8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_77af1dc()
{
	self endon("hash_643a7daf");
	var_376c2899 = 0.85;
	self waittill("hash_b5142ba0");
	self function_d2f3e35b(var_376c2899);
}

/*
	Name: function_b8babc3
	Namespace: namespace_80a43443
	Checksum: 0xA3EA9AD6
	Offset: 0x5C30
	Size: 0x17B
	Parameters: 1
	Flags: None
*/
function function_b8babc3(var_c77d2837)
{
	var_2eb506d6 = function_84970cc4(var_c77d2837["technical_left"], var_c77d2837["technical_right"]);
	var_e0da190b = function_84970cc4("tag_antenna1", "tag_antenna2");
	foreach(var_35a302af in var_2eb506d6)
	{
		var_35a302af thread function_1d44997f(var_e0da190b);
	}
	namespace_84970cc4::function_1ab5ebec(var_2eb506d6, "ready_to_board");
	level namespace_ad23e503::function_74d6b22f("trucks_ready");
	namespace_84970cc4::function_1ab5ebec(var_2eb506d6, "seats_full");
	level namespace_ad23e503::function_74d6b22f("players_ready");
}

/*
	Name: function_1d44997f
	Namespace: namespace_80a43443
	Checksum: 0x9FFBABC6
	Offset: 0x5DB8
	Size: 0x3C1
	Parameters: 1
	Flags: None
*/
function function_1d44997f(var_e0da190b)
{
	self function_52f443ca();
	if(self.var_170527fb == "technical_left")
	{
		level waittill("hash_3e1010fa");
		level thread function_3e1010fa();
	}
	self waittill("hash_f2040cc4");
	var_b71ed4a2 = self function_d48f2ab3("tag_bumper_rear_d0");
	var_6cac4ba4 = self function_cd1d99bd("tag_bumper_rear_d0");
	var_7925d66f = function_6ada35ba(self.var_170527fb + "_boarding_collision", "targetname");
	var_7925d66f function_a96a2721(var_b71ed4a2, 0.05);
	var_7925d66f function_c0b6566f(var_6cac4ba4 + VectorScale((0, 1, 0), 90), 0.5);
	wait(1);
	self notify("hash_7062b02b");
	if(self.var_170527fb == "technical_left")
	{
		var_3ffc3e83 = function_9b7fda5e("trigger_radius", self.var_722885f3, 0, 666, 256);
		var_3ffc3e83 waittill("hash_4dbf3ae3");
		var_3ffc3e83 function_dc8c8404();
		level.var_9db406db namespace_ad23e503::function_d266a8b4(10, "khalil_init");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_ramses_wall_carry_02_bundle");
		level thread namespace_cc27597::function_43718187("cin_ram_04_02_easterncheck_1st_entertruck_demo_khalil");
	}
	level.var_9db406db namespace_ad23e503::function_1ab5ebec("khalil_ready");
	self.var_3c1d8edf = 0;
	self thread function_85aceb92(var_e0da190b);
	foreach(var_c6107c9b in var_e0da190b)
	{
		var_27c4935 = var_b71ed4a2 + function_bc7ce905(var_6cac4ba4) * 20;
		var_b3268be4 = function_9b7fda5e("trigger_box_use", var_27c4935, 0, 36, 32, 48);
		var_b3268be4.var_6ab6f4fd = var_6cac4ba4;
		var_b3268be4.var_170527fb = var_c6107c9b;
		var_b3268be4 function_9de6dff0(self, var_e0da190b);
	}
}

/*
	Name: function_52f443ca
	Namespace: namespace_80a43443
	Checksum: 0x4CA12015
	Offset: 0x6188
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_52f443ca()
{
	var_39352a5 = [];
	var_2ffb0686 = function_84970cc4("driver", "passenger1");
	var_3f100131 = function_84970cc4("staging_area_rider_1", "staging_area_rider_2", "staging_area_rider_3");
	var_3f100131 = namespace_84970cc4::function_8332f7f6(var_3f100131);
	for(var_c957f6b6 = 0; var_c957f6b6 < var_2ffb0686.size; var_c957f6b6++)
	{
		var_39352a5[var_c957f6b6] = namespace_2f06d687::function_7387a40a(var_3f100131[var_c957f6b6]);
		var_39352a5[var_c957f6b6] namespace_96fa87af::function_230eadd7(self, var_2ffb0686[var_c957f6b6], 1);
	}
}

/*
	Name: function_c37f7fc3
	Namespace: namespace_80a43443
	Checksum: 0x8A939E2D
	Offset: 0x62A0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_c37f7fc3()
{
	var_133e9095 = function_6ada35ba("lgt_test_probe", "targetname");
	level namespace_ad23e503::function_74d6b22f("vtol_ride_temp_probe_linked");
	var_133e9095 function_37f7858a(self);
}

/*
	Name: function_9de6dff0
	Namespace: namespace_80a43443
	Checksum: 0xD9220B0F
	Offset: 0x6310
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_9de6dff0(var_35a302af, var_4f85a01a)
{
	level notify("hash_c727333f");
	self function_e68ee88a("HINT_INTERACTIVE_PROMPT");
	self function_1d5013fa();
	self function_2bf40f1(var_35a302af, var_4f85a01a);
}

/*
	Name: function_2bf40f1
	Namespace: namespace_80a43443
	Checksum: 0x8E215E7A
	Offset: 0x6390
	Size: 0xC3
	Parameters: 2
	Flags: None
*/
function function_2bf40f1(var_35a302af, var_4f85a01a)
{
	var_6bfe1586 = self function_c61be98c(var_35a302af);
	if(isdefined(var_6bfe1586) && !var_6bfe1586 namespace_ad23e503::function_7922262b("linked_to_truck"))
	{
		self function_f132ee31(var_35a302af, var_6bfe1586);
		level.var_e32d239b++;
		var_35a302af.var_3c1d8edf++;
		var_35a302af notify("hash_19304798");
	}
	else
	{
		self function_2bf40f1(var_35a302af, var_4f85a01a);
	}
}

/*
	Name: function_c61be98c
	Namespace: namespace_80a43443
	Checksum: 0xE36203E4
	Offset: 0x6460
	Size: 0xB7
	Parameters: 1
	Flags: None
*/
function function_c61be98c(var_35a302af)
{
	var_2661661a = namespace_82b91a51::function_14518e76(self, &"cp_prompt_entervehicle_ramses_technical", &"CP_MI_CAIRO_RAMSES_BOARD_TRUCK", &function_8ebbac0d);
	if(var_35a302af.var_170527fb === "technical_right")
	{
		var_2661661a thread function_543c8d72(var_35a302af);
	}
	var_6bfe1586 = var_2661661a function_3bc165a2(var_35a302af);
	var_2661661a namespace_a230c2b1::function_e54c54c3();
	return var_6bfe1586;
}

/*
	Name: function_543c8d72
	Namespace: namespace_80a43443
	Checksum: 0x9BA73839
	Offset: 0x6520
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_543c8d72(var_35a302af)
{
	level endon("hash_fed8530d");
	var_35a302af endon("hash_6815ed3f");
	self.var_56a7483f = 0;
	self namespace_a230c2b1::function_e54c54c3();
	while(1)
	{
		if(level.var_2395e945.size <= 2 && self.var_56a7483f)
		{
			self.var_56a7483f = 0;
			self namespace_a230c2b1::function_e54c54c3();
		}
		else if(level.var_2395e945.size > 2 && !self.var_56a7483f)
		{
			self.var_56a7483f = 1;
			self namespace_a230c2b1::function_ed0abeee();
		}
		wait(0.5);
	}
}

/*
	Name: function_8ebbac0d
	Namespace: namespace_80a43443
	Checksum: 0xC323C8A6
	Offset: 0x6608
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_8ebbac0d(var_6bfe1586)
{
	self notify("hash_9292e8f0", var_6bfe1586);
	namespace_d0ef8521::function_31cd1834("cp_level_ramses_eastern_checkpoint", var_6bfe1586);
}

/*
	Name: function_3bc165a2
	Namespace: namespace_80a43443
	Checksum: 0xBB5BBD61
	Offset: 0x6650
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_3bc165a2(var_35a302af)
{
	var_35a302af endon("hash_19304798");
	self waittill("hash_9292e8f0", var_6bfe1586);
	return var_6bfe1586;
}

/*
	Name: function_85aceb92
	Namespace: namespace_80a43443
	Checksum: 0xD67A6FA4
	Offset: 0x6690
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_85aceb92(var_4f85a01a)
{
	while(self.var_3c1d8edf < var_4f85a01a.size)
	{
		if(level.var_2395e945.size == 1 && level.var_e32d239b >= level.var_2395e945.size)
		{
			break;
		}
		else if(level.var_2395e945.size > 1 && level.var_e32d239b >= 1 && level.var_e32d239b >= level.var_9b1393e7.size)
		{
			break;
		}
		wait(0.25);
	}
	self notify("hash_6815ed3f");
}

/*
	Name: function_f132ee31
	Namespace: namespace_80a43443
	Checksum: 0xDC814D29
	Offset: 0x6748
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_f132ee31(var_35a302af, var_6bfe1586)
{
	var_c6107c9b = self.var_170527fb;
	var_6bfe1586 namespace_ad23e503::function_74d6b22f("linked_to_truck");
	if(var_35a302af.var_a8da2af9 === 1 && level namespace_cc27597::function_367f8966("cin_ram_04_02_easterncheck_1st_entertruck_demo"))
	{
		level waittill("hash_faa941cd");
	}
	var_35a302af.var_a8da2af9 = 1;
	var_35a302af function_3ae58c71(var_6bfe1586, var_c6107c9b, var_35a302af);
	var_35a302af.var_a8da2af9 = 0;
}

/*
	Name: function_d8e0d27e
	Namespace: namespace_80a43443
	Checksum: 0xCDAFF842
	Offset: 0x6828
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_d8e0d27e()
{
	wait(15);
	namespace_4dbf3ae3::function_42e87952("trig_technical_01_go");
	wait(5);
	namespace_2f06d687::function_22356ba7("staging_area_background_technical_02", &function_226410e6);
	wait(15);
	namespace_4dbf3ae3::function_42e87952("trig_technical_02_go");
}

/*
	Name: function_226410e6
	Namespace: namespace_80a43443
	Checksum: 0xDC622F16
	Offset: 0x68A8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_226410e6()
{
	var_3c54858a = function_243bb261(self.var_b07228b6, "targetname");
	if(self.var_caae374e === "staging_area_background_technical_01")
	{
		level waittill("hash_3d44865d");
	}
	self thread namespace_96fa87af::function_edb3a94e(var_3c54858a);
	self waittill("hash_768a30c7");
	foreach(var_eb2993cb in self.var_d925663e)
	{
		var_eb2993cb function_dc8c8404();
	}
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_b7170f9e
	Namespace: namespace_80a43443
	Checksum: 0xC62130DF
	Offset: 0x6A00
	Size: 0x237
	Parameters: 2
	Flags: None
*/
function function_b7170f9e(var_a0b86a77, var_12cf56f6)
{
	level endon("hash_e99a85b4");
	var_67a453fb = function_6643d7e6(var_a0b86a77, "targetname");
	while(1)
	{
		var_67a453fb = namespace_84970cc4::function_8332f7f6(var_67a453fb);
		foreach(var_1f3f1cb0 in var_67a453fb)
		{
			if(level.var_6b2d0ae6 < var_12cf56f6)
			{
				if(isdefined(var_1f3f1cb0))
				{
					if(!(isdefined(var_1f3f1cb0.var_ce32be36) && var_1f3f1cb0.var_ce32be36))
					{
						var_1f3f1cb0.var_ce32be36 = 1;
						var_edc6e0e1 = namespace_2f06d687::function_7387a40a(var_1f3f1cb0);
						var_83fa3476 = function_243bb261(var_1f3f1cb0.var_b07228b6, "targetname");
						var_edc6e0e1 namespace_96fa87af::function_42496438(0);
						var_1f3f1cb0.var_74952a22++;
						level.var_6b2d0ae6++;
						var_edc6e0e1 function_c2931a36("evt_vtol_ambient");
						var_edc6e0e1 thread function_bd103c67(var_1f3f1cb0);
						var_edc6e0e1 thread namespace_96fa87af::function_edb3a94e(var_83fa3476);
						wait(function_72a94f05(0.4, 0.75));
					}
				}
				continue;
			}
			level waittill("hash_318f97c4");
		}
		wait(0.05);
	}
}

/*
	Name: function_bd103c67
	Namespace: namespace_80a43443
	Checksum: 0x371CD2B4
	Offset: 0x6C40
	Size: 0x55
	Parameters: 1
	Flags: None
*/
function function_bd103c67(var_f2d5d544)
{
	level endon("hash_e99a85b4");
	self waittill("hash_128f8789");
	if(isdefined(var_f2d5d544))
	{
		var_f2d5d544.var_ce32be36 = 0;
	}
	level.var_6b2d0ae6--;
	level notify("hash_318f97c4");
}

/*
	Name: function_76b0226a
	Namespace: namespace_80a43443
	Checksum: 0x3A60D171
	Offset: 0x6CA0
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_76b0226a(var_4e88691)
{
	self waittill("hash_128f8789");
	if(isdefined(var_4e88691))
	{
		var_4e88691 function_dc8c8404();
	}
}

/*
	Name: function_429ae99d
	Namespace: namespace_80a43443
	Checksum: 0xBD19151A
	Offset: 0x6CE8
	Size: 0x173
	Parameters: 0
	Flags: None
*/
function function_429ae99d()
{
	level endon("hash_e99a85b4");
	var_8498e7d1 = function_84970cc4("helipad_liftoff_vtol_1", "helipad_liftoff_vtol_2", "helipad_liftoff_vtol_3", "helipad_liftoff_vtol_4", "helipad_liftoff_vtol_5", "helipad_liftoff_vtol_6", "helipad_liftoff_vtol_7", "helipad_liftoff_vtol_8", "helipad_liftoff_vtol_9", "helipad_liftoff_vtol_10");
	var_1d9b0ee8 = function_85a37f7(var_8498e7d1);
	foreach(var_c89e148a in var_1d9b0ee8)
	{
		var_c89e148a namespace_96fa87af::function_42496438(0);
	}
	var_1d9b0ee8 function_501a0fde();
	level namespace_ad23e503::function_1ab5ebec("staging_area_ambient_start");
	var_1d9b0ee8 function_42a5525a();
}

/*
	Name: function_f40e1b95
	Namespace: namespace_80a43443
	Checksum: 0x59A9ED45
	Offset: 0x6E68
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_f40e1b95(var_c77d2837)
{
	var_edc6e0e1 = var_c77d2837["crowd_vtol"];
	var_edc6e0e1 namespace_ad23e503::function_c35e6aab("loaded");
}

/*
	Name: function_f1ae04cf
	Namespace: namespace_80a43443
	Checksum: 0x1DC6A9F7
	Offset: 0x6EB8
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_f1ae04cf(var_c77d2837)
{
	var_edc6e0e1 = var_c77d2837["crowd_vtol"];
	var_edc6e0e1 namespace_ad23e503::function_74d6b22f("loaded");
}

/*
	Name: function_85a37f7
	Namespace: namespace_80a43443
	Checksum: 0xEB260B29
	Offset: 0x6F08
	Size: 0x17D
	Parameters: 1
	Flags: None
*/
function function_85a37f7(var_ab765abb)
{
	var_1d9b0ee8 = [];
	foreach(var_cbb15570 in var_ab765abb)
	{
		var_edc6e0e1 = namespace_2f06d687::function_7387a40a(var_cbb15570);
		if(!isdefined(var_1d9b0ee8))
		{
			var_1d9b0ee8 = [];
		}
		else if(!function_6e2770d8(var_1d9b0ee8))
		{
			var_1d9b0ee8 = function_84970cc4(var_1d9b0ee8);
		}
		var_1d9b0ee8[var_1d9b0ee8.size] = var_edc6e0e1;
		if(isdefined(var_edc6e0e1.var_caae374e))
		{
			var_edc6e0e1 namespace_ad23e503::function_c35e6aab("loaded");
			var_edc6e0e1 namespace_82b91a51::function_67520c6a(function_dc99997a(10, 20), undefined, &namespace_ad23e503::function_74d6b22f, "loaded");
		}
	}
	return var_1d9b0ee8;
}

/*
	Name: function_d2cc8ebf
	Namespace: namespace_80a43443
	Checksum: 0xC895AAB
	Offset: 0x7090
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_d2cc8ebf()
{
	var_1d9b0ee8 = [];
	foreach(var_edc6e0e1 in self)
	{
		if(isdefined(var_edc6e0e1.var_caae374e))
		{
			if(!isdefined(var_1d9b0ee8))
			{
				var_1d9b0ee8 = [];
			}
			else if(!function_6e2770d8(var_1d9b0ee8))
			{
				var_1d9b0ee8 = function_84970cc4(var_1d9b0ee8);
			}
			var_1d9b0ee8[var_1d9b0ee8.size] = var_edc6e0e1;
		}
	}
	return var_1d9b0ee8;
}

/*
	Name: function_501a0fde
	Namespace: namespace_80a43443
	Checksum: 0x647E7402
	Offset: 0x7190
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_501a0fde()
{
	foreach(var_edc6e0e1 in self)
	{
		level namespace_cc27597::function_c35e6aab(var_edc6e0e1.var_db7bb468, var_edc6e0e1);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_c9942484
	Namespace: namespace_80a43443
	Checksum: 0xB8F83C99
	Offset: 0x7248
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function function_c9942484()
{
	foreach(var_edc6e0e1 in self)
	{
		level namespace_cc27597::function_c35e6aab(var_edc6e0e1.var_caae374e, "targetname", var_edc6e0e1);
		namespace_82b91a51::function_76f13293();
	}
}

/*
	Name: function_42a5525a
	Namespace: namespace_80a43443
	Checksum: 0xBBEA79B8
	Offset: 0x7300
	Size: 0x111
	Parameters: 0
	Flags: None
*/
function function_42a5525a()
{
	level endon("hash_e99a85b4");
	var_713e715e = namespace_14b42b8a::function_7922262b("helipads_vtol_goal", "targetname");
	wait(5);
	foreach(var_edc6e0e1 in self)
	{
		var_edc6e0e1 thread function_aac7c5be(var_713e715e.var_722885f3);
		var_edc6e0e1 function_c2931a36("evt_vtol_ambient");
		wait(function_72a94f05(4, 8));
	}
}

/*
	Name: function_c3d24d16
	Namespace: namespace_80a43443
	Checksum: 0x44C786A7
	Offset: 0x7420
	Size: 0x101
	Parameters: 0
	Flags: None
*/
function function_c3d24d16()
{
	level endon("hash_e99a85b4");
	var_637636ed = 60;
	namespace_4dbf3ae3::function_4ab4cb6(var_637636ed, "staging_area_helipads_liftoff_trig");
	foreach(var_edc6e0e1 in self)
	{
		level thread namespace_cc27597::function_43718187(var_edc6e0e1.var_caae374e, "targetname", var_edc6e0e1);
		wait(function_72a94f05(0.56, 1.25));
	}
}

/*
	Name: function_aac7c5be
	Namespace: namespace_80a43443
	Checksum: 0x4BB20DCD
	Offset: 0x7530
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function function_aac7c5be(var_2188bf75)
{
	self endon("hash_128f8789");
	if(isdefined(self.var_caae374e))
	{
		self namespace_ad23e503::function_1ab5ebec("loaded");
	}
	level namespace_cc27597::function_43718187(self.var_db7bb468, self);
	self function_c985552d(var_2188bf75);
	self waittill("hash_41d1aaf0");
	self.var_3e3a41eb = 1;
	self notify("hash_128f8789");
	if(!function_5b49d38c(self))
	{
		self function_dc8c8404();
	}
}

/*
	Name: function_4492caaa
	Namespace: namespace_80a43443
	Checksum: 0x5E73B876
	Offset: 0x7608
	Size: 0x331
	Parameters: 0
	Flags: None
*/
function function_4492caaa()
{
	level namespace_ad23e503::function_1ab5ebec("dead_turrets_initialized");
	level.var_e6786950 = [];
	level.var_4516597e = [];
	var_5b4c55a2 = namespace_14b42b8a::function_7faf4c39("ramses_station_hunters", "targetname");
	var_da76440b = namespace_14b42b8a::function_7faf4c39("ramses_station_vtols", "targetname");
	var_53a6979b = namespace_14b42b8a::function_7faf4c39("ramses_station_hunters_turnaround", "targetname");
	var_c02e0aaa = function_525ae497(var_5b4c55a2, var_da76440b, 0, 0);
	for(var_c957f6b6 = 1; var_c957f6b6 < 5; var_c957f6b6++)
	{
		var_d9aaac41 = function_9cb37000("station_battery_" + var_c957f6b6, "script_noteworthy");
		/#
			namespace_33b293fd::function_a7ee953(var_d9aaac41.size == 3, "Dev Block strings are not supported" + "Dev Block strings are not supported" + var_c957f6b6 + "Dev Block strings are not supported" + var_d9aaac41.size + "Dev Block strings are not supported" + 3 + "Dev Block strings are not supported");
		#/
		level.var_e6786950[var_c957f6b6] = var_d9aaac41;
	}
	level thread function_1a5d54fa();
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_09_bundle_server", &function_73facefb, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_hunters_10_bundle_server", &function_73facefb, "play");
	namespace_cc27597::function_8f9f34e0("p7_fxanim_cp_ramses_lotus_towers_vtols_01_bundle_server", &function_73facefb, "play");
	var_53a6979b thread function_28437442();
	var_c02e0aaa function_62436a5a();
	foreach(var_eff8c94a in var_c02e0aaa)
	{
		var_eff8c94a namespace_cc27597::function_fcf56ab5(1);
	}
	level.var_e6786950 = undefined;
	level.var_4516597e = undefined;
}

/*
	Name: function_d6617e36
	Namespace: namespace_80a43443
	Checksum: 0x24535ACC
	Offset: 0x7948
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_d6617e36()
{
	level endon("hash_e99a85b4");
	while(self.var_3a03dd8d)
	{
		foreach(var_6bfe1586 in level.var_9b1393e7)
		{
			if(function_87ea89a(var_6bfe1586 function_e59527c1(), self.var_722885f3) <= 894)
			{
				var_6bfe1586 function_a2361ae7();
				continue;
			}
			var_6bfe1586 function_a2361ae7(0);
		}
		wait(0.05);
	}
	foreach(var_6bfe1586 in level.var_9b1393e7)
	{
		var_6bfe1586 function_a2361ae7(0);
	}
}

/*
	Name: function_a2361ae7
	Namespace: namespace_80a43443
	Checksum: 0x27BF2127
	Offset: 0x7AE0
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_a2361ae7(var_c1e63f13)
{
	if(!isdefined(var_c1e63f13))
	{
		var_c1e63f13 = 1;
	}
	self namespace_71e9cb84::function_e9c3870b("filter_ev_interference_toggle", var_c1e63f13);
}

/*
	Name: function_d7d89699
	Namespace: namespace_80a43443
	Checksum: 0x8D3DE1A5
	Offset: 0x7B30
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function function_d7d89699(var_6389ab3d)
{
	/#
		self endon("hash_bc087705");
		while(1)
		{
			namespace_f96f74aa::function_172e04fa(self.var_722885f3, var_6389ab3d, (1, 0, 0), 0.5, 1);
			wait(0.05);
		}
	#/
}

/*
	Name: function_1a852d62
	Namespace: namespace_80a43443
	Checksum: 0xB49588
	Offset: 0x7B90
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_1a852d62()
{
	level endon("hash_e99a85b4");
	var_b9fb5382 = function_99201f25("battery_fake_target", "targetname");
	foreach(var_b8f9a884 in self)
	{
		var_b8f9a884 function_3488d445(namespace_84970cc4::function_47d18840(var_b9fb5382));
	}
}

/*
	Name: function_62436a5a
	Namespace: namespace_80a43443
	Checksum: 0xE127B622
	Offset: 0x7C68
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function function_62436a5a()
{
	level endon("hash_e99a85b4");
	level.var_4516597e = namespace_84970cc4::function_47d18840(level.var_e6786950);
	while(1)
	{
		function_66ded396();
		namespace_84970cc4::function_1ab5ebec(level.var_4516597e, "_stop_turret");
		function_9f7ba147();
	}
}

/*
	Name: function_28437442
	Namespace: namespace_80a43443
	Checksum: 0x2983F2C9
	Offset: 0x7CE8
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_28437442()
{
	level endon("hash_e99a85b4");
	while(1)
	{
		var_eff8c94a = namespace_84970cc4::function_47d18840(self);
		if(!var_eff8c94a namespace_cc27597::function_367f8966())
		{
			var_eff8c94a thread namespace_cc27597::function_43718187();
		}
		wait(function_72a94f05(2, 4));
	}
}

/*
	Name: function_66ded396
	Namespace: namespace_80a43443
	Checksum: 0xE822926C
	Offset: 0x7D70
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_66ded396()
{
	level endon("hash_e99a85b4");
	for(var_c957f6b6 = 0; var_c957f6b6 < 3; var_c957f6b6++)
	{
		var_eff8c94a = function_7e1bae82();
		var_eff8c94a thread namespace_cc27597::function_43718187();
		wait(function_72a94f05(0.59, 1.2));
	}
}

/*
	Name: function_7e1bae82
	Namespace: namespace_80a43443
	Checksum: 0xB06C264D
	Offset: 0x7E00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_7e1bae82()
{
	level endon("hash_e99a85b4");
	var_eff8c94a = undefined;
	while(1)
	{
		var_eff8c94a = namespace_84970cc4::function_47d18840(self);
		if(!var_eff8c94a namespace_cc27597::function_367f8966())
		{
			break;
		}
		wait(0.05);
	}
	return var_eff8c94a;
}

/*
	Name: function_9f7ba147
	Namespace: namespace_80a43443
	Checksum: 0x9A45ABED
	Offset: 0x7E78
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_9f7ba147()
{
	level endon("hash_e99a85b4");
	var_542ecdff = level.var_4516597e[0];
	level.var_4516597e function_1a852d62();
	do
	{
		level.var_4516597e = namespace_84970cc4::function_47d18840(level.var_e6786950);
		wait(0.05);
	}
	while(!level.var_4516597e[0] == var_542ecdff);
}

/*
	Name: function_73facefb
	Namespace: namespace_80a43443
	Checksum: 0xDD41CCE8
	Offset: 0x7F00
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_73facefb(var_c77d2837)
{
	level endon("hash_e99a85b4");
	foreach(var_3929e8a2 in var_c77d2837)
	{
		var_3929e8a2 thread function_9d4c44e5();
	}
}

/*
	Name: function_9d4c44e5
	Namespace: namespace_80a43443
	Checksum: 0x582304CC
	Offset: 0x7FA8
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_9d4c44e5()
{
	level endon("hash_e99a85b4");
	foreach(var_b8f9a884 in level.var_4516597e)
	{
		if(!(isdefined(var_b8f9a884.var_3a03dd8d) && var_b8f9a884.var_3a03dd8d))
		{
			var_b8f9a884 function_70561437(self);
			break;
		}
	}
}

/*
	Name: function_70561437
	Namespace: namespace_80a43443
	Checksum: 0xE9CDDF3C
	Offset: 0x8070
	Size: 0xDF
	Parameters: 1
	Flags: None
*/
function function_70561437(var_3929e8a2)
{
	level endon("hash_e99a85b4");
	self.var_3a03dd8d = 1;
	self function_3488d445(var_3929e8a2);
	self thread function_7f47b803(var_3929e8a2);
	var_3929e8a2 namespace_82b91a51::function_564f2d81("hunter_explodes", "vtol_01_explodes");
	wait(function_72a94f05(0.15, 0.45));
	self notify("hash_bc087705");
	self function_62b52961();
	self function_e01ff155();
	self.var_3a03dd8d = 0;
}

/*
	Name: function_179e06df
	Namespace: namespace_80a43443
	Checksum: 0xEE68CA9A
	Offset: 0x8158
	Size: 0x49
	Parameters: 1
	Flags: None
*/
function function_179e06df(var_3929e8a2)
{
	return function_e7865c4b(self function_d48f2ab3("tag_flash"), var_3929e8a2.var_722885f3, 0, self);
}

/*
	Name: function_7f47b803
	Namespace: namespace_80a43443
	Checksum: 0x276E412E
	Offset: 0x81B0
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_7f47b803(var_3929e8a2)
{
	self endon("hash_128f8789");
	self endon("hash_bc087705");
	var_3929e8a2 endon("hash_128f8789");
	self waittill("hash_4ab576df");
	wait(function_72a94f05(2, 4));
	if(var_3929e8a2.var_170527fb == "lotus_dropships")
	{
		wait(function_72a94f05(0.05, 0.25));
		continue;
	}
	wait(function_72a94f05(1, 2));
	while(!self function_179e06df(var_3929e8a2))
	{
		wait(0.05);
	}
	self function_62a7329();
	if(self.var_db7bb468 === "do_futz")
	{
		self thread function_d6617e36();
	}
	self namespace_37b990db::function_afb82faf(100);
}

/*
	Name: function_1a5d54fa
	Namespace: namespace_80a43443
	Checksum: 0xD2E3FF6B
	Offset: 0x82F0
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_1a5d54fa()
{
	var_19ec42b2 = function_4bd0142f("bulletrange");
	function_6c1294b8("bulletrange", 65000);
	level namespace_ad23e503::function_1ab5ebec("dead_turret_stop_station_ambients");
	function_6c1294b8("bulletrange", var_19ec42b2);
}

/*
	Name: function_8d753d94
	Namespace: namespace_80a43443
	Checksum: 0x4A997ABC
	Offset: 0x8388
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_8d753d94()
{
	level namespace_ad23e503::function_1ab5ebec("jumpdirect_scene_done");
	level.var_9db406db namespace_71b8dba1::function_81141386("khal_we_have_to_hurry_0", function_72a94f05(0.1, 0.25));
	level.var_9db406db namespace_ad23e503::function_1ab5ebec("khalil_ready");
	wait(1);
	level.var_9db406db thread function_afe40e69("khal_get_in_0", 6, 9, "players_ready", "cin_ram_04_02_easterncheck_1st_entertruck_demo", 1);
}

/*
	Name: function_afe40e69
	Namespace: namespace_80a43443
	Checksum: 0x5F8319A4
	Offset: 0x8458
	Size: 0xD7
	Parameters: 6
	Flags: None
*/
function function_afe40e69(var_385eca05, var_464f9e6e, var_d8d7c010, var_53e4687d, var_294306eb, var_d53650fe)
{
	if(!isdefined(var_d53650fe))
	{
		var_d53650fe = 1;
	}
	level endon(var_53e4687d);
	var_3e671a1 = 0;
	while(var_d53650fe > var_3e671a1)
	{
		if(!isdefined(var_294306eb) || !level namespace_cc27597::function_367f8966(var_294306eb))
		{
			self namespace_71b8dba1::function_81141386(var_385eca05);
			var_3e671a1++;
		}
		wait(function_72a94f05(var_464f9e6e, var_d8d7c010));
	}
}

/*
	Name: function_b8a391f4
	Namespace: namespace_80a43443
	Checksum: 0x3A0B3F4B
	Offset: 0x8538
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b8a391f4()
{
	self namespace_71b8dba1::function_81141386("esl1_let_s_move_let_s_mo_0", function_72a94f05(4, 6));
}

/*
	Name: function_37af8a07
	Namespace: namespace_80a43443
	Checksum: 0xD2A0D91D
	Offset: 0x8580
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_37af8a07(var_fa42a0e2)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < self.size; var_c957f6b6++)
	{
		level namespace_ad23e503::function_c35e6aab(self[var_c957f6b6].var_170527fb + var_fa42a0e2);
	}
}

/*
	Name: function_9b92c048
	Namespace: namespace_80a43443
	Checksum: 0x7E2A6EA8
	Offset: 0x85E8
	Size: 0x5D
	Parameters: 1
	Flags: None
*/
function function_9b92c048(var_fa42a0e2)
{
	for(var_c957f6b6 = 0; var_c957f6b6 < self.size; var_c957f6b6++)
	{
		level namespace_ad23e503::function_1ab5ebec(self[var_c957f6b6].var_170527fb + var_fa42a0e2);
	}
}

/*
	Name: function_4772599c
	Namespace: namespace_80a43443
	Checksum: 0x62C4D246
	Offset: 0x8650
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_4772599c()
{
	var_c4aa66fd = function_99201f25("temp_egg_trig", "targetname");
	var_7005b138 = function_99201f25("temp_egg_cancel_trig", "targetname");
	namespace_84970cc4::function_966ecb29(var_c4aa66fd, &function_2f762b15, var_7005b138);
}

/*
	Name: function_2f762b15
	Namespace: namespace_80a43443
	Checksum: 0x3D633DAF
	Offset: 0x86E0
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_2f762b15(var_c4aa66fd, var_7005b138)
{
	while(!level namespace_ad23e503::function_7922262b("players_ready"))
	{
	}
}


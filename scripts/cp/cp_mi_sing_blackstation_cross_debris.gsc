#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_comm_relay;
#using scripts\cp\cp_mi_sing_blackstation_station;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_e785bfa0;

/*
	Name: function_e9acb08
	Namespace: namespace_e785bfa0
	Checksum: 0x67738285
	Offset: 0x7B0
	Size: 0x1EB
	Parameters: 2
	Flags: None
*/
function function_e9acb08(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_79e1cd97::function_bff1a867("objective_cross_debris");
		namespace_79e1cd97::function_da579a5d("objective_blackstation_exterior");
		level.var_3d556bcd ai::set_ignoreall(1);
		level thread function_b0ed4f4f();
		trigger::use("triggercolor_walkway");
		load::function_a2995f22();
	}
	level thread util::function_d8eaed3d(4);
	level thread scene::Play("cin_bla_13_02_looting_vign_lightningstrike_ziplinetalk_kane_idle");
	level thread namespace_4040b6c2::function_5142ef8e();
	level thread namespace_79e1cd97::function_6778ea09("light_ne");
	level thread function_5fae6516();
	level thread building_collapse();
	level thread function_7e62fe5e();
	level thread function_52065393();
	level.var_2fd26037 thread namespace_4040b6c2::function_a561f620();
	level.var_2fd26037 thread namespace_79e1cd97::dynamic_run_speed();
	level.var_2fd26037 thread function_289b95f6();
	level.var_2fd26037 thread function_9ead7187();
}

/*
	Name: function_508330ae
	Namespace: namespace_e785bfa0
	Checksum: 0x81FA9CC7
	Offset: 0x9A8
	Size: 0x83
	Parameters: 4
	Flags: None
*/
function function_508330ae(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(isdefined(level.var_3d556bcd))
	{
		level.var_3d556bcd skipto::function_d9b1ee00(struct::get("kane_ziplines", "script_noteworthy"));
	}
	level thread util::clear_streamer_hint();
}

/*
	Name: function_b0ed4f4f
	Namespace: namespace_e785bfa0
	Checksum: 0x3502254A
	Offset: 0xA38
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_b0ed4f4f()
{
	var_10d5eaaa = GetEnt("linkto_door_left", "targetname");
	var_7bc07f9 = GetEnt("linkto_door_right", "targetname");
	var_afbdfbfe = GetEnt("com_relay_bridge_doors_left", "targetname");
	var_21829c35 = GetEnt("com_relay_bridge_doors_right", "targetname");
	var_afbdfbfe LinkTo(var_10d5eaaa);
	var_21829c35 LinkTo(var_7bc07f9);
	var_10d5eaaa RotateYaw(100, 0.3);
	var_7bc07f9 RotateYaw(-100, 0.3);
	GetEnt("comrelay_door_clip_right", "targetname") delete();
	GetEnt("comrelay_door_clip_left", "targetname") delete();
}

/*
	Name: function_52065393
	Namespace: namespace_e785bfa0
	Checksum: 0xB6011FEB
	Offset: 0xBD8
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_52065393()
{
	trigger::wait_till("trigger_vo_warn");
	level thread scene::Play("p7_fxanim_cp_blackstation_collapsed_bldg_debris_01_bundle");
	trigger::wait_till("trigger_building_debris2");
	level thread scene::Play("p7_fxanim_cp_blackstation_collapsed_bldg_debris_02_bundle");
}

/*
	Name: function_5fae6516
	Namespace: namespace_e785bfa0
	Checksum: 0x2DFE892E
	Offset: 0xC58
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_5fae6516()
{
	level thread objectives::breadcrumb("cross_debris_breadcrumb");
	trigger::wait_till("trigger_under_zipline");
	level thread objectives::breadcrumb("trigger_zipline_breadcrumb", "cp_level_blackstation_climb");
	level flag::wait_till("goto_zipline");
	skipto::function_be8adfb8("objective_cross_debris");
}

/*
	Name: function_289b95f6
	Namespace: namespace_e785bfa0
	Checksum: 0x1DE3D93C
	Offset: 0xD00
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_289b95f6()
{
	trigger::wait_till("trigger_sky_bridge");
	self dialog::say("hend_structure_s_unstable_0");
	level flag::wait_till("in_atrium");
	level dialog::function_13b3b16a("plyr_watch_out_hendricks_0", 1);
	trigger::wait_till("trigger_vo_warn");
	self dialog::say("hend_watch_your_step_b_0", 0.5);
	level flag::wait_till("vo_falling_apart");
	level dialog::function_13b3b16a("plyr_this_place_is_fallin_0", 1);
}

/*
	Name: function_9ead7187
	Namespace: namespace_e785bfa0
	Checksum: 0xC6919D44
	Offset: 0xE08
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_9ead7187()
{
	level endon("hash_62f8dc0c");
	self ai::set_ignoreall(1);
	level waittill("hash_5050a70c");
	self colors::disable();
	level scene::add_scene_func("cin_bla_12_01_cross_debris_vign_point", &function_8bcb3a1b);
	level scene::Play("cin_bla_12_01_cross_debris_vign_point", self);
	level flag::wait_till("vo_falling_apart");
	self colors::enable();
	level flag::set("hendricks_crossed");
	self ai::set_ignoreall(1);
}

/*
	Name: function_8bcb3a1b
	Namespace: namespace_e785bfa0
	Checksum: 0xA1111C3F
	Offset: 0xF10
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_8bcb3a1b(a_ents)
{
	level.var_2fd26037 SetGoal(GetNode("hendricks_crossdebris_landing", "targetname"));
}

/*
	Name: function_7e62fe5e
	Namespace: namespace_e785bfa0
	Checksum: 0x503E241
	Offset: 0xF60
	Size: 0x1D5
	Parameters: 0
	Flags: None
*/
function function_7e62fe5e()
{
	level flag::wait_till("atrium_rubble_dropped");
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("cp_blackstation_building_lean_rumble");
	}
	var_895e60d2 = Array::randomize(struct::get_array("crossdebris_window"));
	for(i = 0; i < 4; i++)
	{
		glassRadiusDamage(var_895e60d2[i].origin, 100, 500, 500);
		wait(RandomFloat(1));
	}
	level waittill("hash_b251293d");
	for(i = 4; i < var_895e60d2.size; i++)
	{
		glassRadiusDamage(var_895e60d2[i].origin, 100, 500, 500);
		wait(RandomFloat(0.3));
	}
}

/*
	Name: building_collapse
	Namespace: namespace_e785bfa0
	Checksum: 0x41D64E5F
	Offset: 0x1140
	Size: 0x253
	Parameters: 0
	Flags: None
*/
function building_collapse()
{
	level flag::wait_till("in_atrium");
	var_b5ebc943 = GetEnt("crossdebris_rubble_drop", "targetname");
	var_b5ebc943 PhysicsLaunch();
	level flag::set("atrium_rubble_dropped");
	v_origin = struct::get("crossdebris_rubble_impact").origin;
	RadiusDamage(v_origin, 800, 5, 5);
	level scene::add_scene_func("p7_fxanim_cp_blackstation_apartment_collapse_bundle", &function_beaf4ba6);
	level scene::Play("p7_fxanim_cp_blackstation_apartment_collapse_bundle");
	function_9e3608e3("wooden_bridge");
	function_6ddd4fa4("frogger_building_fallen");
	Array::run_all(GetEntArray("wooden_bridge", "targetname"), &Hide);
	Array::run_all(GetEntArray("frogger_building_fallen", "targetname"), &show);
	level flag::set("bridge_collapsed");
	var_935a64f = GetEnt("clip_building_collapse", "targetname");
	if(isdefined(var_935a64f))
	{
		var_935a64f delete();
	}
	level thread namespace_4040b6c2::function_b8052aae();
}

/*
	Name: function_beaf4ba6
	Namespace: namespace_e785bfa0
	Checksum: 0x96EA6ACD
	Offset: 0x13A0
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_beaf4ba6(a_ents)
{
	exploder::exploder("fx_expl_apartment_fall");
	level waittill("hash_b251293d");
	foreach(player in level.players)
	{
		player PlayRumbleOnEntity("cp_blackstation_building_collapse_rumble");
	}
}


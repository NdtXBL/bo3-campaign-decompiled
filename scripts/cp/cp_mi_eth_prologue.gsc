#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_ammo_cache;
#using scripts\cp\_collectibles;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_oed;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_turret_sentry;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_eth_prologue_accolades;
#using scripts\cp\cp_mi_eth_prologue_fx;
#using scripts\cp\cp_mi_eth_prologue_patch;
#using scripts\cp\cp_mi_eth_prologue_sound;
#using scripts\cp\cp_prologue_apc;
#using scripts\cp\cp_prologue_bridge;
#using scripts\cp\cp_prologue_cyber_soldiers;
#using scripts\cp\cp_prologue_dark_battle;
#using scripts\cp\cp_prologue_ending;
#using scripts\cp\cp_prologue_enter_base;
#using scripts\cp\cp_prologue_hangars;
#using scripts\cp\cp_prologue_hostage_rescue;
#using scripts\cp\cp_prologue_intro;
#using scripts\cp\cp_prologue_player_sacrifice;
#using scripts\cp\cp_prologue_robot_reveal;
#using scripts\cp\cp_prologue_security_camera;
#using scripts\cp\cp_prologue_util;
#using scripts\cp\cybercom\_cybercom_gadget;
#using scripts\cp\cybercom\_cybercom_tactical_rig;
#using scripts\cp\gametypes\_save;
#using scripts\cp\voice\voice_prologue;
#using scripts\shared\ai\systems\shared;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicleriders_shared;

#namespace namespace_4dc8633b;

/*
	Name: setup_rex_starts
	Namespace: namespace_4dc8633b
	Checksum: 0x582C97F9
	Offset: 0x2480
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function setup_rex_starts()
{
	util::add_gametype("coop");
	util::add_gametype("cpzm");
}

/*
	Name: main
	Namespace: namespace_4dc8633b
	Checksum: 0x8F3BAD68
	Offset: 0x24C0
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function main()
{
	if(SessionModeIsCampaignZombiesGame() && -1)
	{
		SetClearanceCeiling(34);
	}
	else
	{
		SetClearanceCeiling(17);
	}
	init_clientfields();
	util::function_286a5010(7);
	scene::add_wait_for_streamer_hint_scene("cin_pro_20_01_rippedapart_murder");
	savegame::function_8c0c4b3a("prologue");
	init_flags();
	callback::on_connect(&function_7bf018c5);
	callback::on_connect(&on_player_connect);
	collectibles::add_collectible_params("p7_nc_eth_pro_01", 60, (3, -5, 0));
	collectibles::add_collectible_params("p7_nc_eth_pro_04", 120, VectorScale((-1, -1, 0), 3));
	namespace_61c634f2::accolades_init();
	Precache();
	level_setup();
	SetDvar("bullet_ricochetBaseChance", 0);
	namespace_34e37984::main();
	namespace_7685657b::main();
	namespace_feda6b63::init_voice();
	level.var_1e983b11 = 0;
	level.var_d829fe9f = 0;
	level.var_d086f08f = 1;
	skipto::function_f3e035ef();
	level thread setup_skiptos();
	callback::on_spawned(&on_player_spawned);
	if(!SessionModeIsCampaignZombiesGame())
	{
		callback::on_loadout(&function_974050f);
	}
	load::main();
	SetGametypeSetting("trm_maxHeight", 50);
	namespace_8cf14dc8::function_7403e82b();
	SetDvar("cg_viewVehicleInfluenceGunner_mode", 2);
}

/*
	Name: function_7bf018c5
	Namespace: namespace_4dc8633b
	Checksum: 0x7B278A24
	Offset: 0x2788
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_7bf018c5()
{
	self flag::init("tutorial_allowed", 1);
}

/*
	Name: level_setup
	Namespace: namespace_4dc8633b
	Checksum: 0x3CC8B24F
	Offset: 0x27B8
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function level_setup()
{
	var_27606155 = GetEntArray("trigger_ob_defend", "targetname");
	foreach(var_a57773f5 in var_27606155)
	{
		var_a57773f5 TriggerEnable(0);
	}
	var_5aebca26 = GetEnt("rpg_target", "targetname");
	var_5aebca26 Hide();
	function_9e3608e3("fxanim_bridge_static2");
}

/*
	Name: init_flags
	Namespace: namespace_4dc8633b
	Checksum: 0x870DBF8C
	Offset: 0x28D8
	Size: 0x8E3
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("tower_doors_open");
	level flag::init("is_base_alerted");
	level flag::init("start_tower_collapse");
	level flag::init("hendr_crossed_tarmac");
	level flag::init("start_hendr_kill");
	level flag::init("stealth_kill_prepare_done");
	level flag::init("security_cam_full_house");
	level flag::init("face_scanning_complete");
	level flag::init("face_scanning_double_pause");
	level flag::init("scanning_dialog_done");
	level flag::init("player_past_security_room");
	level flag::init("hendricks_exit_cam_room");
	level flag::init("start_grenade_roll");
	level flag::init("player_breached_early");
	level flag::init("interrogation_finished");
	level flag::init("vtol_destroy_obj");
	level flag::init("hendricks_in_lift");
	level flag::init("khalil_in_lift");
	level flag::init("minister_in_lift");
	level flag::init("vtol_has_crashed");
	level flag::init("pallas_at_window");
	level flag::init("player_trigger_gear_drop");
	level flag::init("hangar_5_bc");
	level flag::init("2nd_hangar_apc_in_pos");
	level flag::init("spawn_plane_hangar_enemies");
	level flag::init("ev_enabled");
	level flag::init("vtol_guards_alerted");
	level flag::init("taylor_direct");
	level flag::init("robot_contact");
	level flag::init("spawn_robot_horde");
	level flag::init("open_fire");
	level flag::init("garage_open");
	level flag::init("garage_closed");
	level flag::init("garage_enter");
	level flag::init("players_in_garage");
	level flag::init("allies_in_garage");
	level flag::init("minister_apc_done");
	level flag::init("garage_dent");
	level flag::init("garage_breach");
	level flag::init("garage_broken");
	level flag::init("ai_in_apc");
	level flag::init("apc_ready");
	level flag::init("apc_unlocked");
	level flag::init("apc_rail_fail");
	level flag::init("failed_apc_boarding");
	level flag::init("players_are_in_apc");
	level flag::init("apc_rail_begin");
	level flag::init("robot_swarm");
	level flag::init("apc_restart");
	level flag::init("apc_engine_started");
	level flag::init("apc_resume");
	level flag::init("obs_collapse");
	level flag::init("apc_done");
	level flag::init("deleting_havok_object");
	level flag::init("apc_crash");
	level flag::init("pod_on_ground");
	level flag::init("minister_pos");
	level flag::init("ready_load");
	level flag::init("pod_waypoint");
	level flag::init("start_defend_countdown");
	level flag::init("shift_defend");
	level flag::init("apc_arrive");
	level flag::init("goto_pod");
	level flag::init("pod_arrive");
	level flag::init("pod_loaded");
	level flag::init("dropship_return");
	level flag::init("pod_go");
	level flag::init("pod_gone");
	level flag::init("rpg_done");
	level flag::init("activate_bc_5");
	level flag::init("activate_db_bc_2");
}

/*
	Name: on_player_connect
	Namespace: namespace_4dc8633b
	Checksum: 0xC9EC2AB2
	Offset: 0x31C8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	self flag::init("custom_loadout");
	if(!self namespace_2cb3876f::function_72e9bdb8())
	{
		self.disableClassSelection = 1;
	}
}

/*
	Name: on_player_spawned
	Namespace: namespace_4dc8633b
	Checksum: 0x24B4B40
	Offset: 0x3220
	Size: 0x3D3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	if(!SessionModeIsCampaignZombiesGame())
	{
		self namespace_16f9ecd3::function_35ce409(0);
		if(!self namespace_2cb3876f::function_72e9bdb8())
		{
			self thread function_95517e0b();
		}
	}
	if(!SessionModeIsCampaignZombiesGame() && !isdefined(self.var_40c94058))
	{
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE5");
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE6");
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE10");
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE11");
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE16");
		UploadStats(self);
		self.var_40c94058 = 1;
	}
	self.var_5e3ab4ad = 0;
	self.var_d1cabfc = 0;
	if(level flag::exists("ev_enabled") && level flag::get("ev_enabled"))
	{
		self namespace_16f9ecd3::function_35ce409(1);
	}
	if(!SessionModeIsCampaignZombiesGame())
	{
		if(!self namespace_2cb3876f::function_72e9bdb8())
		{
			self.var_8dcb3948 = 1;
			n_body_id = GetCharacterBodyStyleIndex(0, "CPUI_OUTFIT_PROLOGUE");
			self SetCharacterBodyStyle(n_body_id);
			self setMoveSpeedScale(0.9);
			self clientfield::set_to_player("unlimited_sprint_off", 1);
		}
	}
	var_7476c97b = 0;
	var_f690a1c1 = Array("skipto_air_traffic_controller", "skipto_nrc_knocking", "skipto_blend_in", "skipto_vtol_tackle", "skipto_robot_horde", "skipto_apc", "skipto_apc_rail", "skipto_apc_rail_stall", "skipto_robot_defend", "skipto_prologue_ending");
	foreach(str_skipto in var_f690a1c1)
	{
		if(level.var_c0e97bd == str_skipto)
		{
			var_7476c97b = 1;
			break;
		}
	}
	if(var_7476c97b)
	{
		level namespace_2cb3876f::function_6a5f89cb(level.var_c0e97bd, 0);
	}
	if(level flag::get("players_are_in_apc"))
	{
		self apc::function_fc1b1b72();
	}
}

/*
	Name: function_95517e0b
	Namespace: namespace_4dc8633b
	Checksum: 0x137459A4
	Offset: 0x3600
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_95517e0b()
{
	self endon("death");
	while(1)
	{
		self waittill("scene_enable_cybercom");
		util::wait_network_frame();
		level notify("disable_cybercom", self, 1);
	}
}

/*
	Name: function_974050f
	Namespace: namespace_4dc8633b
	Checksum: 0x1C93E773
	Offset: 0x3658
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_974050f()
{
	if(!self namespace_2cb3876f::function_72e9bdb8() && !SessionModeIsCampaignZombiesGame())
	{
		level notify("disable_cybercom", self, 1);
		self namespace_726a1ef0::function_78908229();
		self namespace_2cb3876f::give_player_weapons();
	}
	else
	{
		self flag::set("custom_loadout");
	}
	self function_3fe38b8a();
}

/*
	Name: function_3fe38b8a
	Namespace: namespace_4dc8633b
	Checksum: 0xC218D1F3
	Offset: 0x3710
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_3fe38b8a()
{
	if(SessionModeIsCampaignZombiesGame())
	{
		return;
	}
	Primaries = self GetWeaponsListPrimaries();
	if(isdefined(Primaries))
	{
		foreach(primary_weapon in Primaries)
		{
			if(primary_weapon !== self.secondaryLoadoutWeapon)
			{
				self._current_weapon = primary_weapon;
				break;
			}
		}
	}
}

/*
	Name: init_clientfields
	Namespace: namespace_4dc8633b
	Checksum: 0x56C92233
	Offset: 0x37F0
	Size: 0x423
	Parameters: 0
	Flags: None
*/
function init_clientfields()
{
	clientfield::register("world", "tunnel_wall_explode", 1, 1, "int");
	clientfield::register("toplayer", "unlimited_sprint_off", 1, 1, "int");
	clientfield::register("world", "setup_security_cameras", 1, 1, "int");
	clientfield::register("toplayer", "set_cam_lookat_object", 1, 4, "int");
	clientfield::register("toplayer", "sndCameraScanner", 1, 3, "int");
	clientfield::register("scriptmover", "update_camera_position", 1, 4, "int");
	clientfield::register("world", "interrogate_physics", 1, 1, "int");
	clientfield::register("world", "blend_in_cleanup", 1, 1, "int");
	clientfield::register("world", "fuel_depot_truck_explosion", 1, 1, "int");
	clientfield::register("world", "apc_rail_tower_collapse", 1, 1, "int");
	clientfield::register("world", "vtol_missile_explode_trash_fx", 1, 1, "int");
	clientfield::register("toplayer", "turn_on_multicam", 1, 3, "int");
	clientfield::register("toplayer", "turn_off_tacmode_vfx", 1, 1, "int");
	clientfield::register("toplayer", "dropship_rumble_loop", 1, 1, "int");
	clientfield::register("toplayer", "apc_speed_blur", 1, 1, "int");
	clientfield::register("world", "diaz_break_1", 1, 2, "int");
	clientfield::register("world", "diaz_break_2", 1, 2, "int");
	clientfield::register("toplayer", "player_tunnel_dust_fx_on_off", 1, 1, "int");
	clientfield::register("toplayer", "player_tunnel_dust_fx", 1, 1, "int");
	clientfield::register("toplayer", "player_blood_splatter", 1, 1, "int");
	clientfield::register("actor", "cyber_soldier_camo", 1, 2, "int");
	clientfield::register("world", "toggle_security_camera_pbg_bank", 1, 1, "int");
}

/*
	Name: Precache
	Namespace: namespace_4dc8633b
	Checksum: 0x99EC1590
	Offset: 0x3C20
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function Precache()
{
}

/*
	Name: setup_skiptos
	Namespace: namespace_4dc8633b
	Checksum: 0x21AA2CE6
	Offset: 0x3C30
	Size: 0x583
	Parameters: 0
	Flags: None
*/
function setup_skiptos()
{
	skipto::add("skipto_air_traffic_controller", &function_f30178fc, "Air Traffic Controller", &function_f0e11b0f);
	skipto::function_d68e678e("skipto_nrc_knocking", &function_5bf6196d, "NRC Knocking", &function_99e8b2fa);
	skipto::add("skipto_blend_in", &function_9afd1f40, "Blend In", &function_a856a753);
	skipto::function_d68e678e("skipto_take_out_guards", &function_6977d5a4, "Take Out Guards", &function_33e74d97);
	skipto::function_d68e678e("skipto_security_camera", &function_57c4f8a7, "Security Camera", &function_e9c19f80);
	skipto::function_d68e678e("skipto_hostage_1", &function_f70ba4de, "Fuel Depot", &function_b8ac064d);
	skipto::function_d68e678e("skipto_prison", &function_563809d0, "Prison", &function_c5e740c3);
	skipto::function_d68e678e("skipto_security_desk", &function_cb5e9ce9, "Security Desk", &function_9a16286);
	skipto::function_d68e678e("skipto_lift_escape", &function_129dd7aa, "Lift Escape", &function_874e4009);
	skipto::function_d68e678e("skipto_intro_cyber_soldiers", &function_8b6d4df5, "Intro Cyber Soldiers", &function_2cf07fc2);
	skipto::function_d68e678e("skipto_hangar", &function_5eddb104, "Hangar", &function_45eb05f7);
	skipto::function_d68e678e("skipto_vtol_collapse", &function_d797037e, "VTOL Collapse", &function_9af4a8ed);
	skipto::function_d68e678e("skipto_jeep_alley", &function_ddf114c9, "Jeep Alley", &function_fea8bf66);
	skipto::add("skipto_bridge_battle", &function_d714762b, "Bridge Battle", &function_47b85bb4);
	skipto::function_d68e678e("skipto_dark_battle", &function_32dc1c24, "Dark Battle", &function_5ee97c17);
	skipto::function_d68e678e("skipto_vtol_tackle", &function_30f4cc7b, "Vtol Tackle", &function_c16332e4);
	skipto::function_d68e678e("skipto_robot_horde", &function_34495a26, "Robot Horde", &function_b91214d5);
	skipto::function_d68e678e("skipto_apc", &apc::function_61ebdfad, "APC", &apc::function_c92883a);
	skipto::function_d68e678e("skipto_apc_rail", &apc::function_c1b99214, "APC Rail", &apc::function_961480e7);
	skipto::add("skipto_apc_rail_stall", &apc::function_2ac0c49, "APC Rail Stall", &apc::function_fbfbaee6);
	skipto::function_d68e678e("skipto_robot_defend", &function_373c7d0a, "Robot Defend", &function_d287c569);
	skipto::add("skipto_prologue_ending", &namespace_b7c5904::function_48700afe, "Player Prologue Ending", &namespace_b7c5904::function_cc36a86d);
}

/*
	Name: function_f30178fc
	Namespace: namespace_4dc8633b
	Checksum: 0xDF450AE9
	Offset: 0x41C0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_f30178fc(str_objective, var_74cd64bc)
{
	function_77d9dff("objective_air_traffic_controller_init");
	namespace_93c87ad0::function_dc04ece5();
}

/*
	Name: function_f0e11b0f
	Namespace: namespace_4dc8633b
	Checksum: 0x58A8D886
	Offset: 0x4208
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_f0e11b0f(name, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		exploder::exploder("fx_exploder_disable_fx_start");
	}
	function_77d9dff("objective_air_traffic_controller_done");
}

/*
	Name: function_5bf6196d
	Namespace: namespace_4dc8633b
	Checksum: 0x59866B35
	Offset: 0x4270
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function function_5bf6196d(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		LUI::prime_movie("cp_prologue_env_post_crash");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		load::function_a2995f22();
		level thread scene::skipto_end("cin_pro_01_02_airtraffic_1st_hack_aftermath", undefined, undefined, 0.7, 1);
		function_acdfe1fe("cp_prologue_env_post_crash", 1);
	}
	objectives::set("cp_level_prologue_locate_the_security_room");
	function_77d9dff("objective_nrc_knocking_init");
	namespace_bd91a0fd::function_1605fd36();
}

/*
	Name: function_99e8b2fa
	Namespace: namespace_4dc8633b
	Checksum: 0xF22D43F9
	Offset: 0x4380
	Size: 0x13B
	Parameters: 4
	Flags: None
*/
function function_99e8b2fa(name, var_74cd64bc, var_e4cd2b8b, player)
{
	function_77d9dff("objective_nrc_knocking_done");
	if(!var_74cd64bc || (level.skipto_point == "skipto_blend_in" || level.skipto_point == "skipto_take_out_guards"))
	{
		level thread scene::Play("p7_fxanim_cp_prologue_vtol_searchlight_bundle");
	}
	callback::on_spawned(&function_4d4f1d4f);
	level.var_83405e54 = 1;
	struct::delete_script_bundle("scene", "cin_pro_01_02_airtraffic_1st_hack_ai");
	struct::delete_script_bundle("scene", "cin_pro_01_02_airtraffic_1st_hack");
	struct::delete_script_bundle("scene", "cin_pro_01_02_airtraffic_1st_hack_aftermath_ai");
	struct::delete_script_bundle("scene", "cin_pro_01_02_airtraffic_1st_hack_aftermath");
}

/*
	Name: function_9afd1f40
	Namespace: namespace_4dc8633b
	Checksum: 0x5E72FF76
	Offset: 0x44C8
	Size: 0x1D3
	Parameters: 2
	Flags: None
*/
function function_9afd1f40(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		objectives::set("cp_level_prologue_locate_the_security_room");
		function_bff1a867("skipto_blend_in_hendricks");
		level.var_2fd26037.pacifist = 1;
		level.var_2fd26037.ignoreme = 1;
		level scene::skipto_end("landing_gear_anim", "targetname");
		level scene::skipto_end("plane_tail_explosion", "targetname");
		level scene::skipto_end("plane_cockpit_explosion", "targetname");
		load::function_a2995f22();
		exploder::exploder("fx_exploder_plane_exp");
		Array::run_all(level.players, &util::function_16c71b8, 1);
		Array::thread_all(level.players, &function_7072c5d8);
		level thread namespace_bd91a0fd::function_6bad1a34();
	}
	function_4a0fb95e("cp_prologue_env_post_crash");
	function_77d9dff("objective_blend_in_init");
	namespace_bd91a0fd::function_568a781d();
}

/*
	Name: function_a856a753
	Namespace: namespace_4dc8633b
	Checksum: 0xA01BFFD1
	Offset: 0x46A8
	Size: 0xB9
	Parameters: 4
	Flags: None
*/
function function_a856a753(name, var_74cd64bc, var_e4cd2b8b, player)
{
	if(!var_74cd64bc || level.skipto_point == "skipto_take_out_guards" || level.skipto_point == "skipto_security_camera")
	{
		level thread scene::init("cin_pro_05_01_securitycam_1st_stealth_kill");
		level thread scene::init("cin_pro_05_01_securitycam_1st_stealth_kill_movetodoor");
	}
	function_77d9dff("objective_blend_in_done");
	level notify("hash_beaa69f3");
}

/*
	Name: function_6977d5a4
	Namespace: namespace_4dc8633b
	Checksum: 0x2A9DB1E0
	Offset: 0x4770
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_6977d5a4(str_objective, var_74cd64bc)
{
	function_77d9dff("objective_take_out_guards_init");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		objectives::set("cp_level_prologue_locate_the_security_room");
		level thread objectives::breadcrumb("blending_in_breadcrumb_3");
		level flag::set("hendr_crossed_tarmac");
		if(!isdefined(level.var_2fd26037))
		{
			level.var_2fd26037 = util::function_740f8516("hendricks");
			function_bff1a867("skipto_take_out_guards_hendricks");
		}
		level scene::skipto_end("landing_gear_anim", "targetname");
		level scene::skipto_end("plane_tail_explosion", "targetname");
		level scene::skipto_end("plane_cockpit_explosion", "targetname");
		level scene::skipto_end_noai("cin_pro_03_02_blendin_vign_tarmac_cross");
		level thread scene::Play("cin_pro_03_02_blendin_vign_attendfire");
		level thread scene::Play("p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle");
		scene::init("cin_pro_03_02_blendin_vign_tarmac_cross_end_idle");
		load::function_a2995f22();
	}
	namespace_bd91a0fd::function_e38f7be3();
}

/*
	Name: function_33e74d97
	Namespace: namespace_4dc8633b
	Checksum: 0x2179E19C
	Offset: 0x4970
	Size: 0x153
	Parameters: 4
	Flags: None
*/
function function_33e74d97(name, var_74cd64bc, var_e4cd2b8b, player)
{
	function_77d9dff("objective_take_out_guards_done");
	level notify("hash_f70290fd");
	if(var_74cd64bc)
	{
		level struct::delete_script_bundle("scene", "p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle");
		level struct::delete_script_bundle("scene", "cin_pro_03_02_blendin_vign_destruction_injured");
		level struct::delete_script_bundle("scene", "cin_pro_03_02_blendin_vign_attendfire");
		level struct::delete_script_bundle("scene", "cin_pro_03_02_blendin_vign_destruction_help");
		level struct::delete_script_bundle("scene", "cin_pro_03_02_blendin_vign_destruction_putoutfire");
	}
	level scene::init("cin_pro_06_03_hostage_1st_khalil_intro_door");
	level scene::stop("p7_fxanim_cp_prologue_vtol_searchlight_bundle");
}

/*
	Name: function_57c4f8a7
	Namespace: namespace_4dc8633b
	Checksum: 0xD42BDAE7
	Offset: 0x4AD0
	Size: 0x1D3
	Parameters: 2
	Flags: None
*/
function function_57c4f8a7(str_objective, var_74cd64bc)
{
	function_77d9dff("objective_security_camera_init");
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
		function_bff1a867();
		skipto::teleport_ai(str_objective);
	}
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		objectives::complete("cp_level_prologue_locate_the_security_room");
		objectives::set("cp_level_prologue_locate_the_minister");
		level flag::set("stealth_kill_prepare_done");
		level thread scene::skipto_end("cin_pro_04_01_takeout_vign_truck_prisoners", undefined, undefined, 0.4);
		level thread scene::skipto_end("cin_pro_04_02_takeout_vign_truck_unload", undefined, undefined, 0.4);
		level thread scene::skipto_end("forkilft_anim", undefined, undefined, 0.5);
		level thread scene::add_scene_func("cin_pro_05_01_securitycam_1st_stealth_kill_prepare", &namespace_e09822e3::function_d6557dc4);
		level thread scene::Play("cin_pro_05_01_securitycam_1st_stealth_kill_prepare");
		load::function_a2995f22();
	}
	namespace_e09822e3::function_d6a885d6(str_objective);
}

/*
	Name: function_e9c19f80
	Namespace: namespace_4dc8633b
	Checksum: 0x9F4760C4
	Offset: 0x4CB0
	Size: 0x123
	Parameters: 4
	Flags: None
*/
function function_e9c19f80(name, var_74cd64bc, var_e4cd2b8b, player)
{
	callback::remove_on_spawned(&function_4d4f1d4f);
	Array::run_all(level.players, &util::function_16c71b8, 0);
	level notify("hash_e1626ff0");
	scene::add_scene_func("cin_pro_06_03_hostage_vign_breach_playerbreach", &prison::function_f8d7f50a, "init");
	scene::init("cin_pro_06_03_hostage_vign_breach_playerbreach");
	var_f33f812b = GetEnt("fuel_truck_faxnim_clip", "targetname");
	var_f33f812b notsolid();
	level.var_83405e54 = undefined;
	function_77d9dff("objective_security_camera_done");
}

/*
	Name: function_f70ba4de
	Namespace: namespace_4dc8633b
	Checksum: 0x63764B93
	Offset: 0x4DE0
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_f70ba4de(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		level flag::set("hendricks_exit_cam_room");
		level thread namespace_21b2c1f2::function_baefe66d();
		level thread scene::skipto_end_noai("cin_pro_05_01_securitycam_1st_stealth_kill");
		load::function_a2995f22();
	}
	function_77d9dff("objective_hostage_1_init");
	level thread objectives::breadcrumb("rescue_breadcrumb_1");
	namespace_ab720c84::function_7af85b91(str_objective);
	level thread scene::init("cin_pro_06_03_hostage_vign_breach_hendrickscover");
}

/*
	Name: function_b8ac064d
	Namespace: namespace_4dc8633b
	Checksum: 0x4985DD6E
	Offset: 0x4F00
	Size: 0xC9
	Parameters: 4
	Flags: None
*/
function function_b8ac064d(name, var_a334437f, var_e4cd2b8b, player)
{
	if(scene::is_active("cin_pro_05_01_securitycam_1st_stealth_kill"))
	{
		level thread scene::stop("cin_pro_05_01_securitycam_1st_stealth_kill");
	}
	var_88e2cef7 = GetEnt("trig_open_weapons_room", "targetname");
	var_88e2cef7 TriggerEnable(0);
	function_77d9dff("hostage_1_done");
	level notify("hash_ba0d25af");
}

/*
	Name: function_563809d0
	Namespace: namespace_4dc8633b
	Checksum: 0xCA6AC9EC
	Offset: 0x4FD8
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_563809d0(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level scene::init("cin_pro_06_03_hostage_vign_breach_hendrickscover");
		namespace_2cb3876f::function_34acbf2();
		level thread namespace_21b2c1f2::function_d4c52995();
		load::function_a2995f22();
	}
	function_77d9dff("objective_prison_init");
	prison::function_955cbf0d(str_objective);
}

/*
	Name: function_c5e740c3
	Namespace: namespace_4dc8633b
	Checksum: 0x343B0CD
	Offset: 0x5098
	Size: 0xC9
	Parameters: 4
	Flags: None
*/
function function_c5e740c3(name, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		exploder::exploder("light_exploder_prison_exit");
	}
	level thread scene::skipto_end_noai("cin_pro_06_03_hostage_vign_breach_playerbreach");
	level thread scene::skipto_end_noai("cin_pro_04_01_takeout_vign_truck_prisoners");
	level scene::init("p7_fxanim_cp_prologue_ceiling_underground_crane_bundle");
	function_77d9dff("prison");
	level notify("prison");
}

/*
	Name: function_cb5e9ce9
	Namespace: namespace_4dc8633b
	Checksum: 0x984838E7
	Offset: 0x5170
	Size: 0x203
	Parameters: 2
	Flags: None
*/
function function_cb5e9ce9(str_objective, var_74cd64bc)
{
	namespace_52f8de11::function_bfe70f02();
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		objectives::set("cp_level_prologue_get_to_the_surface");
		level thread objectives::breadcrumb("post_prison_breadcrumb_start");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		function_bff1a867("skipto_security_desk_hendricks");
		level.var_4d5a4697 = util::function_740f8516("minister");
		function_211ff3c7("skipto_security_desk_minister");
		level.var_4d5a4697 ai::set_ignoreme(1);
		level.var_9db406db = util::function_740f8516("khalil");
		function_c117302b("skipto_security_desk_khalil");
		level.var_9db406db ai::set_ignoreme(1);
		level scene::skipto_end("cin_pro_06_03_hostage_1st_khalil_intro_rescue");
		load::function_a2995f22();
	}
	scene::init("cin_pro_07_01_securitydesk_vign_weapons");
	function_77d9dff("objective_security_desk_init");
	namespace_52f8de11::function_72514870(str_objective);
}

/*
	Name: function_9a16286
	Namespace: namespace_4dc8633b
	Checksum: 0x4C48301F
	Offset: 0x5380
	Size: 0x5B
	Parameters: 4
	Flags: None
*/
function function_9a16286(name, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread scene::init("cin_pro_10_01_hanger_vign_sensory_overload_start");
	function_77d9dff("security_desk_done");
}

/*
	Name: function_129dd7aa
	Namespace: namespace_4dc8633b
	Checksum: 0xDE9F5BD8
	Offset: 0x53E8
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function function_129dd7aa(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		objectives::set("cp_level_prologue_get_to_the_surface");
		level thread namespace_21b2c1f2::function_6c35b4f3();
		level thread objectives::breadcrumb("post_prison_breadcrumb_1");
		load::function_a2995f22();
	}
	function_77d9dff("objective_lift_escape_init");
	namespace_e80bc418::function_68538fd(str_objective);
}

/*
	Name: function_874e4009
	Namespace: namespace_4dc8633b
	Checksum: 0xBFD4469B
	Offset: 0x54E0
	Size: 0x223
	Parameters: 4
	Flags: None
*/
function function_874e4009(name, var_74cd64bc, var_e4cd2b8b, player)
{
	scene::stop("cin_pro_06_03_hostage_vign_breach_playerbreach", 1);
	scene::stop("cin_pro_06_03_hostage_vign_breach_hendrickscover", 1);
	scene::stop("cin_pro_06_03_hostage_vign_breach");
	scene::stop("cin_pro_05_02_securitycam_pip_pipe", 1);
	scene::stop("cin_pro_05_02_securitycam_pip_waterboard", 1);
	scene::stop("cin_pro_05_02_securitycam_pip_branding", 1);
	scene::stop("p7_fxanim_cp_prologue_ceiling_underground_crane_bundle", 1);
	var_2e1f1409 = GetEnt("hangar_gate_02", "targetname");
	var_2e1f1409 ghost();
	var_2e1f1409 = GetEnt("hangar_gate_03", "targetname");
	var_2e1f1409 ghost();
	var_2e1f1409 = GetEnt("hangar_gate_04", "targetname");
	var_2e1f1409 ghost();
	function_bab1ff00("umbra_gate_hangar_02", 1);
	function_bab1ff00("umbra_gate_hangar_03", 1);
	function_bab1ff00("umbra_gate_hangar_04", 1);
	function_77d9dff("lift_escape_done");
}

/*
	Name: function_8b6d4df5
	Namespace: namespace_4dc8633b
	Checksum: 0x5E99002E
	Offset: 0x5710
	Size: 0x1FB
	Parameters: 2
	Flags: None
*/
function function_8b6d4df5(str_objective, var_74cd64bc)
{
	function_77d9dff("objective_intro_cyber_soldiers_init");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		objectives::set("cp_level_prologue_get_to_the_surface");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_9db406db = util::function_740f8516("khalil");
		skipto::teleport_ai(str_objective, level.heroes);
		namespace_e80bc418::function_d4734ff1();
		level.var_be31aa9a = GetEnt("freight_lift", "targetname");
		if(!isdefined(level.var_3dce3f88))
		{
			level.var_3dce3f88 = spawn("script_model", level.var_be31aa9a.origin);
			level.var_be31aa9a LinkTo(level.var_3dce3f88);
		}
		load::function_a2995f22();
		namespace_dccf27b3::function_f9753551();
		level thread namespace_e80bc418::function_a3dbf6a2();
		level waittill("hash_b100689e");
	}
	namespace_dccf27b3::function_23ed1506();
}

/*
	Name: function_2cf07fc2
	Namespace: namespace_4dc8633b
	Checksum: 0x6D9E2A24
	Offset: 0x5918
	Size: 0x173
	Parameters: 4
	Flags: None
*/
function function_2cf07fc2(name, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread scene::init("p7_fxanim_cp_prologue_hangar_window_rip_bundle");
	level thread scene::init("p7_fxanim_cp_prologue_vtol_hangar_bundle");
	level clientfield::set("diaz_break_1", 1);
	level clientfield::set("diaz_break_2", 1);
	scene::init("bridge_tent_01", "targetname");
	scene::init("bridge_tent_02", "targetname");
	scene::init("bridge_tent_03", "targetname");
	level thread scene::skipto_end("p7_fxanim_cp_prologue_hangar_doors_02_bundle");
	level thread Hangar::function_ce858cd3(0);
	callback::on_actor_killed(&Hangar::function_d3c9b1d1);
	function_77d9dff("intro_cyber_soldiers_done");
}

/*
	Name: function_5eddb104
	Namespace: namespace_4dc8633b
	Checksum: 0xD651EF09
	Offset: 0x5A98
	Size: 0x293
	Parameters: 2
	Flags: None
*/
function function_5eddb104(str_objective, var_74cd64bc)
{
	level.var_f58c9f31 = util::function_740f8516("theia");
	level.var_92d245e2 = util::function_740f8516("prometheus");
	level.var_5d4087a6 = util::function_740f8516("hyperion");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level.var_f58c9f31 thread namespace_dccf27b3::function_9110a277(1, 0);
		level.var_92d245e2 thread namespace_dccf27b3::function_9110a277(1, 0);
		level.var_5d4087a6 thread namespace_dccf27b3::function_9110a277(1, 0);
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		objectives::set("cp_level_prologue_get_to_the_surface");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_7f246cd7 = util::function_740f8516("pallas");
		skipto::teleport_ai(str_objective, level.heroes);
		level.var_be31aa9a = GetEnt("freight_lift", "targetname");
		level.var_be31aa9a MoveZ(100, 0.05);
		load::function_a2995f22();
	}
	level thread objectives::breadcrumb("hangar_breadcrumb_start");
	level thread namespace_21b2c1f2::function_46333a8a();
	function_77d9dff("objective_hangar_init");
	Hangar::function_83921c71();
}

/*
	Name: function_45eb05f7
	Namespace: namespace_4dc8633b
	Checksum: 0x92718687
	Offset: 0x5D38
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_45eb05f7(name, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread scene::skipto_end("p7_fxanim_cp_prologue_hangar_doors_03_bundle");
	callback::remove_on_actor_killed(&Hangar::function_d3c9b1d1);
	function_77d9dff("hangar_done");
}

/*
	Name: function_d797037e
	Namespace: namespace_4dc8633b
	Checksum: 0xB6B653D0
	Offset: 0x5DC0
	Size: 0x293
	Parameters: 2
	Flags: None
*/
function function_d797037e(str_objective, var_74cd64bc)
{
	level.var_92d245e2 = util::function_740f8516("prometheus");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		objectives::set("cp_level_prologue_get_to_the_surface");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_7f246cd7 = util::function_740f8516("pallas");
		level thread scene::skipto_end("cin_pro_10_04_hangar_vign_leap_new_wing2window");
		level flag::set("pallas_at_window");
		level.var_fac57550 = vehicle::simple_spawn_single("vtol_collapse_apc_initial");
		wait(0.15);
		level.var_2fd26037 thread Hangar::function_d418516(level.var_fac57550);
		level.var_9db406db thread Hangar::function_d418516(level.var_fac57550);
		trigger::use("hangar_end_move_allies", "targetname", undefined, 0);
		level Hangar::function_10ab649();
		level clientfield::set("diaz_break_1", 2);
		skipto::teleport_ai(str_objective, level.heroes);
		load::function_a2995f22();
	}
	level thread objectives::breadcrumb("hangar_breadcrumb_4");
	function_77d9dff("objective_vtol_collapse_init");
	Hangar::function_31427ccd();
}

/*
	Name: function_9af4a8ed
	Namespace: namespace_4dc8633b
	Checksum: 0x29048C6E
	Offset: 0x6060
	Size: 0x1EB
	Parameters: 4
	Flags: None
*/
function function_9af4a8ed(name, var_74cd64bc, var_e4cd2b8b, player)
{
	var_280d5f68 = GetEnt("hangar_gate_l", "targetname");
	var_3c301126 = GetEnt("hangar_gate_r", "targetname");
	var_9c7511b4 = struct::get("hangar_gate_move_pos_l", "targetname");
	var_205c499a = struct::get("hangar_gate_move_pos_r", "targetname");
	var_c2777dd9 = "p7_fxanim_cp_prologue_hangar_door_bundle";
	level Hangar::function_a8cd091b(1, var_280d5f68, var_3c301126, var_9c7511b4, var_205c499a, var_c2777dd9);
	exploder::exploder("light_exploder_darkbattle");
	exploder::exploder("light_exploder_defend_radio_tower");
	function_bab1ff00("umbra_gate_hangar_02", 0);
	function_bab1ff00("umbra_gate_hangar_03", 0);
	function_bab1ff00("umbra_gate_hangar_04", 0);
	if(name == "skipto_jeep_alley" && var_74cd64bc)
	{
		namespace_30207c6f::function_fcc9ed10();
	}
	level notify("hash_73facd66");
	function_77d9dff("vtol_collapse_done");
}

/*
	Name: function_ddf114c9
	Namespace: namespace_4dc8633b
	Checksum: 0x7F995C44
	Offset: 0x6258
	Size: 0x383
	Parameters: 2
	Flags: None
*/
function function_ddf114c9(str_objective, var_74cd64bc)
{
	level.var_f58c9f31 = util::function_740f8516("theia");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		level thread scene::skipto_end("p7_fxanim_cp_prologue_vtol_hangar_bundle");
		var_2ef9d306 = GetEnt("vtol_hangar_drop", "targetname");
		var_2ef9d306 thread namespace_2cb3876f::function_d723979e("swap_vtol_to_destroyed", "veh_t7_mil_vtol_nrc_no_interior_d", "vtol_collapse_done");
		level notify("hash_1d072da3");
		level util::delay(0.5, undefined, &Hangar::function_ce858cd3, 1);
		var_ac769486 = GetEnt("clip_player_vtol_collapse_backtrack_doorway", "targetname");
		var_ac769486 MoveZ(100 * -1, 0.05);
		var_58576bff = GetEnt("vtol_hangar_in_l", "targetname");
		var_bbc00d9a = GetEnt("vtol_hangar_in_r", "targetname");
		vec_right = AnglesToRight(var_58576bff.angles);
		var_58576bff moveto(var_58576bff.origin - vec_right * 50, 0.5);
		var_bbc00d9a moveto(var_bbc00d9a.origin + vec_right * 44, 0.5);
		objectives::set("cp_level_prologue_get_to_the_surface");
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective, level.heroes);
		load::function_a2995f22();
	}
	level thread scene::Play("p7_fxanim_cp_prologue_plane_hanger_pristine_bundle");
	function_77d9dff("objective_jeep_alley_init");
	namespace_30207c6f::function_910f2aa();
}

/*
	Name: function_fea8bf66
	Namespace: namespace_4dc8633b
	Checksum: 0xC7723DE3
	Offset: 0x65E8
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_fea8bf66(name, var_74cd64bc, var_e4cd2b8b, player)
{
	function_77d9dff("jeep_alley_done");
}

/*
	Name: function_d714762b
	Namespace: namespace_4dc8633b
	Checksum: 0xBA694FC8
	Offset: 0x6630
	Size: 0x2E3
	Parameters: 2
	Flags: None
*/
function function_d714762b(str_objective, var_74cd64bc)
{
	level.var_5d4087a6 = util::function_740f8516("hyperion");
	level.var_f58c9f31 = util::function_740f8516("theia");
	var_61b253a2 = GetWeapon("sniper_fastbolt_hero", "extclip", "fastreload");
	level.var_5d4087a6 shared::StowWeapon(var_61b253a2, (-8, 4, 14), VectorScale((1, 0, 0), 90));
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		level.var_f58c9f31 = util::function_740f8516("theia");
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		skipto::teleport_ai(str_objective, level.heroes);
		level scene::add_scene_func("cin_pro_11_01_jeepalley_vign_engage_attack", &namespace_30207c6f::function_cf946de6);
		level scene::add_scene_func("cin_pro_11_01_jeepalley_vign_engage_attack", &namespace_30207c6f::function_7af067f4, "done");
		level thread scene::skipto_end("cin_pro_11_01_jeepalley_vign_engage_attack", undefined, undefined, 0.8);
		scene::Play("p7_fxanim_cp_prologue_plane_hanger_explode_bundle");
		level.var_35c12e63 = struct::get("bridge_obj", "targetname");
		objectives::set("cp_waypoint_breadcrumb", level.var_35c12e63);
		load::function_a2995f22();
		trigger::use("jeep_alley_allies_move", "targetname");
	}
	function_77d9dff("objective_bridge_battle_init");
	namespace_dc79b4d3::function_b86981e6();
}

/*
	Name: function_47b85bb4
	Namespace: namespace_4dc8633b
	Checksum: 0x46861E43
	Offset: 0x6920
	Size: 0x24B
	Parameters: 4
	Flags: None
*/
function function_47b85bb4(name, var_74cd64bc, var_e4cd2b8b, player)
{
	scene::skipto_end("bridge_tent_01", "targetname");
	scene::skipto_end("bridge_tent_02", "targetname");
	scene::skipto_end("bridge_tent_03", "targetname");
	scene::skipto_end("p7_fxanim_cp_prologue_plane_hanger_explode_bundle");
	var_59ff07ee = GetEnt("bridge_section_1", "targetname");
	if(isdefined(var_59ff07ee))
	{
		var_59ff07ee delete();
		var_33fc8d85 = GetEnt("bridge_section_2", "targetname");
		var_33fc8d85 delete();
		var_dfa131c = GetEnt("bridge_section_3", "targetname");
		var_dfa131c delete();
		var_e7f798b3 = GetEntArray("bridge_section_4", "targetname");
		Array::run_all(var_e7f798b3, &delete);
	}
	e_bridge = GetEnt("prologue_bridge", "targetname");
	if(isdefined(e_bridge))
	{
		e_bridge delete();
	}
	function_6ddd4fa4("fxanim_bridge_static2");
	level notify("hash_800cbac6");
	function_77d9dff("bridge_battle_done");
}

/*
	Name: function_32dc1c24
	Namespace: namespace_4dc8633b
	Checksum: 0x16773E3E
	Offset: 0x6B78
	Size: 0x1E3
	Parameters: 2
	Flags: None
*/
function function_32dc1c24(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		level.var_5d4087a6 = util::function_740f8516("hyperion");
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		var_61b253a2 = GetWeapon("sniper_fastbolt_hero", "extclip", "fastreload");
		level.var_5d4087a6 shared::StowWeapon(var_61b253a2, (-8, 4, 14), VectorScale((1, 0, 0), 90));
		level thread scene::skipto_end("cin_pro_11_01_jeepalley_vign_engage_attack", undefined, undefined, 0.98);
		load::function_a2995f22();
		exploder::exploder("light_exploder_darkbattle");
		skipto::teleport_ai(str_objective, level.heroes);
	}
	function_77d9dff("objective_dark_battle_init");
	namespace_36e484c6::function_6feca657();
}

/*
	Name: function_5ee97c17
	Namespace: namespace_4dc8633b
	Checksum: 0x34207338
	Offset: 0x6D68
	Size: 0x423
	Parameters: 4
	Flags: None
*/
function function_5ee97c17(name, var_74cd64bc, var_e4cd2b8b, player)
{
	level thread scene::init("cin_pro_15_01_opendoor_vign_getinside_new_prometheus_doorhold");
	function_77d9dff("dark_battle_done");
	if(scene::is_playing("cin_pro_11_01_jeepalley_vign_engage_attack"))
	{
		level thread scene::stop("cin_pro_11_01_jeepalley_vign_engage_attack");
	}
	var_59ff07ee = GetEnt("bridge_section_1", "targetname");
	if(isdefined(var_59ff07ee))
	{
		var_59ff07ee delete();
	}
	var_33fc8d85 = GetEnt("bridge_section_2", "targetname");
	if(isdefined(var_33fc8d85))
	{
		var_33fc8d85 delete();
	}
	var_dfa131c = GetEnt("bridge_section_3", "targetname");
	if(isdefined(var_dfa131c))
	{
		var_dfa131c delete();
	}
	var_22216bde = GetEntArray("bridge_section_4", "targetname");
	foreach(var_8f9551fe in var_22216bde)
	{
		var_8f9551fe delete();
	}
	exploder::stop_exploder("light_exploder_darkbattle");
	if(!SessionModeIsCampaignZombiesGame())
	{
		Array::thread_all(level.players, &namespace_16f9ecd3::function_35ce409, 0);
	}
	level thread apc::function_81a9e31c();
	e_collision = GetEnt("hangar_vtol_crash_clip", "targetname");
	e_collision connectpaths();
	e_collision delete();
	wait(0.05);
	e_door = GetEnt("hall_door_slide_right", "targetname");
	e_door connectpaths();
	e_door delete();
	wait(0.05);
	e_door = GetEnt("hall_door_slide_left", "targetname");
	e_door connectpaths();
	e_door delete();
	trigger::use("t_motorpool_spawns_disable", "targetname");
	var_9a246ea8 = GetEnt("t_robot_horde_oob", "targetname");
	if(isdefined(var_9a246ea8))
	{
		var_9a246ea8 TriggerEnable(0);
	}
}

/*
	Name: function_30f4cc7b
	Namespace: namespace_4dc8633b
	Checksum: 0x8CD1DFBB
	Offset: 0x7198
	Size: 0x323
	Parameters: 2
	Flags: None
*/
function function_30f4cc7b(str_objective, var_74cd64bc)
{
	level.var_92d245e2 = util::function_740f8516("prometheus");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		objectives::complete("cp_level_prologue_escort_data_center");
		objectives::set("cp_level_prologue_find_vehicle");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_5d4087a6 = util::function_740f8516("hyperion");
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_4d5a4697 = util::function_740f8516("minister");
		var_61b253a2 = GetWeapon("sniper_fastbolt_hero", "extclip", "fastreload");
		level.var_5d4087a6 shared::StowWeapon(var_61b253a2, (-8, 4, 14), VectorScale((1, 0, 0), 90));
		level thread namespace_36e484c6::function_25c6144e();
		level scene::init("p7_fxanim_cp_prologue_vtol_tackle_windows_bundle");
		load::function_a2995f22();
		Array::thread_all(level.players, &clientfield::set_to_player, "turn_off_tacmode_vfx", 1);
		Array::thread_all(level.players, &namespace_16f9ecd3::function_35ce409, 0);
		Array::thread_all(level.players, &namespace_16f9ecd3::function_12a9df06, 0);
		spawner::add_spawn_function_group("initial_vtol_guys", "targetname", &namespace_2cb3876f::function_35be2939, "vtol_has_crashed");
		spawn_manager::enable("vtol_tackle_spwn_mgr2");
		skipto::teleport_ai(str_objective, level.heroes);
	}
	level thread namespace_21b2c1f2::function_63ffe714();
	function_77d9dff("objective_vtol_tackle_init");
	namespace_1c6b20b7::function_e9166d2d(var_74cd64bc);
}

/*
	Name: function_c16332e4
	Namespace: namespace_4dc8633b
	Checksum: 0x52963DA3
	Offset: 0x74C8
	Size: 0xB3
	Parameters: 4
	Flags: None
*/
function function_c16332e4(name, var_74cd64bc, var_e4cd2b8b, player)
{
	s_door = level.scriptbundles["scene"]["cin_pro_15_01_opendoor_vign_getinside_new_hendricks_and_prometheus"].objects[2];
	s_door.firstframe = 1;
	s_door.spawnoninit = 1;
	level scene::init("cin_pro_15_01_opendoor_vign_getinside_new_hendricks_and_prometheus");
	function_77d9dff("vtol_tackle_done");
}

/*
	Name: function_34495a26
	Namespace: namespace_4dc8633b
	Checksum: 0x22FEE1C8
	Offset: 0x7588
	Size: 0x203
	Parameters: 2
	Flags: None
*/
function function_34495a26(str_objective, var_74cd64bc)
{
	level.var_7f246cd7 = util::function_740f8516("pallas");
	level.var_f58c9f31 = util::function_740f8516("theia");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		objectives::complete("cp_level_prologue_escort_data_center");
		objectives::set("cp_level_prologue_find_vehicle");
		level.var_f58c9f31 = util::function_740f8516("theia");
		level.var_5d4087a6 = util::function_740f8516("hyperion");
		level.var_9db406db = util::function_740f8516("khalil");
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_92d245e2 = util::function_740f8516("prometheus");
		skipto::teleport_ai(str_objective, level.heroes);
		level namespace_2cb3876f::function_6a5f89cb("skipto_robot_horde_ai");
		load::function_a2995f22();
	}
	function_77d9dff("objective_robot_horde_init");
	namespace_12501af4::function_78909aa1();
}

/*
	Name: function_b91214d5
	Namespace: namespace_4dc8633b
	Checksum: 0x95FB6890
	Offset: 0x7798
	Size: 0x3B
	Parameters: 4
	Flags: None
*/
function function_b91214d5(name, var_74cd64bc, var_e4cd2b8b, player)
{
	function_77d9dff("robot_horde_done");
}

/*
	Name: function_373c7d0a
	Namespace: namespace_4dc8633b
	Checksum: 0x956E725F
	Offset: 0x77E0
	Size: 0x33B
	Parameters: 2
	Flags: None
*/
function function_373c7d0a(str_objective, var_74cd64bc)
{
	function_77d9dff("objective_robot_defend_init");
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		level thread namespace_2cb3876f::function_cfabe921();
		level.var_2fd26037 = util::function_740f8516("hendricks");
		level.var_4d5a4697 = util::function_740f8516("minister");
		level.var_9db406db = util::function_740f8516("khalil");
		level.apc = vehicle::simple_spawn_single("apc");
		level.apc vehicle::lights_off();
		level thread scene::skipto_end("cin_pro_17_01_robotdefend_vign_apc_exit_apc");
		load::function_a2995f22();
		level namespace_2cb3876f::function_6a5f89cb("skipto_robot_defend");
		level flag::set("apc_done");
		var_c1767e6 = GetEnt("m_tunnel_vtol_death", "targetname");
		var_c1767e6 show();
		exploder::exploder("fx_exploder_vtol_crash_rail");
		level flag::set("apc_unlocked");
		level thread apc::function_599ebca1();
	}
	else
	{
		level.apc turret::disable(1);
		level.apc turret::disable(2);
		level.apc turret::disable(3);
		level.apc turret::disable(4);
	}
	level thread function_b5502f69();
	PlayFXOnTag(level._effect["apc_death_fx_cin"], level.apc, "tag_origin_animate");
	exploder::exploder("light_exploder_headlight_flicker_02");
	function_c117302b("skipto_robot_defend_khalil");
	function_211ff3c7("skipto_robot_defend_minister");
	function_bff1a867("skipto_robot_defend_hendricks");
	namespace_835fda7e::function_5dcf4c9a(var_74cd64bc);
}

/*
	Name: function_b5502f69
	Namespace: namespace_4dc8633b
	Checksum: 0x7119BFEA
	Offset: 0x7B28
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_b5502f69()
{
	var_9b399cbb = Array("p7_fxanim_cp_prologue_bridge_tent_bundle", "p7_fxanim_cp_prologue_bridge_bundle", "cin_pro_12_01_darkbattle_vign_dive_kill_start");
	foreach(str_bundlename in var_9b399cbb)
	{
		var_9cc495a4 = struct::get_array(str_bundlename, "targetname");
		foreach(bundle in var_9cc495a4)
		{
			if(isdefined(bundle))
			{
				bundle delete();
			}
		}
	}
}

/*
	Name: function_d287c569
	Namespace: namespace_4dc8633b
	Checksum: 0x3361883
	Offset: 0x7C90
	Size: 0x49
	Parameters: 4
	Flags: None
*/
function function_d287c569(name, var_74cd64bc, var_e4cd2b8b, player)
{
	function_77d9dff("robot_defend_done");
	level notify("hash_7d7d7481");
}

/*
	Name: function_77d9dff
	Namespace: namespace_4dc8633b
	Checksum: 0x30762FA6
	Offset: 0x7CE8
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_77d9dff(msg)
{
	/#
		println("Dev Block strings are not supported" + msg);
	#/
}

/*
	Name: function_bff1a867
	Namespace: namespace_4dc8633b
	Checksum: 0x697DDE4D
	Offset: 0x7D28
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_bff1a867(var_a7fcc91d)
{
	level.var_2fd26037 = util::function_740f8516("hendricks");
	primary_weapon = GetWeapon("ar_standard");
	level.var_2fd26037 ai::gun_switchto(primary_weapon, "right");
	if(isdefined(var_a7fcc91d))
	{
		s_struct = struct::get(var_a7fcc91d, "targetname");
		level.var_2fd26037 ForceTeleport(s_struct.origin, s_struct.angles);
	}
}

/*
	Name: function_211ff3c7
	Namespace: namespace_4dc8633b
	Checksum: 0x5C578839
	Offset: 0x7E10
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_211ff3c7(var_a7fcc91d)
{
	level.var_4d5a4697 = util::function_740f8516("minister");
	if(isdefined(var_a7fcc91d))
	{
		s_struct = struct::get(var_a7fcc91d, "targetname");
		level.var_4d5a4697 ForceTeleport(s_struct.origin, s_struct.angles);
	}
	if(SessionModeIsCampaignZombiesGame())
	{
		level.var_4d5a4697.script_friendname = "Bishop";
		level.var_4d5a4697.properName = "Bishop";
	}
}

/*
	Name: function_c117302b
	Namespace: namespace_4dc8633b
	Checksum: 0xCF9158B1
	Offset: 0x7EF0
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_c117302b(var_a7fcc91d)
{
	level.var_9db406db = util::function_740f8516("khalil");
	if(isdefined(var_a7fcc91d))
	{
		s_struct = struct::get(var_a7fcc91d, "targetname");
		level.var_9db406db ForceTeleport(s_struct.origin, s_struct.angles);
	}
}

/*
	Name: function_16f6b7f1
	Namespace: namespace_4dc8633b
	Checksum: 0x4B4E6356
	Offset: 0x7F90
	Size: 0x8D
	Parameters: 1
	Flags: None
*/
function function_16f6b7f1(str_spawner_name)
{
	a_spawners = GetEntArray(str_spawner_name, "targetname");
	for(i = 0; i < a_spawners.size; i++)
	{
		a_spawners[i] spawner::add_spawn_function(&function_899f174d, str_spawner_name);
	}
}

/*
	Name: function_b6ef2c4e
	Namespace: namespace_4dc8633b
	Checksum: 0x666B28EC
	Offset: 0x8028
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_b6ef2c4e(str_group)
{
	self.delete_group = str_group;
}

/*
	Name: function_6a77bdd4
	Namespace: namespace_4dc8633b
	Checksum: 0xDF69F56F
	Offset: 0x8048
	Size: 0xDD
	Parameters: 1
	Flags: None
*/
function function_6a77bdd4(str_group)
{
	a_ai = GetAIArray();
	if(isdefined(a_ai))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			e_ent = a_ai[i];
			if(isalive(e_ent) && isdefined(e_ent.delete_group) && e_ent.delete_group == str_group)
			{
				e_ent.delete_group = undefined;
				e_ent delete();
			}
		}
	}
}

/*
	Name: function_899f174d
	Namespace: namespace_4dc8633b
	Checksum: 0xB2D10B6C
	Offset: 0x8130
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_899f174d(str_group)
{
	function_b6ef2c4e(str_group);
}

/*
	Name: function_4d4f1d4f
	Namespace: namespace_4dc8633b
	Checksum: 0xB2A9F391
	Offset: 0x8160
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_4d4f1d4f()
{
	level notify("hash_25ea191a");
	self util::function_16c71b8(1);
	self thread function_7072c5d8();
}

/*
	Name: function_7072c5d8
	Namespace: namespace_4dc8633b
	Checksum: 0xB1122567
	Offset: 0x81B0
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_7072c5d8()
{
	level endon("hash_e1626ff0");
	self notify("hash_beba65a6");
	self endon("hash_beba65a6");
	self endon("death");
	while(1)
	{
		self waittill("player_revived");
		self util::function_16c71b8(1);
	}
}


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
	Name: function_243693d4
	Namespace: namespace_4dc8633b
	Checksum: 0x582C97F9
	Offset: 0x2480
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_243693d4()
{
	namespace_82b91a51::function_3bf39ed7("coop");
	namespace_82b91a51::function_3bf39ed7("cpzm");
}

/*
	Name: function_d290ebfa
	Namespace: namespace_4dc8633b
	Checksum: 0x8F3BAD68
	Offset: 0x24C0
	Size: 0x2BB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	if(function_27c72c1b() && -1)
	{
		function_863d6bb0(34);
	}
	else
	{
		function_863d6bb0(17);
	}
	function_2ea898a8();
	namespace_82b91a51::function_286a5010(7);
	namespace_cc27597::function_6676939("cin_pro_20_01_rippedapart_murder");
	namespace_9f824288::function_8c0c4b3a("prologue");
	function_37af8a07();
	namespace_dabbe128::function_eb99da89(&function_7bf018c5);
	namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
	namespace_d275cebc::function_93523442("p7_nc_eth_pro_01", 60, (3, -5, 0));
	namespace_d275cebc::function_93523442("p7_nc_eth_pro_04", 120, VectorScale((-1, -1, 0), 3));
	namespace_61c634f2::function_4d39a2af();
	function_f7046c76();
	function_d446a137();
	function_6c1294b8("bullet_ricochetBaseChance", 0);
	namespace_34e37984::function_d290ebfa();
	namespace_7685657b::function_d290ebfa();
	namespace_feda6b63::function_e230521c();
	level.var_1e983b11 = 0;
	level.var_d829fe9f = 0;
	level.var_d086f08f = 1;
	namespace_1d795d47::function_f3e035ef();
	level thread function_673254cc();
	namespace_dabbe128::function_356a4ee1(&function_aebcf025);
	if(!function_27c72c1b())
	{
		namespace_dabbe128::function_aa179d1b(&function_974050f);
	}
	namespace_d7916d65::function_d290ebfa();
	function_6896d21f("trm_maxHeight", 50);
	namespace_8cf14dc8::function_7403e82b();
	function_6c1294b8("cg_viewVehicleInfluenceGunner_mode", 2);
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
	self namespace_ad23e503::function_c35e6aab("tutorial_allowed", 1);
}

/*
	Name: function_d446a137
	Namespace: namespace_4dc8633b
	Checksum: 0x3CC8B24F
	Offset: 0x27B8
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_d446a137()
{
	var_27606155 = function_99201f25("trigger_ob_defend", "targetname");
	foreach(var_a57773f5 in var_27606155)
	{
		var_a57773f5 function_175e6b8e(0);
	}
	var_5aebca26 = function_6ada35ba("rpg_target", "targetname");
	var_5aebca26 function_50ccee8d();
	function_9e3608e3("fxanim_bridge_static2");
}

/*
	Name: function_37af8a07
	Namespace: namespace_4dc8633b
	Checksum: 0x870DBF8C
	Offset: 0x28D8
	Size: 0x8E3
	Parameters: 0
	Flags: None
*/
function function_37af8a07()
{
	level namespace_ad23e503::function_c35e6aab("tower_doors_open");
	level namespace_ad23e503::function_c35e6aab("is_base_alerted");
	level namespace_ad23e503::function_c35e6aab("start_tower_collapse");
	level namespace_ad23e503::function_c35e6aab("hendr_crossed_tarmac");
	level namespace_ad23e503::function_c35e6aab("start_hendr_kill");
	level namespace_ad23e503::function_c35e6aab("stealth_kill_prepare_done");
	level namespace_ad23e503::function_c35e6aab("security_cam_full_house");
	level namespace_ad23e503::function_c35e6aab("face_scanning_complete");
	level namespace_ad23e503::function_c35e6aab("face_scanning_double_pause");
	level namespace_ad23e503::function_c35e6aab("scanning_dialog_done");
	level namespace_ad23e503::function_c35e6aab("player_past_security_room");
	level namespace_ad23e503::function_c35e6aab("hendricks_exit_cam_room");
	level namespace_ad23e503::function_c35e6aab("start_grenade_roll");
	level namespace_ad23e503::function_c35e6aab("player_breached_early");
	level namespace_ad23e503::function_c35e6aab("interrogation_finished");
	level namespace_ad23e503::function_c35e6aab("vtol_destroy_obj");
	level namespace_ad23e503::function_c35e6aab("hendricks_in_lift");
	level namespace_ad23e503::function_c35e6aab("khalil_in_lift");
	level namespace_ad23e503::function_c35e6aab("minister_in_lift");
	level namespace_ad23e503::function_c35e6aab("vtol_has_crashed");
	level namespace_ad23e503::function_c35e6aab("pallas_at_window");
	level namespace_ad23e503::function_c35e6aab("player_trigger_gear_drop");
	level namespace_ad23e503::function_c35e6aab("hangar_5_bc");
	level namespace_ad23e503::function_c35e6aab("2nd_hangar_apc_in_pos");
	level namespace_ad23e503::function_c35e6aab("spawn_plane_hangar_enemies");
	level namespace_ad23e503::function_c35e6aab("ev_enabled");
	level namespace_ad23e503::function_c35e6aab("vtol_guards_alerted");
	level namespace_ad23e503::function_c35e6aab("taylor_direct");
	level namespace_ad23e503::function_c35e6aab("robot_contact");
	level namespace_ad23e503::function_c35e6aab("spawn_robot_horde");
	level namespace_ad23e503::function_c35e6aab("open_fire");
	level namespace_ad23e503::function_c35e6aab("garage_open");
	level namespace_ad23e503::function_c35e6aab("garage_closed");
	level namespace_ad23e503::function_c35e6aab("garage_enter");
	level namespace_ad23e503::function_c35e6aab("players_in_garage");
	level namespace_ad23e503::function_c35e6aab("allies_in_garage");
	level namespace_ad23e503::function_c35e6aab("minister_apc_done");
	level namespace_ad23e503::function_c35e6aab("garage_dent");
	level namespace_ad23e503::function_c35e6aab("garage_breach");
	level namespace_ad23e503::function_c35e6aab("garage_broken");
	level namespace_ad23e503::function_c35e6aab("ai_in_apc");
	level namespace_ad23e503::function_c35e6aab("apc_ready");
	level namespace_ad23e503::function_c35e6aab("apc_unlocked");
	level namespace_ad23e503::function_c35e6aab("apc_rail_fail");
	level namespace_ad23e503::function_c35e6aab("failed_apc_boarding");
	level namespace_ad23e503::function_c35e6aab("players_are_in_apc");
	level namespace_ad23e503::function_c35e6aab("apc_rail_begin");
	level namespace_ad23e503::function_c35e6aab("robot_swarm");
	level namespace_ad23e503::function_c35e6aab("apc_restart");
	level namespace_ad23e503::function_c35e6aab("apc_engine_started");
	level namespace_ad23e503::function_c35e6aab("apc_resume");
	level namespace_ad23e503::function_c35e6aab("obs_collapse");
	level namespace_ad23e503::function_c35e6aab("apc_done");
	level namespace_ad23e503::function_c35e6aab("deleting_havok_object");
	level namespace_ad23e503::function_c35e6aab("apc_crash");
	level namespace_ad23e503::function_c35e6aab("pod_on_ground");
	level namespace_ad23e503::function_c35e6aab("minister_pos");
	level namespace_ad23e503::function_c35e6aab("ready_load");
	level namespace_ad23e503::function_c35e6aab("pod_waypoint");
	level namespace_ad23e503::function_c35e6aab("start_defend_countdown");
	level namespace_ad23e503::function_c35e6aab("shift_defend");
	level namespace_ad23e503::function_c35e6aab("apc_arrive");
	level namespace_ad23e503::function_c35e6aab("goto_pod");
	level namespace_ad23e503::function_c35e6aab("pod_arrive");
	level namespace_ad23e503::function_c35e6aab("pod_loaded");
	level namespace_ad23e503::function_c35e6aab("dropship_return");
	level namespace_ad23e503::function_c35e6aab("pod_go");
	level namespace_ad23e503::function_c35e6aab("pod_gone");
	level namespace_ad23e503::function_c35e6aab("rpg_done");
	level namespace_ad23e503::function_c35e6aab("activate_bc_5");
	level namespace_ad23e503::function_c35e6aab("activate_db_bc_2");
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_4dc8633b
	Checksum: 0xC9EC2AB2
	Offset: 0x31C8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	self namespace_ad23e503::function_c35e6aab("custom_loadout");
	if(!self namespace_2cb3876f::function_72e9bdb8())
	{
		self.var_83a2ce8d = 1;
	}
}

/*
	Name: function_aebcf025
	Namespace: namespace_4dc8633b
	Checksum: 0x24B4B40
	Offset: 0x3220
	Size: 0x3D3
	Parameters: 0
	Flags: None
*/
function function_aebcf025()
{
	if(!function_27c72c1b())
	{
		self namespace_16f9ecd3::function_35ce409(0);
		if(!self namespace_2cb3876f::function_72e9bdb8())
		{
			self thread function_95517e0b();
		}
	}
	if(!function_27c72c1b() && !isdefined(self.var_40c94058))
	{
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE5");
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE6");
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE10");
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE11");
		self namespace_fe079222::function_42acdca5("MISSION_PROLOGUE_CHALLENGE16");
		function_9a7ed193(self);
		self.var_40c94058 = 1;
	}
	self.var_5e3ab4ad = 0;
	self.var_d1cabfc = 0;
	if(level namespace_ad23e503::function_dbca4c5d("ev_enabled") && level namespace_ad23e503::function_7922262b("ev_enabled"))
	{
		self namespace_16f9ecd3::function_35ce409(1);
	}
	if(!function_27c72c1b())
	{
		if(!self namespace_2cb3876f::function_72e9bdb8())
		{
			self.var_8dcb3948 = 1;
			var_e1e06c8 = function_fdeedc89(0, "CPUI_OUTFIT_PROLOGUE");
			self function_431b00f3(var_e1e06c8);
			self function_5a7dd25d(0.9);
			self namespace_71e9cb84::function_e9c3870b("unlimited_sprint_off", 1);
		}
	}
	var_7476c97b = 0;
	var_f690a1c1 = function_84970cc4("skipto_air_traffic_controller", "skipto_nrc_knocking", "skipto_blend_in", "skipto_vtol_tackle", "skipto_robot_horde", "skipto_apc", "skipto_apc_rail", "skipto_apc_rail_stall", "skipto_robot_defend", "skipto_prologue_ending");
	foreach(var_6194780b in var_f690a1c1)
	{
		if(level.var_c0e97bd == var_6194780b)
		{
			var_7476c97b = 1;
			break;
		}
	}
	if(var_7476c97b)
	{
		level namespace_2cb3876f::function_6a5f89cb(level.var_c0e97bd, 0);
	}
	if(level namespace_ad23e503::function_7922262b("players_are_in_apc"))
	{
		self namespace_1eb7e8f5::function_fc1b1b72();
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
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_a475d66c");
		namespace_82b91a51::function_76f13293();
		level notify("hash_2c534be8", self, 1);
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
	if(!self namespace_2cb3876f::function_72e9bdb8() && !function_27c72c1b())
	{
		level notify("hash_2c534be8", self, 1);
		self namespace_726a1ef0::function_78908229();
		self namespace_2cb3876f::function_4e6a4d54();
	}
	else
	{
		self namespace_ad23e503::function_74d6b22f("custom_loadout");
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
	if(function_27c72c1b())
	{
		return;
	}
	var_d4633ac5 = self function_da26566c();
	if(isdefined(var_d4633ac5))
	{
		foreach(var_ecd5af4c in var_d4633ac5)
		{
			if(var_ecd5af4c !== self.var_24c0bfb)
			{
				self.var_88c6e52a = var_ecd5af4c;
				break;
			}
		}
	}
}

/*
	Name: function_2ea898a8
	Namespace: namespace_4dc8633b
	Checksum: 0x56C92233
	Offset: 0x37F0
	Size: 0x423
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "tunnel_wall_explode", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "unlimited_sprint_off", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "setup_security_cameras", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "set_cam_lookat_object", 1, 4, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "sndCameraScanner", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("scriptmover", "update_camera_position", 1, 4, "int");
	namespace_71e9cb84::function_50f16166("world", "interrogate_physics", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "blend_in_cleanup", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "fuel_depot_truck_explosion", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "apc_rail_tower_collapse", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "vtol_missile_explode_trash_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "turn_on_multicam", 1, 3, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "turn_off_tacmode_vfx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "dropship_rumble_loop", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "apc_speed_blur", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("world", "diaz_break_1", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "diaz_break_2", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_tunnel_dust_fx_on_off", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_tunnel_dust_fx", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("toplayer", "player_blood_splatter", 1, 1, "int");
	namespace_71e9cb84::function_50f16166("actor", "cyber_soldier_camo", 1, 2, "int");
	namespace_71e9cb84::function_50f16166("world", "toggle_security_camera_pbg_bank", 1, 1, "int");
}

/*
	Name: function_f7046c76
	Namespace: namespace_4dc8633b
	Checksum: 0x99EC1590
	Offset: 0x3C20
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_f7046c76()
{
}

/*
	Name: function_673254cc
	Namespace: namespace_4dc8633b
	Checksum: 0x21AA2CE6
	Offset: 0x3C30
	Size: 0x583
	Parameters: 0
	Flags: None
*/
function function_673254cc()
{
	namespace_1d795d47::function_69554b3e("skipto_air_traffic_controller", &function_f30178fc, "Air Traffic Controller", &function_f0e11b0f);
	namespace_1d795d47::function_d68e678e("skipto_nrc_knocking", &function_5bf6196d, "NRC Knocking", &function_99e8b2fa);
	namespace_1d795d47::function_69554b3e("skipto_blend_in", &function_9afd1f40, "Blend In", &function_a856a753);
	namespace_1d795d47::function_d68e678e("skipto_take_out_guards", &function_6977d5a4, "Take Out Guards", &function_33e74d97);
	namespace_1d795d47::function_d68e678e("skipto_security_camera", &function_57c4f8a7, "Security Camera", &function_e9c19f80);
	namespace_1d795d47::function_d68e678e("skipto_hostage_1", &function_f70ba4de, "Fuel Depot", &function_b8ac064d);
	namespace_1d795d47::function_d68e678e("skipto_prison", &function_563809d0, "Prison", &function_c5e740c3);
	namespace_1d795d47::function_d68e678e("skipto_security_desk", &function_cb5e9ce9, "Security Desk", &function_9a16286);
	namespace_1d795d47::function_d68e678e("skipto_lift_escape", &function_129dd7aa, "Lift Escape", &function_874e4009);
	namespace_1d795d47::function_d68e678e("skipto_intro_cyber_soldiers", &function_8b6d4df5, "Intro Cyber Soldiers", &function_2cf07fc2);
	namespace_1d795d47::function_d68e678e("skipto_hangar", &function_5eddb104, "Hangar", &function_45eb05f7);
	namespace_1d795d47::function_d68e678e("skipto_vtol_collapse", &function_d797037e, "VTOL Collapse", &function_9af4a8ed);
	namespace_1d795d47::function_d68e678e("skipto_jeep_alley", &function_ddf114c9, "Jeep Alley", &function_fea8bf66);
	namespace_1d795d47::function_69554b3e("skipto_bridge_battle", &function_d714762b, "Bridge Battle", &function_47b85bb4);
	namespace_1d795d47::function_d68e678e("skipto_dark_battle", &function_32dc1c24, "Dark Battle", &function_5ee97c17);
	namespace_1d795d47::function_d68e678e("skipto_vtol_tackle", &function_30f4cc7b, "Vtol Tackle", &function_c16332e4);
	namespace_1d795d47::function_d68e678e("skipto_robot_horde", &function_34495a26, "Robot Horde", &function_b91214d5);
	namespace_1d795d47::function_d68e678e("skipto_apc", &namespace_1eb7e8f5::function_61ebdfad, "APC", &namespace_1eb7e8f5::function_c92883a);
	namespace_1d795d47::function_d68e678e("skipto_apc_rail", &namespace_1eb7e8f5::function_c1b99214, "APC Rail", &namespace_1eb7e8f5::function_961480e7);
	namespace_1d795d47::function_69554b3e("skipto_apc_rail_stall", &namespace_1eb7e8f5::function_2ac0c49, "APC Rail Stall", &namespace_1eb7e8f5::function_fbfbaee6);
	namespace_1d795d47::function_d68e678e("skipto_robot_defend", &function_373c7d0a, "Robot Defend", &function_d287c569);
	namespace_1d795d47::function_69554b3e("skipto_prologue_ending", &namespace_b7c5904::function_48700afe, "Player Prologue Ending", &namespace_b7c5904::function_cc36a86d);
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
function function_f30178fc(var_b04bc952, var_74cd64bc)
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
function function_f0e11b0f(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_80983c42::function_80983c42("fx_exploder_disable_fx_start");
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
function function_5bf6196d(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_ce7c3ed5::function_2222cd4f("cp_prologue_env_post_crash");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_d7916d65::function_a2995f22();
		level thread namespace_cc27597::function_5c143f59("cin_pro_01_02_airtraffic_1st_hack_aftermath", undefined, undefined, 0.7, 1);
		function_acdfe1fe("cp_prologue_env_post_crash", 1);
	}
	namespace_d0ef8521::function_74d6b22f("cp_level_prologue_locate_the_security_room");
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
function function_99e8b2fa(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	function_77d9dff("objective_nrc_knocking_done");
	if(!var_74cd64bc || (level.var_31aefea8 == "skipto_blend_in" || level.var_31aefea8 == "skipto_take_out_guards"))
	{
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_vtol_searchlight_bundle");
	}
	namespace_dabbe128::function_356a4ee1(&function_4d4f1d4f);
	level.var_83405e54 = 1;
	namespace_14b42b8a::function_368120a1("scene", "cin_pro_01_02_airtraffic_1st_hack_ai");
	namespace_14b42b8a::function_368120a1("scene", "cin_pro_01_02_airtraffic_1st_hack");
	namespace_14b42b8a::function_368120a1("scene", "cin_pro_01_02_airtraffic_1st_hack_aftermath_ai");
	namespace_14b42b8a::function_368120a1("scene", "cin_pro_01_02_airtraffic_1st_hack_aftermath");
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
function function_9afd1f40(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_locate_the_security_room");
		function_bff1a867("skipto_blend_in_hendricks");
		level.var_2fd26037.var_25bfbf8e = 1;
		level.var_2fd26037.var_255b9315 = 1;
		level namespace_cc27597::function_5c143f59("landing_gear_anim", "targetname");
		level namespace_cc27597::function_5c143f59("plane_tail_explosion", "targetname");
		level namespace_cc27597::function_5c143f59("plane_cockpit_explosion", "targetname");
		namespace_d7916d65::function_a2995f22();
		namespace_80983c42::function_80983c42("fx_exploder_plane_exp");
		namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 1);
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &function_7072c5d8);
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
function function_a856a753(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(!var_74cd64bc || level.var_31aefea8 == "skipto_take_out_guards" || level.var_31aefea8 == "skipto_security_camera")
	{
		level thread namespace_cc27597::function_c35e6aab("cin_pro_05_01_securitycam_1st_stealth_kill");
		level thread namespace_cc27597::function_c35e6aab("cin_pro_05_01_securitycam_1st_stealth_kill_movetodoor");
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
function function_6977d5a4(var_b04bc952, var_74cd64bc)
{
	function_77d9dff("objective_take_out_guards_init");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_locate_the_security_room");
		level thread namespace_d0ef8521::function_45d1556("blending_in_breadcrumb_3");
		level namespace_ad23e503::function_74d6b22f("hendr_crossed_tarmac");
		if(!isdefined(level.var_2fd26037))
		{
			level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
			function_bff1a867("skipto_take_out_guards_hendricks");
		}
		level namespace_cc27597::function_5c143f59("landing_gear_anim", "targetname");
		level namespace_cc27597::function_5c143f59("plane_tail_explosion", "targetname");
		level namespace_cc27597::function_5c143f59("plane_cockpit_explosion", "targetname");
		level namespace_cc27597::function_6c130337("cin_pro_03_02_blendin_vign_tarmac_cross");
		level thread namespace_cc27597::function_43718187("cin_pro_03_02_blendin_vign_attendfire");
		level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle");
		namespace_cc27597::function_c35e6aab("cin_pro_03_02_blendin_vign_tarmac_cross_end_idle");
		namespace_d7916d65::function_a2995f22();
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
function function_33e74d97(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	function_77d9dff("objective_take_out_guards_done");
	level notify("hash_f70290fd");
	if(var_74cd64bc)
	{
		level namespace_14b42b8a::function_368120a1("scene", "p7_fxanim_cp_prologue_control_tower_tarmac_turbine_bundle");
		level namespace_14b42b8a::function_368120a1("scene", "cin_pro_03_02_blendin_vign_destruction_injured");
		level namespace_14b42b8a::function_368120a1("scene", "cin_pro_03_02_blendin_vign_attendfire");
		level namespace_14b42b8a::function_368120a1("scene", "cin_pro_03_02_blendin_vign_destruction_help");
		level namespace_14b42b8a::function_368120a1("scene", "cin_pro_03_02_blendin_vign_destruction_putoutfire");
	}
	level namespace_cc27597::function_c35e6aab("cin_pro_06_03_hostage_1st_khalil_intro_door");
	level namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_prologue_vtol_searchlight_bundle");
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
function function_57c4f8a7(var_b04bc952, var_74cd64bc)
{
	function_77d9dff("objective_security_camera_init");
	if(!isdefined(level.var_2fd26037))
	{
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		function_bff1a867();
		namespace_1d795d47::function_3096a6fd(var_b04bc952);
	}
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_d0ef8521::function_31cd1834("cp_level_prologue_locate_the_security_room");
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_locate_the_minister");
		level namespace_ad23e503::function_74d6b22f("stealth_kill_prepare_done");
		level thread namespace_cc27597::function_5c143f59("cin_pro_04_01_takeout_vign_truck_prisoners", undefined, undefined, 0.4);
		level thread namespace_cc27597::function_5c143f59("cin_pro_04_02_takeout_vign_truck_unload", undefined, undefined, 0.4);
		level thread namespace_cc27597::function_5c143f59("forkilft_anim", undefined, undefined, 0.5);
		level thread namespace_cc27597::function_8f9f34e0("cin_pro_05_01_securitycam_1st_stealth_kill_prepare", &namespace_e09822e3::function_d6557dc4);
		level thread namespace_cc27597::function_43718187("cin_pro_05_01_securitycam_1st_stealth_kill_prepare");
		namespace_d7916d65::function_a2995f22();
	}
	namespace_e09822e3::function_d6a885d6(var_b04bc952);
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
function function_e9c19f80(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_dabbe128::function_a0ac4434(&function_4d4f1d4f);
	namespace_84970cc4::function_eaab05dc(level.var_2395e945, &namespace_82b91a51::function_16c71b8, 0);
	level notify("hash_e1626ff0");
	namespace_cc27597::function_8f9f34e0("cin_pro_06_03_hostage_vign_breach_playerbreach", &namespace_19ee07c8::function_f8d7f50a, "init");
	namespace_cc27597::function_c35e6aab("cin_pro_06_03_hostage_vign_breach_playerbreach");
	var_f33f812b = function_6ada35ba("fuel_truck_faxnim_clip", "targetname");
	var_f33f812b function_422037f5();
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
function function_f70ba4de(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		level namespace_ad23e503::function_74d6b22f("hendricks_exit_cam_room");
		level thread namespace_21b2c1f2::function_baefe66d();
		level thread namespace_cc27597::function_6c130337("cin_pro_05_01_securitycam_1st_stealth_kill");
		namespace_d7916d65::function_a2995f22();
	}
	function_77d9dff("objective_hostage_1_init");
	level thread namespace_d0ef8521::function_45d1556("rescue_breadcrumb_1");
	namespace_ab720c84::function_7af85b91(var_b04bc952);
	level thread namespace_cc27597::function_c35e6aab("cin_pro_06_03_hostage_vign_breach_hendrickscover");
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
function function_b8ac064d(var_4be20d44, var_a334437f, var_e4cd2b8b, var_5dc5e20a)
{
	if(namespace_cc27597::function_444aea32("cin_pro_05_01_securitycam_1st_stealth_kill"))
	{
		level thread namespace_cc27597::function_fcf56ab5("cin_pro_05_01_securitycam_1st_stealth_kill");
	}
	var_88e2cef7 = function_6ada35ba("trig_open_weapons_room", "targetname");
	var_88e2cef7 function_175e6b8e(0);
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
function function_563809d0(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level namespace_cc27597::function_c35e6aab("cin_pro_06_03_hostage_vign_breach_hendrickscover");
		namespace_2cb3876f::function_34acbf2();
		level thread namespace_21b2c1f2::function_d4c52995();
		namespace_d7916d65::function_a2995f22();
	}
	function_77d9dff("objective_prison_init");
	namespace_19ee07c8::function_955cbf0d(var_b04bc952);
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
function function_c5e740c3(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	if(var_74cd64bc)
	{
		namespace_80983c42::function_80983c42("light_exploder_prison_exit");
	}
	level thread namespace_cc27597::function_6c130337("cin_pro_06_03_hostage_vign_breach_playerbreach");
	level thread namespace_cc27597::function_6c130337("cin_pro_04_01_takeout_vign_truck_prisoners");
	level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_ceiling_underground_crane_bundle");
	function_77d9dff("prison");
	level notify("hash_19ee07c8");
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
function function_cb5e9ce9(var_b04bc952, var_74cd64bc)
{
	namespace_52f8de11::function_bfe70f02();
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_to_the_surface");
		level thread namespace_d0ef8521::function_45d1556("post_prison_breadcrumb_start");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		function_bff1a867("skipto_security_desk_hendricks");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		function_211ff3c7("skipto_security_desk_minister");
		level.var_4d5a4697 namespace_d84e54db::function_c9e45d52(1);
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		function_c117302b("skipto_security_desk_khalil");
		level.var_9db406db namespace_d84e54db::function_c9e45d52(1);
		level namespace_cc27597::function_5c143f59("cin_pro_06_03_hostage_1st_khalil_intro_rescue");
		namespace_d7916d65::function_a2995f22();
	}
	namespace_cc27597::function_c35e6aab("cin_pro_07_01_securitydesk_vign_weapons");
	function_77d9dff("objective_security_desk_init");
	namespace_52f8de11::function_72514870(var_b04bc952);
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
function function_9a16286(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_cc27597::function_c35e6aab("cin_pro_10_01_hanger_vign_sensory_overload_start");
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
function function_129dd7aa(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_to_the_surface");
		level thread namespace_21b2c1f2::function_6c35b4f3();
		level thread namespace_d0ef8521::function_45d1556("post_prison_breadcrumb_1");
		namespace_d7916d65::function_a2995f22();
	}
	function_77d9dff("objective_lift_escape_init");
	namespace_e80bc418::function_68538fd(var_b04bc952);
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
function function_874e4009(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_cc27597::function_fcf56ab5("cin_pro_06_03_hostage_vign_breach_playerbreach", 1);
	namespace_cc27597::function_fcf56ab5("cin_pro_06_03_hostage_vign_breach_hendrickscover", 1);
	namespace_cc27597::function_fcf56ab5("cin_pro_06_03_hostage_vign_breach");
	namespace_cc27597::function_fcf56ab5("cin_pro_05_02_securitycam_pip_pipe", 1);
	namespace_cc27597::function_fcf56ab5("cin_pro_05_02_securitycam_pip_waterboard", 1);
	namespace_cc27597::function_fcf56ab5("cin_pro_05_02_securitycam_pip_branding", 1);
	namespace_cc27597::function_fcf56ab5("p7_fxanim_cp_prologue_ceiling_underground_crane_bundle", 1);
	var_2e1f1409 = function_6ada35ba("hangar_gate_02", "targetname");
	var_2e1f1409 function_8c8e79fe();
	var_2e1f1409 = function_6ada35ba("hangar_gate_03", "targetname");
	var_2e1f1409 function_8c8e79fe();
	var_2e1f1409 = function_6ada35ba("hangar_gate_04", "targetname");
	var_2e1f1409 function_8c8e79fe();
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
function function_8b6d4df5(var_b04bc952, var_74cd64bc)
{
	function_77d9dff("objective_intro_cyber_soldiers_init");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_to_the_surface");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
		namespace_e80bc418::function_d4734ff1();
		level.var_be31aa9a = function_6ada35ba("freight_lift", "targetname");
		if(!isdefined(level.var_3dce3f88))
		{
			level.var_3dce3f88 = function_9b7fda5e("script_model", level.var_be31aa9a.var_722885f3);
			level.var_be31aa9a function_37f7858a(level.var_3dce3f88);
		}
		namespace_d7916d65::function_a2995f22();
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
function function_2cf07fc2(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_hangar_window_rip_bundle");
	level thread namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_vtol_hangar_bundle");
	level namespace_71e9cb84::function_74d6b22f("diaz_break_1", 1);
	level namespace_71e9cb84::function_74d6b22f("diaz_break_2", 1);
	namespace_cc27597::function_c35e6aab("bridge_tent_01", "targetname");
	namespace_cc27597::function_c35e6aab("bridge_tent_02", "targetname");
	namespace_cc27597::function_c35e6aab("bridge_tent_03", "targetname");
	level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_prologue_hangar_doors_02_bundle");
	level thread namespace_d51ba4::function_ce858cd3(0);
	namespace_dabbe128::function_6aceae7c(&namespace_d51ba4::function_d3c9b1d1);
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
function function_5eddb104(var_b04bc952, var_74cd64bc)
{
	level.var_f58c9f31 = namespace_82b91a51::function_740f8516("theia");
	level.var_92d245e2 = namespace_82b91a51::function_740f8516("prometheus");
	level.var_5d4087a6 = namespace_82b91a51::function_740f8516("hyperion");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level.var_f58c9f31 thread namespace_dccf27b3::function_9110a277(1, 0);
		level.var_92d245e2 thread namespace_dccf27b3::function_9110a277(1, 0);
		level.var_5d4087a6 thread namespace_dccf27b3::function_9110a277(1, 0);
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_to_the_surface");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_7f246cd7 = namespace_82b91a51::function_740f8516("pallas");
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
		level.var_be31aa9a = function_6ada35ba("freight_lift", "targetname");
		level.var_be31aa9a function_8bdea13c(100, 0.05);
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_d0ef8521::function_45d1556("hangar_breadcrumb_start");
	level thread namespace_21b2c1f2::function_46333a8a();
	function_77d9dff("objective_hangar_init");
	namespace_d51ba4::function_83921c71();
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
function function_45eb05f7(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_prologue_hangar_doors_03_bundle");
	namespace_dabbe128::function_a09757b3(&namespace_d51ba4::function_d3c9b1d1);
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
function function_d797037e(var_b04bc952, var_74cd64bc)
{
	level.var_92d245e2 = namespace_82b91a51::function_740f8516("prometheus");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_to_the_surface");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_7f246cd7 = namespace_82b91a51::function_740f8516("pallas");
		level thread namespace_cc27597::function_5c143f59("cin_pro_10_04_hangar_vign_leap_new_wing2window");
		level namespace_ad23e503::function_74d6b22f("pallas_at_window");
		level.var_fac57550 = namespace_96fa87af::function_7387a40a("vtol_collapse_apc_initial");
		wait(0.15);
		level.var_2fd26037 thread namespace_d51ba4::function_d418516(level.var_fac57550);
		level.var_9db406db thread namespace_d51ba4::function_d418516(level.var_fac57550);
		namespace_4dbf3ae3::function_42e87952("hangar_end_move_allies", "targetname", undefined, 0);
		level namespace_d51ba4::function_10ab649();
		level namespace_71e9cb84::function_74d6b22f("diaz_break_1", 2);
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_d0ef8521::function_45d1556("hangar_breadcrumb_4");
	function_77d9dff("objective_vtol_collapse_init");
	namespace_d51ba4::function_31427ccd();
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
function function_9af4a8ed(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	var_280d5f68 = function_6ada35ba("hangar_gate_l", "targetname");
	var_3c301126 = function_6ada35ba("hangar_gate_r", "targetname");
	var_9c7511b4 = namespace_14b42b8a::function_7922262b("hangar_gate_move_pos_l", "targetname");
	var_205c499a = namespace_14b42b8a::function_7922262b("hangar_gate_move_pos_r", "targetname");
	var_c2777dd9 = "p7_fxanim_cp_prologue_hangar_door_bundle";
	level namespace_d51ba4::function_a8cd091b(1, var_280d5f68, var_3c301126, var_9c7511b4, var_205c499a, var_c2777dd9);
	namespace_80983c42::function_80983c42("light_exploder_darkbattle");
	namespace_80983c42::function_80983c42("light_exploder_defend_radio_tower");
	function_bab1ff00("umbra_gate_hangar_02", 0);
	function_bab1ff00("umbra_gate_hangar_03", 0);
	function_bab1ff00("umbra_gate_hangar_04", 0);
	if(var_4be20d44 == "skipto_jeep_alley" && var_74cd64bc)
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
function function_ddf114c9(var_b04bc952, var_74cd64bc)
{
	level.var_f58c9f31 = namespace_82b91a51::function_740f8516("theia");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		level thread namespace_cc27597::function_5c143f59("p7_fxanim_cp_prologue_vtol_hangar_bundle");
		var_2ef9d306 = function_6ada35ba("vtol_hangar_drop", "targetname");
		var_2ef9d306 thread namespace_2cb3876f::function_d723979e("swap_vtol_to_destroyed", "veh_t7_mil_vtol_nrc_no_interior_d", "vtol_collapse_done");
		level notify("hash_1d072da3");
		level namespace_82b91a51::function_67520c6a(0.5, undefined, &namespace_d51ba4::function_ce858cd3, 1);
		var_ac769486 = function_6ada35ba("clip_player_vtol_collapse_backtrack_doorway", "targetname");
		var_ac769486 function_8bdea13c(100 * -1, 0.05);
		var_58576bff = function_6ada35ba("vtol_hangar_in_l", "targetname");
		var_bbc00d9a = function_6ada35ba("vtol_hangar_in_r", "targetname");
		var_cab7ecc2 = function_298b8148(var_58576bff.var_6ab6f4fd);
		var_58576bff function_a96a2721(var_58576bff.var_722885f3 - var_cab7ecc2 * 50, 0.5);
		var_bbc00d9a function_a96a2721(var_bbc00d9a.var_722885f3 + var_cab7ecc2 * 44, 0.5);
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_get_to_the_surface");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
		namespace_d7916d65::function_a2995f22();
	}
	level thread namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_plane_hanger_pristine_bundle");
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
function function_fea8bf66(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
function function_d714762b(var_b04bc952, var_74cd64bc)
{
	level.var_5d4087a6 = namespace_82b91a51::function_740f8516("hyperion");
	level.var_f58c9f31 = namespace_82b91a51::function_740f8516("theia");
	var_61b253a2 = function_c4d5ec1f("sniper_fastbolt_hero", "extclip", "fastreload");
	level.var_5d4087a6 namespace_1be9b0b2::function_764732ca(var_61b253a2, (-8, 4, 14), VectorScale((1, 0, 0), 90));
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		level.var_f58c9f31 = namespace_82b91a51::function_740f8516("theia");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
		level namespace_cc27597::function_8f9f34e0("cin_pro_11_01_jeepalley_vign_engage_attack", &namespace_30207c6f::function_cf946de6);
		level namespace_cc27597::function_8f9f34e0("cin_pro_11_01_jeepalley_vign_engage_attack", &namespace_30207c6f::function_7af067f4, "done");
		level thread namespace_cc27597::function_5c143f59("cin_pro_11_01_jeepalley_vign_engage_attack", undefined, undefined, 0.8);
		namespace_cc27597::function_43718187("p7_fxanim_cp_prologue_plane_hanger_explode_bundle");
		level.var_35c12e63 = namespace_14b42b8a::function_7922262b("bridge_obj", "targetname");
		namespace_d0ef8521::function_74d6b22f("cp_waypoint_breadcrumb", level.var_35c12e63);
		namespace_d7916d65::function_a2995f22();
		namespace_4dbf3ae3::function_42e87952("jeep_alley_allies_move", "targetname");
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
function function_47b85bb4(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	namespace_cc27597::function_5c143f59("bridge_tent_01", "targetname");
	namespace_cc27597::function_5c143f59("bridge_tent_02", "targetname");
	namespace_cc27597::function_5c143f59("bridge_tent_03", "targetname");
	namespace_cc27597::function_5c143f59("p7_fxanim_cp_prologue_plane_hanger_explode_bundle");
	var_59ff07ee = function_6ada35ba("bridge_section_1", "targetname");
	if(isdefined(var_59ff07ee))
	{
		var_59ff07ee function_dc8c8404();
		var_33fc8d85 = function_6ada35ba("bridge_section_2", "targetname");
		var_33fc8d85 function_dc8c8404();
		var_dfa131c = function_6ada35ba("bridge_section_3", "targetname");
		var_dfa131c function_dc8c8404();
		var_e7f798b3 = function_99201f25("bridge_section_4", "targetname");
		namespace_84970cc4::function_eaab05dc(var_e7f798b3, &function_dc8c8404);
	}
	var_8de6057e = function_6ada35ba("prologue_bridge", "targetname");
	if(isdefined(var_8de6057e))
	{
		var_8de6057e function_dc8c8404();
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
function function_32dc1c24(var_b04bc952, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		level.var_5d4087a6 = namespace_82b91a51::function_740f8516("hyperion");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		var_61b253a2 = function_c4d5ec1f("sniper_fastbolt_hero", "extclip", "fastreload");
		level.var_5d4087a6 namespace_1be9b0b2::function_764732ca(var_61b253a2, (-8, 4, 14), VectorScale((1, 0, 0), 90));
		level thread namespace_cc27597::function_5c143f59("cin_pro_11_01_jeepalley_vign_engage_attack", undefined, undefined, 0.98);
		namespace_d7916d65::function_a2995f22();
		namespace_80983c42::function_80983c42("light_exploder_darkbattle");
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
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
function function_5ee97c17(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	level thread namespace_cc27597::function_c35e6aab("cin_pro_15_01_opendoor_vign_getinside_new_prometheus_doorhold");
	function_77d9dff("dark_battle_done");
	if(namespace_cc27597::function_367f8966("cin_pro_11_01_jeepalley_vign_engage_attack"))
	{
		level thread namespace_cc27597::function_fcf56ab5("cin_pro_11_01_jeepalley_vign_engage_attack");
	}
	var_59ff07ee = function_6ada35ba("bridge_section_1", "targetname");
	if(isdefined(var_59ff07ee))
	{
		var_59ff07ee function_dc8c8404();
	}
	var_33fc8d85 = function_6ada35ba("bridge_section_2", "targetname");
	if(isdefined(var_33fc8d85))
	{
		var_33fc8d85 function_dc8c8404();
	}
	var_dfa131c = function_6ada35ba("bridge_section_3", "targetname");
	if(isdefined(var_dfa131c))
	{
		var_dfa131c function_dc8c8404();
	}
	var_22216bde = function_99201f25("bridge_section_4", "targetname");
	foreach(var_8f9551fe in var_22216bde)
	{
		var_8f9551fe function_dc8c8404();
	}
	namespace_80983c42::function_67e7a937("light_exploder_darkbattle");
	if(!function_27c72c1b())
	{
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_16f9ecd3::function_35ce409, 0);
	}
	level thread namespace_1eb7e8f5::function_81a9e31c();
	var_7925d66f = function_6ada35ba("hangar_vtol_crash_clip", "targetname");
	var_7925d66f function_de8377bf();
	var_7925d66f function_dc8c8404();
	wait(0.05);
	var_f2c7e89 = function_6ada35ba("hall_door_slide_right", "targetname");
	var_f2c7e89 function_de8377bf();
	var_f2c7e89 function_dc8c8404();
	wait(0.05);
	var_f2c7e89 = function_6ada35ba("hall_door_slide_left", "targetname");
	var_f2c7e89 function_de8377bf();
	var_f2c7e89 function_dc8c8404();
	namespace_4dbf3ae3::function_42e87952("t_motorpool_spawns_disable", "targetname");
	var_9a246ea8 = function_6ada35ba("t_robot_horde_oob", "targetname");
	if(isdefined(var_9a246ea8))
	{
		var_9a246ea8 function_175e6b8e(0);
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
function function_30f4cc7b(var_b04bc952, var_74cd64bc)
{
	level.var_92d245e2 = namespace_82b91a51::function_740f8516("prometheus");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		namespace_d0ef8521::function_31cd1834("cp_level_prologue_escort_data_center");
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_find_vehicle");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_5d4087a6 = namespace_82b91a51::function_740f8516("hyperion");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		var_61b253a2 = function_c4d5ec1f("sniper_fastbolt_hero", "extclip", "fastreload");
		level.var_5d4087a6 namespace_1be9b0b2::function_764732ca(var_61b253a2, (-8, 4, 14), VectorScale((1, 0, 0), 90));
		level thread namespace_36e484c6::function_25c6144e();
		level namespace_cc27597::function_c35e6aab("p7_fxanim_cp_prologue_vtol_tackle_windows_bundle");
		namespace_d7916d65::function_a2995f22();
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_71e9cb84::function_e9c3870b, "turn_off_tacmode_vfx", 1);
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_16f9ecd3::function_35ce409, 0);
		namespace_84970cc4::function_966ecb29(level.var_2395e945, &namespace_16f9ecd3::function_12a9df06, 0);
		namespace_2f06d687::function_2b37a3c9("initial_vtol_guys", "targetname", &namespace_2cb3876f::function_35be2939, "vtol_has_crashed");
		namespace_d5067552::function_bae40a28("vtol_tackle_spwn_mgr2");
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
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
function function_c16332e4(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
{
	var_77b2d567 = level.var_3f831f3b["scene"]["cin_pro_15_01_opendoor_vign_getinside_new_hendricks_and_prometheus"].var_485299d7[2];
	var_77b2d567.var_7d581f10 = 1;
	var_77b2d567.var_835d9087 = 1;
	level namespace_cc27597::function_c35e6aab("cin_pro_15_01_opendoor_vign_getinside_new_hendricks_and_prometheus");
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
function function_34495a26(var_b04bc952, var_74cd64bc)
{
	level.var_7f246cd7 = namespace_82b91a51::function_740f8516("pallas");
	level.var_f58c9f31 = namespace_82b91a51::function_740f8516("theia");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		namespace_2cb3876f::function_34acbf2();
		namespace_2cb3876f::function_df278013();
		namespace_2cb3876f::function_9d35b20d();
		namespace_d0ef8521::function_31cd1834("cp_level_prologue_escort_data_center");
		namespace_d0ef8521::function_74d6b22f("cp_level_prologue_find_vehicle");
		level.var_f58c9f31 = namespace_82b91a51::function_740f8516("theia");
		level.var_5d4087a6 = namespace_82b91a51::function_740f8516("hyperion");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_92d245e2 = namespace_82b91a51::function_740f8516("prometheus");
		namespace_1d795d47::function_3096a6fd(var_b04bc952, level.var_6a876531);
		level namespace_2cb3876f::function_6a5f89cb("skipto_robot_horde_ai");
		namespace_d7916d65::function_a2995f22();
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
function function_b91214d5(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
function function_373c7d0a(var_b04bc952, var_74cd64bc)
{
	function_77d9dff("objective_robot_defend_init");
	if(var_74cd64bc)
	{
		namespace_d7916d65::function_73adcefc();
		level thread namespace_2cb3876f::function_cfabe921();
		level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
		level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
		level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
		level.var_1eb7e8f5 = namespace_96fa87af::function_7387a40a("apc");
		level.var_1eb7e8f5 namespace_96fa87af::function_3762fc40();
		level thread namespace_cc27597::function_5c143f59("cin_pro_17_01_robotdefend_vign_apc_exit_apc");
		namespace_d7916d65::function_a2995f22();
		level namespace_2cb3876f::function_6a5f89cb("skipto_robot_defend");
		level namespace_ad23e503::function_74d6b22f("apc_done");
		var_c1767e6 = function_6ada35ba("m_tunnel_vtol_death", "targetname");
		var_c1767e6 function_48f26766();
		namespace_80983c42::function_80983c42("fx_exploder_vtol_crash_rail");
		level namespace_ad23e503::function_74d6b22f("apc_unlocked");
		level thread namespace_1eb7e8f5::function_599ebca1();
	}
	else
	{
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(1);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(2);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(3);
		level.var_1eb7e8f5 namespace_37b990db::function_54bdb053(4);
	}
	level thread function_b5502f69();
	function_da6acfd2(level.var_c1aa5253["apc_death_fx_cin"], level.var_1eb7e8f5, "tag_origin_animate");
	namespace_80983c42::function_80983c42("light_exploder_headlight_flicker_02");
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
	var_9b399cbb = function_84970cc4("p7_fxanim_cp_prologue_bridge_tent_bundle", "p7_fxanim_cp_prologue_bridge_bundle", "cin_pro_12_01_darkbattle_vign_dive_kill_start");
	foreach(var_fa38b370 in var_9b399cbb)
	{
		var_9cc495a4 = namespace_14b42b8a::function_7faf4c39(var_fa38b370, "targetname");
		foreach(var_f5766435 in var_9cc495a4)
		{
			if(isdefined(var_f5766435))
			{
				var_f5766435 function_dc8c8404();
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
function function_d287c569(var_4be20d44, var_74cd64bc, var_e4cd2b8b, var_5dc5e20a)
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
function function_77d9dff(var_813fc428)
{
	/#
		function_895b00("Dev Block strings are not supported" + var_813fc428);
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
	level.var_2fd26037 = namespace_82b91a51::function_740f8516("hendricks");
	var_ecd5af4c = function_c4d5ec1f("ar_standard");
	level.var_2fd26037 namespace_d84e54db::function_7901ac63(var_ecd5af4c, "right");
	if(isdefined(var_a7fcc91d))
	{
		var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_a7fcc91d, "targetname");
		level.var_2fd26037 function_9869ab67(var_ebe66fdc.var_722885f3, var_ebe66fdc.var_6ab6f4fd);
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
	level.var_4d5a4697 = namespace_82b91a51::function_740f8516("minister");
	if(isdefined(var_a7fcc91d))
	{
		var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_a7fcc91d, "targetname");
		level.var_4d5a4697 function_9869ab67(var_ebe66fdc.var_722885f3, var_ebe66fdc.var_6ab6f4fd);
	}
	if(function_27c72c1b())
	{
		level.var_4d5a4697.var_76ec4fca = "Bishop";
		level.var_4d5a4697.var_fe965cc2 = "Bishop";
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
	level.var_9db406db = namespace_82b91a51::function_740f8516("khalil");
	if(isdefined(var_a7fcc91d))
	{
		var_ebe66fdc = namespace_14b42b8a::function_7922262b(var_a7fcc91d, "targetname");
		level.var_9db406db function_9869ab67(var_ebe66fdc.var_722885f3, var_ebe66fdc.var_6ab6f4fd);
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
function function_16f6b7f1(var_c335265b)
{
	var_da1cc39e = function_99201f25(var_c335265b, "targetname");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_da1cc39e.size; var_c957f6b6++)
	{
		var_da1cc39e[var_c957f6b6] namespace_2f06d687::function_994832bd(&function_899f174d, var_c335265b);
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
function function_b6ef2c4e(var_ef7c9f46)
{
	self.var_1f9269c0 = var_ef7c9f46;
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
function function_6a77bdd4(var_ef7c9f46)
{
	var_e3b635fb = function_c20c2e8();
	if(isdefined(var_e3b635fb))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e3b635fb.size; var_c957f6b6++)
		{
			var_4c9c8550 = var_e3b635fb[var_c957f6b6];
			if(function_5b49d38c(var_4c9c8550) && isdefined(var_4c9c8550.var_1f9269c0) && var_4c9c8550.var_1f9269c0 == var_ef7c9f46)
			{
				var_4c9c8550.var_1f9269c0 = undefined;
				var_4c9c8550 function_dc8c8404();
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
function function_899f174d(var_ef7c9f46)
{
	function_b6ef2c4e(var_ef7c9f46);
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
	self namespace_82b91a51::function_16c71b8(1);
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
	self endon("hash_128f8789");
	while(1)
	{
		self waittill("hash_90831b9e");
		self namespace_82b91a51::function_16c71b8(1);
	}
}


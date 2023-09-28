#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hazard;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_ambience;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_967f4af8;

/*
	Name: main
	Namespace: namespace_967f4af8
	Checksum: 0xE5A01181
	Offset: 0xDB0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function main()
{
	level._effect["emp_flash"] = "_t6/weapon/emp/fx_emp_explosion";
	thread init_flags();
	thread function_60f7b1b6();
	thread function_1ecf48ef();
	thread function_4a90c357();
	thread function_ee430caa();
	thread function_a1b52577();
	thread function_18af354a();
	spawner::add_spawn_function_group("water_robots", "targetname", &function_a527e6f9);
	spawner::add_spawn_function_group("water_robots2", "targetname", &function_a527e6f9);
	spawner::add_spawn_function_group("water_robots3", "targetname", &function_a527e6f9);
}

/*
	Name: init_flags
	Namespace: namespace_967f4af8
	Checksum: 0xEB475BAC
	Offset: 0xEE0
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("flag_kayne_ready_trap");
	level flag::init("door_explodes");
	level flag::init("flag_door_explodes");
	level flag::init("flag_double_doors_open");
}

/*
	Name: function_60f7b1b6
	Namespace: namespace_967f4af8
	Checksum: 0xB708C701
	Offset: 0xF70
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_60f7b1b6()
{
	level endon("hash_ee3f7dc5");
	struct = GetEnt("igc_kane_khalil_1", "targetname");
	level flag::wait_till("flag_kayne_pre_water");
	wait(6);
	struct scene::Play("cin_aqu_03_19_pre_water_room_kane", level.var_89ea8991);
	struct scene::Play("cin_aqu_03_19_pre_water_room_wait_kane", level.var_89ea8991);
}

/*
	Name: function_1ecf48ef
	Namespace: namespace_967f4af8
	Checksum: 0x4D807C32
	Offset: 0x1020
	Size: 0x363
	Parameters: 0
	Flags: None
*/
function function_1ecf48ef()
{
	level endon("hash_47f08523");
	scene::add_scene_func("cin_aqu_05_01_enter_1st_look", &function_3d8a313e, "play");
	scene::init("cin_aqu_05_01_enter_1st_look");
	level waittill("hash_7e64f485");
	var_5b5cfed1 = trigger::wait_till("water_room_igc");
	struct = GetEnt("igc_kane_khalil_1", "targetname");
	level notify("hash_ee3f7dc5");
	if(isdefined(level.BZM_AQUIFERDialogue1_7Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1_7Callback]]();
	}
	if(isdefined(level.var_89ea8991) && isalive(level.var_89ea8991))
	{
		level.var_89ea8991 delete();
	}
	namespace_84eb777e::function_b3ed487d(1);
	exploder::exploder_stop("lighting_server_perf_lights");
	function_cd377710();
	struct scene::Play("cin_aqu_05_01_enter_1st_look", var_5b5cfed1.who);
	namespace_84eb777e::function_61034146(0);
	level flag::set("inside_water_room");
	util::function_93831e79("igc_enter_water_structs");
	level.var_89ea8991 namespace_84eb777e::function_30343b22("kayne_waterroom_swim");
	level.var_89ea8991 thread function_8fdcc95b(1);
	savegame::function_5d2cdd99();
	SetDvar("player_swimSpeed", 80);
	if(isdefined(level.BZM_AQUIFERDialogue2Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue2Callback]]();
	}
	foreach(p in level.players)
	{
		p thread function_913d882();
	}
	thread function_645f7873();
	thread function_408f0fb5();
	struct scene::Play("cin_aqu_03_20_water_room", level.var_89ea8991);
	struct thread scene::Play("cin_aqu_03_20_water_room_idle", level.var_89ea8991);
}

/*
	Name: function_cd377710
	Namespace: namespace_967f4af8
	Checksum: 0x7ACB3CBA
	Offset: 0x1390
	Size: 0x129
	Parameters: 0
	Flags: None
*/
function function_cd377710()
{
	foreach(player in level.activePlayers)
	{
		if(isdefined(player GetLinkedEnt()))
		{
			player.var_8fedf36c notify("hash_c38e4003");
			player Unlink();
			player.var_8fedf36c.State = undefined;
			player.var_8fedf36c clientfield::set("vtol_canopy_state", 0);
			player.var_8fedf36c clientfield::set("vtol_enable_wash_fx", 0);
			wait(0.05);
		}
	}
}

/*
	Name: function_3d8a313e
	Namespace: namespace_967f4af8
	Checksum: 0xD6E906B1
	Offset: 0x14C8
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_3d8a313e(a_ents)
{
	namespace_786319bb::function_c897523d("respawn_in_water_room");
}

/*
	Name: function_4a90c357
	Namespace: namespace_967f4af8
	Checksum: 0x288DB59C
	Offset: 0x14F8
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_4a90c357()
{
	level flag::wait_till("flag_kayne_water_moment");
	SetDvar("player_swimSpeed", 30);
	level notify("hash_47f08523");
	level flag::set("inside_data_center");
	foreach(p in level.activePlayers)
	{
		p clientfield::set_to_player("player_bubbles_fx", 0);
	}
	level thread LUI::screen_fade_out(1);
	wait(1);
	level.var_89ea8991 StopAnimScripted();
	SetDvar("player_swimSpeed", 150);
	level.var_89ea8991 clientfield::set("kane_bubbles_fx", 0);
	thread function_3ed240f1();
	var_31b9fd4a = GetEnt("doubledoor_sbm", "targetname");
	var_31b9fd4a Hide();
	level thread namespace_71a63eac::function_8210b658();
	level thread scene::Play("cin_aqu_02_01_floodroom_1st_dragged", level.var_89ea8991);
	level waittill("hash_b580186f");
	level notify("hash_8f79547f");
	level thread namespace_71a63eac::function_e18f629a();
	util::function_93831e79("igc_post_water_structs");
	SetDvar("player_swimSpeed", 150);
	thread function_a079b7e3();
	savegame::function_5d2cdd99();
	thread function_8aec0a4c();
}

/*
	Name: function_8aec0a4c
	Namespace: namespace_967f4af8
	Checksum: 0x9A3ABE90
	Offset: 0x17A0
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_8aec0a4c()
{
	level endon("hash_66250ae7");
	trig = GetEnt("trig_trap_door", "targetname");
	trig TriggerEnable(0);
	struct = GetEnt("igc_kane_water", "targetname");
	var_31b9fd4a = GetEnt("doubledoor_sbm", "targetname");
	var_31b9fd4a show();
	struct scene::Play("cin_aqu_03_21_server_room_enter", level.var_89ea8991);
	struct thread scene::Play("cin_aqu_03_21_server_room_idle", level.var_89ea8991);
	level flag::set("flag_kayne_ready_trap");
	thread function_cc9a0395();
	trig TriggerEnable(1);
	level flag::wait_till("flag_maretti_trap_door");
	level notify("hash_eb6a1c8b");
	level.var_89ea8991 scene::stop(1);
	struct thread scene::Play("cin_aqu_03_21_server_room_explosion", level.var_89ea8991);
	if(isdefined(level.BZM_AQUIFERDialogue2_1Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue2_1Callback]]();
	}
	level.var_89ea8991 dialog::say("kane_on_me_0");
}

/*
	Name: function_cc9a0395
	Namespace: namespace_967f4af8
	Checksum: 0x3C3E34A5
	Offset: 0x19B8
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_cc9a0395()
{
	level endon("hash_eb6a1c8b");
	wait(2);
	level.var_89ea8991 dialog::say("kane_come_on_get_in_pos_0");
	wait(6);
	level.var_89ea8991 dialog::say("kane_hurry_it_up_0");
	wait(12);
	level.var_89ea8991 dialog::say("kane_come_on_get_in_pos_0");
	wait(20);
	level.var_89ea8991 dialog::say("kane_hurry_it_up_0");
	wait(25);
	level.var_89ea8991 dialog::say("kane_come_on_get_in_pos_0");
	wait(30);
	level.var_89ea8991 dialog::say("kane_hurry_it_up_0");
}

/*
	Name: function_c1808198
	Namespace: namespace_967f4af8
	Checksum: 0xF8E3184C
	Offset: 0x1AC0
	Size: 0xC9
	Parameters: 0
	Flags: None
*/
function function_c1808198()
{
	foreach(p in level.activePlayers)
	{
		p thread namespace_786319bb::function_89eaa1b3(1.5);
		p hazard::do_damage("o2", 85);
		p thread function_498a7d66();
	}
}

/*
	Name: function_498a7d66
	Namespace: namespace_967f4af8
	Checksum: 0x45E1FEAB
	Offset: 0x1B98
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_498a7d66()
{
	self endon("disconnect");
	self clientfield::set_to_player("player_bubbles_fx", 1);
	wait(2);
	self clientfield::set_to_player("player_bubbles_fx", 0);
}

/*
	Name: function_ee430caa
	Namespace: namespace_967f4af8
	Checksum: 0x6C165947
	Offset: 0x1BF8
	Size: 0x44B
	Parameters: 0
	Flags: None
*/
function function_ee430caa()
{
	var_99b9d1f2 = trigger::wait_till("water_room_exit_igc");
	level thread namespace_71a63eac::function_973b77f9();
	level notify("hash_9f732141");
	level notify("hash_bf1c950c");
	namespace_786319bb::function_8bf8a765(1);
	level flag::clear("inside_data_center");
	namespace_84eb777e::function_61034146(1);
	namespace_84eb777e::function_b3ed487d(0);
	exploder::exploder("lighting_server_perf_lights");
	var_ebc124a5 = spawner::get_ai_group_ai("interior_robots");
	var_19e0145d = spawner::get_ai_group_ai("interior_robots_stairs");
	var_f3dd99f4 = spawner::get_ai_group_ai("interior_robots_water");
	var_a40e8c9b = ArrayCombine(var_ebc124a5, var_19e0145d, 0, 0);
	var_8a13f363 = ArrayCombine(var_a40e8c9b, var_f3dd99f4, 0, 0);
	foreach(i in var_8a13f363)
	{
		if(isdefined(i))
		{
			i delete();
		}
	}
	if(isdefined(level.var_89ea8991) && isalive(level.var_89ea8991))
	{
		level.var_89ea8991 delete();
	}
	if(isdefined(level.BZM_AQUIFERDialogue3Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue3Callback]]();
	}
	thread function_ddc03444();
	struct = GetEnt("igc_kane_khalil_1", "targetname");
	if(!isdefined(level.activePlayers[0].var_8fedf36c))
	{
		level.activePlayers[0] namespace_786319bb::function_d683f26a(0);
	}
	level.activePlayers[0].var_8fedf36c show();
	struct thread scene::Play("cin_aqu_03_01_platform_1st_secureplatform_vtol", level.activePlayers[0].var_8fedf36c);
	clientfield::set("water_room_exit_scenes", 0);
	struct scene::Play("cin_aqu_03_01_platform_1st_secureplatform", var_99b9d1f2.who);
	thread function_430fd872();
	struct scene::Play("cin_aqu_03_01_platform_1st_secureplatform_exit");
	level notify("hash_2ff2d753");
	struct scene::stop("cin_aqu_03_20_water_room_body_loop", 1);
	savegame::function_5d2cdd99();
	level flag::set("flag_khalil_water_igc_done");
	struct scene::stop("cin_aqu_03_01_platform_1st_secureplatform");
}

/*
	Name: function_430fd872
	Namespace: namespace_967f4af8
	Checksum: 0x92039143
	Offset: 0x2050
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_430fd872()
{
	level dialog::remote("hend_we_ve_got_additional_0");
	wait(1);
	level dialog::function_13b3b16a("plyr_copy_that_we_re_on_0");
	wait(4);
	level dialog::function_13b3b16a("plyr_i_see_em_multiple_0");
	level thread namespace_71a63eac::function_b1ee6c2d();
	wait(1);
	level dialog::function_13b3b16a("kane_copy_i_see_em_too_0");
}

/*
	Name: function_ddc03444
	Namespace: namespace_967f4af8
	Checksum: 0x47A11F9E
	Offset: 0x20F8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_ddc03444()
{
	var_c0155443 = struct::get("water_room_flyby_1", "targetname");
	var_4e0de508 = struct::get("water_room_flyby_2", "targetname");
	wait(3);
	var_c0155443 scene::Play(var_c0155443.scriptbundlename);
	var_c0155443 scene::stop(1);
	wait(8);
	var_4e0de508 scene::Play(var_4e0de508.scriptbundlename);
	var_4e0de508 scene::stop(1);
}

/*
	Name: function_a079b7e3
	Namespace: namespace_967f4af8
	Checksum: 0x153A874F
	Offset: 0x21E8
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_a079b7e3()
{
	level dialog::remote("khal_something_s_jamming_0", 2);
	level dialog::function_13b3b16a("plyr_something_doesn_t_fe_0", 3);
	level.var_89ea8991 dialog::say("kane_yeah_i_got_that_same_0");
	level.var_89ea8991 dialog::say("kane_up_here_ready_weapo_0", 2);
}

/*
	Name: function_26031755
	Namespace: namespace_967f4af8
	Checksum: 0xA83D5152
	Offset: 0x2280
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_26031755()
{
	PlayFXOnTag(level._effect["emp_flash"], self, "tag_origin");
}

/*
	Name: empRumbleLoop
	Namespace: namespace_967f4af8
	Checksum: 0x8AC5CA08
	Offset: 0x22C0
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function empRumbleLoop(duration)
{
	self endon("emp_rumble_loop");
	self notify("emp_rumble_loop");
	goalTime = GetTime() + duration * 1000;
	while(GetTime() < goalTime)
	{
		self PlayRumbleOnEntity("damage_heavy");
		wait(0.05);
	}
}

/*
	Name: checkToTurnOffEmp
	Namespace: namespace_967f4af8
	Checksum: 0x4BA2CB77
	Offset: 0x2338
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function checkToTurnOffEmp()
{
	if(isdefined(self))
	{
		self.empGrenaded = 0;
		ShutdownEmpRebootIndicatorMenu();
		self setEMPJammed(0);
		self clientfield::set_to_player("empd", 0);
	}
}

/*
	Name: ShutdownEmpRebootIndicatorMenu
	Namespace: namespace_967f4af8
	Checksum: 0xC6ABB6A6
	Offset: 0x23A8
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function ShutdownEmpRebootIndicatorMenu()
{
	empRebootMenu = self GetLuiMenu("EmpRebootIndicator");
	if(isdefined(empRebootMenu))
	{
		self CloseLUIMenu(empRebootMenu);
	}
}

/*
	Name: function_4f725f0b
	Namespace: namespace_967f4af8
	Checksum: 0xDB3EDF2
	Offset: 0x2408
	Size: 0x1C3
	Parameters: 0
	Flags: None
*/
function function_4f725f0b()
{
	self endon("disconnect");
	self EnableInvulnerability();
	self.empDuration = 7;
	self.empGrenaded = 1;
	self shellshock("emp_shock", 1);
	self clientfield::set_to_player("empd", 1);
	self.empStartTime = GetTime();
	self.empEndTime = self.empStartTime + self.empDuration * 1000;
	empRebootMenu = self OpenLUIMenu("EmpRebootIndicator");
	self SetLUIMenuData(empRebootMenu, "endTime", Int(self.empEndTime));
	self SetLUIMenuData(empRebootMenu, "startTime", Int(self.empStartTime));
	self thread empRumbleLoop(0.75);
	self setEMPJammed(1);
	wait(7);
	if(isdefined(self))
	{
		self notify("empGrenadeTimedOut");
		self checkToTurnOffEmp();
	}
	self DisableInvulnerability();
}

/*
	Name: function_408f0fb5
	Namespace: namespace_967f4af8
	Checksum: 0x7806BD47
	Offset: 0x25D8
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_408f0fb5()
{
	level endon("hash_47f08523");
	level flag::wait_till("flag_player_start_drown sequence");
	level flag::wait_till("water_corvus_vo_cleared");
	foreach(p in level.activePlayers)
	{
		p thread function_4f725f0b();
	}
	SetDvar("player_swimSpeed", 95);
	level notify("hash_781a429d");
	level thread namespace_1d1d22be::function_69386a6b();
	function_846f1215(0.5);
	level thread namespace_1d1d22be::function_decbd389();
	wait(2);
	SetDvar("player_swimSpeed", 80);
	function_846f1215(0.65);
	level thread namespace_1d1d22be::function_4ce4df2();
	wait(2);
	SetDvar("player_swimSpeed", 50);
	function_846f1215(0.8);
	level thread namespace_1d1d22be::function_2ad0c85b();
	wait(2);
	level flag::set("flag_kayne_water_moment");
}

/*
	Name: function_846f1215
	Namespace: namespace_967f4af8
	Checksum: 0x43A32278
	Offset: 0x27E0
	Size: 0xD1
	Parameters: 1
	Flags: None
*/
function function_846f1215(n_alpha)
{
	foreach(p in level.activePlayers)
	{
		p thread function_45676b91(n_alpha);
		p hazard::do_damage("o2", 20);
		p thread function_498a7d66();
	}
}

/*
	Name: function_45676b91
	Namespace: namespace_967f4af8
	Checksum: 0x76BC628F
	Offset: 0x28C0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_45676b91(n_alpha)
{
	self endon("disconnect");
	self util::screen_fade_to_alpha(n_alpha, 1);
	self util::screen_fade_to_alpha(0, 1);
}

/*
	Name: function_645f7873
	Namespace: namespace_967f4af8
	Checksum: 0xAB8698AC
	Offset: 0x2918
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function function_645f7873()
{
	level endon("hash_47f08523");
	SetDvar("player_swimSpeed", 95);
	wait(0.5);
	level thread namespace_1d1d22be::function_fc716128();
	thread function_c1808198();
	level dialog::remote("corv_listen_only_to_the_s_2", undefined, "corvus");
	wait(0.2);
	level thread namespace_1d1d22be::function_6e78d063();
	thread function_c1808198();
	level dialog::remote("corv_imagine_yourself_0", undefined, "corvus");
	wait(0.2);
	level thread namespace_1d1d22be::function_487655fa();
	thread function_c1808198();
	level dialog::remote("corv_in_a_frozen_fore_0", undefined, "corvus");
	level flag::set("water_corvus_vo_cleared");
}

/*
	Name: function_ba41df77
	Namespace: namespace_967f4af8
	Checksum: 0xBAEADA78
	Offset: 0x2A80
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_ba41df77()
{
	thread util::screen_fade_out(0.55, "white");
	wait(0.55);
	util::screen_fade_out(0, "white");
	util::screen_fade_in(0.55, "white");
}

/*
	Name: function_e367262c
	Namespace: namespace_967f4af8
	Checksum: 0x1855A16E
	Offset: 0x2AF8
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_e367262c()
{
	self hazard::function_459e5eff("o2", 0);
	self hazard::do_damage("o2", 50);
}

/*
	Name: function_913d882
	Namespace: namespace_967f4af8
	Checksum: 0xF685B4FA
	Offset: 0x2B50
	Size: 0xB7
	Parameters: 0
	Flags: None
*/
function function_913d882()
{
	self endon("disconnect");
	self notify("hash_1fffa65c");
	self endon("death");
	self endon("hash_1fffa65c");
	while(1)
	{
		if(self.sessionstate == "playing" && isalive(self) && self IsPlayerUnderwater() && (!isdefined(self.is_underwater) && self.is_underwater))
		{
			self thread function_41018429();
		}
		wait(0.5);
	}
}

/*
	Name: function_41018429
	Namespace: namespace_967f4af8
	Checksum: 0xEAFC9E38
	Offset: 0x2C10
	Size: 0xE7
	Parameters: 0
	Flags: None
*/
function function_41018429()
{
	self notify("hash_8f1abd30");
	self endon("hash_8f1abd30");
	self endon("death");
	self.is_underwater = 1;
	self hazard::function_459e5eff("o2", 0);
	var_dd075cd2 = 1;
	while(self IsPlayerUnderwater())
	{
		wait(1);
		var_dd075cd2 = self hazard::do_damage("o2", 5);
	}
	self hazard::function_459e5eff("o2", 1);
	self.is_underwater = 0;
}

/*
	Name: function_a1923020
	Namespace: namespace_967f4af8
	Checksum: 0x96F756AE
	Offset: 0x2D00
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a1923020()
{
	level waittill("hash_a57da79e");
	level flag::set("flag_door_explodes");
}

/*
	Name: function_a1b52577
	Namespace: namespace_967f4af8
	Checksum: 0x109B04E8
	Offset: 0x2D38
	Size: 0x20B
	Parameters: 0
	Flags: None
*/
function function_a1b52577()
{
	thread function_a1923020();
	level flag::wait_till_all(Array("flag_maretti_trap_door", "flag_kayne_ready_trap", "flag_door_explodes"));
	exploder::exploder("server_room_boobytrap");
	level thread namespace_1d1d22be::function_ceaeaa5a();
	trapdoor = GetEnt("mdl_trapdoor", "targetname");
	trapdoor delete();
	level thread function_cb3decf1();
	thread function_a05b1c8c();
	level notify("hash_66250ae7");
	wait(2);
	level dialog::remote("khal_kane_do_you_read_me_0");
	level dialog::remote("khal_there_s_multiple_con_0");
	level.var_89ea8991 dialog::say("kane_taylor_and_maretti_0");
	level thread namespace_71a63eac::function_a2d40521();
	level dialog::remote("khal_kane_you_have_to_go_0");
	thread function_71af9864();
	level flag::set("water_room_checkpoint");
	level.var_89ea8991 colors::set_force_color("r");
	trigger::use("breadcrumb_exit_water", "targetname");
	savegame::function_5d2cdd99();
}

/*
	Name: function_71af9864
	Namespace: namespace_967f4af8
	Checksum: 0x85D9812C
	Offset: 0x2F50
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_71af9864()
{
	spawn_manager::enable("spawn_manager_flood_robots");
	spawn_manager::enable("spawn_manager_water_robots");
	spawn_manager::enable("spawn_manager_flood_robots2");
	wait(2);
	struct = GetEnt("igc_kane_water", "targetname");
	struct thread scene::Play("cin_aqu_03_21_server_room_doors_open");
	level thread namespace_1d1d22be::function_ed6114d2();
	var_31b9fd4a = GetEnt("doubledoor_sbm", "targetname");
	var_31b9fd4a delete();
}

/*
	Name: function_b563cc38
	Namespace: namespace_967f4af8
	Checksum: 0xFC1543F5
	Offset: 0x3050
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_b563cc38()
{
	spawner::waittill_ai_group_cleared("interior_robots_stairs");
	level flag::set("flag_kane_start_water_escape");
}

/*
	Name: function_18af354a
	Namespace: namespace_967f4af8
	Checksum: 0x222F3B2E
	Offset: 0x3098
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_18af354a()
{
	level flag::wait_till("flag_kane_start_water_escape");
	exploder::exploder("lighting_water_exit");
	foreach(p in level.players)
	{
		p thread function_913d882();
	}
	level.var_89ea8991 ai::set_ignoreme(1);
	level.var_89ea8991 thread function_8fdcc95b(5);
	thread function_67c72b6();
}

/*
	Name: function_8fdcc95b
	Namespace: namespace_967f4af8
	Checksum: 0xF6DD97DD
	Offset: 0x31B0
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_8fdcc95b(delay)
{
	if(isdefined(delay))
	{
		wait(delay);
	}
	self FX::Play("bubbles", self.origin, (0, 0, 0), "swim_done", 1, "j_spineupper", 1);
}

/*
	Name: function_67c72b6
	Namespace: namespace_967f4af8
	Checksum: 0x7DFC2CEF
	Offset: 0x3218
	Size: 0x103
	Parameters: 0
	Flags: None
*/
function function_67c72b6()
{
	level endon("hash_bf1c950c");
	struct = GetEnt("igc_kane_water", "targetname");
	struct scene::Play("cin_aqu_03_22_water_room_escape_start", level.var_89ea8991);
	struct thread scene::Play("cin_aqu_03_22_water_room_escape_fire_loop", level.var_89ea8991);
	spawner::waittill_ai_group_cleared("interior_robots_water");
	level.var_89ea8991 StopAnimScripted();
	struct scene::Play("cin_aqu_03_22_water_room_escape_end", level.var_89ea8991);
	struct scene::Play("cin_aqu_03_22_water_room_escape_end_loop", level.var_89ea8991);
}

/*
	Name: function_cb3decf1
	Namespace: namespace_967f4af8
	Checksum: 0x53CED520
	Offset: 0x3328
	Size: 0x1A9
	Parameters: 0
	Flags: None
*/
function function_cb3decf1()
{
	var_e9dd177b = GetEnt("trig_trap_door", "targetname");
	var_568fff7e = GetEnt("inner_explosion_area", "targetname");
	foreach(player in level.activePlayers)
	{
		if(player istouching(var_e9dd177b))
		{
			if(player istouching(var_568fff7e))
			{
				player thread function_a476832a(0.5, 4);
				Earthquake(0.7, 1.2, player.origin, 1000);
			}
			else
			{
				Earthquake(0.6, 1, player.origin, 800);
			}
			player PlayRumbleOnEntity("damage_heavy");
		}
	}
}

/*
	Name: function_a476832a
	Namespace: namespace_967f4af8
	Checksum: 0xC597B4AF
	Offset: 0x34E0
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function function_a476832a(delay, duration)
{
	wait(delay);
	self shellshock("proximity_grenade", duration);
}

/*
	Name: function_a05b1c8c
	Namespace: namespace_967f4af8
	Checksum: 0xB679127C
	Offset: 0x3528
	Size: 0x2C1
	Parameters: 0
	Flags: None
*/
function function_a05b1c8c()
{
	closest = level.activePlayers[0];
	var_e34a3797 = [];
	var_52aa09ce = GetEnt("look_at_kane_origin", "targetname");
	var_be38fd90 = GetEnt("door_trap_origin", "targetname");
	foreach(player in level.activePlayers)
	{
		if(Distance(player.origin, var_be38fd90.origin) < 175)
		{
			Array::add(var_e34a3797, player);
		}
	}
	if(var_e34a3797.size < 1)
	{
		foreach(player in level.activePlayers)
		{
			if(Distance(player.origin, var_be38fd90.origin) < Distance(closest.origin, var_be38fd90.origin))
			{
				closest = player;
			}
		}
		Array::add(var_e34a3797, closest);
	}
	foreach(player in var_e34a3797)
	{
		thread function_a0faf694(player, var_52aa09ce, var_be38fd90);
	}
}

/*
	Name: function_a0faf694
	Namespace: namespace_967f4af8
	Checksum: 0xEB54C5DA
	Offset: 0x37F8
	Size: 0x25B
	Parameters: 3
	Flags: None
*/
function function_a0faf694(var_4b70f64, var_52aa09ce, var_be38fd90)
{
	rotator = spawn("script_origin", var_4b70f64.origin);
	rotator.angles = var_4b70f64 getPlayerAngles();
	var_4b70f64 playerLinkTo(rotator, undefined, 1, 0, 0, 0, 0);
	player_eye = var_4b70f64 GetEye();
	if(Distance(var_4b70f64.origin, var_be38fd90.origin) < 175)
	{
		if(var_4b70f64.origin[1] < var_be38fd90.origin[1])
		{
			rotator moveto(rotator.origin + VectorScale((0, 1, 0), 40), 0.3, 0.15, 0.15);
		}
		rotator RotateTo(VectorToAngles(var_52aa09ce.origin - var_4b70f64.origin), 0.7, 0.3, 0.3);
	}
	else
	{
		rotator RotateTo(VectorToAngles(var_52aa09ce.origin - player_eye), 0.7, 0.3, 0.3);
	}
	rotator waittill("rotatedone");
	var_4b70f64 Unlink();
	rotator delete();
}

/*
	Name: function_a527e6f9
	Namespace: namespace_967f4af8
	Checksum: 0xD0A3853D
	Offset: 0x3A60
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_a527e6f9()
{
	self.script_accuracy = 0.3;
	self.health = 100;
	self.skipdeath = 1;
	self ASMSetAnimationRate(0.7);
	self clientfield::set("robot_bubbles_fx", 1);
	self waittill("death");
	if(isdefined(self))
	{
		self StartRagdoll();
	}
}

/*
	Name: function_3b4d25aa
	Namespace: namespace_967f4af8
	Checksum: 0x4C4B12B5
	Offset: 0x3B00
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_3b4d25aa()
{
	self ai::set_behavior_attribute("rogue_control_speed", "sprint");
	self ai::set_behavior_attribute("rogue_control", "forced_level_2");
	self ai::set_ignoreme(1);
}

/*
	Name: function_3ed240f1
	Namespace: namespace_967f4af8
	Checksum: 0x8A9E5D29
	Offset: 0x3B78
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_3ed240f1()
{
	level.var_75756ef4 = 0;
	thread function_8492aced();
}

/*
	Name: function_8492aced
	Namespace: namespace_967f4af8
	Checksum: 0x66287DAD
	Offset: 0x3BA8
	Size: 0x14B
	Parameters: 0
	Flags: None
*/
function function_8492aced()
{
	level waittill("hash_43565802");
	LUI::screen_fade_out(0, "black");
	wait(0.25);
	level waittill("hash_f26c95d0");
	LUI::screen_fade_in(1, "black");
	level waittill("hash_43565802");
	LUI::screen_fade_out(0.5, "black");
	level waittill("hash_f26c95d0");
	util::screen_fade_out(0, "black");
	level thread util::screen_fade_in(1, "black");
	level waittill("hash_43565802");
	LUI::screen_fade_out(0.5, "black");
	level waittill("hash_f26c95d0");
	util::screen_fade_out(0, "black");
	level thread util::screen_fade_in(1, "black");
}

/*
	Name: fade_from_black
	Namespace: namespace_967f4af8
	Checksum: 0xBBAD9B36
	Offset: 0x3D00
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function fade_from_black()
{
	level endon("hash_8f79547f");
	while(1)
	{
		level waittill("hash_f26c95d0");
		if(level.var_75756ef4 == 1)
		{
			level.var_75756ef4 = 0;
			thread LUI::screen_fade_in(0.5);
		}
	}
}

/*
	Name: fade_to_black
	Namespace: namespace_967f4af8
	Checksum: 0x7A5EC2C1
	Offset: 0x3D68
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function fade_to_black()
{
	level endon("hash_8f79547f");
	while(1)
	{
		level waittill("hash_43565802");
		if(level.var_75756ef4 == 0)
		{
			level.var_75756ef4 = 1;
			thread LUI::screen_fade_out(0.5);
		}
	}
}


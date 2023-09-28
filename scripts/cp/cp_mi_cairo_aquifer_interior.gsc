#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_objectives;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_e2cb8359;

/*
	Name: function_608c4683
	Namespace: namespace_e2cb8359
	Checksum: 0xA6C0236F
	Offset: 0xA20
	Size: 0xFB
	Parameters: 0
	Flags: None
*/
function function_608c4683()
{
	namespace_786319bb::function_75ab4ede(1);
	guy = namespace_84eb777e::function_eb16c4f5("hendricks_hangar");
	guy util::magic_bullet_shield();
	guy.script_ignoreme = 1;
	guy.baseAccuracy = 0.25;
	level.var_24223342 thread dialog::say("hend_maretti_s_escaping_t_0");
	clientfield::set("hide_sand_storm", 1);
	thread function_afb6fe67();
	thread chase_vo();
	thread function_2fde871a();
	thread function_3a330f78();
}

/*
	Name: function_afb6fe67
	Namespace: namespace_e2cb8359
	Checksum: 0x10AE76FE
	Offset: 0xB28
	Size: 0x1FB
	Parameters: 0
	Flags: None
*/
function function_afb6fe67()
{
	thread function_bd50ac83();
	util::delay(5, undefined, &scene::init, "cin_aqu_07_not_yourself_3rd_shot010");
	spawn_manager::function_347e835a("main_hangar_enemies");
	guys = spawn_manager::get_ai("main_hangar_enemies");
	spawn_manager::function_27bf2e8("main_hangar_enemies", Int(max(2, Int(guys.size / 3))));
	thread namespace_786319bb::function_9f296d9f("extras_exposed");
	thread namespace_786319bb::function_9f296d9f("hendricks_move_up_hangar");
	util::delay(1, undefined, &trigger::use, "hangar_enemies_exposed", "targetname");
	spawn_manager::function_72e3dd35("main_hangar_enemies");
	level.var_24223342.baseAccuracy = 10;
	spawn_manager::function_72e3dd35("hangar_breach_extras");
	level flag::set("start_interior_breadcrumbs");
	trigger::use("hendricks_leave_hangar", "targetname");
	level.var_24223342 battlechatter::function_d9f49fba(0);
	level.var_24223342.baseAccuracy = 0.25;
}

/*
	Name: function_2fde871a
	Namespace: namespace_e2cb8359
	Checksum: 0x2FD97059
	Offset: 0xD30
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_2fde871a()
{
	level flag::wait_till_any(Array("start_interior_breadcrumbs", "chase_vo1"));
	objectives::breadcrumb("start_interior_breadcrumbs");
}

/*
	Name: function_2fc2978c
	Namespace: namespace_e2cb8359
	Checksum: 0xACB8793D
	Offset: 0xD88
	Size: 0xCD
	Parameters: 0
	Flags: None
*/
function function_2fc2978c()
{
	a_spawn_managers = GetEntArray("spawn_manager", "classname");
	foreach(sm in a_spawn_managers)
	{
		if(sm.name === "pre_boss_enemies")
		{
			sm.script_wait_min = 1.5;
		}
	}
}

/*
	Name: function_a4c59129
	Namespace: namespace_e2cb8359
	Checksum: 0x27AAC76
	Offset: 0xE60
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_a4c59129()
{
	util::magic_bullet_shield(self);
	ai::CreateInterfaceForEntity(self);
	self ai::set_behavior_attribute("sprint", 1);
	self ai::disable_pain();
	trigger::use("promethius_flee_hangar", "targetname");
	self waittill("goal");
	self delete();
}

/*
	Name: function_bd50ac83
	Namespace: namespace_e2cb8359
	Checksum: 0xE6E19F7A
	Offset: 0xF18
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_bd50ac83()
{
	spawn_manager::enable("hangar_breach_extras");
	spawn_manager::function_347e835a("hangar_breach_extras");
	spawn_manager::function_27bf2e8("hangar_breach_extras", 2);
	trigger::use("extras_exposed");
}

/*
	Name: function_3fd5eb17
	Namespace: namespace_e2cb8359
	Checksum: 0xEA546A42
	Offset: 0xF90
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_3fd5eb17()
{
	util::screen_fade_out(0.25, "white");
	wait(0.25);
	util::screen_fade_in(2, "white");
}

/*
	Name: function_3a330f78
	Namespace: namespace_e2cb8359
	Checksum: 0x28AA47DC
	Offset: 0xFE8
	Size: 0x313
	Parameters: 0
	Flags: None
*/
function function_3a330f78()
{
	var_87942fa5 = GetEntArray("icy", "targetname");
	Array::run_all(var_87942fa5, &Hide);
	level flag::wait_till("snow_vo");
	savegame::function_5d2cdd99();
	level thread dialog::remote("corv_let_your_mind_relax_2", undefined, "corvus");
	level flag::wait_till("flag_snow_room");
	if(isdefined(level.BZM_AQUIFERDialogue3_1Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue3_1Callback]]();
	}
	exploder::exploder("amb_int_tank_room");
	Array::thread_all(level.activePlayers, &namespace_786319bb::function_89eaa1b3, 1);
	wait(1);
	Array::thread_all(level.activePlayers, &namespace_786319bb::function_716b5d66, 1);
	wait(5);
	level flag::wait_till_clear("flag_snow_room");
	exploder::exploder_stop("amb_int_tank_room");
	Array::thread_all(level.activePlayers, &namespace_786319bb::function_89eaa1b3, 1);
	wait(1);
	Array::thread_all(level.activePlayers, &namespace_786319bb::function_716b5d66, 0);
	level.var_24223342 battlechatter::function_d9f49fba(1);
	level flag::wait_till("exit_round_room");
	level.var_24223342 battlechatter::function_d9f49fba(0);
	level.var_24223342 ai::set_ignoreall(1);
	guys1 = spawn_manager::get_ai("roundroom_allies");
	guys2 = spawn_manager::get_ai("roundroom_enemies");
	guys = ArrayCombine(guys1, guys2, 1, 1);
	Array::thread_all(guys, &namespace_786319bb::delete_me);
}

/*
	Name: function_1d5b05a
	Namespace: namespace_e2cb8359
	Checksum: 0x26F720B3
	Offset: 0x1308
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_1d5b05a(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 0;
	}
	if(!var_74cd64bc)
	{
		namespace_786319bb::function_2085bf94("hideout_door", 1);
		namespace_786319bb::function_2085bf94("hideout_doors_closed", 1);
	}
	if(isdefined(level.BZM_AQUIFERDialogue7Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue7Callback]]();
	}
	namespace_84eb777e::function_f67ca613(1);
	scene::Play("cin_aqu_16_outro_3rd_sh010", level.var_24223342);
	level waittill("hash_a35499d1");
	level thread namespace_71a63eac::function_a1e074db();
	util::function_93831e79("post_hideout_igc");
}

/*
	Name: function_ff024877
	Namespace: namespace_e2cb8359
	Checksum: 0x9642F7C4
	Offset: 0x1400
	Size: 0x275
	Parameters: 0
	Flags: None
*/
function function_ff024877()
{
	thread namespace_786319bb::function_2085bf94("hideout_door", 0);
	thread namespace_786319bb::function_2085bf94("hideout_doors_closed", 0);
	thread namespace_84eb777e::function_e2d8799f(1);
	thread namespace_84eb777e::function_5d32874c(1);
	thread function_397e963e();
	skipto::function_be8adfb8("hideout");
	savegame::function_5d2cdd99();
	Array::run_all(level.activePlayers, &setMoveSpeedScale, 0.7);
	thread function_291b34c9();
	thread function_c48c4f99();
	thread escape_vo();
	thread function_3a77d1bf();
	var_8a6d11 = function_246476fd(0, "cin_aqu_07_10_escape_vign_run_hendricks_a", "cin_aqu_07_10_escape_vign_wait_hendricks_a", "cin_aqu_07_10_escape_vign_wait_loop_hendricks_a", "run_out_cinematic1", 1, "hend_runout_a");
	var_8a6d11 = function_246476fd(var_8a6d11, "cin_aqu_07_10_escape_vign_run_hendricks_b", "cin_aqu_07_10_escape_vign_wait_hendricks_b", "cin_aqu_07_10_escape_vign_wait_loop_hendricks_a", "run_out_cinematic1", 1, "hend_runout_b");
	var_8a6d11 = function_246476fd(var_8a6d11, "cin_aqu_07_10_escape_vign_run_hendricks_c", "cin_aqu_07_10_escape_vign_wait_hendricks_c", "cin_aqu_07_10_escape_vign_wait_loop_hendricks_a", "run_out_cinematic1", 1, "hend_runout_c");
	var_8a6d11 = function_246476fd(var_8a6d11, "cin_aqu_07_10_escape_vign_run_hendricks_d", "cin_aqu_07_10_escape_vign_wait_hendricks_d", "cin_aqu_07_10_escape_vign_wait_loop_hendricks_a", "run_out_cinematic2", 1, "hend_runout_d");
	if(var_8a6d11)
	{
		var_8a6d11 = function_246476fd(var_8a6d11, "cin_aqu_07_10_escape_vign_run_hendricks_e", undefined, undefined, "run_out_cinematic2", 0, undefined);
	}
	level.var_24223342.n_script_anim_rate = undefined;
}

/*
	Name: function_3a77d1bf
	Namespace: namespace_e2cb8359
	Checksum: 0x541D4435
	Offset: 0x1680
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_3a77d1bf()
{
	struct = GetEnt("run_out_cinematic2", "targetname");
	struct scene::init("cin_aqu_07_10_escape_vign_crush_death_ally");
	level waittill("collapse");
	thread namespace_786319bb::function_2085bf94("ceiling_ac_unit", 1);
	struct scene::Play("cin_aqu_07_10_escape_vign_crush_death_ally");
}

/*
	Name: function_64386226
	Namespace: namespace_e2cb8359
	Checksum: 0xC5A082EF
	Offset: 0x1720
	Size: 0x3F
	Parameters: 0
	Flags: None
*/
function function_64386226()
{
	level endon("hash_a384e425");
	while(1)
	{
		level waittill("collapse");
		IPrintLnBold("COLLAPSE START");
	}
}

/*
	Name: function_291b34c9
	Namespace: namespace_e2cb8359
	Checksum: 0x2DFEDA84
	Offset: 0x1768
	Size: 0x277
	Parameters: 0
	Flags: None
*/
function function_291b34c9()
{
	level endon("hash_a384e425");
	while(1)
	{
		level waittill("shake");
		Earthquake(0.5, 2, level.var_24223342.origin, 1000);
		level thread namespace_1d1d22be::function_5d0cee98();
		STAGGERS = Array("pb_aqu_07_10_escape_vign_stagger_l_player", "pb_aqu_07_10_escape_vign_stagger_r_player");
		Array::run_all(level.activePlayers, &setMoveSpeedScale, 0.5);
		Array::run_all(level.activePlayers, &AllowSprint, 0);
		foreach(player in level.activePlayers)
		{
			anim_name = Array::random(STAGGERS);
			player thread animation::Play(anim_name, player.origin, player.angles, 1, 0, 0, 0);
		}
		Array::run_all(level.activePlayers, &setMoveSpeedScale, 0.2);
		wait(0.8);
		Array::run_all(level.activePlayers, &setMoveSpeedScale, 0.7);
		Array::run_all(level.activePlayers, &AllowSprint, 1);
	}
}

/*
	Name: function_c48c4f99
	Namespace: namespace_e2cb8359
	Checksum: 0x3C046076
	Offset: 0x19E8
	Size: 0x1E9
	Parameters: 0
	Flags: None
*/
function function_c48c4f99()
{
	level endon("hash_a384e425");
	while(1)
	{
		level util::delay_notify(RandomFloatRange(2, 5), "minishake", "shake");
		ret = level util::waittill_any_return("shake", "minishake");
		if(ret == "minishake")
		{
			exploder::exploder("cin_runout_rattles");
			Earthquake(RandomFloatRange(0.3, 0.4), 1.25, level.var_24223342.origin, 1000);
			level thread namespace_1d1d22be::function_f8835fe9();
			Array::run_all(level.activePlayers, &setMoveSpeedScale, 0.5);
			Array::run_all(level.activePlayers, &AllowSprint, 0);
			wait(0.25);
			Array::run_all(level.activePlayers, &setMoveSpeedScale, 0.7);
			Array::run_all(level.activePlayers, &AllowSprint, 1);
		}
		else
		{
			wait(3);
		}
	}
}

/*
	Name: function_e916ac0e
	Namespace: namespace_e2cb8359
	Checksum: 0x2E4FB903
	Offset: 0x1BE0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_e916ac0e()
{
	level.var_24223342 dialog::say("hend_kane_we_re_uploadin_0");
	level dialog::remote("kane_got_it_good_work_0");
	level dialog::remote("kane_the_nrc_have_capture_0");
}

/*
	Name: function_397e963e
	Namespace: namespace_e2cb8359
	Checksum: 0xB2F4EC3B
	Offset: 0x1C50
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_397e963e()
{
	level thread namespace_1d1d22be::function_b01c9f8();
	level dialog::remote("kane_the_nrc_have_launche_0");
	level dialog::function_13b3b16a("plyr_don_t_need_to_tell_u_1");
}

/*
	Name: function_246476fd
	Namespace: namespace_e2cb8359
	Checksum: 0x1D736380
	Offset: 0x1CB8
	Size: 0x291
	Parameters: 7
	Flags: None
*/
function function_246476fd(var_8a6d11, var_f17304b7, var_75422735, var_b6b983f4, struct_name, var_2d3b4a98, waitFlag)
{
	struct = GetEnt(struct_name, "targetname");
	var_482ba61c = 1.2;
	level.var_24223342.n_script_anim_rate = var_482ba61c;
	if(var_8a6d11)
	{
		struct scene::init(var_f17304b7, level.var_24223342);
		level waittill("hash_20aa8e12");
	}
	scene::add_scene_func(var_f17304b7, &function_8ed6a39f, "done");
	struct thread scene::Play(var_f17304b7, level.var_24223342);
	ret = level util::waittill_any_return(waitFlag, "splice", "run_scene_done");
	if(isdefined(var_75422735) && isdefined(var_b6b983f4) && isdefined(waitFlag) && (ret == "splice" || ret == "run_scene_done") && !level flag::get(waitFlag))
	{
		struct scene::stop(var_f17304b7, 0);
		struct scene::Play(var_75422735, level.var_24223342);
		level.var_24223342.n_script_anim_rate = undefined;
		if(var_2d3b4a98)
		{
			level.var_24223342 thread scene::Play(var_b6b983f4, level.var_24223342);
		}
		else
		{
			struct thread scene::Play(var_b6b983f4, level.var_24223342);
		}
		level flag::wait_till(waitFlag);
		level.var_24223342 StopAnimScripted();
		return 1;
	}
	else
	{
		struct waittill("scene_done");
		return 0;
	}
}

/*
	Name: function_8ed6a39f
	Namespace: namespace_e2cb8359
	Checksum: 0xF132EA5C
	Offset: 0x1F58
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_8ed6a39f(a_ents)
{
	level notify("hash_81d7addc");
}

/*
	Name: chase_vo
	Namespace: namespace_e2cb8359
	Checksum: 0x27FCAFD7
	Offset: 0x1F80
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function chase_vo()
{
	level flag::wait_till("chase_vo1");
	savegame::function_5d2cdd99();
	level.var_24223342 thread dialog::say("hend_maretti_went_this_wa_0");
	level flag::wait_till("chase_vo2");
	level.var_24223342 thread dialog::say("hend_move_faster_we_can_0");
	level flag::wait_till("chase_vo3");
	level dialog::function_13b3b16a("plyr_hendricks_0");
	level dialog::function_13b3b16a("plyr_slow_down_0", 2);
	level dialog::function_13b3b16a("plyr_hey_listen_to_me_0", 2);
}

/*
	Name: escape_vo
	Namespace: namespace_e2cb8359
	Checksum: 0xA760B906
	Offset: 0x20A0
	Size: 0x34D
	Parameters: 0
	Flags: None
*/
function escape_vo()
{
	var_296988d3 = [];
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!IsArray(var_296988d3))
	{
		var_296988d3 = Array(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "plyr_we_need_to_get_back_0";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!IsArray(var_296988d3))
	{
		var_296988d3 = Array(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "kane_you_need_to_get_out_0";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!IsArray(var_296988d3))
	{
		var_296988d3 = Array(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "hend_keep_moving_this_pl_0";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!IsArray(var_296988d3))
	{
		var_296988d3 = Array(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "skip";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!IsArray(var_296988d3))
	{
		var_296988d3 = Array(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "hend_watch_out_1";
	if(!isdefined(var_296988d3))
	{
		var_296988d3 = [];
	}
	else if(!IsArray(var_296988d3))
	{
		var_296988d3 = Array(var_296988d3);
	}
	var_296988d3[var_296988d3.size] = "hend_keep_up_0";
	for(i = 0; i < var_296988d3.size; i++)
	{
		level waittill("shake");
		wait(2);
		if(var_296988d3[i] != "skip")
		{
			if(i == 0)
			{
				dialog::function_13b3b16a(var_296988d3[i]);
				continue;
			}
			if(i == 1)
			{
				level dialog::remote(var_296988d3[i]);
				i++;
				level.var_24223342 dialog::say(var_296988d3[i]);
				continue;
			}
			level.var_24223342 dialog::say(var_296988d3[i]);
		}
	}
}


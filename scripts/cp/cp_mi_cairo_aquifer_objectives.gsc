#using scripts\codescripts\struct;
#using scripts\cp\_debug;
#using scripts\cp\_dialog;
#using scripts\cp\_hacking;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_cairo_aquifer_accolades;
#using scripts\cp\cp_mi_cairo_aquifer_aitest;
#using scripts\cp\cp_mi_cairo_aquifer_ambience;
#using scripts\cp\cp_mi_cairo_aquifer_boss;
#using scripts\cp\cp_mi_cairo_aquifer_fx;
#using scripts\cp\cp_mi_cairo_aquifer_interior;
#using scripts\cp\cp_mi_cairo_aquifer_sound;
#using scripts\cp\cp_mi_cairo_aquifer_utility;
#using scripts\cp\cp_mi_cairo_aquifer_water_room;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\_oob;
#using scripts\shared\ai\systems\ai_interface;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\audio_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_84eb777e;

/*
	Name: function_5025ad5
	Namespace: namespace_84eb777e
	Checksum: 0x3441791B
	Offset: 0x2BC8
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_5025ad5()
{
	/#
		level notify("hash_17a0d3bd");
		level endon("hash_17a0d3bd");
		wait(8);
		foreach(player in level.players)
		{
			level.var_f2898bd7 = "Dev Block strings are not supported";
			player notify("update_billboard");
		}
	#/
}

/*
	Name: function_52b34f9f
	Namespace: namespace_84eb777e
	Checksum: 0x7CBA6699
	Offset: 0x2C90
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_52b34f9f()
{
	level dialog::remote("khal_the_nrc_has_already_0", 0);
	level dialog::remote("kane_copy_that_khalil_w_0", 0.2);
	level dialog::remote("hend_what_about_taylor_1", 0.15);
	level dialog::function_13b3b16a("plyr_one_thing_at_a_time_0", 0.2);
	level flag::set("intro_dialog_finished");
}

/*
	Name: function_419ee614
	Namespace: namespace_84eb777e
	Checksum: 0x4AF9DB32
	Offset: 0x2D60
	Size: 0x2AB
	Parameters: 2
	Flags: None
*/
function function_419ee614(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "scripted";
	namespace_786319bb::function_61b71c43();
	var_24223342 = GetEnt("hendricks_intro", "targetname") spawner::spawn(1);
	load::function_c32ba481();
	thread namespace_786319bb::function_2c69b4a0(var_24223342);
	thread namespace_786319bb::intro_screen();
	objectives::set("cp_level_aquifer_locate_aquifer");
	thread function_52b34f9f();
	level flag::wait_till("intro_chryon_done");
	wait(0.5);
	if(isdefined(level.BZM_AQUIFERDialogue1Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1Callback]]();
	}
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_c1bd6415("oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	thread function_61034146(1);
	wait(0.5);
	level flag::wait_till("intro_finished");
	level clientfield::set("gameplay_started", 1);
	thread namespace_786319bb::function_c1bd6415("oob_trig", 1);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_61034146
	Namespace: namespace_84eb777e
	Checksum: 0xF8E47ADD
	Offset: 0x3018
	Size: 0x1CB
	Parameters: 1
	Flags: None
*/
function function_61034146(bool)
{
	if(bool)
	{
		exploder::exploder("amb_ext_sand_vtol");
		exploder::exploder("amb_ext_deck_fire01");
		exploder::exploder("amb_ext_deck_fire02");
		exploder::exploder("amb_ext_deck_fire03");
		exploder::exploder("amb_ext_deck_fire04");
		exploder::exploder("amb_ext_ground");
		exploder::exploder("amb_ext_vista_war");
		exploder::exploder("amb_ext_lights");
		exploder::exploder("amb_ext_underwater");
	}
	else
	{
		exploder::exploder_stop("amb_ext_sand_vtol");
		exploder::exploder_stop("amb_ext_deck_fire01");
		exploder::exploder_stop("amb_ext_deck_fire02");
		exploder::exploder_stop("amb_ext_deck_fire03");
		exploder::exploder_stop("amb_ext_deck_fire04");
		exploder::exploder_stop("amb_ext_ground");
		exploder::exploder_stop("amb_ext_vista_war");
		exploder::exploder_stop("amb_ext_lights");
		exploder::exploder_stop("amb_ext_underwater");
	}
}

/*
	Name: function_b3ed487d
	Namespace: namespace_84eb777e
	Checksum: 0x59D23404
	Offset: 0x31F0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_b3ed487d(bool)
{
	if(bool)
	{
		exploder::exploder("amb_underwater");
	}
	else
	{
		exploder::kill_exploder("amb_underwater");
	}
}

/*
	Name: function_e2d8799f
	Namespace: namespace_84eb777e
	Checksum: 0x5852A447
	Offset: 0x3248
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_e2d8799f(bool)
{
	if(bool)
	{
		exploder::exploder("amb_vtol_breach");
	}
	else
	{
		exploder::exploder_stop("amb_vtol_breach");
	}
}

/*
	Name: function_5d32874c
	Namespace: namespace_84eb777e
	Checksum: 0x138E1C1C
	Offset: 0x32A0
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_5d32874c(bool)
{
	if(bool)
	{
		exploder::exploder("amb_int_post_breach");
	}
	else
	{
		exploder::exploder_stop("amb_int_post_breach");
	}
}

/*
	Name: function_f67ca613
	Namespace: namespace_84eb777e
	Checksum: 0xFD5FA569
	Offset: 0x32F8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_f67ca613(bool)
{
	if(bool)
	{
		exploder::exploder("amb_int_runout");
	}
	else
	{
		exploder::exploder_stop("amb_int_runout");
	}
}

/*
	Name: function_1e131fea
	Namespace: namespace_84eb777e
	Checksum: 0x9419C5F1
	Offset: 0x3350
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_1e131fea(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level struct::delete_script_bundle("scene", "p7_fxanim_cp_aqu_war_airassault_bundle");
}

/*
	Name: function_ef5a929e
	Namespace: namespace_84eb777e
	Checksum: 0xA1EB8498
	Offset: 0x33A8
	Size: 0x1FB
	Parameters: 1
	Flags: None
*/
function function_ef5a929e(var_5d686f5c)
{
	if(!isdefined(level.var_c8595f3e) && var_5d686f5c)
	{
		return;
	}
	str_animname = "v_aqu_01_10_intro_1st_flyin_player" + self.player_num;
	n_anim_length = getanimlength(str_animname);
	self namespace_786319bb::function_3d7bb92e();
	self oob::disablePlayerOOB(1);
	if(var_5d686f5c)
	{
		n_time_passed = GetTime() - level.var_c8595f3e / 1000;
		var_5e1f5b2 = n_time_passed / n_anim_length;
		n_start_time = math::clamp(var_5e1f5b2, 0, 0.45);
	}
	else
	{
		n_start_time = 0;
	}
	root = GetEnt("intro_scene", "targetname");
	self namespace_786319bb::function_d683f26a();
	self.var_8fedf36c thread animation::Play("v_aqu_01_10_intro_1st_flyin_player" + self.player_num, root, undefined, 1, 0, 0, 0, n_start_time);
	thread namespace_786319bb::function_b7cf4d2d(self);
	self thread namespace_786319bb::function_af376a0e("v_aqu_01_10_intro_1st_flyin_player" + self.player_num, self.player_num - 1, "v_aqu_dogfight_intro_enemy" + self.player_num, "intro_dogfight_global_active");
}

/*
	Name: function_c28ce61e
	Namespace: namespace_84eb777e
	Checksum: 0x2B01440F
	Offset: 0x35B0
	Size: 0xC9
	Parameters: 1
	Flags: None
*/
function function_c28ce61e(time)
{
	wait(time);
	level flag::clear("dogfighting");
	level flagsys::clear("dogfight_ending");
	foreach(player in level.activePlayers)
	{
		player notify("hash_b4a5f622");
	}
}

/*
	Name: function_9239cf5c
	Namespace: namespace_84eb777e
	Checksum: 0x76575DEE
	Offset: 0x3688
	Size: 0x283
	Parameters: 2
	Flags: None
*/
function function_9239cf5c(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "scripted";
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread function_5025ad5();
	if(var_74cd64bc)
	{
		thread function_61034146(1);
		load::function_a2995f22();
	}
	level flag::wait_till("dogfighting");
	wait(50);
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_3dca6783) && player.var_3dca6783 > 0)
		{
			break;
		}
		util::missionfailedwrapper_nodeath(&"CP_MI_CAIRO_AQUIFER_VTOL_DOGFIGHT_FAIL", &"CP_MI_CAIRO_AQUIFER_VTOL_DOGFIGHT_FAIL_HINT");
		return;
	}
	level notify("hash_982117a3");
	wait(3);
	level dialog::remote("hend_we_re_taking_heavy_f_1", 0.25, "dni");
	level flagsys::set("dogfight_ending");
	level flag::set("intro_dogfight_global_active");
	level thread dialog::remote("kane_copy_that_we_re_cle_0", 0, "dni");
	time = 10;
	level thread function_c28ce61e(time);
	level util::waittill_any_timeout(time, "dogfight_finished");
	wait(1);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_b3635282
	Namespace: namespace_84eb777e
	Checksum: 0xA94783C2
	Offset: 0x3918
	Size: 0x93
	Parameters: 4
	Flags: None
*/
function function_b3635282(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level struct::delete_script_bundle("scene", "cin_aqu_01_10_intro_1st_flyin_main");
	level struct::delete_script_bundle("scene", "cin_aqu_01_10_intro_3rd_flyin_main");
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_locate_aquifer");
	}
}

/*
	Name: function_3230f09a
	Namespace: namespace_84eb777e
	Checksum: 0x2892B9CB
	Offset: 0x39B8
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_3230f09a(str_objective, var_74cd64bc)
{
	level flag::set("level_long_fly_in_completed");
	level flag::set("inside_aquifer");
	level flag::init("vtol_display_target_distance", 1);
	thread function_61034146(1);
	for(i = 1; i <= 4; i++)
	{
		namespace_786319bb::function_1215f9e4(i);
	}
	thread namespace_786319bb::function_c1bd6415("oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	level flag::wait_till("player_active_in_level");
	namespace_786319bb::function_465b0eba();
	thread namespace_786319bb::function_dbe3d86f();
}

/*
	Name: function_a02afda4
	Namespace: namespace_84eb777e
	Checksum: 0x7B736F3
	Offset: 0x3BB8
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_a02afda4(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_bfb165f3
	Namespace: namespace_84eb777e
	Checksum: 0x1C6B2D05
	Offset: 0x3BE8
	Size: 0x77
	Parameters: 1
	Flags: None
*/
function function_bfb165f3(txt)
{
	/#
		self endon("death");
		color = (1, 1, 1);
		SIZE = 12;
		while(1)
		{
			print3d(self.origin, txt, color, 1, SIZE);
			wait(0.05);
		}
	#/
}

/*
	Name: function_457fd4b
	Namespace: namespace_84eb777e
	Checksum: 0x6836B015
	Offset: 0x3C68
	Size: 0xFB
	Parameters: 4
	Flags: None
*/
function function_457fd4b(var_4458affc, obj, ent, var_d5639cb)
{
	ent waittill("death");
	level flag::set("can_spawn_hunters");
	namespace_786319bb::explosion_launcher(obj.origin);
	if(isVehicle(ent))
	{
		playsoundatposition("evt_vehicle_explosion_lyr", ent.origin);
	}
	function_5ec99c19(var_4458affc, obj, 0);
	level notify(var_d5639cb);
	wait(20);
	if(isdefined(obj))
	{
		obj delete();
	}
}

/*
	Name: function_cbc6522f
	Namespace: namespace_84eb777e
	Checksum: 0x25AB6F7E
	Offset: 0x3D70
	Size: 0x7D
	Parameters: 0
	Flags: None
*/
function function_cbc6522f()
{
	/#
		wait(8);
		var_33d3c892 = level.var_79168bae.size;
		for(i = 0; i < var_33d3c892; i++)
		{
			wait(20 / var_33d3c892);
			level.var_79168bae[i] delete();
		}
	#/
}

/*
	Name: function_9a0a7c64
	Namespace: namespace_84eb777e
	Checksum: 0x34033ACD
	Offset: 0x3DF8
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_9a0a7c64(var_dc822a23)
{
	if(!(isdefined(var_dc822a23) && var_dc822a23))
	{
		level flagsys::wait_till_clear("dogfight_ending");
	}
	level dialog::remote("hend_alright_squad_we_ne_1", 2);
	level flagsys::wait_till_timeout(10, "common_defense_objectives_complete");
	if(level.var_153e45b8 == 0)
	{
		level dialog::remote("hend_hit_those_quad_units_0", 2);
	}
	level flagsys::wait_till("common_defense_objectives_complete");
	level dialog::remote("kane_good_job_khalil_ai_0", 1);
	level dialog::remote("khal_thanks_for_the_assis_0", 1);
	level dialog::remote("plyr_solid_copy_we_re_on_0", 1);
	level dialog::remote("hend_enemy_comms_this_0", 1);
	level dialog::remote("kane_we_ll_find_em_just_0", 1);
	level notify("hash_a3351a62");
}

/*
	Name: function_de74737
	Namespace: namespace_84eb777e
	Checksum: 0x9FE11CA4
	Offset: 0x3F80
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_de74737(name)
{
	s = GetEnt(name, "targetname");
	spawned = s spawner::spawn(1, undefined, undefined, undefined, 1);
	return spawned;
}

/*
	Name: function_a45989aa
	Namespace: namespace_84eb777e
	Checksum: 0x387FFE3A
	Offset: 0x3FF8
	Size: 0x65
	Parameters: 1
	Flags: None
*/
function function_a45989aa(tname)
{
	ent = GetEnt(tname, "targetname");
	if(isdefined(ent) && IsSpawner(ent))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_f5924bbd
	Namespace: namespace_84eb777e
	Checksum: 0xC739B447
	Offset: 0x4068
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_f5924bbd()
{
	self waittill("death", e_attacker);
	if(isdefined(e_attacker))
	{
		e_org = spawn("script_origin", self.origin);
		e_org endon("death");
		var_2c0ee386 = VectorToAngles(e_attacker.origin - e_org.origin);
		var_2c0ee386 = (AbsAngleClamp360(var_2c0ee386[0]), var_2c0ee386[1], 0);
		e_org.angles = var_2c0ee386;
		e_org scene::Play("p7_fxanim_cp_aqu_smoke_raven");
		wait(0.5);
		e_org delete();
	}
}

/*
	Name: function_f4ecd13f
	Namespace: namespace_84eb777e
	Checksum: 0x43850DC2
	Offset: 0x4188
	Size: 0x4A9
	Parameters: 6
	Flags: None
*/
function function_f4ecd13f(var_3ce30dc, var_2b4368ec, var_c91af2ba, var_d5639cb, var_396d9d43, var_a4981390)
{
	level.var_79168bae = [];
	count = 1;
	level flagsys::clear("common_defense_objectives_complete");
	namespace_786319bb::function_25207b76();
	while(function_a45989aa(var_3ce30dc + count))
	{
		t = function_de74737(var_3ce30dc + count);
		t.allow_movement = 0;
		level.var_79168bae[level.var_79168bae.size] = t;
		if(isdefined(t.variant) && t.variant == "rocketpod")
		{
			t.trophy_disables = 4;
			t quadtank::remove_repulsor();
			objectives::hide_for_target("cp_quadtank_rocket_icon", t);
			t thread function_f5924bbd();
			t thread namespace_786319bb::function_68714b99();
		}
		count++;
		util::wait_network_frame();
	}
	thread namespace_786319bb::function_6e0553f9();
	if(isdefined(var_396d9d43) && var_396d9d43)
	{
		return;
	}
	if(level.var_79168bae.size == 0)
	{
		wait(0.5);
		level flagsys::set("common_defense_objectives_complete");
		return;
	}
	level.var_153e45b8 = 0;
	obj2 = [];
	for(i = 0; i < level.var_79168bae.size; i++)
	{
		obj2[i] = level.var_79168bae[i];
	}
	if(isdefined(var_a4981390))
	{
		flag::wait_till(var_a4981390);
	}
	function_4d816f2c(var_2b4368ec);
	function_4d816f2c(var_c91af2ba, obj2);
	for(i = 0; i < level.var_79168bae.size; i++)
	{
		thread function_457fd4b(var_c91af2ba, obj2[i], level.var_79168bae[i], var_d5639cb);
	}
	wait(0.05);
	var_b8a196f4 = level.var_79168bae.size;
	var_3a3bf933 = [];
	var_3a3bf933[var_3a3bf933.size] = "hend_keep_hitting_them_w_1";
	var_3a3bf933[var_3a3bf933.size] = "kane_that_s_another_one_d_0";
	var_3a3bf933[var_3a3bf933.size] = "hend_target_down_2";
	var_3a3bf933[var_3a3bf933.size] = "kane_good_kill_keep_it_0";
	var_3a3bf933[var_3a3bf933.size] = "hend_he_s_not_coming_back_0";
	while(level.var_153e45b8 < var_b8a196f4)
	{
		level waittill(var_d5639cb);
		level.var_153e45b8++;
		if(var_b8a196f4 - level.var_153e45b8 == 1)
		{
			level thread dialog::remote("hend_only_one_more_left_0");
		}
		else if(level.var_153e45b8 == 1)
		{
			level thread dialog::remote("hend_one_down_1");
		}
		else if(var_b8a196f4 - level.var_153e45b8 > 1)
		{
			level thread dialog::remote(var_3a3bf933[RandomInt(var_3a3bf933.size)]);
		}
	}
	level flagsys::set("common_defense_objectives_complete");
	level notify("hash_194eb1ad");
}

/*
	Name: function_4c421c48
	Namespace: namespace_84eb777e
	Checksum: 0x40A51DB0
	Offset: 0x4640
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_4c421c48(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	thread function_61034146(1);
	namespace_786319bb::function_beb1031a();
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_77fde091(0);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_eb387afa
	Namespace: namespace_84eb777e
	Checksum: 0x1C421C8B
	Offset: 0x4780
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_eb387afa(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_e57c5192
	Namespace: namespace_84eb777e
	Checksum: 0x13B8C696
	Offset: 0x47B0
	Size: 0x27B
	Parameters: 2
	Flags: None
*/
function function_e57c5192(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	namespace_1d1d22be::function_de37a122();
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	thread function_9a0a7c64(var_74cd64bc);
	level thread namespace_71a63eac::function_bdb99f05();
	thread function_61034146(1);
	thread namespace_4a128b5f::function_25dcb860();
	thread namespace_786319bb::function_96450f49("hen_def_front_", 0);
	var_d5639cb = "target_down";
	thread function_f4ecd13f("quadtank_obj_", "cp_level_aquifer_destroy_defenses", "cp_level_aquifer_destroyme", var_d5639cb);
	wait(0.1);
	namespace_786319bb::function_465b0eba();
	if(isdefined(level.BZM_AQUIFERDialogue1_5Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1_5Callback]]();
	}
	level flagsys::wait_till("common_defense_objectives_complete");
	level waittill("hash_a3351a62");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_676b4c2c
	Namespace: namespace_84eb777e
	Checksum: 0x37B65F3D
	Offset: 0x4A38
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_676b4c2c(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_destroy_defenses");
	}
}

/*
	Name: function_7f764399
	Namespace: namespace_84eb777e
	Checksum: 0x714E8625
	Offset: 0x4A88
	Size: 0x195
	Parameters: 3
	Flags: None
*/
function function_7f764399(team, ent, radius)
{
	if(!isdefined(ent))
	{
		return;
	}
	guys = [];
	if(team == "allies")
	{
		guys = level.players;
	}
	else
	{
		guys = GetAITeamArray(team);
	}
	ret = [];
	if(!isdefined(radius))
	{
		radius = 256;
	}
	guys = ArraySort(guys, ent.origin, 1, 16, radius);
	foreach(dude in guys)
	{
		if(!isdefined(dude) || !isalive(dude))
		{
			continue;
		}
		if(isVehicle(dude))
		{
			continue;
		}
		ret[ret.size] = dude;
	}
	return ret;
}

/*
	Name: function_10d2d1c3
	Namespace: namespace_84eb777e
	Checksum: 0x5BDC48AE
	Offset: 0x4C28
	Size: 0x2CB
	Parameters: 4
	Flags: None
*/
function function_10d2d1c3(var_4458affc, obj, ent, var_d5639cb)
{
	var_eae60027 = 1 + level.players.size - 1 * 0.5;
	remaining_time = 80000;
	start_time = GetTime();
	if(level.var_79481939)
	{
		if(level.var_79481939 > 1)
		{
			remaining_time = level.var_79481939;
		}
		else
		{
			remaining_time = 0;
		}
	}
	var_ce0179c6 = remaining_time;
	var_dfd71aec = objectives::function_e95d8ccb(var_4458affc, obj);
	while(remaining_time > 0)
	{
		var_9966222c = function_7f764399("allies", ent, level.var_3fe6078c);
		if(var_9966222c.size > 0)
		{
			remaining_time = remaining_time - 50;
		}
		var_a40ea223 = 1 - remaining_time / var_ce0179c6;
		ent.var_a220f04a = var_a40ea223 * 100;
		Objective_SetProgress(var_dfd71aec, var_a40ea223);
		foreach(player in level.activePlayers)
		{
			player clientfield::set_player_uimodel("hackUpload.percent", var_a40ea223);
		}
		wait(0.05);
	}
	foreach(player in level.players)
	{
		player clientfield::set_player_uimodel("hackUpload.percent", 0);
	}
	ent delete();
}

/*
	Name: function_b7f8aff0
	Namespace: namespace_84eb777e
	Checksum: 0x20118B6D
	Offset: 0x4F00
	Size: 0x22B
	Parameters: 5
	Flags: None
*/
function function_b7f8aff0(var_4458affc, obj, OBJ_DEFEND, ent, var_d5639cb)
{
	if(var_4458affc == "cp_level_aquifer_defendme" || var_4458affc == "cp_level_aquifer_defendme2")
	{
		var_dfd71aec = objectives::function_e95d8ccb(OBJ_DEFEND, obj);
		Objective_SetProgress(var_dfd71aec, 0);
	}
	if(ent.targetname == "exterior_hack_trig_right_1")
	{
		level flag::wait_till("flag_player_started_right_tower");
	}
	if(ent.targetname == "exterior_hack_trig_left_1")
	{
		level flag::wait_till("flag_player_started_left_tower");
	}
	var_b43079a5 = ent.targetname;
	ent hacking::trigger_wait();
	flag_name = var_b43079a5 + "_started";
	if(flag::exists(flag_name))
	{
		flag::set(flag_name);
	}
	ent TriggerEnable(0);
	function_4d816f2c(OBJ_DEFEND, obj);
	function_10d2d1c3(OBJ_DEFEND, obj, ent, var_d5639cb);
	flag_name = var_b43079a5 + "_finished";
	if(flag::exists(flag_name))
	{
		flag::set(flag_name);
	}
	level notify(var_d5639cb);
	thread function_e2cebeb6(obj, OBJ_DEFEND);
}

/*
	Name: function_e2cebeb6
	Namespace: namespace_84eb777e
	Checksum: 0x7A3A78A6
	Offset: 0x5138
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_e2cebeb6(obj, OBJ_DEFEND)
{
	wait(5);
	function_5ec99c19(OBJ_DEFEND, obj);
}

/*
	Name: function_3207fe78
	Namespace: namespace_84eb777e
	Checksum: 0x2A2ADAA9
	Offset: 0x5178
	Size: 0x95
	Parameters: 1
	Flags: None
*/
function function_3207fe78(var_3ce30dc)
{
	trigs = [];
	curr_trig = 1;
	while(1)
	{
		trig = GetEnt(var_3ce30dc + curr_trig, "targetname");
		if(!isdefined(trig))
		{
			break;
		}
		trigs[trigs.size] = trig;
		curr_trig++;
	}
	return trigs;
}

/*
	Name: function_f1e1d63
	Namespace: namespace_84eb777e
	Checksum: 0xCDB6E005
	Offset: 0x5218
	Size: 0x2D9
	Parameters: 8
	Flags: None
*/
function function_f1e1d63(var_3ce30dc, var_2b4368ec, var_c91af2ba, OBJ_DEFEND, var_d5639cb, var_f9d3d7f2, var_368eea5, var_d66abd8d)
{
	level flag::set("can_spawn_hunters");
	if(!isdefined(var_f9d3d7f2))
	{
		var_f9d3d7f2 = (0, 0, 0);
	}
	level.var_7e2f5eca = function_3207fe78(var_3ce30dc);
	if(level.var_7e2f5eca.size == 0)
	{
		wait(0.5);
		level notify("hash_ae36b621");
		return;
	}
	obj2 = [];
	for(i = 0; i < level.var_7e2f5eca.size; i++)
	{
		obj2[i] = level.var_7e2f5eca[i].origin + var_f9d3d7f2;
	}
	thread function_4d816f2c(var_2b4368ec, obj2);
	for(i = 0; i < level.var_7e2f5eca.size; i++)
	{
		thread function_b7f8aff0(var_c91af2ba, obj2[i], OBJ_DEFEND, level.var_7e2f5eca[i], var_d5639cb);
	}
	while(isdefined(var_368eea5))
	{
		if(util::any_player_is_touching(var_368eea5, "allies"))
		{
			break;
		}
		wait(0.1);
	}
	thread function_5ec99c19(var_2b4368ec, obj2);
	foreach(trig in level.var_7e2f5eca)
	{
		trig thread namespace_786319bb::function_b86ff37e(1, var_c91af2ba, var_d66abd8d);
	}
	var_b8a196f4 = level.var_7e2f5eca.size;
	for(var_fd3a0f1e = 0; var_fd3a0f1e < var_b8a196f4; var_fd3a0f1e++)
	{
		level waittill(var_d5639cb);
	}
	level notify("hash_ae36b621");
}

/*
	Name: player_in_vtol
	Namespace: namespace_84eb777e
	Checksum: 0xA7E89753
	Offset: 0x5500
	Size: 0x35
	Parameters: 0
	Flags: None
*/
function player_in_vtol()
{
	if(isdefined(self.var_8fedf36c) && self islinkedto(self.var_8fedf36c))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_34231419
	Namespace: namespace_84eb777e
	Checksum: 0x210DFE59
	Offset: 0x5540
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_34231419()
{
	if(!isdefined(level.OBJ_NAME) || !isdefined(level.var_cc9e08f))
	{
		return;
	}
	self thread function_eb911c76(level.OBJ_NAME, level.var_cc9e08f);
}

/*
	Name: function_eb911c76
	Namespace: namespace_84eb777e
	Checksum: 0x6617798B
	Offset: 0x5598
	Size: 0x259
	Parameters: 2
	Flags: None
*/
function function_eb911c76(OBJ_NAME, var_cc9e08f)
{
	self endon("death");
	self endon("disconnect");
	level endon("hash_c42b010f");
	while(!self player_in_vtol())
	{
		wait(0.05);
	}
	if(isdefined(var_cc9e08f))
	{
		self waittill("hash_fd4242d1", zone);
		level notify("hash_f3cbe351", zone);
		if(level.var_b91023ce.size > 1)
		{
			namespace_786319bb::function_fc653485();
			namespace_786319bb::function_1215f9e4(zone);
			foreach(player in level.activePlayers)
			{
				if(player != self)
				{
					if(self namespace_786319bb::function_5c971cb7())
					{
						player namespace_786319bb::function_22a0413d("landing_mode");
					}
				}
			}
			if(!isdefined(level.var_710bdaa1))
			{
				level.var_710bdaa1 = "left";
				level.var_d18b7098 = 0;
				if(zone == 2)
				{
					level.var_710bdaa1 = "right";
					level.var_d18b7098 = 1;
					function_5ec99c19(OBJ_NAME, var_cc9e08f[0]);
				}
				else
				{
					function_5ec99c19(OBJ_NAME, var_cc9e08f[1]);
				}
				wait(0.05);
			}
		}
	}
	while(self player_in_vtol())
	{
		wait(0.05);
	}
	level notify("hash_f56c8f4d");
}

/*
	Name: function_a5b8f98
	Namespace: namespace_84eb777e
	Checksum: 0xC7281377
	Offset: 0x5800
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a5b8f98()
{
	if(isdefined(level.var_4712f308))
	{
		objectives::Hide(level.var_4712f308, self);
	}
}

/*
	Name: function_8c1f2dbc
	Namespace: namespace_84eb777e
	Checksum: 0x8B6FB7A8
	Offset: 0x5838
	Size: 0x173
	Parameters: 3
	Flags: None
*/
function function_8c1f2dbc(OBJ_NAME, var_cc9e08f, var_36fcba17)
{
	wait(0.5);
	if(!isdefined(var_36fcba17))
	{
		var_36fcba17 = 0;
	}
	flag::set("enable_vtol_landing_zones");
	level endon("hash_c42b010f");
	thread namespace_786319bb::function_191fff49("landing_mode");
	level.OBJ_NAME = OBJ_NAME;
	level.var_cc9e08f = var_cc9e08f;
	level callback::on_spawned(&function_34231419);
	foreach(player in level.activePlayers)
	{
		player thread function_eb911c76(OBJ_NAME, var_cc9e08f);
	}
	level waittill("hash_f56c8f4d");
	level.OBJ_NAME = undefined;
	level.var_cc9e08f = undefined;
	callback::remove_on_spawned(&function_34231419);
}

/*
	Name: function_2e932d4f
	Namespace: namespace_84eb777e
	Checksum: 0x363808EC
	Offset: 0x59B8
	Size: 0x71
	Parameters: 2
	Flags: None
*/
function function_2e932d4f(var_565ac03, OBJ_NAME)
{
	self endon("disconnect");
	level endon("hash_fdb2d846");
	while(!self player_in_vtol())
	{
		wait(0.05);
	}
	self function_44b0ba69();
	level notify("hash_101cf3f7");
}

/*
	Name: function_31e37f85
	Namespace: namespace_84eb777e
	Checksum: 0x36BC1587
	Offset: 0x5A38
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_31e37f85()
{
	foreach(player in level.activePlayers)
	{
		player function_44b0ba69();
	}
	level notify("hash_fdb2d846");
}

/*
	Name: function_44b0ba69
	Namespace: namespace_84eb777e
	Checksum: 0x68BCD155
	Offset: 0x5AD8
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_44b0ba69()
{
	if(isdefined(self.var_bd96c96f))
	{
		objective_state(self.var_bd96c96f, "done");
		gameobjects::release_obj_id(self.var_bd96c96f);
		self.var_bd96c96f = undefined;
	}
}

/*
	Name: function_da18861f
	Namespace: namespace_84eb777e
	Checksum: 0xBBBDFBB6
	Offset: 0x5B38
	Size: 0x23F
	Parameters: 3
	Flags: None
*/
function function_da18861f(var_565ac03, OBJ_NAME, zone)
{
	level endon("hash_fdb2d846");
	wait(0.05);
	foreach(player in level.activePlayers)
	{
		player.var_719c336f = RandomFloatRange(0, 3);
		player.var_23a61090 = RandomFloatRange(0.8, 1.2);
	}
	thread namespace_786319bb::function_191fff49("call", zone);
	foreach(player in level.activePlayers)
	{
		if(player player_in_vtol())
		{
			level notify("hash_101cf3f7");
			if(isdefined(player.var_bd96c96f))
			{
				objective_state(player.var_bd96c96f, "done");
				gameobjects::release_obj_id(player.var_bd96c96f);
				player.var_bd96c96f = undefined;
			}
			continue;
		}
		player thread function_2e932d4f(var_565ac03, OBJ_NAME);
	}
	level waittill("hash_101cf3f7");
}

/*
	Name: function_7f0d6133
	Namespace: namespace_84eb777e
	Checksum: 0x98882A23
	Offset: 0x5D80
	Size: 0x179
	Parameters: 1
	Flags: None
*/
function function_7f0d6133(var_646c369)
{
	foreach(player in level.activePlayers)
	{
		if(player player_in_vtol())
		{
			continue;
		}
		player namespace_786319bb::function_d683f26a();
		player.var_bd96c96f = gameobjects::get_next_obj_id();
		objective_add(player.var_bd96c96f, "active", player.var_dda84f1a[var_646c369].origin + VectorScale((0, 0, 1), 240), istring("cp_level_aquifer_takeoff"));
		Objective_SetInvisibleToAll(player.var_bd96c96f);
		Objective_SetVisibleToPlayer(player.var_bd96c96f, player);
	}
}

/*
	Name: function_ec898691
	Namespace: namespace_84eb777e
	Checksum: 0xE8A0DCFF
	Offset: 0x5F08
	Size: 0x33
	Parameters: 4
	Flags: None
*/
function function_ec898691(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	thread function_4e30545e();
}

/*
	Name: function_4e30545e
	Namespace: namespace_84eb777e
	Checksum: 0xCB493E42
	Offset: 0x5F48
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_4e30545e()
{
	struct::delete_script_bundle("scene", "cin_aqu_01_20_towerright_1st_panelrip");
	struct::delete_script_bundle("scene", "cin_aqu_01_20_towerright_vign_overload_enter");
	struct::delete_script_bundle("scene", "cin_aqu_01_20_towerleft_1st_panelrip");
	struct::delete_script_bundle("scene", "cin_aqu_01_20_towerleft_vign_overload_enter");
	wait(3);
	struct::delete_script_bundle("scene", "cin_aqu_01_20_towerleft_vign_overload_main");
	struct::delete_script_bundle("scene", "cin_aqu_01_20_towerleft_vign_overload_exit");
	struct::delete_script_bundle("scene", "cin_aqu_01_20_towerright_vign_overload_main");
	struct::delete_script_bundle("scene", "cin_aqu_01_20_towerright_vign_overload_exit");
}

/*
	Name: function_a4dc564e
	Namespace: namespace_84eb777e
	Checksum: 0x57C514B0
	Offset: 0x6060
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function function_a4dc564e()
{
	thread namespace_4a128b5f::function_2d0258ff();
	level dialog::remote("hend_don_t_you_realize_wh_0");
	level.var_89ea8991 dialog::say("kane_negative_hendricks_0", 0.25);
	level.var_89ea8991 dialog::say("kane_we_can_overload_the_0", 0.25);
	level flag::set("finished_first_landing_vo");
}

/*
	Name: function_b1b04e52
	Namespace: namespace_84eb777e
	Checksum: 0xE43089DE
	Offset: 0x6110
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_b1b04e52()
{
	level dialog::remote("kane_there_s_the_next_com_0");
}

/*
	Name: function_e3e7229d
	Namespace: namespace_84eb777e
	Checksum: 0x891A894E
	Offset: 0x6140
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_e3e7229d()
{
	level flag::wait_till("flight_to_water_vo_cleared");
	level dialog::remote("khal_i_can_still_read_you_0");
}

/*
	Name: function_60c28440
	Namespace: namespace_84eb777e
	Checksum: 0x5D6C5AF4
	Offset: 0x6190
	Size: 0x49
	Parameters: 0
	Flags: None
*/
function function_60c28440()
{
	level waittill("hash_571aa0aa");
	if(isdefined(level.BZM_AQUIFERDialogue1_2Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1_2Callback]]();
	}
	level.var_7e2f5eca[0] notify("hash_1253961", level.activePlayers[0]);
}

/*
	Name: function_6a7fa9c7
	Namespace: namespace_84eb777e
	Checksum: 0xD8DC29F4
	Offset: 0x61E8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_6a7fa9c7(projectile)
{
	self endon("entityshutdown");
	self endon("death");
	self waittill("weapon_fired", projectile);
	wait(0.7);
	if(isdefined(projectile))
	{
		projectile Missile_SetTarget(undefined);
	}
	wait(4);
	if(isdefined(projectile))
	{
		projectile delete();
	}
}

/*
	Name: function_386c647b
	Namespace: namespace_84eb777e
	Checksum: 0x8FFE2A12
	Offset: 0x6278
	Size: 0x703
	Parameters: 2
	Flags: None
*/
function function_386c647b(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	if(isdefined(level.var_710bdaa1))
	{
		level.var_a6f85f47 = 1;
	}
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	level flag::set("finished_first_landing_vo");
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	thread function_61034146(1);
	namespace_786319bb::function_465b0eba();
	var_a63b7eae = [];
	var_a63b7eae["left"] = "exterior_hack_trig_left_";
	var_a63b7eae["right"] = "exterior_hack_trig_right_";
	var_cd0b05cb = [];
	var_cd0b05cb["left"] = "left_hack_use_trig";
	var_cd0b05cb["right"] = "right_hack_use_trig";
	var_3f85d402 = 1;
	if(!isdefined(level.var_710bdaa1) || level.var_710bdaa1 == "left")
	{
		level.var_710bdaa1 = "right";
		namespace_786319bb::function_c897523d("respawn_right_hack");
	}
	else
	{
		var_3f85d402 = 0;
		level.var_710bdaa1 = "left";
		namespace_786319bb::function_c897523d("respawn_left_hack");
	}
	tr = GetEnt("start_spawning_zone01_enemies", "targetname");
	tr TriggerEnable(0);
	thread namespace_786319bb::function_96450f49("hen_" + level.var_710bdaa1 + "_", 1);
	flag::set("destroy_defenses_completed");
	level notify("hash_4af9ae51");
	namespace_1d1d22be::function_de37a122();
	if(var_74cd64bc)
	{
		wait(1);
	}
	namespace_786319bb::function_fc653485();
	var_368eea5 = undefined;
	if(level.var_710bdaa1 == "right")
	{
		namespace_786319bb::function_1215f9e4(2);
		var_368eea5 = GetEnt("vol_res_defend_kayne", "targetname");
	}
	else
	{
		namespace_786319bb::function_1215f9e4(1);
		var_368eea5 = GetEnt("vol_port_defend_kayne", "targetname");
	}
	var_97a3d1c2 = [];
	var_97a3d1c2["left"] = "exterior_hack_trig_left_land";
	var_97a3d1c2["right"] = "exterior_hack_trig_right_land";
	land = [];
	land[land.size] = struct::get(var_97a3d1c2[level.var_710bdaa1]);
	function_4d816f2c("cp_level_aquifer_hack_terminals3");
	function_4d816f2c("cp_level_aquifer_land", land);
	level.var_4712f308 = "cp_level_aquifer_land";
	thread function_33fdc686(2);
	function_8c1f2dbc("cp_level_aquifer_land", land);
	if(isdefined(level.BZM_AQUIFERDialogue1_4Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1_4Callback]]();
	}
	function_5ec99c19("cp_level_aquifer_land");
	level.var_4712f308 = undefined;
	function_5ec99c19("cp_level_aquifer_hack_terminals3");
	thread function_204cfb5c(land);
	level thread namespace_71a63eac::function_e703f818();
	thread function_60c28440();
	var_d5639cb = "trigger_hacked";
	thread function_f1e1d63(var_a63b7eae[level.var_710bdaa1], "cp_level_aquifer_goto_comms", "cp_level_aquifer_hackme", "cp_level_aquifer_defendme2", var_d5639cb, VectorScale((0, 0, -1), 256), var_368eea5, var_cd0b05cb[level.var_710bdaa1]);
	level waittill("hash_ae36b621");
	if(isdefined(level.BZM_AQUIFERDialogue1_6Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1_6Callback]]();
	}
	wait(0.05);
	thread function_7f0d6133(var_3f85d402);
	thread function_da18861f(var_97a3d1c2[level.var_710bdaa1], "cp_level_aquifer_takeoff", var_3f85d402 + 1);
	level util::waittill_any("player_tookoff", "hotjoin_hack");
	thread namespace_786319bb::function_c6b73822("hendrix_delteme_spot");
	level.var_a6f85f47 = undefined;
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_116a8e4e
	Namespace: namespace_84eb777e
	Checksum: 0x47F63435
	Offset: 0x6988
	Size: 0x7D3
	Parameters: 2
	Flags: None
*/
function function_116a8e4e(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		util::delay(4, undefined, &namespace_786319bb::function_465b0eba, 1);
		thread namespace_786319bb::function_96450f49("hen_left_", 1);
	}
	else
	{
		namespace_786319bb::function_465b0eba();
	}
	flag::set("destroy_defenses_completed");
	level notify("hash_4af9ae51");
	thread function_61034146(1);
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_77fde091(0);
	namespace_1d1d22be::function_de37a122();
	land = [];
	land[land.size] = struct::get("exterior_hack_trig_left_land");
	land[land.size] = struct::get("exterior_hack_trig_right_land");
	tr = GetEnt("start_spawning_zone01_enemies", "targetname");
	tr TriggerEnable(0);
	function_4d816f2c("cp_level_aquifer_disrupt_comms");
	function_4d816f2c("cp_level_aquifer_hack_terminals");
	namespace_786319bb::function_fc653485();
	namespace_786319bb::function_1215f9e4(1);
	namespace_786319bb::function_1215f9e4(2);
	level.var_710bdaa1 = undefined;
	level.var_d18b7098 = 0;
	function_4d816f2c("cp_level_aquifer_land", land);
	level.var_4712f308 = "cp_level_aquifer_land";
	thread function_33fdc686(1);
	function_8c1f2dbc("cp_level_aquifer_land", land);
	if(isdefined(level.BZM_AQUIFERDialogue1_1Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1_1Callback]]();
	}
	thread function_204cfb5c(land);
	level thread namespace_71a63eac::function_e703f818();
	var_a63b7eae = [];
	var_a63b7eae["left"] = "exterior_hack_trig_left_";
	var_a63b7eae["right"] = "exterior_hack_trig_right_";
	var_cd0b05cb = [];
	var_cd0b05cb["left"] = "left_hack_use_trig";
	var_cd0b05cb["right"] = "right_hack_use_trig";
	var_368eea5 = undefined;
	if(level.var_710bdaa1 == "right")
	{
		var_368eea5 = GetEnt("vol_res_defend_kayne", "targetname");
	}
	else
	{
		var_368eea5 = GetEnt("vol_port_defend_kayne", "targetname");
	}
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders_1", "hack_01_1_volume");
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders_2", "hack_01_2_volume");
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders_3", "hack_01_1_volume");
	thread namespace_786319bb::function_a97555a0("enemy_vtol_riders_4", "hack_01_2_volume");
	thread function_60c28440();
	function_5ec99c19("cp_level_aquifer_hack_terminals");
	var_d5639cb = "trigger_hacked";
	thread function_f1e1d63(var_a63b7eae[level.var_710bdaa1], "cp_level_aquifer_goto_comms", "cp_level_aquifer_hackme", "cp_level_aquifer_defendme", var_d5639cb, VectorScale((0, 0, -1), 256), var_368eea5, var_cd0b05cb[level.var_710bdaa1]);
	if(level.var_710bdaa1 == "left")
	{
		namespace_786319bb::function_c897523d("respawn_left_hack");
		namespace_786319bb::function_e1e437cb(2);
	}
	else
	{
		namespace_786319bb::function_e1e437cb(1);
		namespace_786319bb::function_c897523d("respawn_right_hack");
	}
	thread namespace_786319bb::function_96450f49("hen_" + level.var_710bdaa1 + "_", 1);
	level waittill("hash_ae36b621");
	takeoff = struct::get("exterior_hack_trig_left_land");
	if(level.var_710bdaa1 == "right")
	{
		takeoff = struct::get("exterior_hack_trig_right_land");
	}
	var_97a3d1c2 = [];
	var_97a3d1c2["left"] = "exterior_hack_trig_left_land";
	var_97a3d1c2["right"] = "exterior_hack_trig_right_land";
	thread function_7f0d6133(level.var_d18b7098);
	if(isdefined(level.BZM_AQUIFERDialogue1_3Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue1_3Callback]]();
	}
	thread function_da18861f(var_97a3d1c2[level.var_710bdaa1], "cp_level_aquifer_takeoff", level.var_d18b7098 + 1);
	level util::waittill_any("player_tookoff", "hotjoin_hack");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_204cfb5c
	Namespace: namespace_84eb777e
	Checksum: 0x2468BB8B
	Offset: 0x7168
	Size: 0x219
	Parameters: 1
	Flags: None
*/
function function_204cfb5c(land)
{
	function_5ec99c19("cp_level_aquifer_land");
	level.var_4712f308 = undefined;
	retval = level util::waittill_any_return("hack_at_fifty_percent", "common_hacking_objectives_complete");
	if(isdefined(retval) && retval == "hack_at_fifty_percent")
	{
		level.var_4063f562 = undefined;
		foreach(player in level.activePlayers)
		{
			var_cc98a8ec = isdefined(player.var_8fedf36c) && isdefined(player.var_8fedf36c.State) && player.var_8fedf36c.State == "landing_mode";
			if(player namespace_786319bb::function_5c971cb7() && !var_cc98a8ec)
			{
				player thread namespace_786319bb::function_22a0413d("piloted");
			}
			player.var_8fedf36c notify("hash_c38e4003");
			player.var_8fedf36c clientfield::set("vtol_set_active_landing_zone_num", 0);
			player clientfield::set_player_uimodel("vehicle.showLandHint", 0);
		}
	}
	flag::clear("enable_vtol_landing_zones");
	level notify("hash_c42b010f");
}

/*
	Name: function_33fdc686
	Namespace: namespace_84eb777e
	Checksum: 0x38BD7625
	Offset: 0x7390
	Size: 0x74D
	Parameters: 1
	Flags: None
*/
function function_33fdc686(var_52055f73)
{
	zone = 1;
	level waittill("hash_f3cbe351", zone);
	var_961abda = GetEntArray("landing_zone_kane", "targetname");
	active = undefined;
	foreach(LZ in var_961abda)
	{
		var_60156652 = Int(StrTok(LZ.script_noteworthy, "landing_zone_")[0]);
		if(zone == var_60156652)
		{
			active = util::spawn_model("tag_origin", LZ.origin, LZ.angles);
			break;
		}
	}
	if(!isdefined(active))
	{
		/#
			iprintln("Dev Block strings are not supported");
		#/
		return;
	}
	if(!isdefined(level.var_ae4620ba))
	{
		level.var_ae4620ba = vehicle::simple_spawn_single("kane_vtol");
	}
	if(zone == 4)
	{
		level.var_89ea8991 = function_30343b22("kayne_pre_water");
	}
	else
	{
		level.var_89ea8991 = function_30343b22("kayne_hack" + zone);
	}
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 SetThreatBiasGroup("players_ground");
	}
	driver_offset = level.var_ae4620ba GetTagOrigin("tag_driver") - level.var_ae4620ba.origin;
	driver_offset = (0, 0, driver_offset[2]);
	var_fbb25d33 = active.origin + VectorScale((0, 0, 1), 120);
	start_pos = var_fbb25d33 + VectorScale((0, 0, 1), 3000);
	level.var_ae4620ba.origin = start_pos;
	level.var_ae4620ba.angles = active.angles;
	wait(0.05);
	if(isdefined(level.var_39c3b76e))
	{
		level.var_39c3b76e clientfield::set("vtol_engines_state", 0);
	}
	level.var_ae4620ba clientfield::set("vtol_engines_state", 0);
	level.var_ae4620ba clientfield::set("vtol_canopy_state", 1);
	level.var_ae4620ba clientfield::set("vtol_enable_wash_fx", 1);
	level.var_ae4620ba SetSpeed(600, 1200, 1200);
	level.var_ae4620ba setyawspeed(59, 360, 360);
	level.var_ae4620ba SetVehGoalPos(var_fbb25d33, 1);
	level.var_ae4620ba settargetyaw(active.angles[1]);
	level.var_ae4620ba SetNearGoalNotifyDist(60);
	level.var_ae4620ba SetHoverParams(0);
	goal = level.var_ae4620ba util::waittill_any_timeout(5, "goal", "near_goal");
	level.var_1226dab0 = 1;
	switch(var_52055f73)
	{
		case 1:
		{
			level.var_89ea8991 colors::set_force_color("r");
			active thread scene::Play("cin_aqu_05_01_enter_vign_clamber", level.var_89ea8991);
			thread function_a4dc564e();
			break;
		}
		case 2:
		{
			level.var_89ea8991 colors::set_force_color("r");
			active thread scene::Play("cin_aqu_05_01_enter_vign_clamber", level.var_89ea8991);
			thread function_b1b04e52();
			break;
		}
		case default:
		{
			active thread scene::Play("cin_aqu_05_01_enter_vign_clamber", level.var_89ea8991);
			level thread function_e3e7229d();
			break;
		}
	}
	namespace_1d1d22be::function_de37a122(0);
	wait(2);
	level.var_ae4620ba clientfield::set("vtol_canopy_state", 0);
	wait(2);
	level.var_ae4620ba SetSpeed(70, 150, 150);
	level.var_ae4620ba SetVehGoalPos(start_pos + VectorScale((0, 0, 1), 2048), 1);
	goal = level.var_ae4620ba util::waittill_any_timeout(5, "goal", "near_goal");
	thread function_4d13a94b();
	level.var_ae4620ba clientfield::set("vtol_enable_wash_fx", 0);
	wait(2);
	active delete();
	level.var_ae4620ba delete();
	level.var_ae4620ba = undefined;
}

/*
	Name: function_4d13a94b
	Namespace: namespace_84eb777e
	Checksum: 0xDA1B4C32
	Offset: 0x7AE8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_4d13a94b()
{
	ai::CreateInterfaceForEntity(level.var_89ea8991);
	level.var_89ea8991 ai::set_behavior_attribute("cqb", 1);
	wait(3);
	level.var_89ea8991 ai::set_behavior_attribute("cqb", 0);
}

/*
	Name: function_c34c108
	Namespace: namespace_84eb777e
	Checksum: 0x81C7AD27
	Offset: 0x7B60
	Size: 0x2D
	Parameters: 4
	Flags: None
*/
function function_c34c108(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		return;
	}
}

/*
	Name: function_e7f9ddde
	Namespace: namespace_84eb777e
	Checksum: 0x2F56D10D
	Offset: 0x7B98
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_e7f9ddde()
{
	trig = GetEnt("vision_hint_exit_water", "targetname");
	who = trig;
	while(who != self)
	{
		trig waittill("trigger", who);
	}
	self hud_message::hintMessage(&"CP_MI_CAIRO_AQUIFER_ENHANCED_VISION", 5);
}

/*
	Name: function_dcbdf6db
	Namespace: namespace_84eb777e
	Checksum: 0x5BD3EF37
	Offset: 0x7C28
	Size: 0xF3
	Parameters: 3
	Flags: None
*/
function function_dcbdf6db(var_b53947c0, var_229b55c0, var_74cd64bc)
{
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		wait(2);
	}
	namespace_786319bb::function_fc653485();
	namespace_786319bb::function_1215f9e4(var_229b55c0);
	flag::set("enable_vtol_landing_zones");
	land = [];
	land[land.size] = struct::get(var_b53947c0);
	function_4d816f2c("cp_level_aquifer_land", land);
	level.var_4712f308 = "cp_level_aquifer_land";
	function_8c1f2dbc("cp_level_aquifer_land", land, 1);
}

/*
	Name: function_d0068cf8
	Namespace: namespace_84eb777e
	Checksum: 0xD8671180
	Offset: 0x7D28
	Size: 0xE1
	Parameters: 3
	Flags: None
*/
function function_d0068cf8(var_b53947c0, var_229b55c0, var_74cd64bc)
{
	if(isdefined(var_74cd64bc) && var_74cd64bc)
	{
		wait(2);
	}
	namespace_786319bb::function_fc653485();
	namespace_786319bb::function_1215f9e4(var_229b55c0);
	flag::clear("enable_vtol_landing_zones");
	land = struct::get(var_b53947c0);
	function_4d816f2c("cp_level_aquifer_takeoff", land);
	function_da18861f(var_b53947c0, "cp_level_aquifer_takeoff");
	level notify("hash_5062a9ba");
}

/*
	Name: function_ac5573a8
	Namespace: namespace_84eb777e
	Checksum: 0x81435072
	Offset: 0x7E18
	Size: 0x4BB
	Parameters: 2
	Flags: None
*/
function function_ac5573a8(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	thread namespace_967f4af8::main();
	thread function_5025ad5();
	namespace_786319bb::function_5497473c();
	namespace_1d1d22be::function_de37a122();
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_77fde091(1);
	namespace_786319bb::function_c897523d("respawn_ext_water_room");
	function_5ec99c19("cp_level_aquifer_disrupt_comms");
	function_4d816f2c("cp_level_aquifer_waterroom");
	function_4d816f2c("cp_level_aquifer_waterroom_land");
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		function_61034146(1);
		function_b3ed487d(0);
	}
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	level thread function_50ad9d6a();
	level thread namespace_71a63eac::function_ca2c6d9f();
	thread function_33fdc686(3);
	function_dcbdf6db("water_room_land", 4, var_74cd64bc);
	function_5ec99c19("cp_level_aquifer_land");
	level.var_4712f308 = undefined;
	namespace_1d1d22be::function_de37a122(0);
	function_5ec99c19("cp_level_aquifer_waterroom_land");
	function_4d816f2c("cp_level_aquifer_waterroom_enter");
	level thread function_eee7cf7e();
	objectives::breadcrumb("breadcrumb_water_room_a");
	namespace_786319bb::function_ae0b01fe();
	level notify("hash_7e64f485");
	level flag::wait_till("flag_enter_water_moment");
	level notify("hash_9fc8580a");
	level thread namespace_71a63eac::function_bb8ce831();
	wait(0.5);
	function_5ec99c19("cp_level_aquifer_waterroom_enter");
	util::delay(5, undefined, &function_4d816f2c, "cp_level_aquifer_waterroom_last_known");
	objectives::breadcrumb("breadcrumb_in_water_start");
	wait(0.5);
	level flag::wait_till("flag_kayne_water_moment");
	level.var_89ea8991 notify("hash_5670f4e8");
	Array::thread_all(level.players, &clientfield::set_to_player, "player_cam_bubbles", 0);
	namespace_786319bb::function_c897523d("respawn_in_data_center");
	foreach(p in level.activePlayers)
	{
		p clientfield::set_to_player("player_bubbles_fx", 0);
	}
	level waittill("hash_b580186f");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_50ad9d6a
	Namespace: namespace_84eb777e
	Checksum: 0x3C7A2812
	Offset: 0x82E0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_50ad9d6a()
{
	level dialog::remote("kane_khalil_what_s_our_0");
	wait(0.2);
	level thread LUI::play_movie("cp_aquifer_pip_HeroLocation", "pip");
	level dialog::remote("khal_nrc_radio_chatter_su_0");
	level dialog::function_13b3b16a("plyr_we_can_still_get_the_0", 0.25);
	level flag::set("flight_to_water_vo_cleared");
}

/*
	Name: function_eee7cf7e
	Namespace: namespace_84eb777e
	Checksum: 0x93519DD7
	Offset: 0x83A8
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_eee7cf7e()
{
	level endon("hash_5067c11a");
	while(1)
	{
		var_dcc47e98 = trigger::wait_till("to_water1");
		trigger::use("breadcrumb_water_room_a", "targetname", var_dcc47e98.who);
	}
}

/*
	Name: function_e2e38eb
	Namespace: namespace_84eb777e
	Checksum: 0x922442F9
	Offset: 0x8418
	Size: 0x643
	Parameters: 2
	Flags: None
*/
function function_e2e38eb(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "scripted";
	thread function_5025ad5();
	namespace_786319bb::function_beb1031a();
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_77fde091(0);
	namespace_786319bb::function_c897523d("respawn_water_room_exit");
	level scene::init("cin_aqu_03_01_platform_1st_secureplatform");
	clientfield::set("water_room_exit_scenes", 1);
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		level flag::init("flag_door_explodes");
		level flag::init("flag_kayne_ready_trap");
		level flag::set("water_room_checkpoint");
		level flag::set("flag_door_explodes");
		level flag::set("flag_kayne_ready_trap");
		namespace_1d1d22be::function_de37a122(0);
		level.var_89ea8991 = function_30343b22("kaynewaterexit");
		spawner::add_spawn_function_group("water_robots", "targetname", &namespace_967f4af8::function_a527e6f9);
		spawner::add_spawn_function_group("water_robots2", "targetname", &namespace_967f4af8::function_a527e6f9);
		thread namespace_967f4af8::function_18af354a();
		thread namespace_967f4af8::function_ee430caa();
		var_31b9fd4a = GetEnt("doubledoor_sbm", "targetname");
		var_31b9fd4a delete();
		spawn_manager::enable("spawn_manager_flood_robots");
		spawn_manager::enable("spawn_manager_water_robots");
		struct = GetEnt("igc_kane_water", "targetname");
		struct thread scene::skipto_end("cin_aqu_03_21_server_room_doors_open");
	}
	trig = GetEnt("water_room_trigger", "targetname");
	struct = struct::get(trig.target, "targetname");
	foreach(p in level.activePlayers)
	{
		p clientfield::set_to_player("player_bubbles_fx", 0);
	}
	level flag::wait_till("flag_kayne_ready_trap");
	function_5ec99c19("cp_level_aquifer_waterroom_last_known");
	function_4d816f2c("cp_level_aquifer_waterroom_regroup", struct);
	level flag::wait_till("flag_door_explodes");
	level thread namespace_71a63eac::function_a2d40521();
	function_5ec99c19("cp_level_aquifer_waterroom_regroup", struct);
	function_5ec99c19("cp_level_aquifer_waterroom");
	level thread function_a9d852c2();
	level flag::wait_till("water_room_checkpoint");
	thread namespace_967f4af8::function_b563cc38();
	flag::clear("enable_vtol_landing_zones");
	objectives::breadcrumb("breadcrumb_exit_water");
	if(isdefined(level.var_89ea8991))
	{
		level.var_89ea8991 notify("hash_5670f4e8");
	}
	function_5ec99c19("cp_level_aquifer_ambush_escape");
	level flag::wait_till("flag_khalil_water_exit");
	namespace_1d1d22be::function_de37a122(0);
	util::waittill_any("water_exit_fade_out", "platform_scenes_done");
	level thread function_a2ba5afd();
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_a2ba5afd
	Namespace: namespace_84eb777e
	Checksum: 0xD92FC028
	Offset: 0x8A68
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_a2ba5afd()
{
	level LUI::screen_fade_out(0, "black", "water_igc_done");
	util::wait_network_frame(2);
	namespace_786319bb::function_8bf8a765(0);
	thread namespace_786319bb::function_191fff49("call", 4, 1, 0);
	util::wait_network_frame(2);
	level thread LUI::screen_fade_in(0.3, "black", "water_igc_done");
}

/*
	Name: function_a9d852c2
	Namespace: namespace_84eb777e
	Checksum: 0x7E1F3F62
	Offset: 0x8B38
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_a9d852c2()
{
	level flag::wait_till("flag_kane_start_water_escape");
	function_4d816f2c("cp_level_aquifer_ambush_escape");
}

/*
	Name: function_90eea052
	Namespace: namespace_84eb777e
	Checksum: 0xA8284D1C
	Offset: 0x8B80
	Size: 0x89
	Parameters: 0
	Flags: None
*/
function function_90eea052()
{
	foreach(player in level.activePlayers)
	{
		player thread function_931550b9();
	}
}

/*
	Name: function_931550b9
	Namespace: namespace_84eb777e
	Checksum: 0x3750B67C
	Offset: 0x8C18
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_931550b9()
{
	if(!self player_in_vtol())
	{
		var_da1bd38e = self.var_dda84f1a[2].origin + AnglesToForward(self.var_dda84f1a[2].angles) * 250 + AnglesToRight(self.var_dda84f1a[2].angles) * 48 + VectorScale((0, 0, 1), 60);
		self SetOrigin(var_da1bd38e);
		self SetPlayerAngles(self.var_dda84f1a[2].angles + VectorScale((0, 1, 0), 180));
		self DontInterpolate();
	}
}

/*
	Name: function_1802814e
	Namespace: namespace_84eb777e
	Checksum: 0x5CFA014F
	Offset: 0x8D48
	Size: 0xD3
	Parameters: 4
	Flags: None
*/
function function_1802814e(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		return;
	}
	wait(5);
	struct::delete_script_bundle("scene", "cin_aqu_05_01_enter_1st_look");
	struct::delete_script_bundle("scene", "cin_aqu_02_01_floodroom_1st_dragged");
	struct::delete_script_bundle("scene", "cin_aqu_02_01_floodroom_1st_dragged_pt2");
	struct::delete_script_bundle("scene", "cin_aqu_03_19_pre_water_room_kane");
	struct::delete_script_bundle("scene", "cin_aqu_03_19_pre_water_room_wait_kane");
}

/*
	Name: function_829aa821
	Namespace: namespace_84eb777e
	Checksum: 0xFFD1378
	Offset: 0x8E28
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_829aa821(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		return;
	}
	struct::delete_script_bundle("scene", "cin_aqu_03_21_server_room_enter");
	struct::delete_script_bundle("scene", "cin_aqu_03_20_water_room");
	struct::delete_script_bundle("scene", "cin_aqu_03_20_water_room_idle");
}

/*
	Name: function_1b47ae1f
	Namespace: namespace_84eb777e
	Checksum: 0x3D263A46
	Offset: 0x8EC0
	Size: 0x2B3
	Parameters: 1
	Flags: None
*/
function function_1b47ae1f(var_dc822a23)
{
	self endon("disconnect");
	self thread namespace_786319bb::function_3d7bb92e(1);
	self namespace_786319bb::function_d683f26a(0);
	if(isdefined(var_dc822a23) && var_dc822a23)
	{
		if(level flag::get("dogfighting"))
		{
			if(isdefined(level.var_4063f562) && (level.var_4063f562 == "scripted" || level.var_4063f562 == "piloted"))
			{
				self namespace_786319bb::function_22a0413d(level.var_4063f562);
			}
			else
			{
				self namespace_786319bb::function_22a0413d();
			}
		}
		else
		{
			self thread function_931550b9();
			wait(0.05);
			self thread namespace_786319bb::function_22a0413d("call", 4, 1);
		}
	}
	else
	{
		self SetInvisibleToAll();
		util::delay(0.5, undefined, &SetVisibleToAll);
	}
	if(!(isdefined(var_dc822a23) && var_dc822a23 && level flag::get("dogfighting")))
	{
		self waittill("hash_8d91bdcf");
	}
	while(!self islinkedto(self.var_8fedf36c))
	{
		wait(0.05);
	}
	if(level.var_fee90489[0] != "post_water_room_dogfight")
	{
		return;
	}
	root = GetEnt("dogfighting_scene", "targetname");
	self oob::disablePlayerOOB(1);
	self.var_8fedf36c thread animation::Play("v_aqu_03_10_platform_1st_enterdogfight_player" + self.player_num, root);
	self thread namespace_786319bb::function_af376a0e("v_aqu_03_10_platform_1st_enterdogfight_player" + self.player_num, self.player_num - 1, "v_aqu_03_10_platform_1st_enterdogfight_enemy" + self.player_num, "enter_dogfight_global_active");
}

/*
	Name: function_5b113d76
	Namespace: namespace_84eb777e
	Checksum: 0x8B2F8E97
	Offset: 0x9180
	Size: 0x3E3
	Parameters: 2
	Flags: None
*/
function function_5b113d76(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "scripted";
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	namespace_1d1d22be::function_de37a122();
	if(var_74cd64bc)
	{
		load::function_a2995f22();
		thread function_61034146(1);
		break;
	}
	foreach(player in level.players)
	{
		player thread function_1b47ae1f(0);
	}
	function_4d816f2c("cp_level_aquifer_dogfight2");
	level flag::wait_till("dogfighting");
	wait(50);
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_3dca6783) && player.var_3dca6783 > 0)
		{
			break;
		}
		util::missionfailedwrapper_nodeath(&"CP_MI_CAIRO_AQUIFER_VTOL_DOGFIGHT_FAIL", &"CP_MI_CAIRO_AQUIFER_VTOL_DOGFIGHT_FAIL_HINT");
		return;
	}
	level notify("hash_982117a3");
	level flagsys::set("dogfight_ending");
	level flag::set("enter_dogfight_global_active");
	wait(10);
	level flag::clear("dogfighting");
	level flagsys::clear("dogfight_ending");
	foreach(player in level.activePlayers)
	{
		player notify("hash_b4a5f622");
	}
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_427463e0
	Namespace: namespace_84eb777e
	Checksum: 0x36207990
	Offset: 0x9570
	Size: 0x1C3
	Parameters: 4
	Flags: None
*/
function function_427463e0(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_dogfight2");
	}
	struct::delete_script_bundle("scene", "cin_aqu_03_21_server_room_explosion");
	struct::delete_script_bundle("scene", "cin_aqu_03_21_server_room_idle");
	struct::delete_script_bundle("scene", "cin_aqu_03_01_platform_1st_secureplatform_vtol");
	struct::delete_script_bundle("scene", "cin_aqu_03_01_platform_1st_secureplatform_ambient");
	struct::delete_script_bundle("scene", "cin_aqu_03_01_platform_1st_secureplatform");
	struct::delete_script_bundle("scene", "cin_aqu_03_01_platform_1st_secureplatform_exit");
	struct::delete_script_bundle("scene", "cin_aqu_03_10_platform_1st_enterdogfight");
	struct::delete_script_bundle("scene", "cin_aqu_03_21_server_room_doors_open");
	struct::delete_script_bundle("scene", "cin_aqu_03_22_water_room_escape_start");
	struct::delete_script_bundle("scene", "cin_aqu_03_22_water_room_escape_fire_loop");
	struct::delete_script_bundle("scene", "cin_aqu_03_22_water_room_escape_end");
	struct::delete_script_bundle("scene", "cin_aqu_03_22_water_room_escape_end_loop");
}

/*
	Name: function_fb03103d
	Namespace: namespace_84eb777e
	Checksum: 0x6E4B9283
	Offset: 0x9740
	Size: 0x2A3
	Parameters: 2
	Flags: None
*/
function function_fb03103d(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	namespace_786319bb::function_465b0eba();
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(0);
	thread namespace_786319bb::function_77fde091(0);
	namespace_1d1d22be::function_de37a122();
	thread function_61034146(1);
	function_db369178("quadtank_zone_mid_");
	var_d5639cb = "target_down";
	thread function_f4ecd13f("quadtank_zone_mid_", "cp_level_aquifer_destroy_defenses3", "cp_level_aquifer_destroyme", var_d5639cb, undefined, "show_defenses_mid_objectives");
	thread namespace_786319bb::function_96450f49("hen_def_mid_", 0);
	thread function_380b183b();
	level thread namespace_71a63eac::function_bdb99f05();
	spawn_manager::enable("spawn_manager_mid_defenses");
	spawn_manager::enable("spawn_manager_mid_defenses_2");
	spawner::add_spawn_function_ai_group("mid_defense_rpgs", &function_c0f2d8b9);
	thread function_91c91014();
	level flagsys::wait_till("common_defense_objectives_complete");
	level.var_1226dab0 = 0;
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_c0f2d8b9
	Namespace: namespace_84eb777e
	Checksum: 0xA3C4BB40
	Offset: 0x99F0
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_c0f2d8b9()
{
	self.dontDropWeapon = 1;
}

/*
	Name: function_db369178
	Namespace: namespace_84eb777e
	Checksum: 0x7B8A5FAB
	Offset: 0x9A08
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function function_db369178(var_3ce30dc)
{
	var_dd21345d = 6 + 2 + 1;
	while(level.activePlayers.size == 0)
	{
		wait(0.2);
	}
	removing = math::clamp(3 - level.activePlayers.size * 2, 0, 6);
	while(removing >= 0)
	{
		removing--;
		var_b5f355c6 = var_3ce30dc + var_dd21345d - removing;
		spawner = GetEnt(var_b5f355c6, "targetname");
		if(isdefined(spawner))
		{
			spawner delete();
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_380b183b
	Namespace: namespace_84eb777e
	Checksum: 0xB3C754FC
	Offset: 0x9B30
	Size: 0x8B
	Parameters: 0
	Flags: None
*/
function function_380b183b()
{
	level flag::set("show_defenses_mid_objectives");
	level flagsys::wait_till("common_defense_objectives_complete");
	level dialog::remote("hend_that_s_all_of_em_0", 1);
	level dialog::remote("kane_good_work_we_ve_got_0", 0.25);
}

/*
	Name: function_91c91014
	Namespace: namespace_84eb777e
	Checksum: 0x9E901A93
	Offset: 0x9BC8
	Size: 0xD9
	Parameters: 1
	Flags: None
*/
function function_91c91014(veh)
{
	level waittill("vtol_landed", player);
	guys = spawner::get_ai_group_ai("mid_defense_rpgs");
	foreach(guy in guys)
	{
		if(isdefined(guy))
		{
			guy delete();
		}
	}
}

/*
	Name: function_46151925
	Namespace: namespace_84eb777e
	Checksum: 0x3D721BC9
	Offset: 0x9CB0
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_46151925(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_destroy_defenses3");
	}
}

/*
	Name: function_2887cd74
	Namespace: namespace_84eb777e
	Checksum: 0xB618BEA8
	Offset: 0x9D00
	Size: 0x6A3
	Parameters: 2
	Flags: None
*/
function function_2887cd74(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	namespace_786319bb::function_beb1031a();
	namespace_1d1d22be::function_de37a122();
	thread function_61034146(1);
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_77fde091(0);
	thread namespace_786319bb::function_287ca2ad(1);
	level flag::set("water_room_checkpoint");
	scene::init("cin_aqu_04_securityfeed_3rd_sh010");
	if(var_74cd64bc)
	{
		level thread namespace_71a63eac::function_bdb99f05();
	}
	thread namespace_4a128b5f::function_44e145d1("flag_egyptian_hacking_completed");
	var_d5639cb = "target_down";
	thread function_f4ecd13f("quadtank_zone03_", "cp_level_aquifer_destroy_defenses2", "cp_level_aquifer_destroyme", var_d5639cb, 1);
	exploder::exploder("amb_front_defend");
	level flag::set("disable_player_exit_vtol");
	function_bfe402a1();
	level flag::clear("disable_player_exit_vtol");
	level waittill("hash_476bcf62");
	foreach(player in level.activePlayers)
	{
		player thread function_474771df();
	}
	wait(1.5);
	thread function_efd791ac();
	wait(2);
	exploder::exploder_stop("amb_front_defend");
	door_right = GetEnt("hangar_blast_door_right", "targetname");
	door_right Hide();
	door_left = GetEnt("hangar_blast_door_left", "targetname");
	door_left Hide();
	foreach(player in level.activePlayers)
	{
		player EnableInvulnerability();
		player util::freeze_player_controls(1);
		player.var_8fedf36c takeplayercontrol();
	}
	if(isdefined(level.BZM_AQUIFERDialogue4Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue4Callback]]();
	}
	thread namespace_786319bb::function_ae0b01fe(1);
	skipto::teleport_players("side_combat_teleport");
	level flag::set("flag_force_off_dust");
	exploder::exploder("lighting_hangar_a");
	s = GetEnt("breach_scene_origin", "targetname");
	s scene::Play("cin_aqu_04_securityfeed_3rd_sh010");
	s scene::stop(1);
	door_right show();
	door_left show();
	exploder::stop_exploder("lighting_hangar_a");
	level notify("hash_dc2436e4");
	util::clear_streamer_hint();
	level flag::clear("flag_force_off_dust");
	thread namespace_786319bb::function_191fff49("piloted");
	foreach(player in level.activePlayers)
	{
		player util::freeze_player_controls(0);
	}
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_474771df
	Namespace: namespace_84eb777e
	Checksum: 0xFB1E479C
	Offset: 0xA3B0
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_474771df()
{
	self endon("disconnect");
	menu = self OpenLUIMenu("SecurityCameraOverlay");
	wait(2);
	self clientfield::set_to_player("hijack_static_effect", 1);
	wait(1.5);
	self clientfield::set_to_player("hijack_static_effect", 0);
	level waittill("hash_dc2436e4");
	self CloseLUIMenu(menu);
	self clientfield::set_to_player("hijack_static_effect", 1);
	wait(1);
	self clientfield::set_to_player("hijack_static_effect", 0);
}

/*
	Name: function_efd791ac
	Namespace: namespace_84eb777e
	Checksum: 0x81A62186
	Offset: 0xA4B0
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_efd791ac()
{
	level dialog::remote("kane_we_re_too_late_he_0", 2.4);
	level thread namespace_71a63eac::function_55376eeb();
	level dialog::function_13b3b16a("plyr_wait_beat_when_it_0");
	level dialog::function_13b3b16a("plyr_lock_it_down_khalil_0");
	level dialog::function_13b3b16a("plyr_there_s_still_marett_0", 1);
	level dialog::remote("kane_well_those_securi_0");
	level dialog::function_13b3b16a("plyr_you_got_a_suggestion_0", 1);
	level dialog::remote("kane_maretti_s_still_in_t_0", 1);
	level dialog::function_13b3b16a("plyr_copy_we_re_joining_0", 1);
}

/*
	Name: function_bfe402a1
	Namespace: namespace_84eb777e
	Checksum: 0xD9A80A5D
	Offset: 0xA5E0
	Size: 0x12B
	Parameters: 0
	Flags: None
*/
function function_bfe402a1()
{
	level.var_3fe6078c = 4096;
	SQ = level.var_3fe6078c * level.var_3fe6078c;
	level.var_3fe6078c = 8192;
	thread function_e5d81c9();
	var_d5639cb = "trigger_hacked";
	wait(3);
	level.var_79481939 = 50000;
	/#
	#/
	my_trig = GetEnt("hack_zone03_1", "targetname");
	function_4d816f2c("cp_level_aquifer_security", my_trig.origin);
	level flag::wait_till("egyptian_defend_reached");
	wait(50);
	function_5ec99c19("cp_level_aquifer_security");
	level flag::set("flag_egyptian_hacking_completed");
}

/*
	Name: function_e5d81c9
	Namespace: namespace_84eb777e
	Checksum: 0x775C3F5F
	Offset: 0xA718
	Size: 0x171
	Parameters: 0
	Flags: None
*/
function function_e5d81c9()
{
	level dialog::remote("kane_hendricks_what_s_yo_0");
	level dialog::remote("hend_khalil_s_men_are_bei_0");
	level dialog::remote("plyr_we_re_not_gonna_let_0");
	level dialog::remote("kane_khalil_we_ll_cover_0");
	level dialog::remote("khal_we_re_being_overwhel_0", 5);
	level dialog::remote("khal_we_re_pinned_down_g_0", 16);
	level flag::wait_till("hack_zone03_1_finished");
	namespace_1d1d22be::function_de37a122(0);
	level dialog::remote("khal_kane_we_have_the_c_0", 1);
	level dialog::remote("khal_we_re_in_i_m_patch_0", 0.25);
	level dialog::remote("kane_send_me_the_security_0");
	level notify("hash_476bcf62");
}

/*
	Name: function_c5734389
	Namespace: namespace_84eb777e
	Checksum: 0x3550D5FB
	Offset: 0xA898
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_c5734389()
{
	foreach(player in level.activePlayers)
	{
		if(isdefined(player.var_8fedf36c) && player islinkedto(player.var_8fedf36c))
		{
			player.var_8fedf36c takeplayercontrol();
			wait(0.05);
			var_da1bd38e = player.var_dda84f1a[3].origin + VectorScale((0, 0, 1), 900);
			player.var_8fedf36c.origin = var_da1bd38e;
			player.var_8fedf36c.angles = player.var_dda84f1a[3].angles;
			player.var_8fedf36c ReturnPlayerControl();
		}
	}
}

/*
	Name: function_e5c63786
	Namespace: namespace_84eb777e
	Checksum: 0x74188E1A
	Offset: 0xAA20
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_e5c63786(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level struct::delete_script_bundle("scene", "cin_aqu_04_securityfeed_3rd_sh010");
}

/*
	Name: function_724496b1
	Namespace: namespace_84eb777e
	Checksum: 0xF625970E
	Offset: 0xAA78
	Size: 0x41B
	Parameters: 2
	Flags: None
*/
function function_724496b1(str_objective, var_74cd64bc)
{
	level.var_4063f562 = "piloted";
	var_f13bfa4a = [];
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	namespace_786319bb::function_c1bd6415("defend_oob_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	namespace_786319bb::function_287ca2ad(1);
	thread namespace_786319bb::function_77fde091(0);
	thread namespace_786319bb::function_191fff49("landing_mode");
	scene::add_scene_func("cin_aqu_04_20_breach_1st_rappel_main_enemies", &function_418127ed, "init");
	scene::init("cin_aqu_04_20_breach_1st_rappel_main");
	scene::init("cin_aqu_04_20_breach_1st_rappel_main_enemies");
	if(var_74cd64bc)
	{
		load::function_a2995f22();
	}
	level.var_79481939 = 1;
	namespace_1d1d22be::function_de37a122();
	level flag::set("flag_egyptian_hacking_completed");
	level flag::set("hack_terminals3");
	CreateThreatBiasGroup("lcombat_air_attack");
	thread function_aa49745a();
	thread function_408c7d50();
	namespace_786319bb::function_c897523d("respawn_lcombat");
	namespace_786319bb::function_9cea70b7();
	thread namespace_786319bb::function_9cf1804b();
	thread namespace_786319bb::function_fd0dbe22();
	thread namespace_786319bb::function_367616d8();
	thread function_61034146(1);
	level notify("hash_7725d2f1");
	level thread namespace_71a63eac::function_b1ee6c2d();
	if(var_74cd64bc)
	{
		while(!isdefined(level.activePlayers[0].var_8fedf36c))
		{
			wait(0.05);
		}
	}
	namespace_786319bb::function_fc653485();
	namespace_786319bb::function_1215f9e4(3);
	wait(0.05);
	function_dcbdf6db("exterior_support_land", 3);
	level flag::set("lcombat_respawn_ground");
	function_5ec99c19("cp_level_aquifer_land");
	level.var_4712f308 = undefined;
	level notify("hash_6da3f34c");
	flag::set("player_really_landed");
	level thread namespace_71a63eac::function_36cd6ee8();
	level flag::wait_till("start_pre_breach");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_aa49745a
	Namespace: namespace_84eb777e
	Checksum: 0xE3135DE1
	Offset: 0xAEA0
	Size: 0xEB
	Parameters: 0
	Flags: None
*/
function function_aa49745a()
{
	s = struct::get("breadcrumb_side_2");
	function_4d816f2c("cp_level_aquifer_capture");
	level waittill("hash_6da3f34c");
	function_4d816f2c("cp_level_aquifer_capture_defend", s.origin);
	level flag::wait_till_timeout(40, "side_combat_advance");
	function_5ec99c19("cp_level_aquifer_capture_defend", s.origin);
	function_4d816f2c("cp_level_aquifer_capture_hangar");
	thread objectives::breadcrumb("breadcrumb_side_combat");
}

/*
	Name: function_3cff89e8
	Namespace: namespace_84eb777e
	Checksum: 0x66E33583
	Offset: 0xAF98
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_3cff89e8()
{
	wait_time = 1;
	wait(wait_time);
	level dialog::function_13b3b16a("plyr_you_got_a_suggestion_0");
	wait(wait_time);
	level dialog::remote("kane_maretti_s_still_in_t_0");
	wait(wait_time);
	level dialog::function_13b3b16a("plyr_copy_we_re_joining_0");
	wait(wait_time);
}

/*
	Name: function_408c7d50
	Namespace: namespace_84eb777e
	Checksum: 0x16D05F29
	Offset: 0xB028
	Size: 0x433
	Parameters: 0
	Flags: None
*/
function function_408c7d50()
{
	level.var_6657ee03 = [];
	spawners = GetEntArray("egyptian_redshirt_hack_defends", "targetname");
	foreach(s in spawners)
	{
		guy = s spawner::spawn(1);
		guy util::magic_bullet_shield();
		level.var_6657ee03[level.var_6657ee03.size] = guy;
	}
	level.var_6657ee03[level.var_6657ee03.size] = function_25604491("khalil_hack_defends");
	level.var_24223342 = function_eb16c4f5("hendricks_hack_defends");
	if(isdefined(level.var_24223342))
	{
		level.var_24223342 util::magic_bullet_shield();
	}
	spawn_manager::enable("spawn_manager_lcombat_trans_wave1");
	thread namespace_786319bb::function_3ba6e66c();
	thread namespace_786319bb::function_dfc31fd4();
	level flag::wait_till("player_really_landed");
	spawn_manager::kill("spawn_manager_lcombat_trans_wave1");
	spawn_manager::enable("spawn_manager_hack_zone02_4");
	trigger::use("lcombat_start_backwave", "targetname");
	level flag::wait_till_timeout(50, "side_combat_advance");
	spawn_manager::kill("spawn_manager_hack_zone02_4");
	trigger::use("lcombat_ally_move_1", "targetname");
	thread namespace_786319bb::function_7d76ae16("volume_hack_zone02_4", "volume_hack_zone02_5");
	spawn_manager::enable("spawn_manager_hack_zone02_5");
	level flag::wait_till_timeout(50, "side_combat_advance2");
	trigger::use("lcombat_ally_move_2", "targetname");
	thread namespace_786319bb::function_7d76ae16("volume_hack_zone02_5", "retreat_right_side");
	spawn_manager::kill("spawn_manager_hack_zone02_5");
	trigger::use("lcombat_wasp_spawntrig", "targetname");
	level flag::wait_till_timeout(50, "side_combat_stop");
	thread namespace_786319bb::function_7d76ae16("retreat_right_side", "volume_hack_zone02_6");
	trigger::use("lcombat_ally_move_4", "targetname");
	spawn_manager::enable("spawn_manager_hack_zone02_6");
	trigger::use("egyptian_redshirt_hack_defends_2ndwave_trig", "targetname");
	trigger::wait_or_timeout(35, "lcombat_cleanup_start_trig");
	thread namespace_786319bb::function_5a160fe7();
	spawn_manager::kill("spawn_manager_hack_zone02_6");
	thread namespace_786319bb::function_f8243869();
}

/*
	Name: function_113af563
	Namespace: namespace_84eb777e
	Checksum: 0x5A0E58CB
	Offset: 0xB468
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_113af563(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	struct::delete_script_bundle("scene", "cin_aqu_04_07_lowerplatform_1st_flight_main");
}

/*
	Name: function_45fe5e11
	Namespace: namespace_84eb777e
	Checksum: 0xBC7EBD9D
	Offset: 0xB4B8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_45fe5e11()
{
	level.var_684a8d37 = function_3ed36777("breach_enemies");
}

/*
	Name: function_af4fc2de
	Namespace: namespace_84eb777e
	Checksum: 0x58BC10D9
	Offset: 0xB4E8
	Size: 0x933
	Parameters: 2
	Flags: None
*/
function function_af4fc2de(str_objective, var_74cd64bc)
{
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 1);
	namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	namespace_786319bb::function_7cd236c3("obj2_kill_trig", 1);
	namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	namespace_786319bb::function_287ca2ad(1);
	if(var_74cd64bc)
	{
		scene::add_scene_func("cin_aqu_04_20_breach_1st_rappel_main_enemies", &function_418127ed, "init");
		scene::init("cin_aqu_04_20_breach_1st_rappel_main");
		scene::init("cin_aqu_04_20_breach_1st_rappel_main_enemies");
		namespace_1d1d22be::function_de37a122(0);
		level flag::set("side_combat_stop");
		function_4d816f2c("cp_level_aquifer_capture");
		load::function_a2995f22();
	}
	level notify("hash_7725d2f1");
	namespace_786319bb::function_c897523d("none");
	function_eb16c4f5("hendricks_pre_breach");
	level.var_24223342 util::magic_bullet_shield();
	struct = GetEnt("breach_scene_origin", "targetname");
	level flag::wait_till("start_pre_breach");
	level flag::set("breach_hangar_active");
	thread function_b9f6cf69();
	thread objectives::breadcrumb("pre_breach_breadcrumb");
	trigger::use("hendricks_final_run_lcombat", "targetname");
	level flag::wait_till_timeout(60, "on_hangar_exterior");
	level flag::set("on_hangar_exterior");
	namespace_1d1d22be::function_de37a122(0);
	exploder::stop_exploder("lighting_hangar_hallways_perf_lights");
	exploder::exploder("lighting_hangar_a");
	level flag::set("disable_player_enter_vtol");
	level.var_24223342 = function_eb16c4f5("hendricks_hangar");
	thread function_5b97b8ac();
	level flag::clear("start_pre_breach");
	level notify("hash_409a1fc1");
	wait(0.1);
	thread namespace_786319bb::function_8c7dc4c3();
	thread function_b2a5e2c2();
	level flag::wait_till("just_breach_it");
	level thread namespace_71a63eac::function_5ac17e2c();
	num = 1;
	foreach(player in level.activePlayers)
	{
		var_44578351 = spawn("script_model", struct.origin);
		var_44578351 SetModel("p7_ven_carabiner");
		if(isdefined(num))
		{
		}
		else
		{
		}
		var_44578351.targetname = "" + num + "";
		num++;
	}
	vtol = GetEnt("hangar_vtol_01", "targetname");
	if(isdefined(vtol))
	{
		vtol SetScale(0.8);
	}
	thread namespace_786319bb::function_75ab4ede(1);
	thread function_70e17249();
	level thread namespace_1d1d22be::function_4e875e0d();
	level thread namespace_1d1d22be::function_16a46955();
	level thread namespace_71a63eac::function_4de42644();
	thread function_2fcfc76(level.var_24223342, "stop_chase_bullets");
	namespace_786319bb::function_ae0b01fe(1);
	Array::thread_all(level.activePlayers, &oob::disablePlayerOOB, 1);
	if(isdefined(level.BZM_AQUIFERDialogue4_1Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue4_1Callback]]();
	}
	var_88ade69e = GetEnt("pre_breach_breadcrumb", "targetname").who;
	foreach(player in level.activePlayers)
	{
		if(isdefined(var_88ade69e) && player == var_88ade69e)
		{
			continue;
		}
		if(level.activePlayers.size == 1)
		{
			var_b0633588 = GetEnt("pre_breach_zone", "targetname");
			if(player istouching(var_b0633588))
			{
				player.force_short_scene_transition_effect = 1;
			}
		}
		player.play_scene_transition_effect = 1;
	}
	scene::add_scene_func("cin_aqu_04_20_breach_1st_rappel_main_enemies", &function_f9027bac, "play");
	scene::add_scene_func("cin_aqu_04_20_breach_1st_rappel_main", &function_3a12692e, "play");
	struct thread scene::Play("cin_aqu_04_20_breach_1st_rappel_main_enemies");
	struct scene::Play("cin_aqu_04_20_breach_1st_rappel_main", level.var_24223342);
	Array::thread_all(level.activePlayers, &oob::disablePlayerOOB, 0);
	level notify("hash_e137bd35");
	if(isdefined(level.var_24223342))
	{
		util::magic_bullet_shield(level.var_24223342);
		level.var_24223342 colors::set_force_color("r");
	}
	skipto::function_be8adfb8(str_objective);
	function_5ec99c19("cp_level_aquifer_capture_hangar");
	Array::run_all(level.players, &DisableInvulnerability);
}

/*
	Name: function_48728eb8
	Namespace: namespace_84eb777e
	Checksum: 0x213FB249
	Offset: 0xBE28
	Size: 0x11B
	Parameters: 4
	Flags: None
*/
function function_48728eb8(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	vtol = GetEnt("hangar_vtol_01", "targetname");
	if(isdefined(vtol))
	{
		vtol SetScale(0.8);
	}
	if(var_74cd64bc)
	{
		function_4d816f2c("cp_level_aquifer_capture");
	}
	thread function_5d32874c(1);
	level struct::delete_script_bundle("scene", "cin_aqu_04_20_breach_1st_rappel_main");
	level struct::delete_script_bundle("scene", "cin_aqu_04_20_breach_1st_rappel_main_enemies");
	level flag::set("inside_aquifer");
}

/*
	Name: function_f9027bac
	Namespace: namespace_84eb777e
	Checksum: 0x5A36F900
	Offset: 0xBF50
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_f9027bac(a_ents)
{
	level flag::set("play_breach");
	foreach(e_enemy in a_ents)
	{
		e_enemy.var_fb7ce72a = &function_c5926a75;
	}
}

/*
	Name: function_3a12692e
	Namespace: namespace_84eb777e
	Checksum: 0xC4826B47
	Offset: 0xC010
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_3a12692e(a_ents)
{
	level waittill("hash_48b02987");
	Array::run_all(level.players, &EnableInvulnerability);
}

/*
	Name: function_418127ed
	Namespace: namespace_84eb777e
	Checksum: 0xC76065C4
	Offset: 0xC060
	Size: 0x169
	Parameters: 1
	Flags: None
*/
function function_418127ed(a_ents)
{
	foreach(ai_enemy in a_ents)
	{
		util::magic_bullet_shield(ai_enemy);
		ai_enemy clientfield::set("toggle_enemy_highlight", 1);
	}
	level flag::wait_till("play_breach");
	foreach(ai_enemy in a_ents)
	{
		util::stop_magic_bullet_shield(ai_enemy);
		ai_enemy clientfield::set("toggle_enemy_highlight", 0);
	}
}

/*
	Name: function_c5926a75
	Namespace: namespace_84eb777e
	Checksum: 0x708045B1
	Offset: 0xC1D8
	Size: 0x17
	Parameters: 2
	Flags: None
*/
function function_c5926a75(player, var_d7b19111)
{
	return 1;
}

/*
	Name: function_70e17249
	Namespace: namespace_84eb777e
	Checksum: 0x4852EF60
	Offset: 0xC1F8
	Size: 0xC3
	Parameters: 0
	Flags: None
*/
function function_70e17249()
{
	wait(3);
	level notify("hash_d18ea658");
	wait(2.4);
	a = GetEnt("breach_exploder", "script_parameters");
	if(isdefined(a))
	{
		b = GetEnt("breach_exploder_victim", "targetname");
		b = b spawner::spawn(1);
		wait(0.5);
		a kill();
	}
}

/*
	Name: function_bd6a294
	Namespace: namespace_84eb777e
	Checksum: 0x3AA4CCC3
	Offset: 0xC2C8
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_bd6a294()
{
	level flag::wait_till("init_run");
	if(level flag::get("start_pre_breach"))
	{
		level endon("hash_409a1fc1");
		wait(6);
		level dialog::remote("kane_get_into_position_w_0");
		wait(8);
		level dialog::remote("hend_push_forward_maret_0");
	}
}

/*
	Name: function_b2a5e2c2
	Namespace: namespace_84eb777e
	Checksum: 0x1029692D
	Offset: 0xC368
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_b2a5e2c2()
{
	level endon("hash_39437403");
	level flag::wait_till("breach_vo_complete");
	level flag::set("just_breach_it");
}

/*
	Name: function_5b97b8ac
	Namespace: namespace_84eb777e
	Checksum: 0x1E0DAF65
	Offset: 0xC3C0
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_5b97b8ac()
{
	level waittill("slomo_on");
	setSlowMotion(1, 0.4, 0.3);
	level waittill("slomo_off");
	setSlowMotion(0.4, 1, 0.3);
	level waittill("hash_5ba6634c");
	setSlowMotion(1, 0.3, 0.3);
	wait(2.6);
	setSlowMotion(0.5, 1, 0.2);
	wait(0.3);
}

/*
	Name: function_3ed36777
	Namespace: namespace_84eb777e
	Checksum: 0xC4206109
	Offset: 0xC498
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_3ed36777(name)
{
	enemies = [];
	spawners = GetEntArray(name, "script_noteworthy");
	foreach(spawner in spawners)
	{
		spawner spawner::add_spawn_function(&function_abc982c8);
		guy = spawner spawner::spawn(1, spawner.targetname);
		enemies[enemies.size] = guy;
	}
	return enemies;
}

/*
	Name: function_abc982c8
	Namespace: namespace_84eb777e
	Checksum: 0x64F903FC
	Offset: 0xC5C8
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_abc982c8()
{
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self util::magic_bullet_shield();
	level flag::wait_till("just_breach_it");
	self ai::set_ignoreall(0);
	self ai::set_ignoreme(0);
	self util::stop_magic_bullet_shield();
	self waittill("death");
}

/*
	Name: function_8888ffc6
	Namespace: namespace_84eb777e
	Checksum: 0x5F577C08
	Offset: 0xC690
	Size: 0x171
	Parameters: 0
	Flags: None
*/
function function_8888ffc6()
{
	trig = GetEnt("pre_breach_zone", "targetname");
	while(level flag::get("start_pre_breach"))
	{
		trig waittill("trigger", who);
		if(!(isdefined(who.var_cfe457fd) && who.var_cfe457fd))
		{
			if(isPlayer(who))
			{
				who.var_cfe457fd = 1;
				who clientfield::set_to_player("highlight_ai", 1);
			}
		}
	}
	foreach(player in level.players)
	{
		player clientfield::set_to_player("highlight_ai", 0);
	}
}

/*
	Name: function_b9f6cf69
	Namespace: namespace_84eb777e
	Checksum: 0x6ABC71FC
	Offset: 0xC810
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_b9f6cf69()
{
	level flag::wait_till("start_pre_breach");
	thread function_bba73196();
	level flag::set("init_run");
	level flag::wait_till("on_hangar_exterior");
}

/*
	Name: function_bba73196
	Namespace: namespace_84eb777e
	Checksum: 0xCF7F42B
	Offset: 0xC890
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_bba73196()
{
	level endon("hash_409a1fc1");
	level dialog::remote("kane_damn_it_nrc_forces_0");
	level dialog::function_13b3b16a("plyr_kane_what_s_your_pl_0");
	level dialog::remote("kane_rappel_over_the_edge_0", 0.1);
	level dialog::function_13b3b16a("plyr_there_s_still_a_rein_0", 0.1);
	level dialog::remote("kane_i_ll_take_care_it_0", 0.2);
	level flag::set("breach_vo_complete");
	thread function_bd6a294();
}

/*
	Name: breach_vo
	Namespace: namespace_84eb777e
	Checksum: 0xC3B0700B
	Offset: 0xC990
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function breach_vo()
{
	level.var_24223342 dialog::say("hend_remember_we_need_hy_0");
	level.var_24223342 dialog::say("hend_ready_go_0");
}

/*
	Name: function_d22b2659
	Namespace: namespace_84eb777e
	Checksum: 0x71C5DDBB
	Offset: 0xC9E0
	Size: 0x253
	Parameters: 2
	Flags: None
*/
function function_d22b2659(str_objective, var_74cd64bc)
{
	vtol = GetEnt("hangar_vtol_01", "targetname");
	if(isdefined(vtol))
	{
		vtol SetScale(0.8);
	}
	function_4d816f2c("cp_level_aquifer_capture_pursue");
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_287ca2ad(1);
	if(var_74cd64bc)
	{
		namespace_1d1d22be::function_de37a122(0);
		load::function_a2995f22();
	}
	level flag::wait_till("inside_aquifer");
	level notify("hash_7725d2f1");
	namespace_786319bb::function_8bf8a765();
	thread function_61034146(0);
	thread function_e2d8799f(1);
	thread function_5d32874c(1);
	level thread namespace_e2cb8359::function_2fc2978c();
	thread namespace_e2cb8359::function_608c4683();
	level flag::wait_till("inroom");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_b8af1c13
	Namespace: namespace_84eb777e
	Checksum: 0x713DDCE3
	Offset: 0xCC40
	Size: 0x43
	Parameters: 4
	Flags: None
*/
function function_b8af1c13(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level flag::wait_till("inroom");
}

/*
	Name: function_53d54ffb
	Namespace: namespace_84eb777e
	Checksum: 0x626FFD4
	Offset: 0xCC90
	Size: 0x483
	Parameters: 2
	Flags: None
*/
function function_53d54ffb(str_objective, var_74cd64bc)
{
	level flag::set("inside_aquifer");
	level notify("hash_7725d2f1");
	level.var_24223342 = function_eb16c4f5("hendricks_boss_intro");
	level.var_24223342 util::magic_bullet_shield();
	level.var_24223342 battlechatter::function_d9f49fba(0);
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_287ca2ad(1);
	if(var_74cd64bc)
	{
		namespace_1d1d22be::function_de37a122(0);
		thread function_61034146(0);
		thread function_e2d8799f(1);
		thread function_5d32874c(1);
		function_4d816f2c("cp_level_aquifer_capture");
		load::function_a2995f22();
		scene::init("cin_aqu_07_not_yourself_3rd_shot010");
	}
	level thread function_6a11f4cb();
	var_d3888511 = trigger::wait_till("sniper_intro_igc");
	thread function_e2d8799f(0);
	thread function_5d32874c(0);
	if(isdefined(level.BZM_AQUIFERDialogue5Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue5Callback]]();
	}
	level thread namespace_71a63eac::function_1a168f0c();
	scene::add_scene_func("cin_aqu_07_not_yourself_3rd_shot010", &function_9480ffc2, "play");
	scene::add_scene_func("cin_aqu_07_not_yourself_3rd_shot130", &function_cd553ae9, "done");
	scene::add_scene_func("cin_aqu_07_not_yourself_3rd_shot010", &function_d90541d7, "skip_completed");
	a_ents = [];
	if(!isdefined(a_ents))
	{
		a_ents = [];
	}
	else if(!IsArray(a_ents))
	{
		a_ents = Array(a_ents);
	}
	a_ents[a_ents.size] = var_d3888511.who;
	a_ents["hendricks"] = level.var_24223342;
	level thread scene::Play("cin_aqu_07_not_yourself_3rd_shot010", a_ents);
	level waittill("hash_9f84cee3");
	ent = GetEnt("intro_exploder", "script_noteworthy");
	if(isdefined(ent))
	{
		ent kill();
	}
	level waittill("hash_cd553ae9");
	level thread namespace_71a63eac::function_99caac9d();
	wait(0.2);
	savegame::function_5d2cdd99();
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_7f27211
	Namespace: namespace_84eb777e
	Checksum: 0x1D0278A7
	Offset: 0xD120
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_7f27211(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_cd553ae9
	Namespace: namespace_84eb777e
	Checksum: 0x4E0C4DCD
	Offset: 0xD150
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_cd553ae9(a_ents)
{
	level notify("hash_cd553ae9");
	util::function_93831e79("post_boss_intro");
}

/*
	Name: function_9480ffc2
	Namespace: namespace_84eb777e
	Checksum: 0xCDBE005E
	Offset: 0xD190
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_9480ffc2(a_ents)
{
	foreach(player in level.players)
	{
		player thread namespace_786319bb::function_89eaa1b3(1.5);
	}
}

/*
	Name: function_d90541d7
	Namespace: namespace_84eb777e
	Checksum: 0xDB0966B5
	Offset: 0xD238
	Size: 0x99
	Parameters: 1
	Flags: None
*/
function function_d90541d7(a_ents)
{
	foreach(player in level.players)
	{
		player clientfield::set_to_player("hijack_static_effect", 0);
	}
}

/*
	Name: function_6a11f4cb
	Namespace: namespace_84eb777e
	Checksum: 0xE8168A33
	Offset: 0xD2E0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_6a11f4cb()
{
	var_ce043be7 = trigger::wait_till("sniper_mosh");
	var_ce043be7.who thread namespace_786319bb::function_89eaa1b3(1);
}

/*
	Name: function_8a28a59e
	Namespace: namespace_84eb777e
	Checksum: 0xFFEE2C21
	Offset: 0xD338
	Size: 0x25B
	Parameters: 2
	Flags: None
*/
function function_8a28a59e(str_objective, var_74cd64bc)
{
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	if(var_74cd64bc)
	{
		namespace_1d1d22be::function_de37a122(0);
		function_4d816f2c("cp_level_aquifer_capture");
		load::function_a2995f22();
	}
	level.var_24223342 = function_eb16c4f5("hendricks_boss");
	level.var_24223342 ai::set_ignoreall(0);
	level flag::set("inside_aquifer");
	level flag::set("inroom");
	thread function_61034146(0);
	thread function_e2d8799f(0);
	thread function_5d32874c(0);
	exploder::stop_exploder("lighting_hangar_a");
	thread namespace_cac6a05e::start_boss();
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 1);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 1);
	thread namespace_786319bb::function_287ca2ad(1);
	namespace_786319bb::function_2085bf94("debris_clip", 1);
	level flag::wait_till("hyperion_start_tree_scene");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_33c36478
	Namespace: namespace_84eb777e
	Checksum: 0xBA245C30
	Offset: 0xD5A0
	Size: 0x263
	Parameters: 4
	Flags: None
*/
function function_33c36478(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(!var_74cd64bc)
	{
		function_5ec99c19("cp_level_aquifer_capture_pursue");
	}
	function_5ec99c19("cp_level_aquifer_capture");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot010");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot020");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot030");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot040");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot050");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot060");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot070");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot080");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot090");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot100");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot110");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot120");
	level struct::delete_script_bundle("scene", "cin_aqu_07_not_yourself_3rd_shot130");
}

/*
	Name: function_d6b95c0b
	Namespace: namespace_84eb777e
	Checksum: 0x7BCB5D6A
	Offset: 0xD810
	Size: 0x35B
	Parameters: 2
	Flags: None
*/
function function_d6b95c0b(str_objective, var_74cd64bc)
{
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(1);
	function_eb16c4f5("hendricks_hideout");
	if(var_74cd64bc)
	{
		scene::init("cin_aqu_16_outro_3rd_sh010", level.var_24223342);
		namespace_1d1d22be::function_de37a122(0);
		thread namespace_cac6a05e::function_510d0407();
		level flag::set("inside_aquifer");
	}
	level flag::set("hyperion_start_tree_scene");
	namespace_786319bb::function_75ab4ede(0);
	level notify("hash_7725d2f1");
	thread function_61034146(0);
	thread function_e2d8799f(1);
	thread function_5d32874c(1);
	if(var_74cd64bc)
	{
		level.var_24223342 util::magic_bullet_shield();
	}
	level.var_24223342 ai::set_behavior_attribute("cqb", 0);
	level.var_24223342 ai::set_behavior_attribute("sprint", 1);
	loc = struct::get("hideout_obj_struct", "targetname");
	trigger::use("leave_hideout", "targetname");
	clientfield::set("toggle_pbg_banks", 1);
	if(var_74cd64bc)
	{
		namespace_786319bb::function_2085bf94("hideout_door", 1);
		namespace_786319bb::function_2085bf94("hideout_doors_closed", 1);
		load::function_a2995f22();
		namespace_e2cb8359::function_1d5b05a(var_74cd64bc);
	}
	else
	{
		level flag::wait_till("hyperion_start_tree_scene");
		level waittill("hash_a35499d1");
	}
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_48ab6241
	Namespace: namespace_84eb777e
	Checksum: 0x1CF19B46
	Offset: 0xDB78
	Size: 0x11D
	Parameters: 4
	Flags: None
*/
function function_48ab6241(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level struct::delete_script_bundle("scene", "cin_aqu_07_01_maretti_1st_dropit");
	level struct::delete_script_bundle("scene", "cin_aqu_05_20_boss_3rd_death_main");
	level struct::delete_script_bundle("scene", "cin_aqu_05_20_boss_3rd_death_sh010");
	level struct::delete_script_bundle("scene", "cin_aqu_05_20_boss_3rd_death_sh020");
	level struct::delete_script_bundle("scene", "cin_aqu_05_20_boss_3rd_death_debris");
	level struct::delete_script_bundle("scene", "cin_aqu_16_outro_3rd_sh010");
	if(var_74cd64bc)
	{
		return;
	}
}

/*
	Name: function_95463da0
	Namespace: namespace_84eb777e
	Checksum: 0x28FC00C1
	Offset: 0xDCA0
	Size: 0x333
	Parameters: 2
	Flags: None
*/
function function_95463da0(str_objective, var_74cd64bc)
{
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	if(var_74cd64bc)
	{
		namespace_1d1d22be::function_de37a122(0);
		thread namespace_cac6a05e::function_510d0407();
		level flag::set("inside_aquifer");
		load::function_a2995f22();
	}
	function_4d816f2c("cp_level_aquifer_exfil");
	clientfield::set("toggle_pbg_banks", 1);
	level flag::set("hyperion_start_tree_scene");
	namespace_786319bb::function_75ab4ede(0);
	if(var_74cd64bc)
	{
		thread namespace_786319bb::function_2085bf94("hideout_door", 0);
		thread namespace_786319bb::function_2085bf94("hideout_doors_closed", 0);
	}
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(1);
	level notify("hash_7725d2f1");
	thread function_61034146(0);
	thread function_e2d8799f(1);
	thread function_5d32874c(1);
	exploder::exploder("lighting_hangar_b");
	thread namespace_786319bb::function_44287aa3();
	function_eb16c4f5("hendricks_hideout");
	trigger::use("leave_hideout", "targetname");
	if(var_74cd64bc)
	{
		level.var_24223342 util::magic_bullet_shield();
		level flag::wait_till("in_hideout");
		util::function_93831e79("post_hideout_igc");
	}
	thread objectives::breadcrumb("start_runout_breadcrumbs");
	thread namespace_e2cb8359::function_ff024877();
	level flag::wait_till("runout_done");
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_fb8ad8d6
	Namespace: namespace_84eb777e
	Checksum: 0x1D7DDDFA
	Offset: 0xDFE0
	Size: 0x23
	Parameters: 4
	Flags: None
*/
function function_fb8ad8d6(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
}

/*
	Name: function_df17401b
	Namespace: namespace_84eb777e
	Checksum: 0x56AA7B4B
	Offset: 0xE010
	Size: 0x593
	Parameters: 2
	Flags: None
*/
function function_df17401b(str_objective, var_74cd64bc)
{
	level flag::set("hyperion_start_tree_scene");
	level flag::set("inside_aquifer");
	namespace_786319bb::function_75ab4ede(0);
	thread namespace_786319bb::function_2085bf94("hideout_door", 0);
	thread namespace_786319bb::function_2085bf94("hideout_doors_closed", 0);
	level thread namespace_786319bb::function_7cd236c3("ground_script_kill", 0);
	thread namespace_786319bb::function_7cd236c3("obj1_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj2_kill_trig", 0);
	thread namespace_786319bb::function_7cd236c3("obj3_kill_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_upper_trig", 0);
	thread namespace_786319bb::function_c1bd6415("oob_low_trig", 0);
	thread namespace_786319bb::function_287ca2ad(1);
	level notify("hash_7725d2f1");
	level.var_24223342 = function_eb16c4f5("escape_hendricks");
	if(var_74cd64bc)
	{
		thread function_61034146(0);
		thread function_e2d8799f(1);
		thread function_5d32874c(1);
		exploder::exploder("lighting_hangar_b");
		clientfield::set("toggle_pbg_banks", 1);
		load::function_a2995f22();
	}
	level flag::wait_till_clear("hold_for_debug_splash");
	var_48bcb988 = trigger::wait_till("start_exfil_igc");
	level thread namespace_71a63eac::function_ae6b41cd();
	level clientfield::set("gameplay_started", 0);
	if(isdefined(level.BZM_AQUIFERDialogue7_1Callback))
	{
		level thread [[level.BZM_AQUIFERDialogue7_1Callback]]();
	}
	util::delay(15, undefined, &function_5ec99c19, "cp_level_aquifer_exfil", undefined, 0);
	Array::run_all(level.activePlayers, &EnableInvulnerability);
	thread function_11b7a408();
	struct = GetEnt("breach_scene_origin", "targetname");
	level notify("hash_a384e425");
	level.var_24223342 StopAnimScripted();
	function_f67ca613(0);
	level.var_24223342.n_script_anim_rate = undefined;
	namespace_786319bb::function_2085bf94("crane_arm_off", 1);
	ents = GetEntArray("hangar_doors", "targetname");
	foreach(ent in ents)
	{
		ent ghost();
	}
	namespace_786319bb::function_2085bf94("hangar_support", 1);
	level thread audio::unlockFrontendMusic("mus_aquifer_comm_tower_intro");
	level thread namespace_1d1d22be::function_850c7ab7();
	level.var_24223342 thread dialog::say("hend_the_hangar_is_this_w_0", 0.5);
	a_ents = [];
	if(!isdefined(a_ents))
	{
		a_ents = [];
	}
	else if(!IsArray(a_ents))
	{
		a_ents = Array(a_ents);
	}
	a_ents[a_ents.size] = var_48bcb988.who;
	a_ents["hendricks"] = level.var_24223342;
	struct scene::Play("cin_aqu_07_20_outro_1st_finale_main", a_ents);
	skipto::function_be8adfb8(str_objective);
}

/*
	Name: function_11b7a408
	Namespace: namespace_84eb777e
	Checksum: 0xE48B7B7B
	Offset: 0xE5B0
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_11b7a408()
{
	level waittill("hash_944e29c7");
	level clientfield::set("sndIGCsnapshot", 4);
	thread util::screen_fade_out(2);
}

/*
	Name: function_647ae831
	Namespace: namespace_84eb777e
	Checksum: 0x2E652AFD
	Offset: 0xE608
	Size: 0x8B
	Parameters: 4
	Flags: None
*/
function function_647ae831(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	if(var_74cd64bc)
	{
		return;
	}
	skipto::teleport_players("breach_hangar_teleport", undefined);
	/#
		txt = [];
		txt[txt.size] = "Dev Block strings are not supported";
		debug::function_8e158224(txt, 6);
	#/
}

/*
	Name: function_4d816f2c
	Namespace: namespace_84eb777e
	Checksum: 0x2665E2BD
	Offset: 0xE6A0
	Size: 0x93
	Parameters: 2
	Flags: None
*/
function function_4d816f2c(var_4458affc, List)
{
	objectives::set(var_4458affc, List);
	if(!isdefined(level.var_d0cbcc7b))
	{
		level.var_d0cbcc7b = [];
	}
	if(!isdefined(level.var_d0cbcc7b[var_4458affc]))
	{
		level.var_d0cbcc7b[var_4458affc] = 1;
	}
	else
	{
		level.var_d0cbcc7b[var_4458affc]++;
		objectives::show(var_4458affc);
	}
}

/*
	Name: function_5ec99c19
	Namespace: namespace_84eb777e
	Checksum: 0xC39E2F74
	Offset: 0xE740
	Size: 0xAB
	Parameters: 3
	Flags: None
*/
function function_5ec99c19(var_4458affc, List, should_hide)
{
	if(!isdefined(should_hide))
	{
		should_hide = 1;
	}
	if(should_hide && isdefined(level.var_d0cbcc7b) && isdefined(level.var_d0cbcc7b[var_4458affc]) && level.var_d0cbcc7b[var_4458affc] > 0)
	{
		level.var_d0cbcc7b[var_4458affc]--;
		objectives::Hide(var_4458affc);
	}
	objectives::complete(var_4458affc, List);
}

/*
	Name: function_eb16c4f5
	Namespace: namespace_84eb777e
	Checksum: 0x6C78BD46
	Offset: 0xE7F8
	Size: 0x89
	Parameters: 1
	Flags: None
*/
function function_eb16c4f5(spawner_name)
{
	if(!isdefined(level.var_24223342) || !isalive(level.var_24223342))
	{
		s = GetEnt(spawner_name, "targetname");
		level.var_24223342 = s spawner::spawn(1);
	}
	return level.var_24223342;
}

/*
	Name: function_25604491
	Namespace: namespace_84eb777e
	Checksum: 0x4A6BDCE6
	Offset: 0xE890
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_25604491(spawner_name)
{
	if(!isdefined(level.var_3c272574) || !isalive(level.var_3c272574))
	{
		s = GetEnt(spawner_name, "targetname");
		level.var_3c272574 = s spawner::spawn(1);
		level.var_3c272574 util::magic_bullet_shield();
	}
	return level.var_3c272574;
}

/*
	Name: function_30343b22
	Namespace: namespace_84eb777e
	Checksum: 0x171ECF83
	Offset: 0xE940
	Size: 0xE1
	Parameters: 1
	Flags: None
*/
function function_30343b22(spawner_name)
{
	if(!isdefined(level.var_89ea8991) || !isalive(level.var_89ea8991))
	{
		s = GetEnt(spawner_name, "targetname");
		level.var_89ea8991 = s spawner::spawn(1);
		level.var_89ea8991 util::magic_bullet_shield();
		level.var_89ea8991.script_accuracy = 0.4;
		if(SessionModeIsCampaignZombiesGame())
		{
			level.var_89ea8991.ignoreVignetteModeForAnimReach = 1;
		}
	}
	return level.var_89ea8991;
}

/*
	Name: function_2fcfc76
	Namespace: namespace_84eb777e
	Checksum: 0x264967A2
	Offset: 0xEA30
	Size: 0x11F
	Parameters: 2
	Flags: None
*/
function function_2fcfc76(who, end_notify)
{
	level endon(end_notify);
	weapon = GetWeapon("ar_standard");
	wait(0.05);
	origin_offset = -500 * AnglesToForward(who.angles) + VectorScale((0, 0, 1), 60);
	while(1)
	{
		target_pos = who.origin + (randomIntRange(-50, 50), randomIntRange(-50, 50), 0);
		MagicBullet(weapon, who.origin + origin_offset, target_pos);
		wait(0.05);
	}
}


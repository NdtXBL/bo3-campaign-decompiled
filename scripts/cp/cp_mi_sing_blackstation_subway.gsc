#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_blackstation_police_station;
#using scripts\cp\cp_mi_sing_blackstation_sound;
#using scripts\cp\cp_mi_sing_blackstation_utility;
#using scripts\shared\ai_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_3dc5b645;

/*
	Name: function_822cae8a
	Namespace: namespace_3dc5b645
	Checksum: 0x550EC314
	Offset: 0x760
	Size: 0x283
	Parameters: 0
	Flags: None
*/
function function_822cae8a()
{
	level clientfield::set("flotsam", 1);
	level thread function_d721f6c3();
	level thread function_5c54db13();
	level thread function_9d32ab8e();
	level thread function_70ff0b50();
	level thread function_e3067a8b();
	level thread function_bd040022();
	level thread function_95e21012();
	level thread function_4ad8a5f1();
	level thread function_c7ea2242();
	level thread function_27e6ca54();
	level thread function_eb060258();
	objectives::set("cp_level_blackstation_goto_comm_relay");
	level.var_2fd26037 ai::set_behavior_attribute("cqb", 1);
	foreach(ai in GetAITeamArray("axis"))
	{
		ai delete();
	}
	level clientfield::set("subway_entrance_crash", 1);
	if(isdefined(level.BZM_BLACKSTATIONDialogue3_5Callback))
	{
		level thread [[level.BZM_BLACKSTATIONDialogue3_5Callback]]();
	}
	var_d9754f70 = struct::get_array("player_subway_pos");
	exploder::exploder("fx_expl_tanker_splashes_mist");
}

/*
	Name: function_eb060258
	Namespace: namespace_3dc5b645
	Checksum: 0x97BDF95F
	Offset: 0x9F0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_eb060258()
{
	trigger::wait_till("trigger_underwater_vo");
	level dialog::function_13b3b16a("plyr_kane_we_re_approac_0");
	level dialog::remote("kane_better_make_it_fast_0");
	level dialog::function_13b3b16a("plyr_understood_1");
}

/*
	Name: function_27e6ca54
	Namespace: namespace_3dc5b645
	Checksum: 0xDAA60392
	Offset: 0xA78
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_27e6ca54()
{
	var_ec39b8a8 = GetEntArray("subway_corpse_floating", "targetname");
	foreach(e_corpse in var_ec39b8a8)
	{
		e_corpse thread function_62437267();
	}
	var_40eadcd7 = GetEnt("subway_corpse_3", "targetname");
	var_40eadcd7 thread function_62437267();
}

/*
	Name: function_62437267
	Namespace: namespace_3dc5b645
	Checksum: 0x5F8773FB
	Offset: 0xB78
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_62437267()
{
	self thread scene::Play(self.script_noteworthy, self);
}

/*
	Name: function_c7ea2242
	Namespace: namespace_3dc5b645
	Checksum: 0x40491F38
	Offset: 0xBA8
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_c7ea2242()
{
	trigger::wait_till("trigger_subway_tiles");
	clientfield::set("subway_tiles", 1);
}

/*
	Name: function_99f304f0
	Namespace: namespace_3dc5b645
	Checksum: 0x47F17581
	Offset: 0xBF0
	Size: 0x181
	Parameters: 0
	Flags: None
*/
function function_99f304f0()
{
	self endon("death");
	self.var_15caaa0c = 0;
	while(!level flag::get("flag_kane_intro_complete"))
	{
		while(!self IsPlayerUnderwater())
		{
			wait(0.1);
		}
		if(!self.var_15caaa0c)
		{
			self.var_15caaa0c = 1;
			self thread util::show_hint_text(&"COOP_SWIM_INSTRUCTIONS");
		}
		self clientfield::set_to_player("play_bubbles", 1);
		self FX::Play("bubbles", self.origin, (0, 0, 0), "swim_done", 1, "j_spineupper");
		while(self IsPlayerUnderwater())
		{
			wait(0.1);
		}
		self clientfield::set_to_player("play_bubbles", 0);
		self notify("hash_5670f4e8");
		wait(0.1);
	}
	self clientfield::set_to_player("play_bubbles", 0);
	self notify("hash_5670f4e8");
}

/*
	Name: function_d721f6c3
	Namespace: namespace_3dc5b645
	Checksum: 0xEFF535E7
	Offset: 0xD80
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_d721f6c3()
{
	level objectives::breadcrumb("subway_breadcrumb");
	level objectives::breadcrumb("trigger_breadcrumb_subway_exit");
	level objectives::breadcrumb("trigger_breadcrumb_police_street", "cp_level_blackstation_climb");
}

/*
	Name: function_5c54db13
	Namespace: namespace_3dc5b645
	Checksum: 0x32E30D4
	Offset: 0xDF8
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_5c54db13()
{
	level flag::wait_till("flag_waypoint_subway01");
	wait(2);
	level thread scene::Play("p7_fxanim_cp_blackstation_subway_stair_debris_bundle");
	skipto::function_be8adfb8("objective_subway");
}

/*
	Name: function_4ad8a5f1
	Namespace: namespace_3dc5b645
	Checksum: 0x85DE0B4D
	Offset: 0xE60
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_4ad8a5f1()
{
	trigger::wait_till("trig_hendricks_swim");
	level thread namespace_4297372::function_37f7c98d();
	level thread namespace_933eb669::function_a7bb8a82();
}

/*
	Name: function_95e21012
	Namespace: namespace_3dc5b645
	Checksum: 0x5371479C
	Offset: 0xEB8
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_95e21012()
{
	level scene::init("cin_bla_08_02_subway_vign_swim_first_section");
	trigger::wait_till("trig_hendricks_swim");
	level scene::add_scene_func("cin_bla_08_02_subway_vign_swim_first_section", &function_561cae8a, "play");
	level scene::Play("cin_bla_08_02_subway_vign_swim_first_section");
	level flag::wait_till("subway_second_section");
	level scene::Play("cin_bla_08_02_subway_vign_swim_second_section");
	level flag::wait_till("subway_third_section");
	level scene::add_scene_func("cin_bla_08_02_subway_vign_swim_third_section", &function_5f8ce82c, "done");
	level scene::Play("cin_bla_08_02_subway_vign_swim_third_section");
	if(!level flag::get("flag_waypoint_subway01"))
	{
		trigger::use("trig_hendricks_color_b2", "targetname");
	}
	level.var_2fd26037 notify("hash_5f734031");
	level.var_2fd26037 ai::set_behavior_attribute("forceTacticalWalk", 1);
	level flag::wait_till("subway_exit");
	level.var_2fd26037 ai::set_behavior_attribute("forceTacticalWalk", 0);
}

/*
	Name: function_561cae8a
	Namespace: namespace_3dc5b645
	Checksum: 0xA520390D
	Offset: 0x10B8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_561cae8a(a_ents)
{
	wait(2);
	level.var_2fd26037 FX::Play("bubbles", level.var_2fd26037.origin, (0, 0, 0), "swim_done", 1, "j_spineupper");
}

/*
	Name: function_5f8ce82c
	Namespace: namespace_3dc5b645
	Checksum: 0x47DF79D8
	Offset: 0x1120
	Size: 0x1F
	Parameters: 1
	Flags: None
*/
function function_5f8ce82c(a_ents)
{
	level.var_2fd26037 notify("hash_5670f4e8");
}

/*
	Name: function_9d32ab8e
	Namespace: namespace_3dc5b645
	Checksum: 0x33E2B795
	Offset: 0x1148
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function function_9d32ab8e()
{
	level endon("hash_4a4c8981");
	var_11d618f2 = GetEntArray("subway_corpse_floating", "targetname");
	Array::thread_all(var_11d618f2, &function_f9af1ae2);
}

/*
	Name: function_f9af1ae2
	Namespace: namespace_3dc5b645
	Checksum: 0xF4FFC240
	Offset: 0x11B0
	Size: 0x6F
	Parameters: 0
	Flags: None
*/
function function_f9af1ae2()
{
	level endon("hash_4a4c8981");
	self endon("death");
	e_body = self;
	n_rotate_angle = 60;
	while(1)
	{
		e_body RotatePitch(n_rotate_angle, 5);
		wait(4.5);
	}
}

/*
	Name: function_70ff0b50
	Namespace: namespace_3dc5b645
	Checksum: 0x2B438832
	Offset: 0x1228
	Size: 0x1F3
	Parameters: 0
	Flags: None
*/
function function_70ff0b50()
{
	level endon("hash_4a4c8981");
	level endon("hash_8f3612a6");
	e_corpse = GetEnt("subway_corpse", "targetname");
	e_linkto = util::spawn_model("tag_origin", e_corpse.origin, e_corpse.angles);
	e_corpse LinkTo(e_linkto);
	e_corpse thread scene::Play("cin_bla_08_02_subway_vign_dead_body_scare", e_corpse);
	t_trigger = GetEnt("trig_subway_scare", "targetname");
	t_trigger waittill("trigger", player);
	playsoundatposition("mus_subway_scare", (0, 0, 0));
	level notify("hash_e5172ffd");
	level thread function_5ba79988(player);
	e_linkto MoveY(-60, 0.5);
	e_linkto RotateRoll(50, 2);
	e_linkto RotateYaw(90, 1);
	e_linkto waittill("movedone");
	e_linkto moveto(e_corpse.origin - (0, 50, 25), 5);
}

/*
	Name: function_e3067a8b
	Namespace: namespace_3dc5b645
	Checksum: 0x83F5ABE5
	Offset: 0x1428
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_e3067a8b()
{
	level endon("hash_4a4c8981");
	t_trigger = GetEnt("trig_subway_scare_2", "targetname");
	e_corpse = GetEnt("subway_corpse_2", "targetname");
	level waittill("hash_e5172ffd");
	e_corpse endon("death");
	t_trigger waittill("trigger", player);
	e_corpse MoveX(-80, 2);
	e_corpse RotatePitch(60, 5);
	e_corpse waittill("movedone");
	e_corpse moveto(e_corpse.origin - (0, -50, 50), 5);
}

/*
	Name: function_bd040022
	Namespace: namespace_3dc5b645
	Checksum: 0x46210B46
	Offset: 0x1558
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_bd040022()
{
	level endon("hash_4a4c8981");
	t_trigger = GetEnt("trig_subway_scare_3", "targetname");
	e_corpse = GetEnt("subway_corpse_3", "targetname");
	e_corpse endon("death");
	t_trigger waittill("trigger", player);
	e_corpse MoveZ(-24, 0.75);
	e_corpse RotateRoll(60, 5);
	e_corpse waittill("movedone");
	e_corpse moveto(e_corpse.origin - (25, 25, 75), 5);
}

/*
	Name: function_5ba79988
	Namespace: namespace_3dc5b645
	Checksum: 0x57B50964
	Offset: 0x1678
	Size: 0x15
	Parameters: 1
	Flags: None
*/
function function_5ba79988(player)
{
	level endon("hash_4a4c8981");
}


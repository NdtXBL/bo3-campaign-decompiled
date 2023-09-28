#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cp_mi_sing_vengeance_util;
#using scripts\cp\gametypes\_battlechatter;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\stealth_status;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicle_shared;
#using scripts\shared\vehicles\_quadtank;

#namespace namespace_6f44bbbf;

/*
	Name: function_f9314d0e
	Namespace: namespace_6f44bbbf
	Checksum: 0x36FA57E4
	Offset: 0x9F0
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function function_f9314d0e(str_objective, var_74cd64bc)
{
	if(var_74cd64bc)
	{
		load::function_73adcefc();
		namespace_63b4601c::function_b87f9c13(str_objective, var_74cd64bc);
		namespace_63b4601c::init_hero("hendricks", str_objective);
		callback::on_spawned(&namespace_63b4601c::give_hero_weapon);
		level.var_831ab6b2 = struct::get("quadtank_alley_intro_org");
		level.var_831ab6b2 thread scene::skipto_end("cin_ven_04_30_quadalleydoor_1st");
		spawner::add_spawn_function_group("quadteaser_qt", "script_noteworthy", &function_5c60b4ee);
		level thread function_32620a97();
		namespace_63b4601c::function_e00864bd("dogleg_1_umbra_gate", 1, "dogleg_1_gate");
		objectives::set("cp_level_vengeance_rescue_kane");
		objectives::set("cp_level_vengeance_go_to_safehouse");
		objectives::Hide("cp_level_vengeance_go_to_safehouse");
		level thread objectives::breadcrumb("trig_quadtank_alley_obj");
		load::function_a2995f22();
	}
	level thread namespace_63b4601c::function_cc6f3598();
	level thread namespace_63b4601c::function_3f34106b();
	function_3e0e217e(str_objective, var_74cd64bc);
}

/*
	Name: function_3e0e217e
	Namespace: namespace_6f44bbbf
	Checksum: 0x91CF7FBF
	Offset: 0xBF0
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_3e0e217e(str_objective, var_74cd64bc)
{
	level flag::set("quadtank_alley_begin");
	level thread function_c231d685();
	level thread function_c58f9e9a();
	level.var_2fd26037 thread function_cad683c(var_74cd64bc);
}

/*
	Name: function_c231d685
	Namespace: namespace_6f44bbbf
	Checksum: 0x36F9336B
	Offset: 0xC80
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_c231d685()
{
	level flag::wait_till("move_quadtank_alley_hendricks_node_10");
	savegame::function_5d2cdd99();
	wait(2);
	level.var_9c196273 = struct::get("quadtank_alley_breadcrumb_02");
	objectives::set("cp_level_vengeance_goto_quadtank_alley_rooftop", level.var_9c196273);
	level flag::wait_till("quadtank_alley_rooftop");
	objectives::Hide("cp_level_vengeance_goto_quadtank_alley_rooftop");
}

/*
	Name: function_32620a97
	Namespace: namespace_6f44bbbf
	Checksum: 0x521A6C4B
	Offset: 0xD40
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_32620a97()
{
	var_35a1e4f8 = struct::get("quadteaser_org", "targetname");
	trigger::wait_till("qt_alley_init");
	var_35a1e4f8 thread scene::init("cin_ven_04_40_quadteaser_vign_start");
	trigger::wait_till("qt_alley_play");
	var_35a1e4f8 thread scene::Play("cin_ven_04_40_quadteaser_vign_start");
	e_trigger = GetEnt("qt_alley_init", "targetname");
	e_trigger delete();
}

/*
	Name: function_5c60b4ee
	Namespace: namespace_6f44bbbf
	Checksum: 0x18742F7
	Offset: 0xE30
	Size: 0x1B3
	Parameters: 0
	Flags: None
*/
function function_5c60b4ee()
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self vehicle_ai::function_81b6f1ac(1);
	self util::magic_bullet_shield();
	self.combatactive = 0;
	self quadtank::quadtank_weakpoint_display(0);
	vehicle_ai::TurnOffAllLightsAndLaser();
	vehicle_ai::TurnOffAllAmbientAnims();
	self vehicle::toggle_tread_fx(0);
	self vehicle::toggle_exhaust_fx(0);
	angles = self GetTagAngles("tag_flash");
	target_vec = self.origin + AnglesToForward((0, angles[1], 0)) * 1000;
	target_vec = target_vec + VectorScale((0, 0, -1), 500);
	self SetTargetOrigin(target_vec);
	if(!isdefined(self.emped))
	{
		self DisableAimAssist();
	}
	self thread function_5b72d473();
}

/*
	Name: function_5b72d473
	Namespace: namespace_6f44bbbf
	Checksum: 0x8A1D8786
	Offset: 0xFF0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_5b72d473()
{
	self endon("death");
	self thread function_958f5757();
	self thread function_cf5fc4c7();
}

/*
	Name: function_958f5757
	Namespace: namespace_6f44bbbf
	Checksum: 0xB2F15D44
	Offset: 0x1038
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function function_958f5757()
{
	self endon("death");
	while(1)
	{
		self waittillmatch("hash_7f1f9f3c");
		level util::clientNotify("qt_fire_missile");
		thread namespace_7c587e3e::function_b3768e28();
		thread namespace_7c587e3e::function_2afbdce();
		self FireWeapon(0);
	}
}

/*
	Name: function_cf5fc4c7
	Namespace: namespace_6f44bbbf
	Checksum: 0xA2A44DF6
	Offset: 0x10C0
	Size: 0x121
	Parameters: 0
	Flags: None
*/
function function_cf5fc4c7()
{
	self endon("death");
	while(1)
	{
		self waittillmatch("hash_870f582c");
		level util::clientNotify("qt_fire_mg");
		self PlayLoopSound("wpn_qt_mg_loop");
		thread namespace_7c587e3e::function_2afbdce();
		self thread turret::fire_for_time(-1, 1);
		self thread turret::fire_for_time(-1, 2);
		self waittillmatch("hash_c6db257a");
		playsoundatposition("wpn_qt_mg_tail", self.origin);
		self StopLoopSound(0.2);
		self notify("hash_c7d626");
		self notify("hash_dac55bbd");
	}
}

/*
	Name: function_cad683c
	Namespace: namespace_6f44bbbf
	Checksum: 0x60FB0EED
	Offset: 0x11F0
	Size: 0x18B
	Parameters: 1
	Flags: None
*/
function function_cad683c(var_74cd64bc)
{
	self endon("death");
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self colors::disable();
	self ai::set_behavior_attribute("cqb", 1);
	self.goalRadius = 32;
	self battlechatter::function_d9f49fba(0);
	level thread function_5a90d7e8(var_74cd64bc);
	node = GetNode("quadtank_alley_hendricks_node_05", "targetname");
	self thread ai::force_goal(node, node.radius);
	level flag::wait_till("move_quadtank_alley_hendricks_node_10");
	self ai::set_behavior_attribute("cqb", 0);
	node = GetNode("quadtank_alley_hendricks_node_10", "targetname");
	self thread ai::force_goal(node, node.radius);
}

/*
	Name: function_c58f9e9a
	Namespace: namespace_6f44bbbf
	Checksum: 0xE065026A
	Offset: 0x1388
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_c58f9e9a()
{
	e_trigger = GetEnt("kill_qt_alley_light", "targetname");
	while(isdefined(e_trigger))
	{
		e_trigger waittill("trigger", e_other);
		if(isPlayer(e_other))
		{
			e_other clientfield::set_to_player("kill_qt_alley_light", 1);
		}
	}
}

/*
	Name: function_323d0a39
	Namespace: namespace_6f44bbbf
	Checksum: 0xEC9D3D07
	Offset: 0x1420
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_323d0a39()
{
	level.var_2fd26037 waittill("hash_11488c47");
	level dialog::function_13b3b16a("plyr_you_okay_hendricks_1");
}

/*
	Name: function_5a90d7e8
	Namespace: namespace_6f44bbbf
	Checksum: 0x52936AF5
	Offset: 0x1460
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_5a90d7e8(var_74cd64bc)
{
	if(!isdefined(var_74cd64bc) || var_74cd64bc == 0)
	{
		level waittill("hash_ba467a50");
	}
	level flag::wait_till("move_quadtank_alley_hendricks_node_10");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_something_big_headed_0");
	level.var_2fd26037 namespace_63b4601c::function_5fbec645("hend_quick_get_to_the_roo_0");
}

/*
	Name: function_1dc027c8
	Namespace: namespace_6f44bbbf
	Checksum: 0x6293F53
	Offset: 0x14F8
	Size: 0x3C3
	Parameters: 4
	Flags: None
*/
function function_1dc027c8(str_objective, var_74cd64bc, var_e4cd2b8b, player)
{
	level flag::set("quadtank_alley_end");
	level util::clientNotify("qt_alley_done");
	level thread function_bc3427d9();
	level struct::delete_script_bundle("scene", "cin_ven_03_20_storelineup_vign_start_doors_only");
	level struct::delete_script_bundle("scene", "cin_ven_03_20_storelineup_vign_exit");
	level struct::delete_script_bundle("scene", "cin_ven_03_20_storelineup_vign_exit_reach");
	level struct::delete_script_bundle("scene", "cin_ven_04_30_quadalleydoor_1st");
	level struct::delete_script_bundle("scene", "cin_ven_04_40_quadteaser_vign_start");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafeexecution_vign_intro");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafeexecution_vign_kill");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafeexecution_vign_esc");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafeburning_vign_esc_civ_01");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafeburning_vign_esc_civ_02");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafeburning_vign_esc_civ_03");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafeburning_vign_loop");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafeburning_vign_main");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafemolotovflush_vign_intro");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafemolotovflush_vign_civa");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafemolotovflush_vign_civb");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafemolotovflush_vign_civc");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafemolotovflush_vign_civd");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafemolotovflush_vign_cive");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafemolotovflush_vign_civf");
	level struct::delete_script_bundle("scene", "cin_ven_04_20_cafemolotovflush_vign_civg");
}

/*
	Name: function_bc3427d9
	Namespace: namespace_6f44bbbf
	Checksum: 0x77F50388
	Offset: 0x18C8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_bc3427d9()
{
	Array::run_all(GetCorpseArray(), &delete);
}


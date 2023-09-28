#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\cp_mi_sing_vengeance_sound;
#using scripts\cp\cybercom\_cybercom;
#using scripts\cp\cybercom\_cybercom_gadget_security_breach;
#using scripts\cp\gametypes\_save;
#using scripts\shared\ai\systems\gib;
#using scripts\shared\ai_shared;
#using scripts\shared\ai_sniper_shared;
#using scripts\shared\animation_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\exploder_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\fx_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\stealth;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_ai_shared;
#using scripts\shared\vehicles\_hunter;
#using scripts\shared\visionset_mgr_shared;

#namespace namespace_63b4601c;

/*
	Name: __init__sytem__
	Namespace: namespace_63b4601c
	Checksum: 0xAC6901D
	Offset: 0xDC8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("enemy_highlight", &function_c7e2a7f7, undefined, undefined);
}

/*
	Name: function_c7e2a7f7
	Namespace: namespace_63b4601c
	Checksum: 0x5044DC4C
	Offset: 0xE08
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_c7e2a7f7()
{
	clientfield::register("toplayer", "enemy_highlight", 1, 1, "int");
}

/*
	Name: init_hero
	Namespace: namespace_63b4601c
	Checksum: 0x2DB2FB4E
	Offset: 0xE48
	Size: 0x1EB
	Parameters: 3
	Flags: None
*/
function init_hero(str_hero, str_objective, var_c080912a)
{
	hero = undefined;
	if(str_hero == "hendricks")
	{
		level.var_2fd26037 = util::function_740f8516("hendricks");
		hero = level.var_2fd26037;
		level.var_2fd26037 colors::set_force_color("r");
	}
	else if(str_hero == "rachel")
	{
		level.var_7a9855f3 = util::function_740f8516("rachel");
		hero = level.var_7a9855f3;
		level.var_7a9855f3 colors::set_force_color("b");
	}
	else
	{
		ASSERTMSG("Dev Block strings are not supported");
	}
	/#
	#/
	if(isdefined(var_c080912a) && var_c080912a)
	{
		skipto::teleport_ai(str_objective);
	}
	else
	{
		s_start = struct::get(str_objective + "_" + str_hero, "targetname");
		if(!isdefined(s_start))
		{
			/#
				ASSERTMSG("Dev Block strings are not supported" + str_hero + "Dev Block strings are not supported" + str_objective + "Dev Block strings are not supported");
			#/
		}
		hero ForceTeleport(s_start.origin, s_start.angles, 1);
	}
}

/*
	Name: player_count
	Namespace: namespace_63b4601c
	Checksum: 0x116B57B1
	Offset: 0x1040
	Size: 0x25
	Parameters: 0
	Flags: None
*/
function player_count()
{
	a_players = GetPlayers();
	return a_players.size;
}

/*
	Name: setup_patroller
	Namespace: namespace_63b4601c
	Checksum: 0x2B8A14FC
	Offset: 0x1070
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function setup_patroller()
{
	self endon("death");
	if(isdefined(self.target))
	{
		var_5871af4 = GetNode(self.target, "targetname");
	}
	if(!isdefined(var_5871af4))
	{
		nodes = GetNodesInRadiusSorted(self.origin, 1000, 1, 1000, "Path");
	}
	if(isdefined(nodes) && nodes.size > 0)
	{
		var_5871af4 = nodes[0];
	}
	if(isdefined(var_5871af4))
	{
		self.var_5871af4 = var_5871af4;
	}
	else
	{
		Assert(!isdefined(var_5871af4), "Dev Block strings are not supported");
	}
	/#
	#/
	self thread ai_sniper::agent_init();
	self thread ai::patrol(self.var_5871af4);
}

/*
	Name: function_b87f9c13
	Namespace: namespace_63b4601c
	Checksum: 0x30179662
	Offset: 0x11A0
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_b87f9c13(str_objective, var_74cd64bc, var_6a8d0f35)
{
	if(!isdefined(var_6a8d0f35))
	{
		var_6a8d0f35 = 0;
	}
	if(!isdefined(str_objective))
	{
		str_objective = "";
	}
	if(!isdefined(var_74cd64bc))
	{
		var_74cd64bc = 1;
	}
	if(var_74cd64bc)
	{
		function_2a400f9d("sentientevents_vengeance_default");
		stealth::init();
		namespace_7c587e3e::function_47d9d5db();
		if(var_6a8d0f35)
		{
			callback::on_spawned(&function_51caee84);
		}
	}
}

/*
	Name: enable_nodes
	Namespace: namespace_63b4601c
	Checksum: 0x414D7736
	Offset: 0x1270
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function enable_nodes(str_key, str_val, b_enable)
{
	if(!isdefined(str_val))
	{
		str_val = "targetname";
	}
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	a_nodes = GetNodeArray(str_key, str_val);
	foreach(nd_node in a_nodes)
	{
		SetEnableNode(nd_node, b_enable);
	}
}

/*
	Name: function_258b9bad
	Namespace: namespace_63b4601c
	Checksum: 0x130C7B65
	Offset: 0x1378
	Size: 0x9B
	Parameters: 3
	Flags: None
*/
function function_258b9bad(var_fcc15a0, var_1086d941, var_ed2ece1e)
{
	self endon("death");
	util::magic_bullet_shield(self);
	if(var_1086d941)
	{
		self thread function_968476a4(var_fcc15a0, var_ed2ece1e);
	}
	util::waittill_any_ents(level, var_fcc15a0, self, var_fcc15a0);
	util::stop_magic_bullet_shield(self);
}

/*
	Name: function_968476a4
	Namespace: namespace_63b4601c
	Checksum: 0xF849C537
	Offset: 0x1420
	Size: 0xAB
	Parameters: 2
	Flags: None
*/
function function_968476a4(var_fcc15a0, var_ed2ece1e)
{
	self endon("hash_9b484394");
	self endon(var_fcc15a0);
	level endon(var_fcc15a0);
	while(1)
	{
		self waittill("damage", amount, attacker);
		if(isPlayer(attacker))
		{
			if(isdefined(var_ed2ece1e))
			{
				level notify(var_ed2ece1e);
				wait(0.05);
				level notify(var_fcc15a0);
			}
			self notify(var_fcc15a0);
		}
	}
}

/*
	Name: fire_fx
	Namespace: namespace_63b4601c
	Checksum: 0xC9F818BE
	Offset: 0x14D8
	Size: 0x119
	Parameters: 0
	Flags: None
*/
function fire_fx()
{
	level._effect["civ_burn_j_elbow_le_loop"] = "fire/fx_fire_ai_human_arm_left_loop_mature";
	level._effect["civ_burn_j_elbow_ri_loop"] = "fire/fx_fire_ai_human_arm_right_loop_mature";
	level._effect["civ_burn_j_shoulder_le_loop"] = "fire/fx_fire_ai_human_arm_left_loop_mature";
	level._effect["civ_burn_j_shoulder_ri_loop"] = "fire/fx_fire_ai_human_arm_right_loop_mature";
	level._effect["civ_burn_j_spine4_loop"] = "fire/fx_fire_ai_human_torso_loop_mature";
	level._effect["civ_burn_j_hip_le_loop"] = "fire/fx_fire_ai_human_hip_left_loop_mature";
	level._effect["civ_burn_j_hip_ri_loop"] = "fire/fx_fire_ai_human_hip_right_loop_mature";
	level._effect["civ_burn_j_knee_le_loop"] = "fire/fx_fire_ai_human_leg_left_loop_mature";
	level._effect["civ_burn_j_knee_ri_loop"] = "fire/fx_fire_ai_human_leg_right_loop_mature";
	level._effect["civ_burn_j_head_loop"] = "fire/fx_fire_ai_human_head_loop_mature";
}

/*
	Name: function_f6af6062
	Namespace: namespace_63b4601c
	Checksum: 0xEC4B2C0D
	Offset: 0x1600
	Size: 0x58B
	Parameters: 1
	Flags: None
*/
function function_f6af6062(var_a35036a6)
{
	if(!isdefined(var_a35036a6))
	{
		var_a35036a6 = 1;
	}
	self endon("death");
	PlayFXOnTag(level._effect["civ_burn_j_spine4_loop"], self, "J_Spine4");
	if(isdefined(var_a35036a6) && var_a35036a6 == 0)
	{
		wait(0.5);
		PlayFXOnTag(level._effect["civ_burn_j_head_loop"], self, "J_Head");
		wait(RandomFloatRange(0.1, 2));
		PlayFXOnTag(level._effect["civ_burn_j_shoulder_le_loop"], self, "J_Shoulder_LE");
		PlayFXOnTag(level._effect["civ_burn_j_shoulder_ri_loop"], self, "J_Shoulder_RI");
		wait(RandomFloatRange(0.1, 2));
		PlayFXOnTag(level._effect["civ_burn_j_hip_le_loop"], self, "J_Hip_LE");
		PlayFXOnTag(level._effect["civ_burn_j_hip_ri_loop"], self, "J_Hip_RI");
		wait(RandomFloatRange(0.1, 2));
		PlayFXOnTag(level._effect["civ_burn_j_elbow_le_loop"], self, "J_Elbow_LE");
		PlayFXOnTag(level._effect["civ_burn_j_elbow_ri_loop"], self, "J_Elbow_RI");
		wait(RandomFloatRange(0.1, 2));
		PlayFXOnTag(level._effect["civ_burn_j_knee_le_loop"], self, "J_Knee_LE");
		PlayFXOnTag(level._effect["civ_burn_j_knee_ri_loop"], self, "J_Knee_RI");
	}
	else
	{
		wait(RandomFloatRange(0.1, 2));
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_elbow_le_loop"], self, "J_Elbow_LE");
		}
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_elbow_ri_loop"], self, "J_Elbow_RI");
		}
		wait(RandomFloatRange(0.1, 2));
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_shoulder_le_loop"], self, "J_Shoulder_LE");
		}
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_shoulder_ri_loop"], self, "J_Shoulder_RI");
		}
		wait(RandomFloatRange(0.1, 2));
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_hip_le_loop"], self, "J_Hip_LE");
		}
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_hip_ri_loop"], self, "J_Hip_RI");
		}
		wait(RandomFloatRange(0.1, 2));
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_knee_le_loop"], self, "J_Knee_LE");
		}
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_knee_ri_loop"], self, "J_Knee_RI");
		}
		wait(RandomFloatRange(0.1, 2));
		if(math::cointoss())
		{
			PlayFXOnTag(level._effect["civ_burn_j_head_loop"], self, "J_Head");
		}
	}
}

/*
	Name: function_3f34106b
	Namespace: namespace_63b4601c
	Checksum: 0x7908904B
	Offset: 0x1B98
	Size: 0x261
	Parameters: 0
	Flags: None
*/
function function_3f34106b()
{
	trigger::wait_till("sh_bridge_explosion", "targetname");
	var_d2d4d1ec = GetEntArray("sh_bridge_clean", "targetname");
	var_1c396b4f = struct::get("sh_missile_strike_start", "targetname");
	var_83e914f = struct::get("sh_missile_strike_end", "targetname");
	fx_model = util::spawn_model("tag_origin", var_1c396b4f.origin, var_1c396b4f.angles);
	fx_model FX::Play("fx_trail_missile_vista_veng", fx_model.origin, fx_model.angles, undefined, 1, "tag_origin", 1);
	fx_model moveto(var_83e914f.origin, 0.75);
	wait(0.75);
	playsoundatposition("evt_bridge_explosion", fx_model.origin);
	fx_model delete();
	exploder::exploder("sh_vista_bridge_explosion");
	exploder::exploder("sh_vista_bridge_fire");
	foreach(e_ent in var_d2d4d1ec)
	{
		e_ent delete();
	}
}

/*
	Name: function_936cf9d0
	Namespace: namespace_63b4601c
	Checksum: 0x5EC9884D
	Offset: 0x1E08
	Size: 0xD1
	Parameters: 0
	Flags: None
*/
function function_936cf9d0()
{
	var_d2d4d1ec = GetEntArray("sh_bridge_clean", "targetname");
	exploder::exploder("sh_vista_bridge_fire");
	foreach(e_ent in var_d2d4d1ec)
	{
		e_ent delete();
	}
}

/*
	Name: function_ef909043
	Namespace: namespace_63b4601c
	Checksum: 0x336FC9D0
	Offset: 0x1EE8
	Size: 0x1B9
	Parameters: 0
	Flags: None
*/
function function_ef909043()
{
	var_9c327190 = GetEntArray("sh_corner_clean", "targetname");
	var_a4ff1499 = GetEntArray("sh_corner_destroy", "targetname");
	foreach(e_ent in var_a4ff1499)
	{
		e_ent Hide();
	}
	trigger::wait_till("sh_corner_explosion", "targetname");
	exploder::exploder("sh_corner_plaza_explosion");
	wait(0.15);
	Array::delete_all(var_9c327190);
	foreach(e_ent in var_a4ff1499)
	{
		e_ent show();
	}
}

/*
	Name: function_6bd25628
	Namespace: namespace_63b4601c
	Checksum: 0x5C52210A
	Offset: 0x20B0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_6bd25628()
{
	var_9c327190 = GetEntArray("sh_corner_clean", "targetname");
	Array::delete_all(var_9c327190);
}

/*
	Name: refill_ammo
	Namespace: namespace_63b4601c
	Checksum: 0xFA6B0502
	Offset: 0x2100
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function refill_ammo()
{
	var_8ea4a872 = self GetWeaponsList();
	foreach(w_weapon in var_8ea4a872)
	{
		self giveMaxAmmo(w_weapon);
		self SetWeaponAmmoClip(w_weapon, w_weapon.clipSize);
	}
}

/*
	Name: function_8a63fd6b
	Namespace: namespace_63b4601c
	Checksum: 0x2383CE0B
	Offset: 0x21E8
	Size: 0x253
	Parameters: 7
	Flags: None
*/
function function_8a63fd6b(e_trigger, str_objective, var_ae801398, str_ender, var_65611d69, var_ca0e9b65, var_acbf687c)
{
	e_trigger endon("death");
	if(isdefined(str_ender))
	{
		level endon(str_ender);
	}
	level flag::wait_till("stealth_discovered");
	e_trigger TriggerEnable(0);
	if(isdefined(str_objective))
	{
		objectives::Hide(str_objective);
	}
	if(isdefined(var_ae801398))
	{
		objectives::Hide(var_ae801398);
	}
	if(isdefined(var_65611d69))
	{
		objectives::set(var_65611d69);
	}
	if(isdefined(var_ca0e9b65))
	{
		var_ca0e9b65 gameobjects::disable_object();
	}
	level flag::wait_till_clear("stealth_discovered");
	if(isdefined(var_ca0e9b65) && level.skipto_point === "temple")
	{
		level flag::clear("all_players_at_temple_exit");
		objectives::show("cp_level_vengeance_goto_dogleg_2");
		level flag::wait_till("all_players_at_temple_exit");
		objectives::Hide("cp_level_vengeance_goto_dogleg_2");
	}
	e_trigger TriggerEnable(1);
	if(isdefined(var_65611d69))
	{
		objectives::Hide(var_65611d69);
	}
	if(isdefined(str_objective))
	{
		objectives::show(str_objective);
	}
	if(isdefined(var_ae801398))
	{
		objectives::show(var_ae801398);
	}
	if(isdefined(var_ca0e9b65))
	{
		var_ca0e9b65 gameobjects::enable_object();
	}
}

/*
	Name: function_7c486b8c
	Namespace: namespace_63b4601c
	Checksum: 0x56DF57A1
	Offset: 0x2448
	Size: 0x35
	Parameters: 0
	Flags: None
*/
function function_7c486b8c()
{
	self endon("death");
	self waittillmatch("hash_d501c77c");
	self.var_d501c77c = 1;
	self.var_2d1c9600 = undefined;
}

/*
	Name: function_1095f52e
	Namespace: namespace_63b4601c
	Checksum: 0xF7CD391
	Offset: 0x2488
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1095f52e()
{
	self endon("death");
	self waittillmatch("hash_7bbfb522");
	self.var_2d1c9600 = 1;
}

/*
	Name: function_1ed65aa
	Namespace: namespace_63b4601c
	Checksum: 0x107E1685
	Offset: 0x24C0
	Size: 0x201
	Parameters: 1
	Flags: None
*/
function function_1ed65aa(a_objects)
{
	foreach(e_obj in a_objects)
	{
		if(!isdefined(e_obj))
		{
			continue;
		}
		e_obj thread function_7c486b8c();
		e_obj thread function_1095f52e();
	}
	self util::waittill_any("death");
	foreach(e_obj in a_objects)
	{
		if(!isdefined(e_obj))
		{
			continue;
		}
		if(isdefined(e_obj.var_d501c77c) && e_obj.var_d501c77c == 1)
		{
			continue;
		}
		if(isdefined(e_obj.var_2d1c9600) && e_obj.var_2d1c9600 == 1)
		{
			e_obj StopAnimScripted();
			e_obj PhysicsLaunch(e_obj.origin, VectorScale((0, 0, 1), 0.1));
			continue;
		}
		e_obj delete();
	}
}

/*
	Name: function_7122594d
	Namespace: namespace_63b4601c
	Checksum: 0x3F4E3A64
	Offset: 0x26D0
	Size: 0x209
	Parameters: 1
	Flags: None
*/
function function_7122594d(a_objects)
{
	foreach(e_obj in a_objects)
	{
		if(!isdefined(e_obj))
		{
			continue;
		}
		e_obj thread function_7c486b8c();
		e_obj thread function_1095f52e();
	}
	self util::waittill_any("death", "alert");
	foreach(e_obj in a_objects)
	{
		if(!isdefined(e_obj))
		{
			continue;
		}
		if(isdefined(e_obj.var_d501c77c) && e_obj.var_d501c77c == 1)
		{
			continue;
		}
		if(isdefined(e_obj.var_2d1c9600) && e_obj.var_2d1c9600 == 1)
		{
			e_obj StopAnimScripted();
			e_obj PhysicsLaunch(e_obj.origin, VectorScale((0, 0, 1), 0.1));
			continue;
		}
		e_obj delete();
	}
}

/*
	Name: function_57b69bd6
	Namespace: namespace_63b4601c
	Checksum: 0x5C257548
	Offset: 0x28E8
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_57b69bd6(object, var_f0dc1d6d, var_a202d840)
{
	self util::waittill_any("alert", "death", "fake_alert");
	object Unlink();
	if(isdefined(var_f0dc1d6d))
	{
		wait(0.05);
	}
	object PhysicsLaunch(object.origin, VectorScale((0, 0, 1), 0.1));
}

/*
	Name: function_394ba9b5
	Namespace: namespace_63b4601c
	Checksum: 0xBFD95369
	Offset: 0x29A8
	Size: 0x4B
	Parameters: 1
	Flags: None
*/
function function_394ba9b5(var_1ea83c75)
{
	self util::waittill_any("death", "alert");
	if(isdefined(var_1ea83c75))
	{
		var_1ea83c75 notify("hash_da6a4775");
	}
}

/*
	Name: function_d468b73d
	Namespace: namespace_63b4601c
	Checksum: 0x1267E359
	Offset: 0x2A00
	Size: 0xA9
	Parameters: 3
	Flags: None
*/
function function_d468b73d(var_3390909e, a_ents, var_36ebf819)
{
	self waittill(var_3390909e);
	foreach(ent in a_ents)
	{
		if(isdefined(ent))
		{
			ent notify(var_36ebf819);
		}
	}
}

/*
	Name: function_8ffbd7bf
	Namespace: namespace_63b4601c
	Checksum: 0x69907A22
	Offset: 0x2AB8
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_8ffbd7bf()
{
	self endon("death");
	while(1)
	{
		self waittill("alert", State);
		if(isdefined(State) && State == "combat")
		{
			self ai::set_ignoreme(0);
			break;
		}
	}
}

/*
	Name: function_75790dfc
	Namespace: namespace_63b4601c
	Checksum: 0xEEA42212
	Offset: 0x2B30
	Size: 0x575
	Parameters: 1
	Flags: None
*/
function function_75790dfc(str_objective)
{
	self endon("death");
	self notify("end_movement_thread");
	self endon("end_movement_thread");
	self endon("alert");
	self thread function_8ffbd7bf();
	constMinSearchRadius = 120;
	constMaxSearchRadius = 800;
	minSearchRadius = math::clamp(constMinSearchRadius, 0, self.goalRadius);
	maxSearchRadius = math::clamp(constMaxSearchRadius, constMinSearchRadius, self.goalRadius);
	halfHeight = 400;
	innerSpacing = 80;
	outerSpacing = 50;
	maxGoalTimeout = 10;
	timeAtSamePosition = 2.5 + RandomFloat(1);
	while(1)
	{
		target = Array::random(level.var_e418a31d);
		var_4b68b086 = self.origin[2] - target.origin[2] / 2;
		origin = target.origin + (0, 0, var_4b68b086);
		queryResult = PositionQuery_Source_Navigation(origin, minSearchRadius, maxSearchRadius, halfHeight, innerSpacing, self, outerSpacing);
		PositionQuery_Filter_DistanceToGoal(queryResult, self);
		vehicle_ai::PositionQuery_Filter_OutOfGoalAnchor(queryResult);
		vehicle_ai::PositionQuery_Filter_Random(queryResult, 0, 10);
		vehicle_ai::PositionQuery_PostProcess_SortScore(queryResult);
		stayAtGoal = timeAtSamePosition > 0.2;
		foundpath = 0;
		for(i = 0; i < queryResult.data.size && !foundpath; i++)
		{
			goalpos = queryResult.data[i].origin;
			foundpath = self SetVehGoalPos(goalpos, stayAtGoal, 1);
		}
		if(foundpath)
		{
			self SetLookAtEnt(target);
			self SetTurretTargetEnt(target);
			msg = self util::waittill_any_timeout(maxGoalTimeout, "near_goal", "force_goal", "reached_end_node", "goal");
			if(stayAtGoal)
			{
				if(isdefined(target.script_noteworthy) && target.script_noteworthy == "scan_location")
				{
					target.var_9ff2970a = GetEnt(target.target, "targetname");
					self hunter_frontScanning(target.var_9ff2970a);
				}
				else if(math::cointoss())
				{
					level.var_93287d84 = ArraySortClosest(level.var_93287d84, self.origin, 999, 512);
					if(isdefined(level.var_93287d84[0]))
					{
						self function_120671d3(level.var_93287d84[0]);
					}
				}
				else
				{
					level.var_93287d84 = ArraySortClosest(level.var_93287d84, self.origin, 999, 512);
					if(isdefined(level.var_93287d84[0]))
					{
						self function_6a382ad5(level.var_93287d84[0]);
					}
				}
				wait(RandomFloatRange(0.5 * timeAtSamePosition, timeAtSamePosition));
			}
		}
		else
		{
			self ClearTurretTarget();
			self ClearLookAtEnt();
			wait(1);
		}
	}
}

/*
	Name: function_120671d3
	Namespace: namespace_63b4601c
	Checksum: 0x38F68707
	Offset: 0x30B0
	Size: 0x16B
	Parameters: 1
	Flags: None
*/
function function_120671d3(target)
{
	self endon("death");
	self endon("change_state");
	self endon("end_attack_thread");
	self endon("alert");
	self SetLookAtEnt(target);
	self SetTurretTargetEnt(target);
	self util::waittill_any_timeout(2, "turret_on_target");
	fire_time = 1.5 + RandomFloat(0.5);
	self vehicle_ai::fire_for_time(fire_time);
	wait(1);
	if(math::cointoss())
	{
		fire_time = 1.5 + RandomFloat(0.5);
		self vehicle_ai::fire_for_time(fire_time);
		wait(1);
	}
	self ClearTurretTarget();
	self ClearLookAtEnt();
}

/*
	Name: function_6a382ad5
	Namespace: namespace_63b4601c
	Checksum: 0x646768A0
	Offset: 0x3228
	Size: 0x1E3
	Parameters: 1
	Flags: None
*/
function function_6a382ad5(target)
{
	self endon("death");
	self endon("change_state");
	self endon("end_attack_thread");
	self endon("alert");
	self SetLookAtEnt(target);
	self SetTurretTargetEnt(target);
	self util::waittill_any_timeout(2, "turret_on_target");
	self hunter::hunter_lockon_fx();
	wait(1);
	randomRange = 20;
	offset = [];
	for(i = 0; i < 2; i++)
	{
		offset[i] = (RandomFloatRange(randomRange * -1, randomRange), RandomFloatRange(randomRange * -1, randomRange), RandomFloatRange(randomRange * -1, randomRange));
	}
	self hunter::hunter_fire_one_missile(0, target, offset[0], 1, 0.8);
	wait(0.25);
	self hunter::hunter_fire_one_missile(1, target, offset[1]);
	wait(1);
	self ClearLookAtEnt();
}

/*
	Name: hunter_scanner_init
	Namespace: namespace_63b4601c
	Checksum: 0xAF69426E
	Offset: 0x3418
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function hunter_scanner_init()
{
	self.frontScanner = spawn("script_model", self GetTagOrigin("tag_aim"));
	self.frontScanner SetModel("tag_origin");
	self.frontScanner.angles = self GetTagAngles("tag_aim");
	self.frontScanner LinkTo(self, "tag_aim");
	self.frontScanner.owner = self;
	self.frontScanner.hasTargetEnt = 0;
	self.frontScanner.sndScanningEnt = spawn("script_origin", self.frontScanner.origin + AnglesToForward(self.angles) * 1000);
	self.frontScanner.sndScanningEnt LinkTo(self.frontScanner);
}

/*
	Name: function_45f7a75b
	Namespace: namespace_63b4601c
	Checksum: 0xA11EFA14
	Offset: 0x3580
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_45f7a75b()
{
	self hunter_scanner_ClearLookTarget();
	if(isdefined(self.frontScanner))
	{
		if(isdefined(self.frontScanner.sndScanningEnt))
		{
			self.frontScanner.sndScanningEnt delete();
		}
		self.frontScanner delete();
	}
}

/*
	Name: hunter_scanner_SetTargetEntity
	Namespace: namespace_63b4601c
	Checksum: 0x3F38BD3C
	Offset: 0x3600
	Size: 0x8B
	Parameters: 2
	Flags: None
*/
function hunter_scanner_SetTargetEntity(targetEnt, offset)
{
	if(!isdefined(offset))
	{
		offset = (0, 0, 0);
	}
	if(isdefined(targetEnt))
	{
		self.frontScanner.targetEnt = targetEnt;
		self.frontScanner.hasTargetEnt = 1;
		self setGunnerTargetEnt(self.frontScanner.targetEnt, offset, 2);
	}
}

/*
	Name: hunter_scanner_ClearLookTarget
	Namespace: namespace_63b4601c
	Checksum: 0xCDC66893
	Offset: 0x3698
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function hunter_scanner_ClearLookTarget()
{
	self.frontScanner.hasTargetEnt = 0;
	self cleargunnertarget(2);
}

/*
	Name: hunter_scanner_SetTargetPosition
	Namespace: namespace_63b4601c
	Checksum: 0xF479D6CF
	Offset: 0x36D8
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function hunter_scanner_SetTargetPosition(targetPos)
{
	if(isdefined(targetPos))
	{
		self.frontScanner.targetPos = targetPos;
		self SetGunnerTargetVec(self.frontScanner.targetPos, 2);
	}
}

/*
	Name: is_point_in_view
	Namespace: namespace_63b4601c
	Checksum: 0xE56240B8
	Offset: 0x3738
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function is_point_in_view(point, do_trace)
{
	if(!isdefined(point))
	{
		return 0;
	}
	scanner = self.frontScanner;
	vector_to_point = point - scanner.origin;
	in_view = LengthSquared(vector_to_point) <= 1024 * 1024;
	if(in_view)
	{
		in_view = util::within_fov(scanner.origin, scanner.angles, point, cos(35));
	}
	if(in_view && (isdefined(do_trace) && do_trace) && isdefined(self.enemy))
	{
		in_view = SightTracePassed(scanner.origin, point, 0, self.enemy);
	}
	return in_view;
}

/*
	Name: is_valid_target
	Namespace: namespace_63b4601c
	Checksum: 0x6B36B447
	Offset: 0x3878
	Size: 0x103
	Parameters: 2
	Flags: None
*/
function is_valid_target(target, do_trace)
{
	target_is_valid = 1;
	if(isdefined(target.ignoreme) && target.ignoreme || target.health <= 0)
	{
		target_is_valid = 0;
	}
	else if(IsSentient(target) && (target IsNoTarget() || target ai::is_dead_sentient()))
	{
		target_is_valid = 0;
	}
	else if(isdefined(target.origin) && !is_point_in_view(target.origin, do_trace))
	{
		target_is_valid = 0;
	}
	return target_is_valid;
}

/*
	Name: get_enemies_in_view
	Namespace: namespace_63b4601c
	Checksum: 0xE7D1DBC2
	Offset: 0x3988
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function get_enemies_in_view(do_trace)
{
	validEnemyArray = [];
	enemyArray = getEnemyArray(1, 1);
	foreach(enemy in enemyArray)
	{
		if(is_valid_target(enemy, do_trace))
		{
			if(!isdefined(validEnemyArray))
			{
				validEnemyArray = [];
			}
			else if(!IsArray(validEnemyArray))
			{
				validEnemyArray = Array(validEnemyArray);
			}
			validEnemyArray[validEnemyArray.size] = enemy;
		}
	}
	return validEnemyArray;
}

/*
	Name: getEnemyArray
	Namespace: namespace_63b4601c
	Checksum: 0xE4156B1D
	Offset: 0x3AC0
	Size: 0xEB
	Parameters: 2
	Flags: None
*/
function getEnemyArray(include_ai, include_player)
{
	enemyArray = [];
	enemy_team = "allies";
	if(isdefined(include_ai) && include_ai)
	{
		aiArray = GetAITeamArray(enemy_team);
		enemyArray = ArrayCombine(enemyArray, aiArray, 0, 0);
	}
	if(isdefined(include_player) && include_player)
	{
		playerArray = GetPlayers(enemy_team);
		enemyArray = ArrayCombine(enemyArray, playerArray, 0, 0);
	}
	return enemyArray;
}

/*
	Name: hunter_frontScanning
	Namespace: namespace_63b4601c
	Checksum: 0x265F9972
	Offset: 0x3BB8
	Size: 0x283
	Parameters: 1
	Flags: None
*/
function hunter_frontScanning(scanEnt)
{
	self endon("death_shut_off");
	self endon("crash_done");
	self endon("death");
	self endon("end_movement_thread");
	self endon("alert");
	self hunter_scanner_init();
	var_c04ea392 = 0;
	var_161ae6a0 = 6;
	while(var_c04ea392 < var_161ae6a0)
	{
		if(!isdefined(self.enemy))
		{
			self.frontScanner.sndScanningEnt PlayLoopSound("veh_hunter_scanner_loop", 1);
			/#
				line(self GetTagOrigin("Dev Block strings are not supported"), scanEnt.origin, (0, 1, 0), 1, 3);
			#/
			offset = scanEnt.origin + (RandomFloatRange(0, 40), RandomFloatRange(0, 40), RandomFloatRange(0, 40));
			enemies = get_enemies_in_view(1);
			if(enemies.size > 0)
			{
				closest_enemy = ArrayGetClosest(self.origin, enemies);
				self.favoriteenemy = closest_enemy;
			}
		}
		else if(self hunter::is_point_in_view(self.enemy.origin, 1))
		{
			self notify("hunter_lockOnTargetInSight");
		}
		else
		{
			self notify("hunter_lockOnTargetOutSight");
		}
		self.frontScanner.sndScanningEnt StopLoopSound(1);
		wait(0.1);
		var_c04ea392 = var_c04ea392 + 0.1;
	}
	self function_45f7a75b();
}

/*
	Name: function_ab876b5a
	Namespace: namespace_63b4601c
	Checksum: 0x4AB7DA98
	Offset: 0x3E48
	Size: 0x8F
	Parameters: 3
	Flags: None
*/
function function_ab876b5a(video, start_notify, end_notify)
{
	level endon("hash_92bd0e81");
	while(1)
	{
		level waittill(start_notify);
		function_4a0fb95e(video);
		wait(3);
		function_acdfe1fe(video, 1);
		level waittill(end_notify);
		function_4a0fb95e(video);
	}
}

/*
	Name: function_cc6f3598
	Namespace: namespace_63b4601c
	Checksum: 0x8BBDEBA4
	Offset: 0x3EE0
	Size: 0x7B
	Parameters: 0
	Flags: None
*/
function function_cc6f3598()
{
	trigger::wait_till("temple_video");
	function_4a0fb95e("cp_vengeance_env_sign_dragon01");
	wait(1);
	function_acdfe1fe("cp_vengeance_env_sign_dragon01", 1);
	level waittill("hash_42cabc57");
	function_4a0fb95e("cp_vengeance_env_sign_dragon01");
}

/*
	Name: function_5dbf4126
	Namespace: namespace_63b4601c
	Checksum: 0xEC1110D6
	Offset: 0x3F68
	Size: 0x73
	Parameters: 0
	Flags: None
*/
function function_5dbf4126()
{
	function_4a0fb95e("cp_vengeance_env_sign_parking01");
	wait(1);
	function_acdfe1fe("cp_vengeance_env_sign_parking01", 1);
	level flag::wait_till("plaza_cleared");
	function_4a0fb95e("cp_vengeance_env_sign_parking01");
}

/*
	Name: function_6bdeeb80
	Namespace: namespace_63b4601c
	Checksum: 0xA1B1902C
	Offset: 0x3FE8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_6bdeeb80()
{
	a_players = [];
	if(isdefined(level.stealth.seek))
	{
		foreach(ent in level.stealth.seek)
		{
			if(isPlayer(ent))
			{
				if(!isdefined(a_players))
				{
					a_players = [];
				}
				else if(!IsArray(a_players))
				{
					a_players = Array(a_players);
				}
				a_players[a_players.size] = ent;
			}
		}
	}
	return a_players.size >= 1;
}

/*
	Name: function_76bdbf62
	Namespace: namespace_63b4601c
	Checksum: 0xD0DA7AE9
	Offset: 0x4118
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_76bdbf62()
{
	self endon("death");
	self.team = "allies";
	self.Civilian = 1;
	self ai::set_ignoreme(1);
	self ai::set_ignoreall(1);
	self ai::set_behavior_attribute("panic", 0);
	self.health = 1;
	if(isdefined(self.script_linkto))
	{
		trigger = GetEnt(self.script_linkto, "script_linkname");
		if(isdefined(trigger))
		{
			trigger::wait_till(trigger);
		}
	}
	self ai::set_ignoreme(0);
	self ai::set_ignoreall(0);
	if(isdefined(self.target))
	{
		node = GetNode(self.target, "targetname");
		self SetGoal(node, 0, node.radius);
	}
	self ai::set_behavior_attribute("panic", 1);
}

/*
	Name: function_3d5f97bd
	Namespace: namespace_63b4601c
	Checksum: 0x747E36B5
	Offset: 0x42B8
	Size: 0x183
	Parameters: 4
	Flags: None
*/
function function_3d5f97bd(node, should_die, var_37730a64, Distance)
{
	self endon("death");
	self ClearForcedGoal();
	self ClearGoalVolume();
	self.goalRadius = 32;
	self SetGoal(node.origin, 1);
	if(isdefined(var_37730a64) && var_37730a64 == 1)
	{
		result = self util::waittill_any("goal", "near_goal", "bad_path");
	}
	else
	{
		result = self util::waittill_any_timeout(15, "goal", "near_goal", "bad_path");
	}
	if(isdefined(result) && (result == "goal" || result == "near_goal"))
	{
		function_307b1179(self, should_die, Distance);
	}
	else
	{
		function_307b1179(self, undefined, Distance);
	}
}

/*
	Name: function_307b1179
	Namespace: namespace_63b4601c
	Checksum: 0xA6213E48
	Offset: 0x4448
	Size: 0x83
	Parameters: 3
	Flags: None
*/
function function_307b1179(ai, should_die, Distance)
{
	if(isdefined(should_die) && should_die)
	{
		ai kill();
	}
	else
	{
		a_ai = Array(ai);
		level thread function_ff5f379(a_ai, Distance);
	}
}

/*
	Name: function_ff5f379
	Namespace: namespace_63b4601c
	Checksum: 0xB750100B
	Offset: 0x44D8
	Size: 0x1DF
	Parameters: 2
	Flags: None
*/
function function_ff5f379(a_ai, n_dist)
{
	if(!isdefined(a_ai))
	{
		return;
	}
	var_e52b590a = 0.75;
	if(!isdefined(n_dist))
	{
		n_dist = 512;
	}
	while(a_ai.size > 0)
	{
		for(i = 0; i < a_ai.size; i++)
		{
			if(!isdefined(a_ai[i]) || !isalive(a_ai[i]))
			{
				ArrayRemoveValue(a_ai, a_ai[i]);
				continue;
			}
			if(function_719f06a1(n_dist, a_ai[i].origin))
			{
				continue;
			}
			if(function_8c6350db(a_ai[i].origin + VectorScale((0, 0, 1), 48), var_e52b590a, 1))
			{
				continue;
			}
			if(!(isdefined(a_ai[i].allowdeath) && a_ai[i].allowdeath))
			{
				a_ai[i] util::stop_magic_bullet_shield();
			}
			a_ai[i] delete();
			ArrayRemoveValue(a_ai, a_ai[i]);
		}
		wait(1);
	}
}

/*
	Name: function_719f06a1
	Namespace: namespace_63b4601c
	Checksum: 0xB7A01CF8
	Offset: 0x46C0
	Size: 0x95
	Parameters: 2
	Flags: None
*/
function function_719f06a1(n_dist, v_org)
{
	n_dist_squared = n_dist * n_dist;
	for(i = 0; i < level.players.size; i++)
	{
		if(DistanceSquared(v_org, level.players[i].origin) < n_dist_squared)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_8c6350db
	Namespace: namespace_63b4601c
	Checksum: 0x582F5697
	Offset: 0x4760
	Size: 0x87
	Parameters: 4
	Flags: None
*/
function function_8c6350db(v_org, n_dot, var_2cd7fdc6, e_ignore)
{
	for(i = 0; i < level.players.size; i++)
	{
		if(level.players[i] util::is_player_looking_at(v_org, n_dot, var_2cd7fdc6, e_ignore))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_80840124
	Namespace: namespace_63b4601c
	Checksum: 0x2F0C6FDF
	Offset: 0x47F0
	Size: 0x19F
	Parameters: 1
	Flags: None
*/
function function_80840124(var_f5d7a3f)
{
	level notify("hash_bab8795");
	level endon("hash_bab8795");
	var_17994622 = GetAITeamArray("axis");
	var_60aeac6b = [];
	var_60aeac6b[0] = "hend_damn_they_re_onto_u_1";
	var_60aeac6b[1] = "hend_damn_they_know_we_r_0";
	var_60aeac6b[2] = "hend_shit_go_hot_they_r_0";
	line = Array::random(var_60aeac6b);
	level function_ee75acde(line);
	if(isdefined(var_f5d7a3f))
	{
		[[var_f5d7a3f]]();
	}
	wait(3);
	while(1)
	{
		if(level flag::get("combat_enemies_retreating"))
		{
			level flag::clear("combat_enemies_retreating");
			break;
		}
		guys_left = GetAITeamArray("axis");
		util::wait_endon(RandomFloatRange(15, 20), "combat_enemies_retreating");
	}
}

/*
	Name: function_ee78c834
	Namespace: namespace_63b4601c
	Checksum: 0xCD2535C7
	Offset: 0x4998
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_ee78c834()
{
	while(1)
	{
		if(isdefined(self.crashing) && self.crashing == 1)
		{
			level notify("hash_fec3c49");
			break;
		}
		wait(1);
	}
}

/*
	Name: function_12a1b6a0
	Namespace: namespace_63b4601c
	Checksum: 0x844CAA8E
	Offset: 0x49E8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_12a1b6a0()
{
	self endon("death");
	self endon("disconnect");
	weap = GetWeapon("ar_marksman_veng_hero_weap");
	while(1)
	{
		if(self GetCurrentWeapon() == weap)
		{
			break;
		}
		wait(0.05);
	}
	self waittill("weapon_change_complete", w_current);
	self thread function_51caee84("dogleg_1_end");
}

/*
	Name: function_51caee84
	Namespace: namespace_63b4601c
	Checksum: 0xDA269CCD
	Offset: 0x4AA0
	Size: 0xF3
	Parameters: 1
	Flags: None
*/
function function_51caee84(endon_flag)
{
	self endon("death");
	self endon("disconnect");
	level endon("hash_8a3b89d3");
	if(isdefined(endon_flag))
	{
		level endon(endon_flag);
	}
	weap = GetWeapon("ar_marksman_veng_hero_weap");
	if(self GetCurrentWeapon() == weap)
	{
		while(1)
		{
			self waittill("weapon_change_complete", w_current);
			if(w_current == weap)
			{
				continue;
			}
			if(w_current != weap)
			{
				break;
			}
		}
	}
	self thread util::show_hint_text(&"COOP_EQUIP_SHEIVASSW", undefined, undefined, 4);
}

/*
	Name: function_b9785164
	Namespace: namespace_63b4601c
	Checksum: 0x5EF50BBE
	Offset: 0x4BA0
	Size: 0x79
	Parameters: 0
	Flags: None
*/
function function_b9785164()
{
	self endon("disconnect");
	while(isdefined(self))
	{
		self waittill("weapon_change_complete", w_current);
		if(w_current.name == "launcher_standard")
		{
			self thread take_hero_weapon();
			self notify("hash_b8804640");
			break;
		}
	}
}

/*
	Name: give_hero_weapon
	Namespace: namespace_63b4601c
	Checksum: 0xBC849D36
	Offset: 0x4C28
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function give_hero_weapon(var_75ab460c)
{
	weap = GetWeapon("ar_marksman_veng_hero_weap");
	if(!self HasWeapon(weap))
	{
		self GiveWeapon(weap);
	}
	if(isdefined(var_75ab460c) && var_75ab460c)
	{
		self SwitchToWeapon(weap);
	}
}

/*
	Name: take_hero_weapon
	Namespace: namespace_63b4601c
	Checksum: 0x2FA6EA8A
	Offset: 0x4CC0
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function take_hero_weapon()
{
	weap = GetWeapon("ar_marksman_veng_hero_weap");
	if(self HasWeapon(weap))
	{
		self TakeWeapon(weap);
	}
}

/*
	Name: function_bce5a9e
	Namespace: namespace_63b4601c
	Checksum: 0x106AD288
	Offset: 0x4D28
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_bce5a9e()
{
	self ai::set_ignoreall(1);
	self ai::set_ignoreme(1);
	self.var_fb7ce72a = &function_a7507be6;
	level waittill("ClonedEntity", var_52b4a338, var_5ed0c283);
	if(var_52b4a338.targetname === "remote_snipers_ai")
	{
		var_52b4a338.owner thread function_749b8ef8();
	}
}

/*
	Name: function_a7507be6
	Namespace: namespace_63b4601c
	Checksum: 0xF7EDD040
	Offset: 0x4DE0
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_a7507be6(player, weapon)
{
	if(IsSubStr(weapon.name, "hijack"))
	{
		return 1;
	}
}

/*
	Name: function_749b8ef8
	Namespace: namespace_63b4601c
	Checksum: 0xA00ECA32
	Offset: 0x4E30
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_749b8ef8()
{
	self endon("disconnect");
	self endon("death");
	self thread function_80d50798();
	self AllowAds(1);
	wait(1);
	self clientfield::set_to_player("enemy_highlight", 1);
	while(self IsInVehicle())
	{
		wait(0.05);
	}
	self clientfield::set_to_player("enemy_highlight", 0);
}

/*
	Name: function_f4c1160
	Namespace: namespace_63b4601c
	Checksum: 0x9AA06D9C
	Offset: 0x4EF0
	Size: 0x3DB
	Parameters: 1
	Flags: None
*/
function function_f4c1160(var_8c0019d7)
{
	self endon("disconnect");
	self endon("death");
	if(!isVehicle(var_8c0019d7))
	{
		return;
	}
	if(isdefined(self.var_3a92cc8f))
	{
		return;
	}
	self thread function_bf611bcc(&"CP_MI_SING_VENGEANCE_ACTIVATING_REMOTE_SNIPER", 2.5);
	self thread function_7a768ec("hijack_static_effect", 0, 1, 2);
	wait(2.5);
	var_8c0019d7.ignoreme = 1;
	var_d229c1e9 = spawnstruct();
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "begin");
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "cloak");
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "cloak_wait");
	self.var_3a92cc8f = self.origin;
	self.var_5b921246 = self getPlayerAngles();
	self SetOrigin(var_8c0019d7.origin);
	self SetPlayerAngles(var_8c0019d7 GetTagAngles("tag_flash"));
	self thread function_7a768ec("hijack_static_effect", 1, 0, 1.5);
	wait(0.05);
	var_8c0019d7 usevehicle(self, 0);
	var_8c0019d7 function_2821bb42(0);
	self thread function_c7ca0bfb();
	self thread function_80d50798();
	self AllowAds(1);
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "return_wait");
	if(self.var_39b8096c)
	{
		var_8c0019d7 usevehicle(self, 0);
	}
	self clientfield::set_to_player("enemy_highlight", 0);
	var_8c0019d7 function_2821bb42(1);
	self SetOrigin(self.var_3a92cc8f);
	self SetPlayerAngles(self.var_5b921246);
	self.var_3a92cc8f = undefined;
	self.var_5b921246 = undefined;
	self.var_a71359f0 = undefined;
	self thread namespace_7cb6cd95::function_13f4170a(2);
	self thread function_7a768ec("hijack_static_effect", 0, 0, 0);
	self namespace_7cb6cd95::function_dc86efaa(var_d229c1e9, "finish");
	wait(0.05);
	visionset_mgr::deactivate("visionset", "hijack_vehicle", self);
	visionset_mgr::deactivate("visionset", "hijack_vehicle_blur", self);
}

/*
	Name: function_7a768ec
	Namespace: namespace_63b4601c
	Checksum: 0x3B694752
	Offset: 0x52D8
	Size: 0x19B
	Parameters: 4
	Flags: None
*/
function function_7a768ec(fieldName, var_b67bfdce, var_2fcd0a39, timeSeconds)
{
	/#
		Assert(isPlayer(self));
	#/
	self notify("sniper_roost_trans_cf_" + fieldName);
	self endon("sniper_roost_trans_cf_" + fieldName);
	self endon("disconnect");
	self endon("death");
	timeMS = float(timeSeconds * 1000);
	start = GetTime();
	durationMs = 0;
	var_b67bfdce = float(var_b67bfdce);
	var_2fcd0a39 = float(var_2fcd0a39);
	while(durationMs <= timeMS)
	{
		value = var_2fcd0a39;
		if(durationMs < timeMS)
		{
			value = var_b67bfdce + var_2fcd0a39 - var_b67bfdce * durationMs / timeMS;
		}
		self clientfield::set_to_player(fieldName, value);
		wait(0.05);
		durationMs = float(GetTime() - start);
	}
}

/*
	Name: function_bf611bcc
	Namespace: namespace_63b4601c
	Checksum: 0x657420A6
	Offset: 0x5480
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function function_bf611bcc(msg, duration)
{
	self notify("hash_bf611bcc");
	self endon("hash_bf611bcc");
	self endon("disconnect");
	notifyData = spawnstruct();
	notifyData.notifyText2 = msg;
	notifyData.duration = duration;
	self hud_message::notifyMessage(notifyData);
	wait(duration);
	self hud_message::resetNotify();
}

/*
	Name: function_c7ca0bfb
	Namespace: namespace_63b4601c
	Checksum: 0x60B2C737
	Offset: 0x5540
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_c7ca0bfb()
{
	self endon("disconnect");
	self.var_39b8096c = 0;
	endTime = GetTime() + 45000;
	while(isdefined(self.usingvehicle) && self.usingvehicle && !self.var_39b8096c)
	{
		self clientfield::set_to_player("enemy_highlight", 1);
		wait(0.05);
		self.var_39b8096c = isdefined(self.usingvehicle) && self.usingvehicle && GetTime() > endTime;
		if(endTime - GetTime() < 3000)
		{
			self notify("hash_4efa2e41");
			if(!(isdefined(self.var_a71359f0) && self.var_a71359f0))
			{
				self.var_a71359f0 = 1;
				self thread function_7a768ec("hijack_static_effect", 0, 1, 2);
			}
		}
	}
	self notify("hash_c68b15c8");
}

/*
	Name: function_80d50798
	Namespace: namespace_63b4601c
	Checksum: 0x7A47C2CE
	Offset: 0x5670
	Size: 0x1DF
	Parameters: 0
	Flags: None
*/
function function_80d50798()
{
	self endon("hash_c68b15c8");
	self endon("death");
	self endon("disconnect");
	while(1)
	{
		self waittill("hash_c56ba9f7", victim, sMeansOfDeath, weapon);
		if(IsActor(victim))
		{
			if(RandomFloat(100) > 50)
			{
				GibServerUtils::GibHead(victim);
			}
			if(RandomFloat(100) > 50)
			{
				GibServerUtils::GibLeftLeg(victim);
			}
			if(RandomFloat(100) > 50)
			{
				GibServerUtils::GibRightLeg(victim);
			}
			if(RandomFloat(100) > 50)
			{
				GibServerUtils::GibLeftArm(victim);
			}
			else
			{
				GibServerUtils::GibRightArm(victim);
			}
		}
		if(IsActor(victim))
		{
			var_30f3afa7 = victim.origin - VectorScale((0, 0, 1), 50);
			wait(0.05);
			PhysicsExplosionSphere(var_30f3afa7, 100, 10, 5000);
		}
	}
}

/*
	Name: function_2821bb42
	Namespace: namespace_63b4601c
	Checksum: 0x32D4D2C3
	Offset: 0x5858
	Size: 0x181
	Parameters: 1
	Flags: None
*/
function function_2821bb42(visible)
{
	var_6e89a7da = [];
	var_6e89a7da[var_6e89a7da.size] = "tag_turret";
	var_6e89a7da[var_6e89a7da.size] = "tag_turret_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_barrel";
	var_6e89a7da[var_6e89a7da.size] = "tag_barrel_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_sensor_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_ammo_belt_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_ammo_can_animate";
	var_6e89a7da[var_6e89a7da.size] = "tag_barrel_spin";
	var_6e89a7da[var_6e89a7da.size] = "tag_barrel_spin_animate";
	foreach(part in var_6e89a7da)
	{
		if(visible)
		{
			self ShowPart(part);
			continue;
		}
		self HidePart(part);
	}
}

/*
	Name: function_5a886ae0
	Namespace: namespace_63b4601c
	Checksum: 0x437F9949
	Offset: 0x59E8
	Size: 0x2EF
	Parameters: 0
	Flags: None
*/
function function_5a886ae0()
{
	self endon("death");
	self notify("hash_90a20e6d");
	self endon("hash_90a20e6d");
	while(1)
	{
		a_ai = [];
		var_dea76e58 = GetAITeamArray("axis");
		foreach(ai in var_dea76e58)
		{
			if(!isdefined(ai))
			{
				continue;
			}
			if(!isalive(ai))
			{
				continue;
			}
			if(isVehicle(ai))
			{
				continue;
			}
			if(stealth::function_437e9eec(ai))
			{
				continue;
			}
			if(!isdefined(a_ai))
			{
				a_ai = [];
			}
			else if(!IsArray(a_ai))
			{
				a_ai = Array(a_ai);
			}
			a_ai[a_ai.size] = ai;
		}
		if(isdefined(a_ai) && a_ai.size > 0)
		{
			a_ai = ArraySortClosest(a_ai, self.origin, 2, 64, 800);
			if(isdefined(a_ai) && a_ai.size > 0)
			{
				switch(RandomInt(4))
				{
					case 0:
					{
						self thread cybercom::function_d240e350("cybercom_fireflyswarm", a_ai);
						break;
					}
					case 1:
					{
						self thread cybercom::function_d240e350("cybercom_concussive");
						break;
					}
					case 2:
					{
						self thread cybercom::function_d240e350("cybercom_systemoverload", a_ai);
						break;
					}
					case 3:
					{
						self thread cybercom::function_d240e350("cybercom_servoshortout", a_ai);
						break;
					}
				}
				wait(RandomFloatRange(20, 30));
			}
		}
		wait(2);
	}
}

/*
	Name: function_e6399870
	Namespace: namespace_63b4601c
	Checksum: 0x1FACDE79
	Offset: 0x5CE0
	Size: 0x101
	Parameters: 3
	Flags: None
*/
function function_e6399870(str_value, str_key, var_6971862e)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	/#
		Assert(isdefined(var_6971862e));
	#/
	triggers = GetEntArray(str_value, str_key);
	foreach(trigger in triggers)
	{
		trigger thread function_b88d5e7(var_6971862e);
	}
}

/*
	Name: function_b88d5e7
	Namespace: namespace_63b4601c
	Checksum: 0xFB4CD404
	Offset: 0x5DF0
	Size: 0x419
	Parameters: 1
	Flags: None
*/
function function_b88d5e7(var_6971862e)
{
	targets = undefined;
	if(isdefined(self.target))
	{
		targets = struct::get_array(self.target, "targetname");
	}
	if(!isdefined(targets) && isdefined(self.target))
	{
		targets = GetEntArray(self.target, "targetname");
	}
	if(!isdefined(targets) || targets.size == 0)
	{
		/#
			IPrintLnBold("Dev Block strings are not supported" + self.origin);
		#/
		return;
	}
	while(1)
	{
		self waittill("trigger", player);
		if(!isPlayer(player))
		{
			continue;
		}
		while(targets.size > 0)
		{
			aiArray = GetAITeamArray("axis");
			aiArray = ArraySortClosest(aiArray, self.origin, 64, 0, 1000);
			foreach(ai in aiArray)
			{
				if(targets.size <= 0)
				{
					break;
				}
				if(!isdefined(ai) || !IsActor(ai) || !isalive(ai))
				{
					break;
				}
				if(!(isdefined(ai.archetype) && (ai.archetype == "human" || ai.archetype == "human_riotshield" || ai.archetype == "human_rpg" || ai.archetype == "civilian")))
				{
					break;
				}
				if(isdefined(ai.var_25ce4365))
				{
					break;
				}
				if(ai istouching(self))
				{
					break;
				}
				foreach(var_daf22616 in targets)
				{
					if(!isdefined(ai) || !IsActor(ai) || !isalive(ai))
					{
						break;
					}
					molotov = ai function_25ce4365(var_daf22616.origin);
					if(isdefined(molotov))
					{
						var_daf22616 thread function_9856bfc7(molotov);
						targets[index] = undefined;
						break;
					}
				}
			}
			if(targets.size > 0)
			{
				wait(1);
			}
		}
	}
}

/*
	Name: function_9856bfc7
	Namespace: namespace_63b4601c
	Checksum: 0xF1320DEF
	Offset: 0x6218
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_9856bfc7(molotov)
{
	molotov waittill("death");
	if(isdefined(self.script_parameters))
	{
		exploder::exploder(self.script_parameters);
	}
}

/*
	Name: function_c7b05b81
	Namespace: namespace_63b4601c
	Checksum: 0x6A525560
	Offset: 0x6268
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_c7b05b81(var_6971862e)
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", player);
		if(!isPlayer(player))
		{
			continue;
		}
		player thread function_18538df(self, var_6971862e);
	}
}

/*
	Name: function_18538df
	Namespace: namespace_63b4601c
	Checksum: 0xEBA167C5
	Offset: 0x62E0
	Size: 0xEF
	Parameters: 2
	Flags: None
*/
function function_18538df(trigger, var_6971862e)
{
	self endon("death");
	self endon("disconnect");
	self notify("molotov_trigger_damage_thread_" + trigger GetEntityNumber());
	self endon("molotov_trigger_damage_thread_" + trigger GetEntityNumber());
	if(!isdefined(self.var_c8adaf48))
	{
		self.var_c8adaf48 = 0;
	}
	while(self istouching(trigger))
	{
		if(GetTime() - self.var_c8adaf48 >= 1000)
		{
			self.var_c8adaf48 = GetTime();
			self DoDamage(var_6971862e, self.origin);
		}
		wait(0.05);
	}
}

/*
	Name: function_25ce4365
	Namespace: namespace_63b4601c
	Checksum: 0x6ACFD962
	Offset: 0x63D8
	Size: 0x2B9
	Parameters: 2
	Flags: None
*/
function function_25ce4365(var_1c83c677, b_ignoreme)
{
	self endon("death");
	/#
		Assert(IsActor(self));
	#/
	/#
		Assert(isdefined(var_1c83c677));
	#/
	/#
		Assert(IsVec(var_1c83c677));
	#/
	self.var_25ce4365 = 1;
	weap = GetWeapon("molotov_vengeance");
	grenadeEnt = undefined;
	if(isdefined(weap))
	{
		grenadeEnt = self MagicGrenade(self GetEye(), var_1c83c677, 10, weap);
		if(!isdefined(grenadeEnt))
		{
			self.var_25ce4365 = undefined;
			return undefined;
		}
		else
		{
			grenadeEnt thread delayed_delete(0.05);
			grenadeEnt = undefined;
		}
		ents = [];
		ents[0] = self;
		var_521db653 = spawnstruct();
		var_521db653.origin = self.origin;
		var_521db653.angles = (0, VectorToAngles(var_1c83c677 - self.origin)[1], 0);
		if(isalive(self))
		{
			var_521db653 thread scene::Play(ents, "cin_ven_gen_grenade_throw_a");
			self waittill("hash_b4f3378");
			fromPoint = self GetTagOrigin("J_Thumb_RI_1");
			grenadeEnt = self MagicGrenade(fromPoint, var_1c83c677, 10, weap);
			self.var_1fd9293d = grenadeEnt;
			if(isdefined(b_ignoreme) && b_ignoreme)
			{
				self thread function_85c2c12();
			}
		}
	}
	self.var_25ce4365 = undefined;
	return grenadeEnt;
}

/*
	Name: function_85c2c12
	Namespace: namespace_63b4601c
	Checksum: 0x34D37281
	Offset: 0x66A0
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_85c2c12()
{
	self endon("death");
	self ai::set_ignoreme(1);
	if(isdefined(self.var_1fd9293d))
	{
		self.var_1fd9293d waittill("death");
		wait(0.5);
	}
	self ai::set_ignoreme(0);
}

/*
	Name: delayed_delete
	Namespace: namespace_63b4601c
	Checksum: 0xD5518401
	Offset: 0x6710
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function delayed_delete(time)
{
	self endon("death");
	wait(time);
	self delete();
}

/*
	Name: function_f9c94344
	Namespace: namespace_63b4601c
	Checksum: 0x52A7A8D9
	Offset: 0x6750
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_f9c94344()
{
	level endon("hash_8a3b89d3");
	self endon("death");
	self waittill("trigger");
	stealth::function_9aa26b41();
}

/*
	Name: function_e3420328
	Namespace: namespace_63b4601c
	Checksum: 0x777AD70A
	Offset: 0x6798
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_e3420328(scene, endon_flag)
{
	level thread scene::Play(scene);
	level flag::wait_till(endon_flag);
	level thread scene::stop(scene, 1);
}

/*
	Name: function_65a61b78
	Namespace: namespace_63b4601c
	Checksum: 0x8D93F120
	Offset: 0x6808
	Size: 0x147
	Parameters: 2
	Flags: None
*/
function function_65a61b78(a_ents, var_6a07eb6c)
{
	level flag::wait_till("all_players_spawned");
	foreach(e_player in level.players)
	{
		foreach(var_806fd666 in var_6a07eb6c)
		{
			if(isdefined(a_ents[var_806fd666]))
			{
				a_ents[var_806fd666] clientfield::set("mature_hide", 1);
			}
		}
	}
}

/*
	Name: function_638bf7ab
	Namespace: namespace_63b4601c
	Checksum: 0x10602F6F
	Offset: 0x6958
	Size: 0xFB
	Parameters: 1
	Flags: None
*/
function function_638bf7ab(endon_flag)
{
	model = spawn("script_model", self.origin);
	model.angles = self.angles;
	model SetModel(self.model);
	model thread scene::Play(self.script_noteworthy, model);
	wait(0.1);
	model animation::detach_weapon();
	level flag::wait_till(endon_flag);
	if(isdefined(model))
	{
		model StopAnimScripted();
		model delete();
	}
}

/*
	Name: function_a084a58f
	Namespace: namespace_63b4601c
	Checksum: 0xFF2643E9
	Offset: 0x6A60
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_a084a58f()
{
	savegame::function_5d2cdd99();
}

/*
	Name: function_ac2b4535
	Namespace: namespace_63b4601c
	Checksum: 0x77866142
	Offset: 0x6A80
	Size: 0xC3
	Parameters: 3
	Flags: None
*/
function function_ac2b4535(str_scene, var_54f8120e, var_ddaacf8f)
{
	if(!isdefined(var_ddaacf8f))
	{
		var_ddaacf8f = 1;
	}
	/#
		Assert(isdefined(str_scene), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(var_54f8120e), "Dev Block strings are not supported");
	#/
	scene::add_scene_func(str_scene, &function_96861272, "players_done");
	level thread function_cb1e4146(str_scene, var_54f8120e, var_ddaacf8f);
}

/*
	Name: function_96861272
	Namespace: namespace_63b4601c
	Checksum: 0x76905281
	Offset: 0x6B50
	Size: 0x19
	Parameters: 1
	Flags: None
*/
function function_96861272(a_ents)
{
	level notify("teleport_players");
}

/*
	Name: function_cb1e4146
	Namespace: namespace_63b4601c
	Checksum: 0x22BFF42A
	Offset: 0x6B78
	Size: 0x173
	Parameters: 3
	Flags: None
*/
function function_cb1e4146(str_scene, var_54f8120e, var_ddaacf8f)
{
	level waittill("teleport_players");
	foreach(player in level.players)
	{
		player ghost();
	}
	util::function_93831e79(var_54f8120e);
	wait(0.5);
	foreach(player in level.players)
	{
		player show();
	}
	if(isdefined(var_ddaacf8f) && var_ddaacf8f)
	{
		savegame::function_5d2cdd99();
	}
}

/*
	Name: function_4e8207e9
	Namespace: namespace_63b4601c
	Checksum: 0x5152F271
	Offset: 0x6CF8
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_4e8207e9(str_skipto, b_enable)
{
	if(!isdefined(b_enable))
	{
		b_enable = 1;
	}
	level clientfield::set("fxanims_" + str_skipto, b_enable);
}

/*
	Name: function_1c347e72
	Namespace: namespace_63b4601c
	Checksum: 0x34AF300E
	Offset: 0x6D50
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_1c347e72(str_targetname, var_bb76866b)
{
	function_9e3608e3(str_targetname);
	a_models = GetEntArray(var_bb76866b, "targetname");
	Array::delete_all(a_models);
}

/*
	Name: function_ba7c52d5
	Namespace: namespace_63b4601c
	Checksum: 0x15416A69
	Offset: 0x6DC8
	Size: 0x2B
	Parameters: 2
	Flags: None
*/
function function_ba7c52d5(a_ents, str_targetname)
{
	function_6ddd4fa4(str_targetname);
}

/*
	Name: function_a72c2dda
	Namespace: namespace_63b4601c
	Checksum: 0xCD9FA4C7
	Offset: 0x6E00
	Size: 0xD1
	Parameters: 2
	Flags: None
*/
function function_a72c2dda(a_ents, str_targetname)
{
	function_6ddd4fa4(str_targetname);
	foreach(ent in a_ents)
	{
		if(isdefined(ent) && !IsSentient(ent))
		{
			ent delete();
		}
	}
}

/*
	Name: function_f832e2fa
	Namespace: namespace_63b4601c
	Checksum: 0x825D127
	Offset: 0x6EE0
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_f832e2fa()
{
	if(IsActor(self))
	{
		return;
	}
	self.ignoreme = 1;
	self.ignoreall = 1;
	self.team = "allies";
	self clientfield::set("thermal_active", 1);
	self util::waittill_any("death", "cleanup");
	if(isdefined(self))
	{
		self clientfield::set("thermal_active", 0);
	}
}

/*
	Name: function_5fbec645
	Namespace: namespace_63b4601c
	Checksum: 0x31F24B6A
	Offset: 0x6FA8
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_5fbec645(str_vo_line, delay, priority, toplayer)
{
	self function_6ac438(0, str_vo_line, delay, priority, toplayer);
}

/*
	Name: function_ee75acde
	Namespace: namespace_63b4601c
	Checksum: 0xEE24EBA8
	Offset: 0x7000
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_ee75acde(str_vo_line, delay, priority, toplayer)
{
	self function_6ac438(1, str_vo_line, delay, priority, toplayer);
}

/*
	Name: function_6ac438
	Namespace: namespace_63b4601c
	Checksum: 0xEB3F4442
	Offset: 0x7058
	Size: 0x25B
	Parameters: 5
	Flags: Private
*/
function private function_6ac438(remote, str_vo_line, delay, priority, toplayer)
{
	var_8ef9b1c0 = StrTok(str_vo_line, "_");
	character = var_8ef9b1c0[0];
	if(!isdefined(level.stealth) || character != "hend")
	{
		if(remote)
		{
			self dialog::remote(str_vo_line, delay, undefined, toplayer);
		}
		else
		{
			self dialog::say(str_vo_line, delay, undefined, toplayer);
		}
		return;
	}
	var_1f09bc21 = [];
	foreach(player in level.players)
	{
		if(!isdefined(toplayer) || player == toplayer)
		{
			self thread function_cb760154(remote, str_vo_line, delay, priority, player);
			var_1f09bc21[var_1f09bc21.size] = player;
		}
	}
	while(var_1f09bc21.size)
	{
		for(i = var_1f09bc21.size - 1; i >= 0; i--)
		{
			if(!isdefined(var_1f09bc21[i]) || !isdefined(var_1f09bc21[i].var_90180902) || !isdefined(var_1f09bc21[i].var_90180902[character]))
			{
				var_1f09bc21[i] = undefined;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_cb760154
	Namespace: namespace_63b4601c
	Checksum: 0xDBEC0878
	Offset: 0x72C0
	Size: 0x1BF
	Parameters: 5
	Flags: Private
*/
function private function_cb760154(remote, str_vo_line, delay, priority, toplayer)
{
	toplayer endon("disconnect");
	/#
		Assert(isPlayer(toplayer));
	#/
	var_8ef9b1c0 = StrTok(str_vo_line, "_");
	character = var_8ef9b1c0[0];
	if(!isdefined(priority))
	{
		priority = 0;
	}
	if(!isdefined(delay))
	{
		delay = 0;
	}
	if(!isdefined(toplayer.var_90180902))
	{
		toplayer.var_90180902 = [];
	}
	var_a5b0e2ce = -1;
	if(isdefined(toplayer.var_90180902[character]))
	{
		var_a5b0e2ce = toplayer.var_90180902[character];
	}
	if(var_a5b0e2ce > -1)
	{
		return;
	}
	toplayer.var_90180902[character] = priority;
	if(remote)
	{
		self dialog::remote(str_vo_line, delay, undefined, toplayer);
	}
	else
	{
		self dialog::say(str_vo_line, delay, undefined, toplayer);
	}
	toplayer.var_90180902[character] = undefined;
}

/*
	Name: function_e00864bd
	Namespace: namespace_63b4601c
	Checksum: 0x49E334F3
	Offset: 0x7488
	Size: 0x93
	Parameters: 3
	Flags: None
*/
function function_e00864bd(gate, State, id)
{
	var_50bda1f6 = GetEnt(gate, "targetname");
	wait(0.1);
	var_50bda1f6 ghost();
	var_50bda1f6 notsolid();
	function_bab1ff00(id, State);
}

/*
	Name: function_ffaf4723
	Namespace: namespace_63b4601c
	Checksum: 0x51C8CEDB
	Offset: 0x7528
	Size: 0x187
	Parameters: 4
	Flags: None
*/
function function_ffaf4723(VOL, gate, id, flag)
{
	level endon(flag);
	var_88cf688e = GetEnt(VOL, "targetname");
	var_50bda1f6 = GetEnt(gate, "targetname");
	var_50bda1f6 ghost();
	var_50bda1f6 notsolid();
	while(1)
	{
		var_2d00103e = 0;
		foreach(player in level.activePlayers)
		{
			if(player istouching(var_88cf688e))
			{
				var_2d00103e = 1;
				break;
			}
		}
		function_bab1ff00(id, var_2d00103e);
		wait(0.1);
	}
}


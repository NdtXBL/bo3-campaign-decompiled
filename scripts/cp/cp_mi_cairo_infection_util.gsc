#using scripts\codescripts\struct;
#using scripts\cp\_dialog;
#using scripts\cp\_objectives;
#using scripts\cp\_skipto;
#using scripts\cp\_spawn_manager;
#using scripts\cp\_util;
#using scripts\shared\ai_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\hud_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\math_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\turret_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_36cbf523;

/*
	Name: __init__sytem__
	Namespace: namespace_36cbf523
	Checksum: 0x4AB668A3
	Offset: 0xD48
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("infection_util", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: namespace_36cbf523
	Checksum: 0x98E3F996
	Offset: 0xD88
	Size: 0x163
	Parameters: 0
	Flags: None
*/
function __init__()
{
	var_63dbb8fc = GetEnt("sarah", "targetname");
	if(isdefined(var_63dbb8fc))
	{
		var_63dbb8fc spawner::add_spawn_function(&function_e7ce686c);
	}
	level.lighting_state = 0;
	callback::on_spawned(&on_player_spawned);
	callback::on_disconnect(&on_player_disconnect);
	callback::on_spawned(&function_72e40406);
	callback::on_actor_killed(&function_c3e494e3);
	callback::on_actor_killed(&function_1cbdd501);
	callback::on_ai_spawned(&function_796d4d97);
	init_client_field_callback_funcs();
	init_flags();
	level thread function_5f6e4092();
}

/*
	Name: init_flags
	Namespace: namespace_36cbf523
	Checksum: 0x26B3E8EB
	Offset: 0xEF8
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function init_flags()
{
	level flag::init("sarah_anchor_prep_scene_done");
	level flag::init("sarah_anchor_post_scene_done");
}

/*
	Name: init_client_field_callback_funcs
	Namespace: namespace_36cbf523
	Checksum: 0xF168A7C9
	Offset: 0xF48
	Size: 0x2A3
	Parameters: 0
	Flags: None
*/
function init_client_field_callback_funcs()
{
	clientfield::register("toplayer", "snow_fx", 1, 2, "int");
	clientfield::register("actor", "sarah_objective_light", 1, 1, "int");
	clientfield::register("actor", "sarah_body_light", 1, 1, "int");
	clientfield::register("actor", "reverse_arrival_snow_fx", 1, 1, "int");
	clientfield::register("actor", "reverse_arrival_dmg_fx", 1, 1, "int");
	clientfield::register("actor", "exploding_ai_deaths", 1, 1, "int");
	clientfield::register("actor", "reverse_arrival_explosion_fx", 1, 1, "int");
	clientfield::register("allplayers", "player_spawn_fx", 1, 1, "int");
	clientfield::register("toplayer", "stop_post_fx", 1, 1, "counter");
	clientfield::register("actor", "ai_dni_rez_in", 1, 1, "int");
	clientfield::register("actor", "ai_dni_rez_out", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_dni_interrupt", 1, 1, "counter");
	clientfield::register("toplayer", "postfx_futz", 1, 1, "counter");
	clientfield::register("actor", "sarah_camo_shader", 1, 3, "int");
}

/*
	Name: on_player_spawned
	Namespace: namespace_36cbf523
	Checksum: 0x99EC1590
	Offset: 0x11F8
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
}

/*
	Name: on_player_disconnect
	Namespace: namespace_36cbf523
	Checksum: 0x99EC1590
	Offset: 0x1208
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function on_player_disconnect()
{
}

/*
	Name: function_2c4ff2b1
	Namespace: namespace_36cbf523
	Checksum: 0x715AD9CD
	Offset: 0x1218
	Size: 0x13F
	Parameters: 1
	Flags: None
*/
function function_2c4ff2b1(var_862f45fa)
{
	a_structs = struct::get_array("cp_coop_spawn", "targetname");
	/#
		Assert(a_structs.size, "Dev Block strings are not supported");
	#/
	a_found = [];
	for(i = 0; i < a_structs.size; i++)
	{
		if(a_structs[i].script_objective === var_862f45fa)
		{
			if(!isdefined(a_found))
			{
				a_found = [];
			}
			else if(!IsArray(a_found))
			{
				a_found = Array(a_found);
			}
			a_found[a_found.size] = a_structs[i];
		}
	}
	/#
		Assert(a_found.size, "Dev Block strings are not supported" + var_862f45fa);
	#/
	return a_found;
}

/*
	Name: function_1b6646d6
	Namespace: namespace_36cbf523
	Checksum: 0x9BF1712
	Offset: 0x1360
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function function_1b6646d6()
{
	level flag::wait_till("all_players_connected");
	do
	{
		wait(0.05);
		var_801b9e15 = 0;
		foreach(player in GetPlayers())
		{
			if(player.sessionstate == "playing")
			{
				var_801b9e15++;
			}
		}
	}
	while(!var_801b9e15 == 0);
}

/*
	Name: function_54142bd3
	Namespace: namespace_36cbf523
	Checksum: 0x3FA7BAC
	Offset: 0x1448
	Size: 0x251
	Parameters: 2
	Flags: None
*/
function function_54142bd3(var_434bda67, str_key)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	/#
		Assert(isdefined(var_434bda67), "Dev Block strings are not supported");
	#/
	e_volume = GetEnt(var_434bda67, str_key);
	/#
		Assert(isdefined(e_volume), "Dev Block strings are not supported" + str_key + "Dev Block strings are not supported" + var_434bda67 + "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(e_volume.target), "Dev Block strings are not supported" + var_434bda67 + "Dev Block strings are not supported");
	#/
	var_af84f8f = struct::get_array(e_volume.target, "targetname");
	/#
		Assert(var_af84f8f.size >= 4, "Dev Block strings are not supported" + var_434bda67 + "Dev Block strings are not supported" + var_af84f8f.size);
	#/
	foreach(player in level.players)
	{
		if(!player istouching(e_volume))
		{
			player SetOrigin(var_af84f8f[i].origin);
			player SetPlayerAngles(var_af84f8f[i].angles);
		}
	}
}

/*
	Name: function_e7ce686c
	Namespace: namespace_36cbf523
	Checksum: 0x702E0653
	Offset: 0x16A8
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_e7ce686c()
{
	self endon("death");
	while(1)
	{
		self waittill("hash_31cb28ed");
		self function_db9a227f(1);
		self waittill("hash_f20d0edf");
		self function_db9a227f(0);
	}
}

/*
	Name: function_db9a227f
	Namespace: namespace_36cbf523
	Checksum: 0x31A85669
	Offset: 0x1710
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function function_db9a227f(b_show)
{
	if(!isdefined(b_show))
	{
		b_show = 1;
	}
	self clientfield::set("sarah_objective_light", b_show);
}

/*
	Name: function_dafed344
	Namespace: namespace_36cbf523
	Checksum: 0xCF3585D0
	Offset: 0x1760
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_dafed344()
{
	self function_dbe72c95("village");
}

/*
	Name: function_2f6bf570
	Namespace: namespace_36cbf523
	Checksum: 0xFB1B32C
	Offset: 0x1790
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_2f6bf570()
{
	self function_dbe72c95("village_inception");
}

/*
	Name: function_dbe72c95
	Namespace: namespace_36cbf523
	Checksum: 0x9A157E40
	Offset: 0x17C0
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_dbe72c95(str_objective)
{
	self endon("death");
	self.script_objective = str_objective;
	if(isdefined(self.animName))
	{
		return;
	}
	self.overrideActorDamage = &function_cf59d5a0;
	self function_c54bce75();
}

/*
	Name: function_cf59d5a0
	Namespace: namespace_36cbf523
	Checksum: 0x260BE30
	Offset: 0x1830
	Size: 0xBB
	Parameters: 12
	Flags: None
*/
function function_cf59d5a0(eInflictor, eAttacker, iDamage, iDFlags, sMeansOfDeath, weapon, vPoint, vDir, sHitLoc, modelIndex, psOffsetTime, bonename)
{
	if(!isPlayer(eAttacker))
	{
		iDamage = Int(Abs(iDamage * 0.75));
	}
	return iDamage;
}

/*
	Name: function_c54bce75
	Namespace: namespace_36cbf523
	Checksum: 0x3A0D44F8
	Offset: 0x18F8
	Size: 0x113
	Parameters: 2
	Flags: None
*/
function function_c54bce75(str_target, str_script_noteworthy)
{
	if(!isdefined(str_target))
	{
		str_target = undefined;
	}
	if(!isdefined(str_script_noteworthy))
	{
		str_script_noteworthy = undefined;
	}
	self endon("death");
	while(1)
	{
		if(!isdefined(self.current_scene))
		{
			break;
		}
		wait(0.05);
	}
	if(!isdefined(str_target))
	{
		if(isdefined(self.target))
		{
			str_target = self.target;
		}
	}
	if(!isdefined(str_script_noteworthy))
	{
		if(isdefined(self.script_noteworthy))
		{
			str_script_noteworthy = self.script_noteworthy;
		}
	}
	if(isdefined(str_target))
	{
		e_target = GetNode(str_target, "targetname");
		self SetGoal(e_target);
		self waittill("goal");
		self.goalRadius = 64;
	}
}

/*
	Name: function_b86426b1
	Namespace: namespace_36cbf523
	Checksum: 0xDBB20FC6
	Offset: 0x1A18
	Size: 0xE7
	Parameters: 1
	Flags: None
*/
function function_b86426b1(n_goal_radius)
{
	self endon("death");
	if(isdefined(self.target))
	{
		e_target = GetEnt(self.target, "targetname");
		if(!isdefined(e_target))
		{
			e_target = GetNode(self.target, "targetname");
		}
		if(isdefined(e_target))
		{
			self SetGoal(e_target);
		}
		if(isdefined(n_goal_radius))
		{
			var_6933f6c4 = self.goalRadius;
			self.goalRadius = n_goal_radius;
			self waittill("goal");
			self.goalRadius = var_6933f6c4;
		}
	}
}

/*
	Name: function_5ec7eb7d
	Namespace: namespace_36cbf523
	Checksum: 0xF3C7A9B4
	Offset: 0x1B08
	Size: 0x197
	Parameters: 5
	Flags: None
*/
function function_5ec7eb7d(v_position, n_radius, n_height, var_9a868e4d, var_694b7da)
{
	if(!isdefined(var_9a868e4d))
	{
		var_9a868e4d = 0;
	}
	if(!isdefined(var_694b7da))
	{
		var_694b7da = "trigger_radius";
	}
	/#
		Assert(isdefined(v_position), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_radius), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(n_height), "Dev Block strings are not supported");
	#/
	t_use = spawn(var_694b7da, v_position, var_9a868e4d, n_radius, n_height);
	t_use TriggerIgnoreTeam();
	t_use SetVisibleToAll();
	t_use SetTeamForTrigger("none");
	t_use UseTriggerRequireLookAt();
	if(var_694b7da == "trigger_radius_use")
	{
		t_use setcursorhint("HINT_NOICON");
	}
	return t_use;
}

/*
	Name: function_7ad4dc15
	Namespace: namespace_36cbf523
	Checksum: 0x18A7AC58
	Offset: 0x1CA8
	Size: 0xC5
	Parameters: 5
	Flags: None
*/
function function_7ad4dc15(var_5152e048, var_a72c5e19, n_duration, n_loop_time, n_timeout)
{
	if(!isdefined(n_duration))
	{
		n_duration = 2;
	}
	if(!isdefined(n_loop_time))
	{
		n_loop_time = 0.25;
	}
	if(!isdefined(n_timeout))
	{
		n_timeout = 2;
	}
	for(n_time = 0; n_time < n_duration;  = 0)
	{
		function_7b8c138f(var_5152e048, var_a72c5e19, n_timeout);
		wait(n_loop_time);
	}
}

/*
	Name: function_7b8c138f
	Namespace: namespace_36cbf523
	Checksum: 0xE64CE622
	Offset: 0x1D78
	Size: 0xB1
	Parameters: 3
	Flags: None
*/
function function_7b8c138f(var_5152e048, var_a72c5e19, n_timeout)
{
	foreach(player in level.players)
	{
		player thread function_f0b927ee(var_5152e048, var_a72c5e19, n_timeout);
	}
}

/*
	Name: function_f0b927ee
	Namespace: namespace_36cbf523
	Checksum: 0xA052CE12
	Offset: 0x1E38
	Size: 0x1BF
	Parameters: 3
	Flags: None
*/
function function_f0b927ee(var_5152e048, var_a72c5e19, n_timeout)
{
	if(!isdefined(n_timeout))
	{
		n_timeout = 1;
	}
	self endon("death");
	n_current_distance = Distance(self.origin, var_5152e048.origin);
	self.var_c4423f55 = mapfloat(0, var_a72c5e19, 0.1, 1, n_current_distance);
	self setMoveSpeedScale(self.var_c4423f55);
	if(!isdefined(self.var_2099a327))
	{
		self.var_2099a327 = 0;
	}
	self.var_8046f8b5 = GetTime() + n_timeout - 1 * 1000;
	if(!self.var_2099a327)
	{
		self.var_2099a327 = 1;
		while(GetTime() < self.var_8046f8b5)
		{
			wait(0.1);
		}
		while(self.var_c4423f55 < 1)
		{
			self.var_c4423f55 = math::clamp(self.var_c4423f55 + 0.1, 0, 1);
			self setMoveSpeedScale(self.var_c4423f55);
			wait(0.1);
		}
		self setMoveSpeedScale(1);
		self.var_2099a327 = 0;
	}
}

/*
	Name: function_15ca1b68
	Namespace: namespace_36cbf523
	Checksum: 0xCB3BF510
	Offset: 0x2000
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_15ca1b68(n_id)
{
	/#
		Assert(isdefined(n_id), "Dev Block strings are not supported");
	#/
	level.var_28791de7 = n_id;
}

/*
	Name: function_ae5eefe4
	Namespace: namespace_36cbf523
	Checksum: 0x338885CD
	Offset: 0x2048
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_ae5eefe4()
{
	if(!isdefined(level.var_28791de7))
	{
		level.var_28791de7 = 0;
	}
	return level.var_28791de7;
}

/*
	Name: function_1cdb9014
	Namespace: namespace_36cbf523
	Checksum: 0x99287AFC
	Offset: 0x2078
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function function_1cdb9014(n_id)
{
	if(!isdefined(n_id))
	{
		n_id = 2;
	}
	function_15ca1b68(n_id);
	foreach(player in level.players)
	{
		player function_72e40406(n_id);
	}
}

/*
	Name: function_3ea445de
	Namespace: namespace_36cbf523
	Checksum: 0x4B17FD78
	Offset: 0x2148
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_3ea445de()
{
	function_15ca1b68(0);
	foreach(player in level.players)
	{
		player function_822eb8e8();
	}
}

/*
	Name: function_72e40406
	Namespace: namespace_36cbf523
	Checksum: 0xB8354720
	Offset: 0x21F8
	Size: 0x83
	Parameters: 1
	Flags: None
*/
function function_72e40406(n_id)
{
	/#
		Assert(isPlayer(self), "Dev Block strings are not supported");
	#/
	if(!isdefined(n_id))
	{
		n_id = function_ae5eefe4();
	}
	self clientfield::set_to_player("snow_fx", n_id);
}

/*
	Name: function_822eb8e8
	Namespace: namespace_36cbf523
	Checksum: 0xB3305153
	Offset: 0x2288
	Size: 0x8B
	Parameters: 1
	Flags: None
*/
function function_822eb8e8(b_pause)
{
	if(!isdefined(b_pause))
	{
		b_pause = 0;
	}
	/#
		Assert(isPlayer(self), "Dev Block strings are not supported");
	#/
	self clientfield::set_to_player("snow_fx", 0);
	if(!b_pause)
	{
		self notify("hash_a7385d98");
		self.var_afac15ca = 0;
	}
}

/*
	Name: link_traversals
	Namespace: namespace_36cbf523
	Checksum: 0x296F31D8
	Offset: 0x2320
	Size: 0xF9
	Parameters: 3
	Flags: None
*/
function link_traversals(str_value, str_key, b_enable)
{
	a_nodes = GetNodeArray(str_value, str_key);
	foreach(node in a_nodes)
	{
		if(node function_e24ece7b())
		{
			if(b_enable)
			{
				LinkTraversal(node);
				continue;
			}
			UnlinkTraversal(node);
		}
	}
}

/*
	Name: function_e24ece7b
	Namespace: namespace_36cbf523
	Checksum: 0x4145F728
	Offset: 0x2428
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_e24ece7b()
{
	return self.type === "Begin";
}

/*
	Name: function_574d968f
	Namespace: namespace_36cbf523
	Checksum: 0xC63D75EB
	Offset: 0x2448
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_574d968f()
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", player);
		self thread function_827b9378(player);
	}
}

/*
	Name: function_827b9378
	Namespace: namespace_36cbf523
	Checksum: 0xCF2B8F68
	Offset: 0x24A0
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_827b9378(player)
{
	player endon("death");
	player endon("hash_a7385d98");
	if(!isdefined(player.var_afac15ca))
	{
		player.var_afac15ca = 0;
	}
	if(!player.var_afac15ca)
	{
		player.var_afac15ca = 1;
		var_eb8c03f1 = player clientfield::get_to_player("snow_fx");
		player function_822eb8e8(1);
		while(player istouching(self))
		{
			wait(0.25);
		}
		player.var_afac15ca = 0;
		player function_72e40406(var_eb8c03f1);
	}
}

/*
	Name: play_dialog
	Namespace: namespace_36cbf523
	Checksum: 0x23158854
	Offset: 0x25B0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function play_dialog(str_line)
{
	/#
		IPrintLnBold(str_line);
	#/
}

/*
	Name: function_efa09886
	Namespace: namespace_36cbf523
	Checksum: 0xC0283851
	Offset: 0x25E0
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_efa09886(a_ents)
{
	if(level.players.size > 1)
	{
		level thread util::screen_fade_in(1, "white");
		Earthquake(0.5, 0.5, level.players[0].origin, 500);
		util::function_93831e79(level.skipto_point);
		foreach(player in level.players)
		{
			player PlayRumbleOnEntity("damage_heavy");
		}
	}
}

/*
	Name: function_1d387f5d
	Namespace: namespace_36cbf523
	Checksum: 0xE833763B
	Offset: 0x2708
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_1d387f5d()
{
	scene::add_scene_func("cin_inf_00_00_sarah_vign_move_idle", &function_c32dc5f6, "play");
	scene::add_scene_func("cin_inf_06_03_bastogne_aie_reversemg42", &function_3a407187, "init");
	scene::add_scene_func("cin_inf_06_03_bastogne_aie_reversemg42", &function_8f4d515b, "play");
}

/*
	Name: function_c8d7e76
	Namespace: namespace_36cbf523
	Checksum: 0x48C77C08
	Offset: 0x27A8
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_c8d7e76(str_group)
{
	var_c917e48d = struct::get_array(str_group, "targetname");
	/#
		Assert(var_c917e48d.size, "Dev Block strings are not supported" + str_group + "Dev Block strings are not supported");
	#/
	level thread Array::spread_all(var_c917e48d, &function_12a71229);
}

/*
	Name: function_12a71229
	Namespace: namespace_36cbf523
	Checksum: 0x2FAC0F6D
	Offset: 0x2848
	Size: 0x8B5
	Parameters: 0
	Flags: None
*/
function function_12a71229()
{
	if(!isdefined(self.script_minplayers) || self.script_minplayers <= level.players.size)
	{
		scene::add_scene_func(self.scriptbundlename, &function_4a8094c1, "init");
		scene::add_scene_func(self.scriptbundlename, &function_c215024b, "done");
		scene::init(self.scriptbundlename);
		if(!isdefined(self.radius))
		{
			self.radius = 1300;
		}
		if(!isdefined(self.height))
		{
			self.height = 512;
		}
		if(!isdefined(self.script_int))
		{
			self.script_int = 0;
		}
		v_origin_offset = (0, 0, self.script_int);
		if(isdefined(self.target))
		{
			t_start = GetEnt(self.target, "targetname");
			if(!isdefined(t_start))
			{
				t_start = function_5ec7eb7d(self.origin + v_origin_offset, self.radius, self.height);
			}
		}
		else
		{
			t_start = function_5ec7eb7d(self.origin + v_origin_offset, self.radius, self.height);
		}
		t_start.script_noteworthy = "reverse_anim_trigger";
		if(!isdefined(t_start.var_a40180b5))
		{
			t_start.var_a40180b5 = 0;
		}
		t_start.var_a40180b5++;
		switch(self.scriptbundlename)
		{
			case "cin_inf_06_03_bastogne_aie_reversemortar":
			{
				self thread function_2f9ccb03(t_start, "target", 1, 2.2, 1, 2);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reversehalftrack":
			{
				self thread function_2f9ccb03(t_start, "target", 0, 0, 1, 1.5);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reverseforwardroll":
			{
				self thread function_2f9ccb03(t_start, "target", 1, 0.7, 1, 2);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reverseforwardroll02":
			{
				self thread function_2f9ccb03(t_start, "target", 1, 2.8, 1, 2.5);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reversebackroll":
			{
				self thread function_2f9ccb03(t_start, "target", 1, 0.65, 1, 2.5);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reversebackroll02":
			{
				self thread function_2f9ccb03(t_start, "target", 1, 2.1, 1, 2);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reversebackroll03":
			{
				self thread function_2f9ccb03(t_start, "target", 1, 1.8, 1, 1);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverselandmine":
			{
				self thread function_2f9ccb03(t_start, "target", 1, 1.3, 1, 1.5);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reversemg42":
			{
				self thread function_2f9ccb03(t_start, "script_label", 1, 1.95, 1, 2);
				break;
			}
			case "cin_inf_10_02_foy_aie_reversetankshell_soldier01_suppressor":
			{
				self thread function_2f9ccb03(t_start, "script_label", 1, 3.5, 0, 0);
				break;
			}
			case "cin_inf_06_03_bastogne_vign_reversedance":
			{
				self thread function_2f9ccb03(t_start, "script_label", 1, 1.9, 1, 2);
				break;
			}
			case "cin_inf_10_02_bastogne_vign_reversemortar2floor_sniper":
			{
				self thread function_2f9ccb03(t_start, "script_label", 1, 2.8, 0, 0);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier01hipshot":
			{
				self thread function_23bbf7f6(t_start, 1.15);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier01hipshot_suppressor":
			{
				self thread function_23bbf7f6(t_start, 1.15);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier02headshot":
			{
				self thread function_23bbf7f6(t_start, 1.25);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier02headshot_sniper":
			{
				self thread function_23bbf7f6(t_start, 1.25);
				break;
			}
			case "cin_inf_06_03_bastogne_aie_reverse_soldier02headshot_suppressor":
			{
				self thread function_23bbf7f6(t_start, 1.25);
				break;
			}
			case "cin_inf_11_02_fold_aie_reverse_1":
			{
				self thread function_23bbf7f6(t_start, 4.25);
				break;
			}
			case "cin_inf_11_02_fold_aie_reverse_2":
			{
				self thread function_23bbf7f6(t_start, 4.25);
				break;
			}
			case "cin_inf_11_02_fold_aie_reverse_3":
			{
				self thread function_23bbf7f6(t_start, 4.25);
				break;
			}
			case "cin_inf_11_03_fold_vign_reverse_sniper":
			{
				self thread function_23bbf7f6(t_start, 1.55);
				break;
			}
			case "cin_inf_10_02_foy_aie_reverseshot_1_suppressor":
			{
				self thread function_23bbf7f6(t_start, 5.45);
				break;
			}
			case "cin_inf_10_02_foy_aie_reverseshot_5_sniper":
			{
				self thread function_23bbf7f6(t_start, 5.45);
				break;
			}
			case "cin_inf_10_02_bastogne_vign_reversefall2floor_suppressor":
			{
				self thread function_23bbf7f6(t_start, 0.85);
				break;
			}
			case "cin_inf_07_02_worldfallsaway_vign_direwolf_reverse_dth_1":
			{
				self thread function_23bbf7f6(t_start, 2.45);
				break;
			}
			case "cin_inf_07_02_worldfallsaway_vign_direwolf_reverse_dth_2":
			{
				self thread function_23bbf7f6(t_start, 1.95);
				break;
			}
			case "cin_inf_07_02_worldfallsaway_vign_direwolf_reverse_dth_3":
			{
				self thread function_23bbf7f6(t_start, 1.95);
				break;
			}
			case "cin_inf_07_02_worldfallsaway_vign_direwolf_reverse_dth_4":
			{
				self thread function_23bbf7f6(t_start, 1.95);
				break;
			}
			case default:
			{
				t_start waittill("trigger");
				t_start.var_a40180b5--;
				if(t_start.var_a40180b5 == 0)
				{
					t_start delete();
				}
				if(isdefined(self.script_delay))
				{
					wait(self.script_delay);
				}
				scene::Play(self.scriptbundlename);
				break;
			}
		}
	}
}

/*
	Name: function_2f9ccb03
	Namespace: namespace_36cbf523
	Checksum: 0xE2BF2EE1
	Offset: 0x3108
	Size: 0x303
	Parameters: 6
	Flags: None
*/
function function_2f9ccb03(t_start, var_151e15ca, var_c69a4c6, var_68d91705, var_8593df01, var_a35c8512)
{
	if(!isdefined(var_151e15ca))
	{
		var_151e15ca = "target";
	}
	if(!isdefined(var_c69a4c6))
	{
		var_c69a4c6 = 1;
	}
	if(!isdefined(var_68d91705))
	{
		var_68d91705 = 2;
	}
	if(!isdefined(var_8593df01))
	{
		var_8593df01 = 1;
	}
	if(!isdefined(var_a35c8512))
	{
		var_a35c8512 = 2;
	}
	t_start waittill("trigger");
	t_start.var_a40180b5--;
	if(t_start.var_a40180b5 == 0)
	{
		t_start delete();
	}
	if(isdefined(self.script_delay))
	{
		wait(self.script_delay);
	}
	if(var_c69a4c6)
	{
		if(var_151e15ca == "target")
		{
			if(isdefined(self.target))
			{
				s_loc = struct::get(self.target, "targetname");
				playFX(level._effect["reverse_mortar"], s_loc.origin);
				wait(var_68d91705);
			}
		}
		else if(var_151e15ca == "script_label")
		{
			if(isdefined(self.script_label))
			{
				s_loc = struct::get(self.script_label, "targetname");
				playFX(level._effect["reverse_mortar"], s_loc.origin);
				wait(var_68d91705);
			}
		}
	}
	if(var_8593df01)
	{
		if(isdefined(self.scenes))
		{
			a_actors = get_ents();
			foreach(actor in a_actors)
			{
				if(IsActor(actor))
				{
					actor clientfield::set("reverse_arrival_snow_fx", 1);
				}
			}
		}
		wait(var_a35c8512);
	}
	scene::Play(self.scriptbundlename);
}

/*
	Name: function_23bbf7f6
	Namespace: namespace_36cbf523
	Checksum: 0x8630613E
	Offset: 0x3418
	Size: 0x133
	Parameters: 2
	Flags: None
*/
function function_23bbf7f6(t_start, var_ecd15ef7)
{
	if(!isdefined(var_ecd15ef7))
	{
		var_ecd15ef7 = 2;
	}
	t_start waittill("trigger");
	t_start.var_a40180b5--;
	if(t_start.var_a40180b5 == 0)
	{
		t_start delete();
	}
	if(isdefined(self.script_delay))
	{
		wait(self.script_delay);
	}
	if(isdefined(self.script_label))
	{
		s_loc = struct::get(self.script_label, "targetname");
		var_cf340ccb = s_loc.origin;
	}
	self thread scene::Play(self.scriptbundlename);
	wait(var_ecd15ef7);
	if(isdefined(var_cf340ccb))
	{
		playFX(level._effect["bullet_impact"], var_cf340ccb);
	}
}

/*
	Name: function_4a8094c1
	Namespace: namespace_36cbf523
	Checksum: 0x840183FC
	Offset: 0x3558
	Size: 0xF1
	Parameters: 1
	Flags: None
*/
function function_4a8094c1(a_ents)
{
	foreach(ent in a_ents)
	{
		if(IsActor(ent))
		{
			if(isdefined(level.var_4aa3708c) && level.var_4aa3708c)
			{
				ent.script_accuracy = level.var_52b1f753;
			}
			ent function_dc649ed7(1);
			ent thread function_79c868c4(self);
		}
	}
}

/*
	Name: function_c215024b
	Namespace: namespace_36cbf523
	Checksum: 0x9E4D2DB8
	Offset: 0x3658
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function function_c215024b(a_ents)
{
	foreach(ent in a_ents)
	{
		if(IsActor(ent))
		{
			ent function_dc649ed7(0);
		}
	}
}

/*
	Name: function_2a5e3b2a
	Namespace: namespace_36cbf523
	Checksum: 0x23A25870
	Offset: 0x3710
	Size: 0x119
	Parameters: 1
	Flags: None
*/
function function_2a5e3b2a(a_ents)
{
	str_target = undefined;
	str_script_noteworthy = undefined;
	if(isdefined(self.target))
	{
		str_target = self.target;
	}
	if(isdefined(self.script_noteworthy))
	{
		str_script_noteworthy = self.script_noteworthy;
	}
	foreach(ent in a_ents)
	{
		if(IsActor(ent))
		{
			ent function_dc649ed7(0);
			ent thread function_c54bce75(str_target, str_script_noteworthy);
		}
	}
}

/*
	Name: function_dc649ed7
	Namespace: namespace_36cbf523
	Checksum: 0x121F858
	Offset: 0x3838
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function function_dc649ed7(b_set)
{
	self ai::set_ignoreall(b_set);
	self ai::set_ignoreme(b_set);
	if(b_set)
	{
		self DisableAimAssist();
	}
	else
	{
		self EnableAimAssist();
	}
}

/*
	Name: function_586b8f7b
	Namespace: namespace_36cbf523
	Checksum: 0xD86FDDD0
	Offset: 0x38B8
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_586b8f7b(v_position)
{
	return ArraySort(level.players, v_position, 1)[0];
}

/*
	Name: function_79c868c4
	Namespace: namespace_36cbf523
	Checksum: 0x2AB422FA
	Offset: 0x38F0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_79c868c4(s_bundle)
{
	if(isdefined(s_bundle.script_string))
	{
		radius = 1024;
		if(isdefined(s_bundle.script_float))
		{
			radius = s_bundle.script_float;
		}
		var_a4652398 = 0;
		if(isdefined(s_bundle.script_noteworthy) && s_bundle.script_noteworthy == "no_fallback")
		{
			var_a4652398 = 1;
		}
		self thread function_73dd6d57(s_bundle.script_string, s_bundle.scriptbundlename, radius, var_a4652398);
	}
}

/*
	Name: function_73dd6d57
	Namespace: namespace_36cbf523
	Checksum: 0x90F535B8
	Offset: 0x39D8
	Size: 0x203
	Parameters: 4
	Flags: None
*/
function function_73dd6d57(str_target, var_a14dc535, var_84fffedf, var_a4652398)
{
	self endon("death");
	wait(1);
	while(1)
	{
		if(!isdefined(self.current_scene))
		{
			break;
		}
		wait(0.05);
	}
	self.goalRadius = 64;
	if(isdefined(var_a4652398) && var_a4652398)
	{
		self.var_a4652398 = 1;
	}
	if(IsSubStr(str_target, "volume"))
	{
		e_target = GetEnt(str_target, "targetname");
		self SetGoal(e_target);
	}
	else if(IsSubStr(str_target, "nd_array"))
	{
		a_nd_targets = GetNodeArray(str_target, "targetname");
		nd_closest = ArrayGetClosest(self.origin, a_nd_targets);
		if(!IsNodeOccupied(nd_closest))
		{
			self SetGoal(nd_closest);
		}
		else
		{
			self.goalRadius = var_84fffedf;
			return;
		}
	}
	else
	{
		nd_target = GetNode(str_target, "targetname");
		self SetGoal(nd_target.origin);
	}
	self waittill("goal");
	self.goalRadius = var_84fffedf;
}

/*
	Name: function_3a407187
	Namespace: namespace_36cbf523
	Checksum: 0x3E9F9446
	Offset: 0x3BE8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_3a407187(a_ents)
{
}

/*
	Name: function_8f4d515b
	Namespace: namespace_36cbf523
	Checksum: 0xB8D1A6B
	Offset: 0x3C00
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_8f4d515b(a_ents)
{
}

/*
	Name: function_23e59afd
	Namespace: namespace_36cbf523
	Checksum: 0x3C33C94A
	Offset: 0x3C18
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_23e59afd(a_ents)
{
	if(!isdefined(level.var_340fac2e))
	{
		level.var_340fac2e = vehicle::simple_spawn_single("veh_sarah_mover");
		level.var_340fac2e.DrivePath = 1;
	}
	level flag::set("sarah_anchor_prep_scene_done");
}

/*
	Name: function_e2eba6da
	Namespace: namespace_36cbf523
	Checksum: 0xBC1F353D
	Offset: 0x3C90
	Size: 0x1B3
	Parameters: 1
	Flags: None
*/
function function_e2eba6da(a_ents)
{
	level flag::wait_till("sarah_anchor_prep_scene_done");
	/#
		Assert(isdefined(level.var_340fac2e), "Dev Block strings are not supported");
	#/
	var_e9020a33 = a_ents["sarah"];
	var_e9020a33 ai::set_ignoreall(1);
	var_e9020a33 ai::set_ignoreme(1);
	level.var_340fac2e.origin = var_e9020a33.origin;
	level.var_340fac2e.angles = var_e9020a33.angles;
	var_e9020a33.anchor = level.var_340fac2e;
	var_e9020a33.anchor.targetname = "sarah_objective_align";
	var_e9020a33 LinkTo(var_e9020a33.anchor);
	var_e9020a33 thread function_6987653b();
	var_e9020a33 thread function_12efefe3();
	var_e9020a33 thread function_8739c05f();
	var_e9020a33 thread function_1b0b83dc();
	level flag::set("sarah_anchor_post_scene_done");
}

/*
	Name: function_cbc167
	Namespace: namespace_36cbf523
	Checksum: 0xE94F737F
	Offset: 0x3E50
	Size: 0x5F
	Parameters: 0
	Flags: None
*/
function function_cbc167()
{
	level.var_340fac2e = vehicle::simple_spawn_single("veh_sarah_mover");
	level.var_340fac2e.DrivePath = 1;
	var_e9020a33 = util::function_740f8516("sarah");
}

/*
	Name: function_3fe1f72
	Namespace: namespace_36cbf523
	Checksum: 0x54762478
	Offset: 0x3EB8
	Size: 0x503
	Parameters: 3
	Flags: None
*/
function function_3fe1f72(var_49e77886, n_start, var_4477da45)
{
	level endon("hash_afb79ff0");
	if(!isdefined(level.var_340fac2e))
	{
		level.var_340fac2e = vehicle::simple_spawn_single("veh_sarah_mover");
	}
	if(isdefined(n_start))
	{
		var_addcf1f5 = GetEnt(var_49e77886 + n_start, "targetname");
		level.var_7f8b5d18 = function_1ed270eb(var_49e77886, n_start);
		Array::thread_all(level.var_7f8b5d18, &function_81b715e, level.var_7f8b5d18);
		if(n_start > 0)
		{
			for(i = 0; i < n_start - 1; i++)
			{
				var_e264aa0a = GetEnt(var_49e77886 + i, "targetname");
				var_e264aa0a delete();
			}
		}
	}
	var_c66ffe01 = GetVehicleNode(var_addcf1f5.target, "targetname");
	var_e9020a33 = util::function_740f8516("sarah");
	if(!var_e9020a33 islinkedto(level.var_340fac2e))
	{
		var_e9020a33 ForceTeleport(var_c66ffe01.origin, var_c66ffe01.angles);
		var_e9020a33 ai::set_ignoreall(1);
		var_e9020a33 ai::set_ignoreme(1);
		var_e9020a33.anchor = level.var_340fac2e;
		var_e9020a33.anchor.targetname = "sarah_objective_align";
		var_e9020a33 LinkTo(var_e9020a33.anchor);
		var_e9020a33.anchor thread scene::Play("cin_inf_00_00_sarah_vign_move_idle", var_e9020a33);
		level.var_340fac2e.origin = var_c66ffe01.origin;
		level.var_340fac2e.angles = var_c66ffe01.angles;
		level.var_340fac2e.DrivePath = 1;
		var_e9020a33 thread function_6987653b();
		var_e9020a33 thread function_12efefe3();
		var_e9020a33 thread function_8739c05f();
		var_e9020a33 thread function_1b0b83dc();
	}
	var_782c4804 = 0;
	var_255c21d = undefined;
	level thread function_1a5bb539(var_e9020a33, var_4477da45);
	while(isdefined(var_addcf1f5))
	{
		var_255c21d = var_addcf1f5;
		var_addcf1f5 waittill("trigger");
		ArrayRemoveValue(level.var_7f8b5d18, var_addcf1f5);
		n_start++;
		var_addcf1f5 = GetEnt(var_49e77886 + n_start, "targetname");
		if(!isdefined(var_addcf1f5))
		{
			continue;
		}
		if(!var_782c4804)
		{
			var_e9020a33.anchor vehicle::get_on_path(var_c66ffe01);
			var_e9020a33.anchor thread vehicle::go_path();
			var_782c4804 = 1;
		}
		if(isdefined(var_255c21d.script_flag_set) && !flag::get(var_255c21d.script_flag_set))
		{
			var_e9020a33.anchor flag::wait_till_clear("waiting_for_flag");
		}
	}
	var_e9020a33.anchor waittill("reached_end_node");
	function_73c28a85(var_e9020a33, var_4477da45);
}

/*
	Name: function_73c28a85
	Namespace: namespace_36cbf523
	Checksum: 0x8F15C779
	Offset: 0x43C8
	Size: 0x17D
	Parameters: 2
	Flags: None
*/
function function_73c28a85(var_e9020a33, var_4477da45)
{
	if(var_e9020a33.anchor scene::is_playing("cin_inf_00_00_sarah_vign_move_idle") || var_e9020a33.anchor scene::is_playing("cin_inf_00_00_sarah_vign_move_enter") || var_e9020a33.anchor scene::is_playing("cin_inf_00_00_sarah_vign_move_leave") || var_e9020a33.anchor scene::is_playing("cin_inf_00_00_sarah_vign_move_idle_talk"))
	{
		var_e9020a33.anchor scene::stop();
	}
	var_e9020a33 clientfield::set("sarah_objective_light", 0);
	var_e9020a33 Unlink();
	var_e9020a33.anchor delete();
	if(isdefined(var_e9020a33.var_5d21e1c9))
	{
		var_e9020a33.var_5d21e1c9 = 0;
	}
	util::wait_network_frame();
	if(isdefined(var_4477da45))
	{
		var_e9020a33 thread [[var_4477da45]]();
	}
}

/*
	Name: function_6987653b
	Namespace: namespace_36cbf523
	Checksum: 0xCA0E4FA7
	Offset: 0x4550
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_6987653b()
{
	self endon("death");
	self.anchor endon("death");
	while(1)
	{
		self.var_f11a8dcd = 1;
		self function_84a3b11a();
		self.anchor flag::wait_till("waiting_for_flag");
		self.var_f11a8dcd = 0;
		self function_42cc1832();
		self.anchor flag::wait_till_clear("waiting_for_flag");
	}
}

/*
	Name: function_1b0b83dc
	Namespace: namespace_36cbf523
	Checksum: 0x3AD4D616
	Offset: 0x4608
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_1b0b83dc()
{
	self endon("death");
	self.anchor endon("death");
	level waittill("hash_8b5ed1cb");
	self.anchor ResumeSpeed();
}

/*
	Name: function_1a5bb539
	Namespace: namespace_36cbf523
	Checksum: 0x83B423E8
	Offset: 0x4658
	Size: 0xBB
	Parameters: 2
	Flags: None
*/
function function_1a5bb539(var_e9020a33, var_4477da45)
{
	var_e9020a33.anchor endon("reached_end_node");
	var_e9020a33 endon("death");
	level waittill("hash_afb79ff0");
	if(isdefined(var_e9020a33.anchor))
	{
		var_e9020a33.anchor SetSpeed(0, 99999, 99999);
		var_e9020a33.anchor vehicle::get_off_path();
	}
	function_73c28a85(var_e9020a33, var_4477da45);
}

/*
	Name: function_8739c05f
	Namespace: namespace_36cbf523
	Checksum: 0x543394DB
	Offset: 0x4720
	Size: 0x20F
	Parameters: 0
	Flags: None
*/
function function_8739c05f()
{
	level endon("hash_8b5ed1cb");
	self endon("death");
	self.anchor endon("death");
	wait(3);
	while(1)
	{
		var_e243bf54 = [];
		foreach(player in level.activePlayers)
		{
			if(!isdefined(var_e243bf54))
			{
				var_e243bf54 = [];
			}
			else if(!IsArray(var_e243bf54))
			{
				var_e243bf54 = Array(var_e243bf54);
			}
			var_e243bf54[var_e243bf54.size] = player.origin;
		}
		var_e243bf54 = ArraySortClosest(var_e243bf54, self.anchor.origin);
		if(isdefined(var_e243bf54[0]) && self.var_f11a8dcd)
		{
			if(Distance2D(self.anchor.origin, var_e243bf54[0]) < 550)
			{
				self.anchor SetSpeed(300, 30, 600);
			}
			else
			{
				self.anchor ResumeSpeed();
			}
		}
		wait(0.1);
	}
}

/*
	Name: function_84a3b11a
	Namespace: namespace_36cbf523
	Checksum: 0x35BE075D
	Offset: 0x4938
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_84a3b11a()
{
	self endon("death");
	self.anchor endon("death");
	self.anchor scene::Play("cin_inf_00_00_sarah_vign_move_leave", self);
}

/*
	Name: function_42cc1832
	Namespace: namespace_36cbf523
	Checksum: 0x362037A0
	Offset: 0x4988
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_42cc1832(final_pos)
{
	self endon("death");
	self.anchor endon("death");
	if(isdefined(final_pos))
	{
		while(Distance(self.origin, final_pos.origin) > 512)
		{
			wait(0.1);
		}
	}
	self.anchor scene::Play("cin_inf_00_00_sarah_vign_move_enter", self);
}

/*
	Name: function_637cd603
	Namespace: namespace_36cbf523
	Checksum: 0xAA2D218E
	Offset: 0x4A28
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_637cd603()
{
	var_42189297 = util::function_740f8516("sarah");
	if(isdefined(var_42189297.anchor))
	{
		var_42189297.anchor thread scene::Play("cin_inf_00_00_sarah_vign_move_idle_talk", var_42189297);
	}
}

/*
	Name: function_12efefe3
	Namespace: namespace_36cbf523
	Checksum: 0xAF8CBD17
	Offset: 0x4A98
	Size: 0xF5
	Parameters: 0
	Flags: None
*/
function function_12efefe3()
{
	self endon("death");
	self.var_5d21e1c9 = 1;
	while(isdefined(self))
	{
		if(self.var_5d21e1c9)
		{
			if(self function_6fcf2df7() > 3000 || !self.var_f11a8dcd)
			{
				objectives::set("cp_level_infection_sarah_goto", self);
				while(Distance(level.players[0].origin, self.origin) > 3000 || !self.var_f11a8dcd && self.var_5d21e1c9)
				{
					wait(0.1);
				}
				objectives::complete("cp_level_infection_sarah_goto", self);
			}
		}
		wait(1);
	}
}

/*
	Name: function_6fcf2df7
	Namespace: namespace_36cbf523
	Checksum: 0x85970DD2
	Offset: 0x4B98
	Size: 0x9D
	Parameters: 0
	Flags: None
*/
function function_6fcf2df7()
{
	n_dist = 10000;
	for(i = 0; i < level.players.size; i++)
	{
		n_player_dist = Distance(level.players[i].origin, self.origin);
		if(n_player_dist < n_dist)
		{
			n_dist = n_player_dist;
		}
	}
	return n_dist;
}

/*
	Name: function_1ed270eb
	Namespace: namespace_36cbf523
	Checksum: 0x501DC11
	Offset: 0x4C40
	Size: 0xA7
	Parameters: 2
	Flags: None
*/
function function_1ed270eb(var_49e77886, n_start)
{
	var_d7faa155 = [];
	while(1)
	{
		var_addcf1f5 = GetEnt(var_49e77886 + n_start, "targetname");
		if(isdefined(var_addcf1f5))
		{
			var_addcf1f5.var_ad3feaf6 = n_start;
			Array::add(var_d7faa155, var_addcf1f5);
			n_start++;
		}
		else
		{
			return var_d7faa155;
		}
	}
}

/*
	Name: function_81b715e
	Namespace: namespace_36cbf523
	Checksum: 0x8308C25C
	Offset: 0x4CF0
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_81b715e(a_trigs)
{
	self endon("death");
	while(1)
	{
		self waittill("trigger", who);
		if(isPlayer(who))
		{
			for(i = 0; i < a_trigs.size; i++)
			{
				if(isdefined(a_trigs[i]) && a_trigs[i].var_ad3feaf6 < self.var_ad3feaf6)
				{
					a_trigs[i] notify("trigger");
					util::wait_network_frame();
				}
			}
			return;
		}
	}
}

/*
	Name: function_aa0ddbc3
	Namespace: namespace_36cbf523
	Checksum: 0x83D41D0F
	Offset: 0x4DD8
	Size: 0x57
	Parameters: 2
	Flags: None
*/
function function_aa0ddbc3(b_enabled, var_e82a00df)
{
	if(!isdefined(b_enabled))
	{
		b_enabled = 1;
	}
	if(!isdefined(var_e82a00df))
	{
		var_e82a00df = 0.1;
	}
	level.var_a5596f65 = b_enabled;
	level.var_56f93473 = var_e82a00df;
}

/*
	Name: function_a45331fb
	Namespace: namespace_36cbf523
	Checksum: 0xFF612DD5
	Offset: 0x4E38
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_a45331fb()
{
	if(!isdefined(level.var_a5596f65))
	{
		level.var_a5596f65 = 0;
	}
	return level.var_a5596f65;
}

/*
	Name: function_cd11e6ad
	Namespace: namespace_36cbf523
	Checksum: 0x5B240FB3
	Offset: 0x4E68
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function function_cd11e6ad()
{
	self endon("hash_b1975c04");
	if(isdefined(self.var_4227b8a9) && self.var_4227b8a9)
	{
		return;
	}
	function_151fb8bf();
	if(isdefined(self))
	{
		self clientfield::increment("ai_dni_rez_out");
	}
	wait(0.5);
	if(isdefined(self))
	{
		self delete();
		self notify("hash_b1975c04");
	}
}

/*
	Name: function_1f77a211
	Namespace: namespace_36cbf523
	Checksum: 0x4AF449F5
	Offset: 0x4F10
	Size: 0xB9
	Parameters: 0
	Flags: None
*/
function function_1f77a211()
{
	self endon("hash_b1975c04");
	if(isdefined(self.var_4227b8a9) && self.var_4227b8a9)
	{
		return;
	}
	self waittill("actor_corpse", e_corpse);
	function_151fb8bf();
	if(isdefined(e_corpse))
	{
		e_corpse clientfield::increment("ai_dni_rez_out");
	}
	wait(0.5);
	if(isdefined(e_corpse))
	{
		e_corpse delete();
	}
	if(isdefined(self))
	{
		self notify("hash_b1975c04");
	}
}

/*
	Name: function_796d4d97
	Namespace: namespace_36cbf523
	Checksum: 0xE2B6B460
	Offset: 0x4FD8
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_796d4d97()
{
	if(!self function_b0896729() || isVehicle(self))
	{
		return;
	}
	var_fdb28cb6 = GetWeapon("gadget_exo_breakdown");
	var_1391f610 = GetWeapon("gadget_mrpukey");
	var_e0871753 = GetWeapon("gadget_mrpukey_upgraded");
	self waittill("hash_f8c5dd60", weapon, eAttacker);
	if(weapon === var_fdb28cb6 || weapon === var_1391f610 || weapon === var_e0871753)
	{
		if(isdefined(self))
		{
			self.var_4227b8a9 = 1;
			self notify("hash_b1975c04");
		}
		self waittill("actor_corpse", e_corpse);
		if(isdefined(e_corpse))
		{
			e_corpse clientfield::set("exploding_ai_deaths", 1);
		}
		util::wait_network_frame();
		if(isdefined(e_corpse))
		{
			e_corpse delete();
		}
	}
}

/*
	Name: function_151fb8bf
	Namespace: namespace_36cbf523
	Checksum: 0x5E899DE2
	Offset: 0x5178
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_151fb8bf(n_min, n_max)
{
	if(!isdefined(n_min))
	{
		n_min = 0.1;
	}
	if(!isdefined(n_max))
	{
		n_max = 0.3;
	}
	if(isdefined(level.var_56f93473))
	{
		wait(level.var_56f93473);
	}
	else
	{
		wait(RandomFloatRange(n_min, n_max));
	}
}

/*
	Name: function_dd8ade86
	Namespace: namespace_36cbf523
	Checksum: 0x24D14568
	Offset: 0x51F8
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_dd8ade86()
{
	self endon("hash_b1975c04");
	if(isdefined(self.var_4227b8a9) && self.var_4227b8a9)
	{
		return;
	}
	self waittill("actor_corpse", e_corpse);
	if(isdefined(e_corpse))
	{
		e_corpse clientfield::increment("ai_dni_rez_out");
	}
	wait(0.5);
	if(isdefined(e_corpse))
	{
		e_corpse delete();
	}
	if(isdefined(self))
	{
		self notify("hash_b1975c04");
	}
}

/*
	Name: function_c3e494e3
	Namespace: namespace_36cbf523
	Checksum: 0x63255553
	Offset: 0x52A8
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_c3e494e3(params)
{
	var_4b570327 = 0;
	if(isdefined(self.targetname))
	{
		if(self.targetname == "sp_tank_gunner_ai")
		{
			var_4b570327 = 1;
			self thread function_dd8ade86();
		}
	}
	if(!var_4b570327)
	{
		if(self function_b0896729())
		{
			self thread function_1f77a211();
			self thread function_cd11e6ad();
		}
	}
}

/*
	Name: function_1cbdd501
	Namespace: namespace_36cbf523
	Checksum: 0x12037A6B
	Offset: 0x5360
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_1cbdd501(params)
{
	self endon("hash_b1975c04");
	if(isdefined(level.var_74bd7d24) && level.var_74bd7d24)
	{
		if(randomIntRange(0, 101) < 60)
		{
			wait(0.75);
			if(isdefined(self))
			{
				self playsound("vox_ai_falldeath_scream_male");
			}
		}
	}
}

/*
	Name: function_b0896729
	Namespace: namespace_36cbf523
	Checksum: 0xEAAEEB44
	Offset: 0x53E8
	Size: 0x47
	Parameters: 0
	Flags: None
*/
function function_b0896729()
{
	return !isVehicle(self) && function_a45331fb() && self.team != "allies";
}

/*
	Name: function_674ecd85
	Namespace: namespace_36cbf523
	Checksum: 0xAC47061E
	Offset: 0x5438
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function function_674ecd85()
{
	a_ai = GetAITeamArray("axis", "allies");
	Array::spread_all(a_ai, &function_52b9aea3);
}

/*
	Name: function_52b9aea3
	Namespace: namespace_36cbf523
	Checksum: 0xE1A1C93C
	Offset: 0x5498
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_52b9aea3()
{
	if(isdefined(self))
	{
		self delete();
	}
}

/*
	Name: function_b32291d7
	Namespace: namespace_36cbf523
	Checksum: 0xD9C65258
	Offset: 0x54C8
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_b32291d7(str_targetname, str_key)
{
	if(!isdefined(str_key))
	{
		str_key = "targetname";
	}
	a_ents = GetEntArray(str_targetname, str_key);
	Array::spread_all(a_ents, &function_52b9aea3);
}

/*
	Name: function_e66c8377
	Namespace: namespace_36cbf523
	Checksum: 0x2B6460CA
	Offset: 0x5548
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_e66c8377()
{
	self util::stop_magic_bullet_shield();
	self kill();
}

/*
	Name: function_5e78ab8c
	Namespace: namespace_36cbf523
	Checksum: 0x8100E392
	Offset: 0x5588
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function function_5e78ab8c()
{
	self endon("death");
	self clientfield::increment("ai_dni_rez_out");
	wait(0.5);
	self delete();
}

/*
	Name: function_c32dc5f6
	Namespace: namespace_36cbf523
	Checksum: 0xACC563DC
	Offset: 0x55E0
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_c32dc5f6(a_ents)
{
	function_3bca22f1(a_ents, 1);
}

/*
	Name: function_368baff9
	Namespace: namespace_36cbf523
	Checksum: 0x521284DE
	Offset: 0x5610
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_368baff9(a_ents)
{
	function_3bca22f1(a_ents, 0);
}

/*
	Name: function_b38b2335
	Namespace: namespace_36cbf523
	Checksum: 0x1DD2F302
	Offset: 0x5640
	Size: 0xEB
	Parameters: 1
	Flags: None
*/
function function_b38b2335(a_ents)
{
	function_3bca22f1(a_ents, 0);
	foreach(ent in a_ents)
	{
		if(IsSubStr(ent.targetname, "sarah"))
		{
			var_e9020a33 = ent;
		}
	}
	if(isdefined(var_e9020a33))
	{
		var_e9020a33 thread function_cd950c1a();
	}
}

/*
	Name: function_cd950c1a
	Namespace: namespace_36cbf523
	Checksum: 0x6CE362B5
	Offset: 0x5738
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_cd950c1a()
{
	self ai::set_ignoreall(1);
	util::wait_network_frame();
	self util::self_delete();
}

/*
	Name: function_3bca22f1
	Namespace: namespace_36cbf523
	Checksum: 0x9550FE4D
	Offset: 0x5788
	Size: 0x15B
	Parameters: 2
	Flags: None
*/
function function_3bca22f1(a_ents, b_show)
{
	foreach(ent in a_ents)
	{
		if(isdefined(ent.targetname))
		{
			if(IsSubStr(ent.targetname, "sarah"))
			{
				var_e9020a33 = ent;
			}
		}
	}
	if(isdefined(var_e9020a33))
	{
		if(isai(var_e9020a33))
		{
			var_e9020a33 ai::set_ignoreme(1);
		}
		if(isdefined(b_show) && b_show)
		{
			var_e9020a33 clientfield::set("sarah_objective_light", 1);
		}
		else
		{
			var_e9020a33 clientfield::set("sarah_objective_light", 0);
		}
	}
}

/*
	Name: function_5f6e4092
	Namespace: namespace_36cbf523
	Checksum: 0x573FB47A
	Offset: 0x58F0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_5f6e4092()
{
	Array::spread_all(GetEntArray("snow_disable", "script_noteworthy"), &function_574d968f);
}

/*
	Name: function_a3f21cef
	Namespace: namespace_36cbf523
	Checksum: 0x7177E59C
	Offset: 0x5940
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_a3f21cef(str_scene, var_d5a2e6ed, var_5a248c3f, var_ed131f0f)
{
	if(!isdefined(var_5a248c3f))
	{
		var_5a248c3f = "targetname";
	}
	if(!isdefined(var_ed131f0f))
	{
		var_ed131f0f = 1;
	}
	/#
		Assert(isdefined(str_scene), "Dev Block strings are not supported");
	#/
	/#
		Assert(isdefined(var_d5a2e6ed), "Dev Block strings are not supported");
	#/
	self thread function_62c5971c(str_scene, var_d5a2e6ed, var_5a248c3f, var_ed131f0f);
}

/*
	Name: function_62c5971c
	Namespace: namespace_36cbf523
	Checksum: 0x168ED607
	Offset: 0x5A10
	Size: 0x7B
	Parameters: 4
	Flags: None
*/
function function_62c5971c(str_scene, var_d5a2e6ed, var_5a248c3f, var_ed131f0f)
{
	if(var_ed131f0f)
	{
		self scene::init(str_scene);
	}
	trigger::wait_till(var_d5a2e6ed, var_5a248c3f, undefined, 1);
	self scene::Play(str_scene);
}

/*
	Name: function_1926d38d
	Namespace: namespace_36cbf523
	Checksum: 0xA97B9B80
	Offset: 0x5A98
	Size: 0x8B
	Parameters: 5
	Flags: None
*/
function function_1926d38d(str_scene, var_df0a8127, var_5430298a, var_e280766f, var_ed131f0f)
{
	if(!isdefined(var_ed131f0f))
	{
		var_ed131f0f = 1;
	}
	if(var_ed131f0f)
	{
		self scene::init(str_scene);
	}
	self thread function_14c6806e(str_scene, var_df0a8127, var_5430298a, var_e280766f, var_ed131f0f);
}

/*
	Name: function_14c6806e
	Namespace: namespace_36cbf523
	Checksum: 0x6329E94B
	Offset: 0x5B30
	Size: 0x1E7
	Parameters: 5
	Flags: None
*/
function function_14c6806e(str_scene, var_df0a8127, var_5430298a, var_e280766f, var_ed131f0f)
{
	var_568fff7e = GetEnt(var_5430298a, "targetname");
	var_fb0d257b = GetEnt(var_e280766f, "targetname");
	s_lookat = struct::get(var_df0a8127, "targetname");
	while(1)
	{
		trigger::wait_till(var_e280766f, "targetname");
		if(level.players.size == 1)
		{
			if(level.players[0] function_f9baa5f4(s_lookat, var_568fff7e, var_fb0d257b, 1) || level.players[0] istouching(var_568fff7e))
			{
				self thread scene::Play(str_scene);
				var_568fff7e delete();
				var_fb0d257b delete();
				break;
			}
		}
		else
		{
			self thread scene::Play(str_scene);
			var_568fff7e delete();
			var_fb0d257b delete();
			break;
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_951577ac
	Namespace: namespace_36cbf523
	Checksum: 0x335A739F
	Offset: 0x5D20
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_951577ac(var_568fff7e, var_fb0d257b)
{
	if(self istouching(var_fb0d257b) && !self istouching(var_568fff7e))
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_a84dcdf8
	Namespace: namespace_36cbf523
	Checksum: 0xA3EF11E2
	Offset: 0x5D80
	Size: 0xB3
	Parameters: 3
	Flags: None
*/
function function_a84dcdf8(s_lookat, n_dot_range, b_trace)
{
	if(!isdefined(n_dot_range))
	{
		n_dot_range = 0.9;
	}
	if(!isdefined(b_trace))
	{
		b_trace = 0;
	}
	self endon("death");
	self endon("disconnect");
	if(!isdefined(self) || !isdefined(s_lookat))
	{
		return 0;
	}
	if(self util::is_looking_at(s_lookat.origin, n_dot_range, b_trace))
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_f9baa5f4
	Namespace: namespace_36cbf523
	Checksum: 0xDAC873FE
	Offset: 0x5E40
	Size: 0x131
	Parameters: 4
	Flags: None
*/
function function_f9baa5f4(s_lookat, var_568fff7e, var_fb0d257b, n_duration)
{
	self endon("death");
	self endon("disconnect");
	n_time = 0;
	var_fc1c9f = function_951577ac(var_568fff7e, var_fb0d257b);
	var_59797e5f = function_a84dcdf8(s_lookat);
	while(var_fc1c9f && var_59797e5f && n_time < n_duration)
	{
		var_fc1c9f = function_951577ac(var_568fff7e, var_fb0d257b);
		var_59797e5f = function_a84dcdf8(s_lookat);
		wait(0.1);
		n_time = n_time + 0.1;
	}
	if(var_fc1c9f && var_59797e5f && n_time >= n_duration)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_c6e0527c
	Namespace: namespace_36cbf523
	Checksum: 0x8366D244
	Offset: 0x5F80
	Size: 0xC7
	Parameters: 4
	Flags: None
*/
function function_c6e0527c(var_df0a8127, n_duration, var_119a2aac, n_max_distance)
{
	if(!isdefined(n_max_distance))
	{
		n_max_distance = undefined;
	}
	self endon("death");
	self endon("disconnect");
	s_lookat = struct::get(var_df0a8127, "targetname");
	while(1)
	{
		if(self function_72268bc2(s_lookat, n_duration, n_max_distance))
		{
			level notify(var_119a2aac);
			break;
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_17062d77
	Namespace: namespace_36cbf523
	Checksum: 0xD4CD6059
	Offset: 0x6050
	Size: 0x63
	Parameters: 2
	Flags: None
*/
function function_17062d77(s_lookat, n_max_distance)
{
	if(isdefined(n_max_distance))
	{
		if(Distance2D(self.origin, s_lookat.origin) < n_max_distance)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	else
	{
		return 1;
	}
}

/*
	Name: function_72268bc2
	Namespace: namespace_36cbf523
	Checksum: 0xCD49A697
	Offset: 0x60C0
	Size: 0x151
	Parameters: 3
	Flags: None
*/
function function_72268bc2(s_lookat, n_duration, n_max_distance)
{
	self endon("death");
	self endon("disconnect");
	n_time = 0;
	if(isdefined(s_lookat.radius))
	{
		n_max_distance = s_lookat.radius;
	}
	var_59797e5f = function_a84dcdf8(s_lookat);
	var_1cc80e84 = function_17062d77(s_lookat, n_max_distance);
	while(var_59797e5f && var_59797e5f && n_time < n_duration)
	{
		var_59797e5f = function_a84dcdf8(s_lookat);
		var_1cc80e84 = function_17062d77(s_lookat, n_max_distance);
		wait(0.1);
		n_time = n_time + 0.1;
	}
	if(var_59797e5f && var_1cc80e84 && n_time >= n_duration)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

/*
	Name: function_7a4e1da3
	Namespace: namespace_36cbf523
	Checksum: 0x8C46C37E
	Offset: 0x6220
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_7a4e1da3()
{
	if(isdefined(self.lastActiveWeapon) && self.lastActiveWeapon != level.weaponNone && self HasWeapon(self.lastActiveWeapon))
	{
		self SwitchToWeapon(self.lastActiveWeapon);
	}
	else
	{
		primaryWeapons = self GetWeaponsListPrimaries();
		if(isdefined(primaryWeapons) && primaryWeapons.size > 0)
		{
			self SwitchToWeapon(primaryWeapons[0]);
		}
	}
}

/*
	Name: function_9f10c537
	Namespace: namespace_36cbf523
	Checksum: 0xEA83CD34
	Offset: 0x62E8
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_9f10c537()
{
	self util::function_16c71b8(1);
	self EnableInvulnerability();
}

/*
	Name: function_e905c73c
	Namespace: namespace_36cbf523
	Checksum: 0xF44EB1F6
	Offset: 0x6328
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function function_e905c73c()
{
	self util::function_16c71b8(0);
	self DisableInvulnerability();
}

/*
	Name: function_e14494e9
	Namespace: namespace_36cbf523
	Checksum: 0x5A2D2230
	Offset: 0x6368
	Size: 0x8F
	Parameters: 5
	Flags: None
*/
function function_e14494e9(var_a775367d, var_88c789f5, str_volume, n_wait, n_count)
{
	while(1)
	{
		if(spawn_manager::is_enabled(var_a775367d))
		{
			wait(n_wait);
			function_903e442f(var_88c789f5, str_volume, n_count);
			break;
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_903e442f
	Namespace: namespace_36cbf523
	Checksum: 0xAE439030
	Offset: 0x6400
	Size: 0x177
	Parameters: 3
	Flags: None
*/
function function_903e442f(str_spawner, str_volume, n_count)
{
	while(1)
	{
		a_ai = GetAITeamArray("axis");
		e_volume = GetEnt(str_volume, "targetname");
		var_60db32a8 = [];
		if(isdefined(e_volume))
		{
			if(a_ai.size > 0)
			{
				foreach(ai in a_ai)
				{
					if(ai istouching(e_volume))
					{
						var_60db32a8[var_60db32a8.size] = ai;
					}
				}
			}
		}
		else if(var_60db32a8.size <= n_count)
		{
			spawn_manager::enable(str_spawner);
			break;
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_e62729fb
	Namespace: namespace_36cbf523
	Checksum: 0x489B0832
	Offset: 0x6580
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_e62729fb(e_volume)
{
	self endon("death");
	self.goalRadius = 128;
	self SetGoal(e_volume);
	self waittill("goal");
	self.goalRadius = 1024;
}

/*
	Name: function_642da963
	Namespace: namespace_36cbf523
	Checksum: 0x9F5C6C0B
	Offset: 0x65E0
	Size: 0x119
	Parameters: 2
	Flags: None
*/
function function_642da963(var_525ec887, var_9ecf6f45)
{
	var_62666705 = GetEnt(var_9ecf6f45, "targetname");
	a_enemies = GetAIArray(var_525ec887, "targetname");
	foreach(e_enemy in a_enemies)
	{
		if(isalive(e_enemy))
		{
			e_enemy thread function_e62729fb(var_62666705);
		}
		util::wait_network_frame();
	}
}

/*
	Name: function_810ccf7
	Namespace: namespace_36cbf523
	Checksum: 0x54531552
	Offset: 0x6708
	Size: 0x171
	Parameters: 2
	Flags: None
*/
function function_810ccf7(var_ff2595a1, var_ca15af83)
{
	a_enemies = GetAITeamArray("axis");
	var_1e28a049 = GetEnt(var_ff2595a1, "targetname");
	var_901a3e4b = GetEnt(var_ca15af83, "targetname");
	if(isdefined(var_1e28a049) && isdefined(var_901a3e4b))
	{
		foreach(e_enemy in a_enemies)
		{
			if(isalive(e_enemy))
			{
				if(e_enemy istouching(var_1e28a049))
				{
					e_enemy thread function_e62729fb(var_901a3e4b);
				}
			}
			util::wait_network_frame();
		}
	}
}

/*
	Name: function_e02dee76
	Namespace: namespace_36cbf523
	Checksum: 0xA07FA652
	Offset: 0x6888
	Size: 0x9D
	Parameters: 5
	Flags: None
*/
function function_e02dee76(e_player, str_message, x_off, y_off, font_scale)
{
	/#
		var_37a329de = (1, 1, 1);
		hud_elem = e_player create_client_hud_elem("Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported", "Dev Block strings are not supported", x_off, y_off, font_scale, var_37a329de, str_message);
		return hud_elem;
	#/
}

/*
	Name: create_client_hud_elem
	Namespace: namespace_36cbf523
	Checksum: 0xF915A23D
	Offset: 0x6930
	Size: 0x1B1
	Parameters: 9
	Flags: None
*/
function create_client_hud_elem(alignX, alignY, horzAlign, vertAlign, xOffset, yOffset, fontscale, color, str_text)
{
	/#
		hud_elem = newClientHudElem(self);
		hud_elem.elemType = "Dev Block strings are not supported";
		hud_elem.font = "Dev Block strings are not supported";
		hud_elem.alignX = alignX;
		hud_elem.alignY = alignY;
		hud_elem.horzAlign = horzAlign;
		hud_elem.vertAlign = vertAlign;
		hud_elem.x = hud_elem.x + xOffset;
		hud_elem.y = hud_elem.y + yOffset;
		hud_elem.foreground = 1;
		hud_elem.fontscale = fontscale;
		hud_elem.alpha = 1;
		hud_elem.color = color;
		hud_elem.hidewheninmenu = 1;
		hud_elem setText(str_text);
		return hud_elem;
	#/
}

/*
	Name: player_can_see_me
	Namespace: namespace_36cbf523
	Checksum: 0x877EEE07
	Offset: 0x6AF0
	Size: 0x2B5
	Parameters: 1
	Flags: None
*/
function player_can_see_me(dist)
{
	if(!isdefined(dist))
	{
		dist = 512;
	}
	for(i = 0; i < level.players.size; i++)
	{
		if(!isdefined(self))
		{
			return 0;
		}
		if(!isdefined(level.players[i]))
		{
			continue;
		}
		playerAngles = level.players[i] getPlayerAngles();
		playerForwardVec = AnglesToForward(playerAngles);
		playerUnitForwardVec = VectorNormalize(playerForwardVec);
		banzaiPos = self.origin;
		playerpos = level.players[i] GetOrigin();
		playerToBanzaiVec = banzaiPos - playerpos;
		playerToBanzaiUnitVec = VectorNormalize(playerToBanzaiVec);
		forwardDotBanzai = VectorDot(playerUnitForwardVec, playerToBanzaiUnitVec);
		if(forwardDotBanzai >= 1)
		{
			angleFromCenter = 0;
		}
		else if(forwardDotBanzai <= -1)
		{
			angleFromCenter = 180;
		}
		else
		{
			angleFromCenter = ACos(forwardDotBanzai);
		}
		playerFOV = GetDvarFloat("cg_fov");
		banzaiVsPlayerFOVBuffer = GetDvarFloat("g_banzai_player_fov_buffer");
		if(banzaiVsPlayerFOVBuffer <= 0)
		{
			banzaiVsPlayerFOVBuffer = 0.2;
		}
		playerCanSeeMe = angleFromCenter <= playerFOV * 0.5 * 1 - banzaiVsPlayerFOVBuffer;
		if(isdefined(playerCanSeeMe) && playerCanSeeMe || Distance(level.players[i].origin, self.origin) < dist)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_9d8bcc37
	Namespace: namespace_36cbf523
	Checksum: 0x440FCEB
	Offset: 0x6DB0
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_9d8bcc37(a_models)
{
	foreach(model in a_models)
	{
		model ghost();
	}
}

/*
	Name: function_bdea6c61
	Namespace: namespace_36cbf523
	Checksum: 0xFD84B118
	Offset: 0x6E50
	Size: 0x91
	Parameters: 1
	Flags: None
*/
function function_bdea6c61(a_models)
{
	foreach(model in a_models)
	{
		model show();
	}
}

/*
	Name: function_b8670a1c
	Namespace: namespace_36cbf523
	Checksum: 0x82256B
	Offset: 0x6EF0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_b8670a1c()
{
	level.var_ac69c49c = level.sun_shadow_split_distance;
	level util::set_sun_shadow_split_distance(5000);
}

/*
	Name: function_ed468ba2
	Namespace: namespace_36cbf523
	Checksum: 0x6C515151
	Offset: 0x6F28
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_ed468ba2()
{
	if(isdefined(level.var_ac69c49c))
	{
		level util::set_sun_shadow_split_distance(level.var_ac69c49c);
	}
}

/*
	Name: zmbAIVox_NotifyConvert
	Namespace: namespace_36cbf523
	Checksum: 0x5BF2F399
	Offset: 0x6F60
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function zmbAIVox_NotifyConvert()
{
	self endon("death");
	self endon("disconnect");
	level endon("game_ended");
	self thread function_9fc02a8();
	self thread zmbAIVox_PlayDeath();
	while(1)
	{
		self waittill("bhtn_action_notify", notify_string);
		switch(notify_string)
		{
			case "attack_melee":
			case "behind":
			case "close":
			case "death":
			case "electrocute":
			{
				level thread zmbAIVox_PlayVox(self, notify_string, 1);
				break;
			}
			case "ambient":
			case "crawler":
			case "sprint":
			case "taunt":
			case "teardown":
			{
				level thread zmbAIVox_PlayVox(self, notify_string, 0);
				break;
			}
			case default:
			{
				if(isdefined(level._zmbAIVox_SpecialType))
				{
					if(isdefined(level._zmbAIVox_SpecialType[notify_string]))
					{
						level thread zmbAIVox_PlayVox(self, notify_string, 0);
					}
				}
				break;
			}
		}
	}
}

/*
	Name: zmbAIVox_PlayVox
	Namespace: namespace_36cbf523
	Checksum: 0x2D4F7658
	Offset: 0x70D0
	Size: 0x17B
	Parameters: 3
	Flags: None
*/
function zmbAIVox_PlayVox(zombie, type, override)
{
	zombie endon("death");
	if(!isdefined(zombie))
	{
		return;
	}
	if(!isdefined(zombie.voicePrefix))
	{
		return;
	}
	alias = "zmb_vocals_" + zombie.voicePrefix + "_" + type;
	if(sndIsNetworkSafe())
	{
		if(isdefined(override) && override)
		{
			if(type == "death")
			{
				zombie playsound(alias);
			}
			else
			{
				zombie PlaySoundOnTag(alias, "j_head");
			}
		}
		else if(!(isdefined(zombie.talking) && zombie.talking))
		{
			zombie.talking = 1;
			zombie PlaySoundWithNotify(alias, "sounddone", "j_head");
			zombie waittill("sounddone");
			zombie.talking = 0;
		}
	}
}

/*
	Name: function_9fc02a8
	Namespace: namespace_36cbf523
	Checksum: 0xE672993C
	Offset: 0x7258
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_9fc02a8()
{
	self endon("death");
	wait(RandomFloatRange(1, 3));
	while(1)
	{
		type = "ambient";
		if(!isdefined(self.zombie_move_speed))
		{
			wait(0.5);
			continue;
		}
		switch(self.zombie_move_speed)
		{
			case "walk":
			{
				type = "ambient";
				break;
			}
			case "run":
			{
				type = "sprint";
				break;
			}
			case "sprint":
			{
				type = "sprint";
				break;
			}
		}
		if(isdefined(self.missingLegs) && self.missingLegs)
		{
			type = "crawler";
		}
		self notify("bhtn_action_notify", type);
		wait(RandomFloatRange(1, 4));
	}
}

/*
	Name: zmbAIVox_PlayDeath
	Namespace: namespace_36cbf523
	Checksum: 0xDD7C83F5
	Offset: 0x7378
	Size: 0x5B
	Parameters: 0
	Flags: None
*/
function zmbAIVox_PlayDeath()
{
	self endon("disconnect");
	self waittill("death", attacker, meansOfDeath);
	if(isdefined(self))
	{
		level thread zmbAIVox_PlayVox(self, "death", 1);
	}
}

/*
	Name: networkSafeReset
	Namespace: namespace_36cbf523
	Checksum: 0x9A564F87
	Offset: 0x73E0
	Size: 0x2F
	Parameters: 0
	Flags: None
*/
function networkSafeReset()
{
	while(1)
	{
		level._numZmbAIVox = 0;
		util::wait_network_frame();
	}
}

/*
	Name: sndIsNetworkSafe
	Namespace: namespace_36cbf523
	Checksum: 0xC7F2CD15
	Offset: 0x7418
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function sndIsNetworkSafe()
{
	if(!isdefined(level._numZmbAIVox))
	{
		level thread networkSafeReset();
	}
	if(level._numZmbAIVox >= 2)
	{
		return 0;
	}
	level._numZmbAIVox++;
	return 1;
}

/*
	Name: zombie_behind_vox
	Namespace: namespace_36cbf523
	Checksum: 0xD3A55812
	Offset: 0x7468
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function zombie_behind_vox()
{
	level endon("hash_25601ed0");
	self endon("death_or_disconnect");
	level waittill("hash_ee152b14");
	if(!isdefined(level._zbv_vox_last_update_time))
	{
		level._zbv_vox_last_update_time = 0;
		level._audio_zbv_shared_ent_list = GetAITeamArray("axis");
	}
	while(1)
	{
		wait(1);
		t = GetTime();
		if(t > level._zbv_vox_last_update_time + 1000)
		{
			level._zbv_vox_last_update_time = t;
			level._audio_zbv_shared_ent_list = GetAITeamArray("axis");
		}
		zombs = level._audio_zbv_shared_ent_list;
		played_sound = 0;
		for(i = 0; i < zombs.size; i++)
		{
			if(!isdefined(zombs[i]))
			{
				continue;
			}
			if(DistanceSquared(zombs[i].origin, self.origin) < 62500)
			{
				yaw = self GetYawToSpot(zombs[i].origin);
				z_diff = self.origin[2] - zombs[i].origin[2];
				if(yaw < -95 || yaw > 95 && Abs(z_diff) < 50)
				{
					zombs[i] notify("bhtn_action_notify", "behind");
					played_sound = 1;
					break;
				}
			}
		}
		if(played_sound)
		{
			wait(5);
		}
	}
}

/*
	Name: GetYawToSpot
	Namespace: namespace_36cbf523
	Checksum: 0xA1B6A4B2
	Offset: 0x76C0
	Size: 0x73
	Parameters: 1
	Flags: None
*/
function GetYawToSpot(spot)
{
	pos = spot;
	yaw = self.angles[1] - GetYaw(pos);
	yaw = AngleClamp180(yaw);
	return yaw;
}

/*
	Name: GetYaw
	Namespace: namespace_36cbf523
	Checksum: 0x369355C5
	Offset: 0x7740
	Size: 0x41
	Parameters: 1
	Flags: None
*/
function GetYaw(org)
{
	angles = VectorToAngles(org - self.origin);
	return angles[1];
}

/*
	Name: player_distance
	Namespace: namespace_36cbf523
	Checksum: 0xDFBECEFD
	Offset: 0x7790
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function player_distance(pos)
{
	closest_dist = 99999.9;
	a_players = GetPlayers();
	for(i = 0; i < a_players.size; i++)
	{
		dist = Distance(a_players[i].origin, pos);
		if(dist < closest_dist)
		{
			closest_dist = dist;
		}
	}
	return closest_dist;
}

/*
	Name: function_eaf9c027
	Namespace: namespace_36cbf523
	Checksum: 0xA6283B13
	Offset: 0x7858
	Size: 0x53
	Parameters: 2
	Flags: None
*/
function function_eaf9c027(str_movie_name, var_e0017db3)
{
	if(!isdefined(var_e0017db3))
	{
		var_e0017db3 = "fullscreen_additive";
	}
	level function_dd048f8d("dni_futz", str_movie_name, var_e0017db3);
}

/*
	Name: function_dd048f8d
	Namespace: namespace_36cbf523
	Checksum: 0x81EA4DD1
	Offset: 0x78B8
	Size: 0x221
	Parameters: 5
	Flags: None
*/
function function_dd048f8d(var_8907c2b8, str_movie_name, var_e0017db3, var_28856194, var_ecc70d4b)
{
	if(!isdefined(var_28856194))
	{
		var_28856194 = 0;
	}
	if(!isdefined(var_ecc70d4b))
	{
		var_ecc70d4b = 0;
	}
	var_b14c1a2c = [];
	var_b14c1a2c["dni_interrupt"] = "postfx_dni_interrupt";
	var_b14c1a2c["dni_futz"] = "postfx_futz";
	/#
		Assert(isdefined(var_b14c1a2c[var_8907c2b8]), "Dev Block strings are not supported" + var_8907c2b8);
	#/
	if(var_28856194)
	{
		foreach(player in level.players)
		{
			player clientfield::increment_to_player(var_b14c1a2c[var_8907c2b8], 1);
		}
		wait(1);
	}
	if(isdefined(str_movie_name))
	{
		LUI::play_movie(str_movie_name, var_e0017db3);
		if(var_ecc70d4b)
		{
			foreach(player in level.players)
			{
				player clientfield::increment_to_player(var_b14c1a2c[var_8907c2b8], 1);
			}
		}
	}
}

/*
	Name: ai_camo
	Namespace: namespace_36cbf523
	Checksum: 0xE98EBC6C
	Offset: 0x7AE8
	Size: 0xF9
	Parameters: 2
	Flags: None
*/
function ai_camo(var_e33a0786, var_fbf0fdce)
{
	if(!isdefined(var_fbf0fdce))
	{
		var_fbf0fdce = 1;
	}
	self endon("death");
	if(isdefined(var_fbf0fdce) && var_fbf0fdce)
	{
		self clientfield::set("sarah_camo_shader", 2);
		self clientfield::set("ai_dni_rez_in", 1);
		wait(1);
	}
	self clientfield::set("sarah_camo_shader", var_e33a0786);
	if(var_e33a0786 == 1)
	{
		self ai::set_ignoreme(1);
	}
	else
	{
		self ai::set_ignoreme(0);
		self notify("hash_a6476729");
	}
}

/*
	Name: function_9110a277
	Namespace: namespace_36cbf523
	Checksum: 0xF3241D05
	Offset: 0x7BF0
	Size: 0x16B
	Parameters: 2
	Flags: None
*/
function function_9110a277(var_e33a0786, var_fbf0fdce)
{
	if(!isdefined(var_fbf0fdce))
	{
		var_fbf0fdce = 1;
	}
	self endon("death");
	if(isdefined(var_fbf0fdce) && var_fbf0fdce)
	{
		self clientfield::set("sarah_camo_shader", 2);
		if(var_e33a0786 == 1)
		{
			self clientfield::increment("ai_dni_rez_out", 1);
		}
		else
		{
			self util::delay(0.5, undefined, &clientfield::set, "ai_dni_rez_in", 1);
		}
		wait(1);
	}
	self clientfield::set("sarah_camo_shader", var_e33a0786);
	if(var_e33a0786 == 1)
	{
		self ai::set_ignoreme(1);
		self ghost();
	}
	else
	{
		self ai::set_ignoreme(0);
		self notify("hash_a6476729");
		self show();
	}
}

/*
	Name: function_8420d8cd
	Namespace: namespace_36cbf523
	Checksum: 0x329C822A
	Offset: 0x7D68
	Size: 0x163
	Parameters: 1
	Flags: None
*/
function function_8420d8cd(str_struct)
{
	s_struct = struct::get(str_struct, "targetname");
	var_d91de807 = AnglesToForward(s_struct.angles);
	player_close = 0;
	while(!player_close)
	{
		a_players = GetPlayers();
		for(i = 0; i < a_players.size; i++)
		{
			e_player = a_players[i];
			v_dir = VectorNormalize(e_player.origin - s_struct.origin);
			dp = VectorDot(v_dir, var_d91de807);
			if(dp > 0)
			{
				player_close = 1;
				break;
			}
		}
		wait(0.05);
	}
}

/*
	Name: function_9d611fab
	Namespace: namespace_36cbf523
	Checksum: 0xA09D3545
	Offset: 0x7ED8
	Size: 0x16F
	Parameters: 1
	Flags: None
*/
function function_9d611fab(str_struct)
{
	s_struct = struct::get(str_struct, "targetname");
	var_d91de807 = AnglesToForward(s_struct.angles);
	while(1)
	{
		var_226231f3 = 0;
		a_players = GetPlayers();
		for(i = 0; i < a_players.size; i++)
		{
			e_player = a_players[i];
			v_dir = VectorNormalize(e_player.origin - s_struct.origin);
			dp = VectorDot(v_dir, var_d91de807);
			if(dp > 0)
			{
				var_226231f3++;
			}
		}
		if(var_226231f3 == a_players.size)
		{
			break;
		}
		wait(0.05);
	}
}

/*
	Name: function_426fde37
	Namespace: namespace_36cbf523
	Checksum: 0x8A23D140
	Offset: 0x8050
	Size: 0x27
	Parameters: 2
	Flags: None
*/
function function_426fde37(e_ent, var_686b9aeb)
{
	e_ent.var_8c3e4f1f = var_686b9aeb;
}

/*
	Name: function_b016b536
	Namespace: namespace_36cbf523
	Checksum: 0x51AC3EC9
	Offset: 0x8080
	Size: 0xDD
	Parameters: 2
	Flags: None
*/
function function_b016b536(var_686b9aeb, do_death)
{
	a_ai = GetAIArray();
	if(isdefined(a_ai))
	{
		for(i = 0; i < a_ai.size; i++)
		{
			e_ent = a_ai[i];
			if(isdefined(e_ent.var_8c3e4f1f) && e_ent.var_8c3e4f1f == var_686b9aeb)
			{
				if(do_death)
				{
					e_ent kill();
					continue;
				}
				e_ent delete();
			}
		}
	}
}

/*
	Name: function_9e5ed1ac
	Namespace: namespace_36cbf523
	Checksum: 0x89CD0639
	Offset: 0x8168
	Size: 0x193
	Parameters: 1
	Flags: None
*/
function function_9e5ed1ac(a_ents)
{
	var_3c3f5d83 = [];
	a_players = GetPlayers();
	while(a_ents.size > 0)
	{
		e_closest = undefined;
		var_6e3476d = 999999.9;
		for(i = 0; i < a_ents.size; i++)
		{
			n_player_dist = 999999.9;
			for(np = 0; np < a_players.size; np++)
			{
				dist = Distance(a_players[np].origin, a_ents[i].origin);
				if(dist < n_player_dist)
				{
					n_player_dist = dist;
				}
			}
			if(n_player_dist < var_6e3476d)
			{
				var_6e3476d = n_player_dist;
				e_closest = a_ents[i];
			}
		}
		var_3c3f5d83[var_3c3f5d83.size] = e_closest;
		ArrayRemoveValue(a_ents, e_closest);
	}
	return var_3c3f5d83;
}

/*
	Name: function_3c363cb3
	Namespace: namespace_36cbf523
	Checksum: 0x576C2B10
	Offset: 0x8308
	Size: 0xA3
	Parameters: 1
	Flags: None
*/
function function_3c363cb3(var_7edf627d)
{
	a_ai_array = GetAITeamArray("allies");
	a_ai_array = Array::exclude(a_ai_array, level.heroes);
	var_58c5eb41 = ArrayGetClosest(level.players[0].origin, a_ai_array);
	if(isdefined(var_58c5eb41))
	{
		var_58c5eb41 notify("hash_2605e152", var_7edf627d);
	}
}

/*
	Name: function_67137b13
	Namespace: namespace_36cbf523
	Checksum: 0x96637EA7
	Offset: 0x83B8
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_67137b13()
{
	var_8db36247 = GetEntArray("fold_plane", "targetname");
	foreach(var_e1427d74 in var_8db36247)
	{
		var_e1427d74 show();
	}
}

/*
	Name: function_4f66eed6
	Namespace: namespace_36cbf523
	Checksum: 0xF05121A7
	Offset: 0x8478
	Size: 0xB1
	Parameters: 0
	Flags: None
*/
function function_4f66eed6()
{
	var_8db36247 = GetEntArray("fold_plane", "targetname");
	foreach(var_e1427d74 in var_8db36247)
	{
		var_e1427d74 ghost();
	}
}

/*
	Name: function_9f64d290
	Namespace: namespace_36cbf523
	Checksum: 0x1F8DE3D6
	Offset: 0x8538
	Size: 0x12D
	Parameters: 2
	Flags: None
*/
function function_9f64d290(a_ents, b_enable)
{
	foreach(ent in a_ents)
	{
		if(b_enable)
		{
			if(IsActor(ent) && isdefined(ent.var_68dd6b84))
			{
				ent.properName = ent.var_68dd6b84;
			}
			continue;
		}
		if(IsActor(ent) && isdefined(ent.properName))
		{
			ent.var_68dd6b84 = ent.properName;
			ent.properName = "";
		}
	}
}

/*
	Name: function_7aca917c
	Namespace: namespace_36cbf523
	Checksum: 0x84D77736
	Offset: 0x8670
	Size: 0x6B
	Parameters: 2
	Flags: None
*/
function function_7aca917c(var_920aba92, var_8182276a)
{
	if(!isdefined(var_8182276a))
	{
		var_8182276a = 0;
	}
	level.var_1b3f87f7 = CreateStreamerHint(var_920aba92, 1, var_8182276a);
	level.var_1b3f87f7 function_da46a629(1);
}

/*
	Name: function_f6d49772
	Namespace: namespace_36cbf523
	Checksum: 0x6FB0C090
	Offset: 0x86E8
	Size: 0x1D7
	Parameters: 3
	Flags: None
*/
function function_f6d49772(str_trig_name, str_dialog, str_notify_end)
{
	level endon(str_notify_end);
	while(1)
	{
		trig = GetEnt(str_trig_name, "targetname");
		trig waittill("trigger", who);
		if(!isdefined(who.var_a2496e3e))
		{
			who.var_a2496e3e = [];
			who.var_a2496e3e[str_dialog] = 1;
			while(isdefined(who.var_5441261b) && who.var_5441261b)
			{
				wait(0.5);
			}
			who.var_5441261b = 1;
			level dialog::say(str_dialog, 0, 1, who);
			who.var_5441261b = 0;
		}
		else if(!isdefined(who.var_a2496e3e[str_dialog]))
		{
			who.var_a2496e3e[str_dialog] = 1;
			while(isdefined(who.var_5441261b) && who.var_5441261b)
			{
				wait(0.5);
			}
			who.var_5441261b = 1;
			level dialog::say(str_dialog, 0, 1, who);
			who.var_5441261b = 0;
		}
	}
}


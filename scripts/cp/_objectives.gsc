#using scripts\codescripts\struct;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\objpoints_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace namespace_60c78d95;

/*
	Name: function_9b385ca5
	Namespace: namespace_60c78d95
	Checksum: 0x99EC1590
	Offset: 0x3B0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
}

/*
	Name: init
	Namespace: namespace_60c78d95
	Checksum: 0xD71AF9BB
	Offset: 0x3C0
	Size: 0x1DB
	Parameters: 3
	Flags: None
*/
function init(str_type, var_6497c82d, var_ab216c38)
{
	if(!isdefined(var_ab216c38))
	{
		var_ab216c38 = 0;
	}
	self.var_f67f539d = [];
	self.var_eddaae75 = [];
	self.var_1dd3bf2d = str_type;
	if(var_ab216c38)
	{
		var_2d7defd1 = gameobjects::get_next_obj_id();
		self.var_eddaae75 = Array(var_2d7defd1);
		objective_add(var_2d7defd1, "done", (0, 0, 0), istring(str_type));
	}
	else if(isdefined(var_6497c82d) && var_6497c82d.size > 0)
	{
		foreach(target in var_6497c82d)
		{
			add_target(target);
		}
	}
	else
	{
		var_2d7defd1 = gameobjects::get_next_obj_id();
		self.var_eddaae75 = Array(var_2d7defd1);
		objective_add(var_2d7defd1, "active", (0, 0, 0), istring(str_type));
	}
}

/*
	Name: function_99cfbd30
	Namespace: namespace_60c78d95
	Checksum: 0x7B090724
	Offset: 0x5A8
	Size: 0x4B
	Parameters: 2
	Flags: None
*/
function function_99cfbd30(var_f85419ab, value)
{
	var_2d7defd1 = self.var_eddaae75[0];
	function_78931f1b(var_2d7defd1, var_f85419ab, value);
}

/*
	Name: function_1b8e225f
	Namespace: namespace_60c78d95
	Checksum: 0xC55BE099
	Offset: 0x600
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_1b8e225f(x_val, y_val)
{
	function_99cfbd30("obj_x", x_val);
	if(isdefined(y_val))
	{
		function_99cfbd30("obj_y", y_val);
	}
}

/*
	Name: add_target
	Namespace: namespace_60c78d95
	Checksum: 0x38F22E8A
	Offset: 0x668
	Size: 0x1AB
	Parameters: 1
	Flags: None
*/
function add_target(target)
{
	if(IsInArray(self.var_f67f539d, target))
	{
		return;
	}
	var_2d7defd1 = undefined;
	if(self.var_f67f539d.size < self.var_eddaae75.size)
	{
		var_2d7defd1 = self.var_eddaae75[self.var_eddaae75.size - 1];
	}
	else
	{
		var_2d7defd1 = gameobjects::get_next_obj_id();
		Array::add(self.var_eddaae75, var_2d7defd1);
	}
	if(IsVec(target) || IsEntity(target))
	{
		objective_add(var_2d7defd1, "active", target, istring(self.var_1dd3bf2d));
	}
	else
	{
		objective_add(var_2d7defd1, "active", target.origin, istring(self.var_1dd3bf2d));
	}
	Array::add(self.var_f67f539d, target);
	/#
		Assert(self.var_f67f539d.size == self.var_eddaae75.size);
	#/
}

/*
	Name: complete
	Namespace: namespace_60c78d95
	Checksum: 0xB18F993A
	Offset: 0x820
	Size: 0x26B
	Parameters: 1
	Flags: None
*/
function complete(var_3f17add1)
{
	if(var_3f17add1.size > 0)
	{
		foreach(target in var_3f17add1)
		{
			for(i = self.var_f67f539d.size - 1; i >= 0; i--)
			{
				if(self.var_f67f539d[i] == target)
				{
					objective_state(self.var_eddaae75[i], "done");
					ArrayRemoveIndex(self.var_eddaae75, i);
					ArrayRemoveIndex(self.var_f67f539d, i);
					break;
				}
			}
		}
		break;
	}
	foreach(var_47ca997a in self.var_eddaae75)
	{
		objective_state(var_47ca997a, "done");
	}
	for(i = self.var_f67f539d.size - 1; i >= 0; i--)
	{
		ArrayRemoveIndex(self.var_eddaae75, i);
		ArrayRemoveIndex(self.var_f67f539d, i);
	}
	if(self.var_eddaae75.size == 0)
	{
		ArrayRemoveValue(level.a_objectives, self, 1);
	}
}

/*
	Name: Hide
	Namespace: namespace_60c78d95
	Checksum: 0x8B597FFD
	Offset: 0xA98
	Size: 0x161
	Parameters: 1
	Flags: None
*/
function Hide(e_player)
{
	if(isdefined(e_player))
	{
		/#
			Assert(isPlayer(e_player), "Dev Block strings are not supported");
		#/
		foreach(var_4458affc in self.var_eddaae75)
		{
			Objective_SetInvisibleToPlayer(var_4458affc, e_player);
		}
		break;
	}
	foreach(var_4458affc in self.var_eddaae75)
	{
		Objective_SetInvisibleToAll(var_4458affc);
	}
}

/*
	Name: show
	Namespace: namespace_60c78d95
	Checksum: 0x395B10E7
	Offset: 0xC08
	Size: 0x161
	Parameters: 1
	Flags: None
*/
function show(e_player)
{
	if(isdefined(e_player))
	{
		/#
			Assert(isPlayer(e_player), "Dev Block strings are not supported");
		#/
		foreach(var_4458affc in self.var_eddaae75)
		{
			Objective_SetVisibleToPlayer(var_4458affc, e_player);
		}
		break;
	}
	foreach(var_4458affc in self.var_eddaae75)
	{
		Objective_SetVisibleToAll(var_4458affc);
	}
}

/*
	Name: hide_for_target
	Namespace: namespace_60c78d95
	Checksum: 0xEA5D996C
	Offset: 0xD78
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function hide_for_target(e_target)
{
	foreach(var_4458affc in self.var_eddaae75)
	{
		ent = self.var_f67f539d[i];
		if(isdefined(ent) && ent == e_target)
		{
			objective_state(var_4458affc, "invisible");
			return;
		}
	}
}

/*
	Name: show_for_target
	Namespace: namespace_60c78d95
	Checksum: 0xF39D87D3
	Offset: 0xE50
	Size: 0xCB
	Parameters: 1
	Flags: None
*/
function show_for_target(e_target)
{
	foreach(var_4458affc in self.var_eddaae75)
	{
		ent = self.var_f67f539d[i];
		if(isdefined(ent) && ent == e_target)
		{
			objective_state(var_4458affc, "active");
			return;
		}
	}
}

/*
	Name: function_e95d8ccb
	Namespace: namespace_60c78d95
	Checksum: 0xA755AAC
	Offset: 0xF28
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function function_e95d8ccb(e_target)
{
	foreach(var_4458affc in self.var_eddaae75)
	{
		ent = self.var_f67f539d[i];
		if(isdefined(ent) && ent == e_target)
		{
			return var_4458affc;
		}
	}
	return -1;
}

/*
	Name: is_breadcrumb
	Namespace: namespace_60c78d95
	Checksum: 0xE72E69A1
	Offset: 0xFF0
	Size: 0x5
	Parameters: 0
	Flags: None
*/
function is_breadcrumb()
{
	return 0;
}

/*
	Name: function_5fba2032
	Namespace: namespace_60c78d95
	Checksum: 0x99EC1590
	Offset: 0x1000
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
}

#namespace objectives;

/*
	Name: function_60c78d95
	Namespace: objectives
	Checksum: 0x415A5E31
	Offset: 0x1010
	Size: 0x295
	Parameters: 0
	Flags: 6
*/
function private autoexec function_60c78d95()
{
	classes.var_60c78d95[0] = spawnstruct();
	classes.var_60c78d95[0].__vtable[1606033458] = &namespace_60c78d95::function_5fba2032;
	classes.var_60c78d95[0].__vtable[167654991] = &namespace_60c78d95::is_breadcrumb;
	classes.var_60c78d95[0].__vtable[-379745077] = &namespace_60c78d95::function_e95d8ccb;
	classes.var_60c78d95[0].__vtable[-1058346386] = &namespace_60c78d95::show_for_target;
	classes.var_60c78d95[0].__vtable[1724316027] = &namespace_60c78d95::hide_for_target;
	classes.var_60c78d95[0].__vtable[1223845734] = &namespace_60c78d95::show;
	classes.var_60c78d95[0].__vtable[1355607693] = &namespace_60c78d95::Hide;
	classes.var_60c78d95[0].__vtable[835524660] = &namespace_60c78d95::complete;
	classes.var_60c78d95[0].__vtable[1443065110] = &namespace_60c78d95::add_target;
	classes.var_60c78d95[0].__vtable[462299743] = &namespace_60c78d95::function_1b8e225f;
	classes.var_60c78d95[0].__vtable[-1714438864] = &namespace_60c78d95::function_99cfbd30;
	classes.var_60c78d95[0].__vtable[-1017222485] = &namespace_60c78d95::init;
	classes.var_60c78d95[0].__vtable[-1690805083] = &namespace_60c78d95::function_9b385ca5;
}

#namespace namespace_1d3048b8;

/*
	Name: function_9b385ca5
	Namespace: namespace_1d3048b8
	Checksum: 0xD613FFF
	Offset: 0x12B0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_9b385ca5()
{
	namespace_60c78d95::function_9b385ca5();
}

/*
	Name: init
	Namespace: namespace_1d3048b8
	Checksum: 0xC2FABE03
	Offset: 0x12D0
	Size: 0x17B
	Parameters: 3
	Flags: None
*/
function init(str_type, var_6497c82d, var_ab216c38)
{
	if(!isdefined(var_ab216c38))
	{
		var_ab216c38 = 0;
	}
	namespace_60c78d95::init(str_type, var_6497c82d, var_ab216c38);
	self.var_d76d218f = "";
	self.var_f801dde5 = var_ab216c38;
	self.var_3a9aa809 = [];
	for(i = 0; i < 4; i++)
	{
		var_4458affc = gameobjects::get_next_obj_id();
		self.var_3a9aa809[i] = var_4458affc;
		if(self.var_f801dde5)
		{
			objective_add(var_4458affc, "done", (0, 0, 0), istring(self.var_1dd3bf2d));
			continue;
		}
		objective_add(var_4458affc, "empty", (0, 0, 0), istring(self.var_1dd3bf2d));
	}
	var_4458affc = self.var_eddaae75[0];
	Objective_SetInvisibleToAll(var_4458affc);
}

/*
	Name: complete
	Namespace: namespace_1d3048b8
	Checksum: 0xED9E6446
	Offset: 0x1458
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function complete(var_3f17add1)
{
	level notify("breadcrumb_" + self.var_1dd3bf2d + "_complete");
	for(i = 0; i < 4; i++)
	{
		var_4458affc = self.var_3a9aa809[i];
		objective_state(var_4458affc, "done");
	}
	foreach(player in level.players)
	{
		player.var_924bb3b8 = undefined;
	}
	namespace_60c78d95::complete(var_3f17add1);
}

/*
	Name: Hide
	Namespace: namespace_1d3048b8
	Checksum: 0x811D1AB3
	Offset: 0x1588
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function Hide(e_player)
{
	if(isdefined(e_player))
	{
		/#
			Assert(isPlayer(e_player), "Dev Block strings are not supported");
		#/
		entnum = e_player GetEntityNumber();
		var_4458affc = self.var_3a9aa809[entnum];
		Objective_SetInvisibleToPlayer(var_4458affc, e_player);
		break;
	}
	for(i = 0; i < 4; i++)
	{
		var_4458affc = self.var_3a9aa809[i];
		function_29483715(var_4458affc, i);
	}
}

/*
	Name: show
	Namespace: namespace_1d3048b8
	Checksum: 0x30F9045
	Offset: 0x1690
	Size: 0xFD
	Parameters: 1
	Flags: None
*/
function show(e_player)
{
	if(isdefined(e_player))
	{
		/#
			Assert(isPlayer(e_player), "Dev Block strings are not supported");
		#/
		entnum = e_player GetEntityNumber();
		var_4458affc = self.var_3a9aa809[entnum];
		Objective_SetVisibleToPlayer(var_4458affc, e_player);
		break;
	}
	for(i = 0; i < 4; i++)
	{
		var_4458affc = self.var_3a9aa809[i];
		function_1523cdf0(var_4458affc, i);
	}
}

/*
	Name: start
	Namespace: namespace_1d3048b8
	Checksum: 0x33D25588
	Offset: 0x1798
	Size: 0xA9
	Parameters: 1
	Flags: None
*/
function start(str_trig_targetname)
{
	self.var_d76d218f = str_trig_targetname;
	self.var_f801dde5 = 0;
	foreach(player in level.players)
	{
		function_5c0f636a(player);
	}
}

/*
	Name: function_5c0f636a
	Namespace: namespace_1d3048b8
	Checksum: 0x7D679BC9
	Offset: 0x1850
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_5c0f636a(player)
{
	entnum = player GetEntityNumber();
	var_4458affc = self.var_3a9aa809[entnum];
	Objective_SetInvisibleToAll(var_4458affc);
	Objective_SetVisibleToPlayer(var_4458affc, player);
	objective_state(var_4458affc, "active");
	thread function_1c66b4d2(player);
}

/*
	Name: function_e3023aa1
	Namespace: namespace_1d3048b8
	Checksum: 0xDF5C259E
	Offset: 0x1910
	Size: 0x133
	Parameters: 2
	Flags: Private
*/
function private function_e3023aa1(player, target)
{
	entnum = player GetEntityNumber();
	var_4458affc = self.var_3a9aa809[entnum];
	var_a5b46d2f = 72;
	v_pos = target;
	if(!IsVec(target))
	{
		v_pos = target.origin;
		if(isdefined(target.script_height))
		{
			var_a5b46d2f = target.script_height;
		}
	}
	v_pos = util::ground_position(v_pos, 300, var_a5b46d2f);
	player.var_924bb3b8 = v_pos;
	objective_position(var_4458affc, v_pos);
	objective_state(var_4458affc, "active");
}

/*
	Name: function_1c66b4d2
	Namespace: namespace_1d3048b8
	Checksum: 0xFF77E1AB
	Offset: 0x1A50
	Size: 0x2DB
	Parameters: 1
	Flags: None
*/
function function_1c66b4d2(player)
{
	level endon("breadcrumb_" + self.var_1dd3bf2d);
	level endon("breadcrumb_" + self.var_1dd3bf2d + "_complete");
	player endon("death");
	str_trig_targetname = self.var_d76d218f;
	entnum = player GetEntityNumber();
	var_4458affc = self.var_3a9aa809[entnum];
	Objective_SetVisibleToPlayer(var_4458affc, player);
	do
	{
		t_current = GetEnt(str_trig_targetname, "targetname");
		if(isdefined(t_current))
		{
			if(isdefined(t_current.target))
			{
				if(isdefined(t_current.script_flag_true))
				{
					Objective_SetInvisibleToPlayer(var_4458affc, player);
					level flag::wait_till(t_current.script_flag_true);
					Objective_SetVisibleToPlayer(var_4458affc, player);
				}
				s_current = struct::get(t_current.target, "targetname");
				if(isdefined(s_current))
				{
					function_e3023aa1(player, s_current);
				}
				else
				{
					function_e3023aa1(player, t_current);
				}
			}
			else
			{
				function_e3023aa1(player, t_current);
			}
			str_trig_targetname = t_current.target;
			t_current trigger::wait_till(undefined, undefined, player);
		}
		else
		{
			str_trig_targetname = undefined;
		}
	}
	while(!isdefined(str_trig_targetname));
	Objective_SetInvisibleToPlayer(var_4458affc, player);
	foreach(player in level.players)
	{
		player.var_924bb3b8 = undefined;
	}
	self.var_f801dde5 = 1;
}

/*
	Name: is_breadcrumb
	Namespace: namespace_1d3048b8
	Checksum: 0x3FE0C49D
	Offset: 0x1D38
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function is_breadcrumb()
{
	return 1;
}

/*
	Name: function_a130b2ac
	Namespace: namespace_1d3048b8
	Checksum: 0xEF999E9C
	Offset: 0x1D48
	Size: 0x9
	Parameters: 0
	Flags: None
*/
function function_a130b2ac()
{
	return self.var_f801dde5;
}

/*
	Name: function_5fba2032
	Namespace: namespace_1d3048b8
	Checksum: 0x76F0669B
	Offset: 0x1D60
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_5fba2032()
{
	namespace_60c78d95::function_5fba2032();
}

#namespace objectives;

/*
	Name: function_1d3048b8
	Namespace: objectives
	Checksum: 0x3055588A
	Offset: 0x1D80
	Size: 0x4D5
	Parameters: 0
	Flags: 6
*/
function private autoexec function_1d3048b8()
{
	classes.var_1d3048b8[0] = spawnstruct();
	classes.var_1d3048b8[0].__vtable[1606033458] = &namespace_60c78d95::function_5fba2032;
	classes.var_1d3048b8[0].__vtable[167654991] = &namespace_60c78d95::is_breadcrumb;
	classes.var_1d3048b8[0].__vtable[-379745077] = &namespace_60c78d95::function_e95d8ccb;
	classes.var_1d3048b8[0].__vtable[-1058346386] = &namespace_60c78d95::show_for_target;
	classes.var_1d3048b8[0].__vtable[1724316027] = &namespace_60c78d95::hide_for_target;
	classes.var_1d3048b8[0].__vtable[1223845734] = &namespace_60c78d95::show;
	classes.var_1d3048b8[0].__vtable[1355607693] = &namespace_60c78d95::Hide;
	classes.var_1d3048b8[0].__vtable[835524660] = &namespace_60c78d95::complete;
	classes.var_1d3048b8[0].__vtable[1443065110] = &namespace_60c78d95::add_target;
	classes.var_1d3048b8[0].__vtable[462299743] = &namespace_60c78d95::function_1b8e225f;
	classes.var_1d3048b8[0].__vtable[-1714438864] = &namespace_60c78d95::function_99cfbd30;
	classes.var_1d3048b8[0].__vtable[-1017222485] = &namespace_60c78d95::init;
	classes.var_1d3048b8[0].__vtable[-1690805083] = &namespace_60c78d95::function_9b385ca5;
	classes.var_1d3048b8[0].__vtable[1606033458] = &namespace_1d3048b8::function_5fba2032;
	classes.var_1d3048b8[0].__vtable[-1590644052] = &namespace_1d3048b8::function_a130b2ac;
	classes.var_1d3048b8[0].__vtable[167654991] = &namespace_1d3048b8::is_breadcrumb;
	classes.var_1d3048b8[0].__vtable[476493010] = &namespace_1d3048b8::function_1c66b4d2;
	classes.var_1d3048b8[0].__vtable[-486393183] = &namespace_1d3048b8::function_e3023aa1;
	classes.var_1d3048b8[0].__vtable[1544512362] = &namespace_1d3048b8::function_5c0f636a;
	classes.var_1d3048b8[0].__vtable[55554463] = &namespace_1d3048b8::start;
	classes.var_1d3048b8[0].__vtable[1223845734] = &namespace_1d3048b8::show;
	classes.var_1d3048b8[0].__vtable[1355607693] = &namespace_1d3048b8::Hide;
	classes.var_1d3048b8[0].__vtable[835524660] = &namespace_1d3048b8::complete;
	classes.var_1d3048b8[0].__vtable[-1017222485] = &namespace_1d3048b8::init;
	classes.var_1d3048b8[0].__vtable[-1690805083] = &namespace_1d3048b8::function_9b385ca5;
}

/*
	Name: __init__sytem__
	Namespace: objectives
	Checksum: 0xB5C7AB63
	Offset: 0x2260
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("objectives", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: objectives
	Checksum: 0xFFB95EB8
	Offset: 0x22A0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level.a_objectives = [];
	level.n_obj_index = 0;
	callback::on_spawned(&on_player_spawned);
}

/*
	Name: set
	Namespace: objectives
	Checksum: 0xE5311779
	Offset: 0x22E8
	Size: 0x1C1
	Parameters: 3
	Flags: None
*/
function set(str_obj_type, var_3f17add1, var_464fc58b)
{
	if(!isdefined(level.a_objectives))
	{
		level.a_objectives = [];
	}
	if(!isdefined(var_464fc58b))
	{
		var_464fc58b = 0;
	}
	if(!isdefined(var_3f17add1))
	{
		var_3f17add1 = [];
	}
	else if(!IsArray(var_3f17add1))
	{
		var_3f17add1 = Array(var_3f17add1);
	}
	var_14191e40 = undefined;
	if(isdefined(level.a_objectives[str_obj_type]))
	{
		var_14191e40 = level.a_objectives[str_obj_type];
		if(isdefined(var_3f17add1))
		{
			foreach(target in var_3f17add1)
			{
				add_target(var_14191e40);
			}
		}
	}
	else if(var_464fc58b)
	{
		function_9b385ca5();
		var_14191e40 = var_1d3048b8;
	}
	else
	{
		function_9b385ca5();
		var_14191e40 = var_60c78d95;
	}
	init(var_14191e40, str_obj_type);
	level.a_objectives[str_obj_type] = var_14191e40;
	return var_14191e40;
}

/*
	Name: complete
	Namespace: objectives
	Checksum: 0x73B7B942
	Offset: 0x24B8
	Size: 0x115
	Parameters: 2
	Flags: None
*/
function complete(str_obj_type, var_3f17add1)
{
	if(!isdefined(var_3f17add1))
	{
		var_3f17add1 = [];
	}
	else if(!IsArray(var_3f17add1))
	{
		var_3f17add1 = Array(var_3f17add1);
	}
	if(isdefined(level.a_objectives[str_obj_type]))
	{
		var_14191e40 = level.a_objectives[str_obj_type];
		complete(var_14191e40);
	}
	else if(str_obj_type == "cp_waypoint_breadcrumb")
	{
		function_9b385ca5();
		var_14191e40 = var_1d3048b8;
	}
	else
	{
		function_9b385ca5();
		var_14191e40 = var_60c78d95;
	}
	init(var_14191e40, str_obj_type, undefined);
	level.a_objectives[str_obj_type] = var_14191e40;
}

/*
	Name: function_a5d62963
	Namespace: objectives
	Checksum: 0x9EBB1B12
	Offset: 0x25D8
	Size: 0x9F
	Parameters: 2
	Flags: None
*/
function function_a5d62963(var_15231088, a_targets)
{
	if(!isdefined(a_targets))
	{
		a_targets = [];
	}
	else if(!IsArray(a_targets))
	{
		a_targets = Array(a_targets);
	}
	o_obj = set(var_15231088, a_targets);
	function_1b8e225f(o_obj, 0);
}

/*
	Name: function_1b8e225f
	Namespace: objectives
	Checksum: 0x3B343737
	Offset: 0x2680
	Size: 0x57
	Parameters: 3
	Flags: None
*/
function function_1b8e225f(var_15231088, x_val, y_val)
{
	o_obj = level.a_objectives[var_15231088];
	if(isdefined(o_obj))
	{
		function_1b8e225f(o_obj, x_val);
	}
}

/*
	Name: function_3703618d
	Namespace: objectives
	Checksum: 0x3D66A80E
	Offset: 0x26E0
	Size: 0x57
	Parameters: 3
	Flags: None
*/
function function_3703618d(var_15231088, var_f85419ab, value)
{
	o_obj = level.a_objectives[var_15231088];
	if(isdefined(o_obj))
	{
		function_99cfbd30(o_obj, var_f85419ab);
	}
}

/*
	Name: breadcrumb
	Namespace: objectives
	Checksum: 0xAB32E7AF
	Offset: 0x2740
	Size: 0x113
	Parameters: 3
	Flags: None
*/
function breadcrumb(str_trig_targetname, var_15231088, var_684f50be)
{
	if(!isdefined(var_15231088))
	{
		var_15231088 = "cp_waypoint_breadcrumb";
	}
	if(!isdefined(var_684f50be))
	{
		var_684f50be = 1;
	}
	level notify("breadcrumb_" + var_15231088);
	level endon("breadcrumb_" + var_15231088);
	if(isdefined(level.a_objectives[var_15231088]))
	{
		complete(var_15231088);
	}
	var_14191e40 = set(var_15231088, undefined, 1);
	start(var_14191e40);
	while(!function_a130b2ac())
	{
		wait(0.05);
	}
	if(var_684f50be)
	{
		complete(var_15231088);
	}
}

/*
	Name: Hide
	Namespace: objectives
	Checksum: 0x725DDD3B
	Offset: 0x2860
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function Hide(str_obj_type, e_player)
{
	if(isdefined(level.a_objectives[str_obj_type]))
	{
		var_14191e40 = level.a_objectives[str_obj_type];
		Hide(var_14191e40);
	}
	else
	{
		Assert(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: hide_for_target
	Namespace: objectives
	Checksum: 0xA326BCFC
	Offset: 0x28E8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function hide_for_target(str_obj_type, e_target)
{
	if(isdefined(level.a_objectives[str_obj_type]))
	{
		var_14191e40 = level.a_objectives[str_obj_type];
		hide_for_target(var_14191e40);
	}
	else
	{
		Assert(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: show
	Namespace: objectives
	Checksum: 0xE9C9CE84
	Offset: 0x2970
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function show(str_obj_type, e_player)
{
	if(isdefined(level.a_objectives[str_obj_type]))
	{
		var_14191e40 = level.a_objectives[str_obj_type];
		show(var_14191e40);
	}
	else
	{
		Assert(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: show_for_target
	Namespace: objectives
	Checksum: 0xB48BD41
	Offset: 0x29F8
	Size: 0x7B
	Parameters: 2
	Flags: None
*/
function show_for_target(str_obj_type, e_target)
{
	if(isdefined(level.a_objectives[str_obj_type]))
	{
		var_14191e40 = level.a_objectives[str_obj_type];
		show_for_target(var_14191e40);
	}
	else
	{
		Assert(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_e95d8ccb
	Namespace: objectives
	Checksum: 0xF1481587
	Offset: 0x2A80
	Size: 0x9F
	Parameters: 2
	Flags: None
*/
function function_e95d8ccb(str_obj_type, e_target)
{
	id = -1;
	if(isdefined(level.a_objectives[str_obj_type]))
	{
		var_14191e40 = level.a_objectives[str_obj_type];
		id = function_e95d8ccb(var_14191e40);
	}
	if(id < 0)
	{
		/#
			Assert(0, "Dev Block strings are not supported");
		#/
	}
	return id;
}

/*
	Name: function_43241b6f
	Namespace: objectives
	Checksum: 0x8FE357EB
	Offset: 0x2B28
	Size: 0xA1
	Parameters: 1
	Flags: None
*/
function function_43241b6f(var_b555fce7)
{
	foreach(player in level.players)
	{
		util::function_964b7eb7(player, istring(var_b555fce7));
	}
}

/*
	Name: function_fe46cd6
	Namespace: objectives
	Checksum: 0x55C2D488
	Offset: 0x2BD8
	Size: 0x1D7
	Parameters: 4
	Flags: None
*/
function function_fe46cd6(str_obj_type, var_95acca4a, v_pos, v_offset)
{
	if(!isdefined(v_offset))
	{
		v_offset = (0, 0, 0);
	}
	switch(str_obj_type)
	{
		case "target":
		{
			str_shader = "waypoint_targetneutral";
			break;
		}
		case "capture":
		{
			str_shader = "waypoint_capture";
			break;
		}
		case "capture_a":
		{
			str_shader = "waypoint_capture_a";
			break;
		}
		case "capture_b":
		{
			str_shader = "waypoint_capture_b";
			break;
		}
		case "capture_c":
		{
			str_shader = "waypoint_capture_c";
			break;
		}
		case "defend":
		{
			str_shader = "waypoint_defend";
			break;
		}
		case "defend_a":
		{
			str_shader = "waypoint_defend_a";
			break;
		}
		case "defend_b":
		{
			str_shader = "waypoint_defend_b";
			break;
		}
		case "defend_c":
		{
			str_shader = "waypoint_defend_c";
			break;
		}
		case "return":
		{
			str_shader = "waypoint_return";
			break;
		}
		case default:
		{
			/#
				ASSERTMSG("Dev Block strings are not supported" + str_obj_type + "Dev Block strings are not supported");
			#/
			break;
		}
	}
	nextObjPoint = objPoints::create(var_95acca4a, v_pos + v_offset, "all", str_shader);
	nextObjPoint setWaypoint(1, str_shader);
	return nextObjPoint;
}

/*
	Name: function_ac28ba8e
	Namespace: objectives
	Checksum: 0xFD79D6B6
	Offset: 0x2DB8
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_ac28ba8e()
{
	objPoints::delete(self);
}

/*
	Name: on_player_spawned
	Namespace: objectives
	Checksum: 0x76E69D94
	Offset: 0x2DE0
	Size: 0xBD
	Parameters: 0
	Flags: Private
*/
function private on_player_spawned()
{
	if(isdefined(level.a_objectives))
	{
		foreach(var_14191e40 in level.a_objectives)
		{
			if(is_breadcrumb() && !function_a130b2ac())
			{
				function_5c0f636a(var_14191e40);
			}
		}
	}
}


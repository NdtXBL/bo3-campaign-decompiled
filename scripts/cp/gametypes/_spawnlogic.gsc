#using scripts\codescripts\struct;
#using scripts\cp\_callbacks;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\gameobjects_shared;
#using scripts\shared\math_shared;
#using scripts\shared\system_shared;

#namespace spawnlogic;

/*
	Name: __init__sytem__
	Namespace: spawnlogic
	Checksum: 0x8A8088D7
	Offset: 0x348
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("spawnlogic", &__init__, undefined, undefined);
}

/*
	Name: __init__
	Namespace: spawnlogic
	Checksum: 0x9FA329BB
	Offset: 0x388
	Size: 0x24B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	function_4489f2c9();
	foreach(spawn_point in function_93d52c4f())
	{
		if(isdefined(spawn_point.var_ff844e3f))
		{
			foreach(trig in GetEntArray(spawn_point.var_ff844e3f, "scriptgroup_playerspawns_enable"))
			{
				spawn_point thread function_d241af5c(trig);
			}
		}
		else if(isdefined(spawn_point.var_ff3739ca))
		{
			foreach(trig in GetEntArray(spawn_point.var_ff3739ca, "scriptgroup_playerspawns_disable"))
			{
				spawn_point thread function_e3064ea7(trig);
			}
		}
	}
	level thread function_39213560();
	callback::on_start_gametype(&init);
	/#
		level thread function_5787bc10();
	#/
}

/*
	Name: function_4489f2c9
	Namespace: spawnlogic
	Checksum: 0x3EF5FF22
	Offset: 0x5E0
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_4489f2c9()
{
	foreach(spawn_point in function_93d52c4f())
	{
		if(isdefined(spawn_point.LinkTo))
		{
			e_linkto = GetEnt(spawn_point.LinkTo, "linkname");
			spawn_point function_98b48204(e_linkto);
			continue;
		}
		if(isdefined(spawn_point.script_linkto))
		{
			e_linkto = GetEnt(spawn_point.script_linkto, "targetname");
			spawn_point function_98b48204(e_linkto);
		}
	}
}

/*
	Name: function_98b48204
	Namespace: spawnlogic
	Checksum: 0xEBFFD5E7
	Offset: 0x728
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_98b48204(e_linkto)
{
	var_14497229 = spawn("script_origin", self.origin);
	var_14497229.angles = self.angles;
	var_14497229.targetname = self.targetname;
	var_14497229.script_objective = self.script_objective;
	var_14497229.var_ff3739ca = self.var_ff3739ca;
	var_14497229.var_ff844e3f = self.var_ff844e3f;
	if(isdefined(e_linkto))
	{
		var_14497229 LinkTo(e_linkto);
	}
	self struct::delete();
}

/*
	Name: function_d241af5c
	Namespace: spawnlogic
	Checksum: 0xB29B001B
	Offset: 0x810
	Size: 0x4F
	Parameters: 1
	Flags: None
*/
function function_d241af5c(trig)
{
	trig endon("death");
	self.disabled = 1;
	while(1)
	{
		trig waittill("trigger");
		function_82c857e9(0);
	}
}

/*
	Name: function_e3064ea7
	Namespace: spawnlogic
	Checksum: 0xD515BD34
	Offset: 0x868
	Size: 0x47
	Parameters: 1
	Flags: None
*/
function function_e3064ea7(trig)
{
	trig endon("death");
	while(1)
	{
		trig waittill("trigger");
		function_82c857e9(1);
	}
}

/*
	Name: function_82c857e9
	Namespace: spawnlogic
	Checksum: 0xE637A5D0
	Offset: 0x8B8
	Size: 0x6F
	Parameters: 1
	Flags: None
*/
function function_82c857e9(b_enabled)
{
	if(isdefined(b_enabled) && b_enabled)
	{
	}
	else
	{
	}
	var_1b30c0b0 = undefined;
	if(self.disabled !== var_1b30c0b0)
	{
		level flagsys::set("spawnpoints_dirty");
		self.disabled = var_1b30c0b0;
	}
}

/*
	Name: function_39213560
	Namespace: spawnlogic
	Checksum: 0xFF193C80
	Offset: 0x930
	Size: 0xFF
	Parameters: 0
	Flags: None
*/
function function_39213560()
{
	while(1)
	{
		if(level flagsys::get("spawnpoints_dirty"))
		{
			foreach(team in level.teams)
			{
				rebuild_spawn_points(team);
			}
			level.unified_spawn_points = undefined;
			Spawning::updateAllSpawnPoints();
			level flagsys::clear("spawnpoints_dirty");
		}
		wait(0.05);
	}
}

/*
	Name: function_93d52c4f
	Namespace: spawnlogic
	Checksum: 0x6331C46B
	Offset: 0xA38
	Size: 0x63
	Parameters: 1
	Flags: None
*/
function function_93d52c4f(var_30b675eb)
{
	a_spawn_points = ArrayCombine(get_spawnpoint_array("cp_coop_spawn", var_30b675eb), get_spawnpoint_array("cp_coop_respawn", var_30b675eb), 0, 0);
	return a_spawn_points;
}

/*
	Name: function_5787bc10
	Namespace: spawnlogic
	Checksum: 0x300AF62A
	Offset: 0xAA8
	Size: 0x2AF
	Parameters: 0
	Flags: None
*/
function function_5787bc10()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: init
	Namespace: spawnlogic
	Checksum: 0x3091C87F
	Offset: 0xD60
	Size: 0x3BB
	Parameters: 0
	Flags: None
*/
function init()
{
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", 0);
		}
		level.storeSpawnData = GetDvarInt("Dev Block strings are not supported");
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", 0);
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", 0.25);
		}
		thread function_d320505c();
	#/
	level.spawnlogic_deaths = [];
	level.spawnlogic_spawnkills = [];
	level.players = [];
	level.grenades = [];
	level.pipebombs = [];
	level.spawnMins = (0, 0, 0);
	level.spawnMaxs = (0, 0, 0);
	level.spawnMinsMaxsPrimed = 0;
	if(isdefined(level.safespawns))
	{
		for(i = 0; i < level.safespawns.size; i++)
		{
			level.safespawns[i] spawnpoint_init();
		}
	}
	else if(GetDvarString("scr_spawn_enemyavoiddist") == "")
	{
		SetDvar("scr_spawn_enemyavoiddist", "800");
	}
	if(GetDvarString("scr_spawn_enemyavoidweight") == "")
	{
		SetDvar("scr_spawn_enemyavoidweight", "0");
	}
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarInt("Dev Block strings are not supported") > 0)
		{
			thread function_76bb9fb8();
			thread function_403f0d14();
			thread function_9ce570b0();
		}
		if(level.storeSpawnData)
		{
			thread function_8384886e();
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		thread function_f415b14();
		thread function_e2e4ca72();
	#/
}

/*
	Name: add_spawn_points_internal
	Namespace: spawnlogic
	Checksum: 0x5B22B67B
	Offset: 0x1128
	Size: 0x1E9
	Parameters: 2
	Flags: None
*/
function add_spawn_points_internal(team, Spawnpoints)
{
	oldSpawnPoints = [];
	if(level.teamSpawnPoints[team].size)
	{
		oldSpawnPoints = level.teamSpawnPoints[team];
	}
	if(isdefined(level.var_df118466))
	{
		Spawnpoints = [[level.var_df118466]](Spawnpoints);
	}
	level.teamSpawnPoints[team] = Spawnpoints;
	if(!isdefined(level.Spawnpoints))
	{
		level.Spawnpoints = [];
	}
	for(index = 0; index < level.teamSpawnPoints[team].size; index++)
	{
		spawnpoint = level.teamSpawnPoints[team][index];
		if(!isdefined(spawnpoint.inited))
		{
			spawnpoint spawnpoint_init();
			level.Spawnpoints[level.Spawnpoints.size] = spawnpoint;
		}
	}
	for(index = 0; index < oldSpawnPoints.size; index++)
	{
		origin = oldSpawnPoints[index].origin;
		level.spawnMins = math::expand_mins(level.spawnMins, origin);
		level.spawnMaxs = math::expand_maxs(level.spawnMaxs, origin);
		level.teamSpawnPoints[team][level.teamSpawnPoints[team].size] = oldSpawnPoints[index];
	}
}

/*
	Name: clear_spawn_points
	Namespace: spawnlogic
	Checksum: 0xAFCDA111
	Offset: 0x1320
	Size: 0x99
	Parameters: 0
	Flags: None
*/
function clear_spawn_points()
{
	foreach(team in level.teams)
	{
		level.teamSpawnPoints[team] = [];
	}
	level.Spawnpoints = [];
	level.unified_spawn_points = undefined;
}

/*
	Name: add_spawn_points
	Namespace: spawnlogic
	Checksum: 0x67D58D2F
	Offset: 0x13C8
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function add_spawn_points(team, spawnPointName)
{
	add_spawn_point_classname(spawnPointName);
	add_spawn_point_team_classname(team, spawnPointName);
	add_spawn_points_internal(team, get_spawnpoint_array(spawnPointName));
	if(!level.teamSpawnPoints[team].size)
	{
		/#
			if(!isdefined(level.var_a6f85f47))
			{
				/#
					Assert(level.teamSpawnPoints[team].size, "Dev Block strings are not supported" + spawnPointName + "Dev Block strings are not supported");
				#/
			}
		#/
		wait(1);
		return;
	}
}

/*
	Name: rebuild_spawn_points
	Namespace: spawnlogic
	Checksum: 0x66A6EB92
	Offset: 0x14A8
	Size: 0x85
	Parameters: 1
	Flags: None
*/
function rebuild_spawn_points(team)
{
	level.teamSpawnPoints[team] = [];
	for(index = 0; index < level.spawn_point_team_class_names[team].size; index++)
	{
		add_spawn_points_internal(team, get_spawnpoint_array(level.spawn_point_team_class_names[team][index]));
	}
}

/*
	Name: place_spawn_points
	Namespace: spawnlogic
	Checksum: 0x3DD5C882
	Offset: 0x1538
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function place_spawn_points(spawnPointName)
{
	add_spawn_point_classname(spawnPointName);
	Spawnpoints = get_spawnpoint_array(spawnPointName);
	/#
		if(!isdefined(level.extraspawnpointsused))
		{
			level.extraspawnpointsused = [];
		}
	#/
	if(!Spawnpoints.size)
	{
		/#
			println("Dev Block strings are not supported" + spawnPointName + "Dev Block strings are not supported");
		#/
		callback::abort_level();
		wait(1);
		return;
	}
	for(index = 0; index < Spawnpoints.size; index++)
	{
		Spawnpoints[index] spawnpoint_init();
		/#
			Spawnpoints[index].fakeclassname = spawnPointName;
			level.extraspawnpointsused[level.extraspawnpointsused.size] = Spawnpoints[index];
		#/
	}
}

/*
	Name: drop_spawn_points
	Namespace: spawnlogic
	Checksum: 0xEC46E7F9
	Offset: 0x1678
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function drop_spawn_points(spawnPointName)
{
	Spawnpoints = get_spawnpoint_array(spawnPointName);
	if(!Spawnpoints.size)
	{
		/#
			println("Dev Block strings are not supported" + spawnPointName + "Dev Block strings are not supported");
		#/
		return;
	}
	for(index = 0; index < Spawnpoints.size; index++)
	{
		Spawnpoints[index] function_1e347e22();
	}
}

/*
	Name: add_spawn_point_classname
	Namespace: spawnlogic
	Checksum: 0x908DFE4
	Offset: 0x1730
	Size: 0x43
	Parameters: 1
	Flags: None
*/
function add_spawn_point_classname(spawnPointClassName)
{
	if(!isdefined(level.spawn_point_class_names))
	{
		level.spawn_point_class_names = [];
	}
	Array::add(level.spawn_point_class_names, spawnPointClassName, 0);
}

/*
	Name: add_spawn_point_team_classname
	Namespace: spawnlogic
	Checksum: 0xFA8E2E9F
	Offset: 0x1780
	Size: 0x3B
	Parameters: 2
	Flags: None
*/
function add_spawn_point_team_classname(team, spawnPointClassName)
{
	Array::add(level.spawn_point_team_class_names[team], spawnPointClassName, 0);
}

/*
	Name: get_spawnpoint_array
	Namespace: spawnlogic
	Checksum: 0x7B09A86B
	Offset: 0x17C8
	Size: 0x219
	Parameters: 2
	Flags: None
*/
function get_spawnpoint_array(classname, var_30b675eb)
{
	if(!isdefined(var_30b675eb))
	{
		var_30b675eb = 0;
	}
	var_a55896c4 = ArrayCombine(struct::get_array(classname, "targetname"), GetEntArray(classname, "targetname"), 0, 0);
	a_spawn_points = [];
	if(!var_30b675eb)
	{
		foreach(spawn_point in var_a55896c4)
		{
			if(!(isdefined(spawn_point.disabled) && spawn_point.disabled))
			{
				if(!isdefined(a_spawn_points))
				{
					a_spawn_points = [];
				}
				else if(!IsArray(a_spawn_points))
				{
					a_spawn_points = Array(a_spawn_points);
				}
				a_spawn_points[a_spawn_points.size] = spawn_point;
			}
		}
	}
	else
	{
		a_spawn_points = var_a55896c4;
	}
	if(!isdefined(level.extraspawnpoints) || !isdefined(level.extraspawnpoints[classname]))
	{
		return a_spawn_points;
	}
	for(i = 0; i < level.extraspawnpoints[classname].size; i++)
	{
		a_spawn_points[a_spawn_points.size] = level.extraspawnpoints[classname][i];
	}
	return a_spawn_points;
}

/*
	Name: spawnpoint_init
	Namespace: spawnlogic
	Checksum: 0x50B264B5
	Offset: 0x19F0
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function spawnpoint_init()
{
	spawnpoint = self;
	origin = spawnpoint.origin;
	if(!level.spawnMinsMaxsPrimed)
	{
		level.spawnMins = origin;
		level.spawnMaxs = origin;
		level.spawnMinsMaxsPrimed = 1;
	}
	else
	{
		level.spawnMins = math::expand_mins(level.spawnMins, origin);
		level.spawnMaxs = math::expand_maxs(level.spawnMaxs, origin);
	}
	spawnpoint function_1e347e22();
	if(!isdefined(spawnpoint.angles))
	{
		spawnpoint.angles = (0, 0, 0);
	}
	spawnpoint.FORWARD = AnglesToForward(spawnpoint.angles);
	spawnpoint.sightTracePoint = spawnpoint.origin + VectorScale((0, 0, 1), 50);
	spawnpoint.inited = 1;
}

/*
	Name: get_team_spawnpoints
	Namespace: spawnlogic
	Checksum: 0xC09F1E89
	Offset: 0x1B58
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function get_team_spawnpoints(team)
{
	return level.teamSpawnPoints[team];
}

/*
	Name: get_spawnpoint_final
	Namespace: spawnlogic
	Checksum: 0xAD6892B3
	Offset: 0x1B78
	Size: 0x23F
	Parameters: 2
	Flags: None
*/
function get_spawnpoint_final(Spawnpoints, useweights)
{
	bestSpawnPoint = undefined;
	if(!isdefined(Spawnpoints) || Spawnpoints.size == 0)
	{
		return undefined;
	}
	if(!isdefined(useweights))
	{
		useweights = 1;
	}
	if(useweights)
	{
		bestSpawnPoint = get_best_weighted_spawnpoint(Spawnpoints);
		thread function_f5751b11(Spawnpoints);
		break;
	}
	for(i = 0; i < Spawnpoints.size; i++)
	{
		if(isdefined(self.lastSpawnPoint) && self.lastSpawnPoint == Spawnpoints[i])
		{
			continue;
		}
		if(positionWouldTelefrag(Spawnpoints[i].origin))
		{
			continue;
		}
		bestSpawnPoint = Spawnpoints[i];
		break;
	}
	if(!isdefined(bestSpawnPoint))
	{
		if(isdefined(self.lastSpawnPoint) && !positionWouldTelefrag(self.lastSpawnPoint.origin))
		{
			for(i = 0; i < Spawnpoints.size; i++)
			{
				if(Spawnpoints[i] == self.lastSpawnPoint)
				{
					bestSpawnPoint = Spawnpoints[i];
					break;
				}
			}
		}
	}
	else if(!isdefined(bestSpawnPoint))
	{
		if(useweights)
		{
			bestSpawnPoint = Spawnpoints[RandomInt(Spawnpoints.size)];
		}
		else
		{
			bestSpawnPoint = Spawnpoints[0];
		}
	}
	self finalize_spawnpoint_choice(bestSpawnPoint);
	/#
		self function_75321ef(Spawnpoints, useweights, bestSpawnPoint);
	#/
	return bestSpawnPoint;
}

/*
	Name: finalize_spawnpoint_choice
	Namespace: spawnlogic
	Checksum: 0x8EE68E39
	Offset: 0x1DC0
	Size: 0x57
	Parameters: 1
	Flags: None
*/
function finalize_spawnpoint_choice(spawnpoint)
{
	time = GetTime();
	self.lastSpawnPoint = spawnpoint;
	self.lastspawntime = time;
	spawnpoint.lastspawnedplayer = self;
	spawnpoint.lastspawntime = time;
}

/*
	Name: get_best_weighted_spawnpoint
	Namespace: spawnlogic
	Checksum: 0x3B7B2E63
	Offset: 0x1E20
	Size: 0x2B5
	Parameters: 1
	Flags: None
*/
function get_best_weighted_spawnpoint(Spawnpoints)
{
	maxSightTracedSpawnpoints = 3;
	for(try = 0; try <= maxSightTracedSpawnpoints; try++)
	{
		bestspawnpoints = [];
		bestweight = undefined;
		bestSpawnPoint = undefined;
		for(i = 0; i < Spawnpoints.size; i++)
		{
			if(!isdefined(bestweight) || Spawnpoints[i].weight > bestweight)
			{
				if(positionWouldTelefrag(Spawnpoints[i].origin))
				{
					continue;
				}
				bestspawnpoints = [];
				bestspawnpoints[0] = Spawnpoints[i];
				bestweight = Spawnpoints[i].weight;
				continue;
			}
			if(Spawnpoints[i].weight == bestweight)
			{
				if(positionWouldTelefrag(Spawnpoints[i].origin))
				{
					continue;
				}
				bestspawnpoints[bestspawnpoints.size] = Spawnpoints[i];
			}
		}
		if(bestspawnpoints.size == 0)
		{
			return undefined;
		}
		bestSpawnPoint = bestspawnpoints[RandomInt(bestspawnpoints.size)];
		if(try == maxSightTracedSpawnpoints)
		{
			return bestSpawnPoint;
		}
		if(isdefined(bestSpawnPoint.lastSightTraceTime) && bestSpawnPoint.lastSightTraceTime == GetTime())
		{
			return bestSpawnPoint;
		}
		if(!last_minute_sight_traces(bestSpawnPoint))
		{
			return bestSpawnPoint;
		}
		penalty = get_los_penalty();
		/#
			if(level.storeSpawnData || level.debugSpawning)
			{
				bestSpawnPoint.spawnData[bestSpawnPoint.spawnData.size] = "Dev Block strings are not supported" + penalty;
			}
		#/
		bestSpawnPoint.weight = bestSpawnPoint.weight - penalty;
		bestSpawnPoint.lastSightTraceTime = GetTime();
	}
}

/*
	Name: function_d46f7aa7
	Namespace: spawnlogic
	Checksum: 0x14975231
	Offset: 0x20E0
	Size: 0x155
	Parameters: 1
	Flags: None
*/
function function_d46f7aa7(spawnpoint)
{
	/#
		for(i = 0; i < level.players.size; i++)
		{
			player = level.players[i];
			if(!isalive(player) || player.sessionstate != "Dev Block strings are not supported")
			{
				continue;
			}
			if(level.teambased && player.team == self.team)
			{
				continue;
			}
			losExists = BulletTracePassed(player.origin + VectorScale((0, 0, 1), 50), spawnpoint.sightTracePoint, 0, undefined);
			if(losExists)
			{
				thread function_c12fba5f(spawnpoint.sightTracePoint, player.origin + VectorScale((0, 0, 1), 50), self.name, player.name);
			}
		}
	#/
}

/*
	Name: function_c12fba5f
	Namespace: spawnlogic
	Checksum: 0x3C3150C6
	Offset: 0x2240
	Size: 0xE5
	Parameters: 4
	Flags: None
*/
function function_c12fba5f(start, end, name1, name2)
{
	/#
		dist = Distance(start, end);
		for(i = 0; i < 200; i++)
		{
			line(start, end, (1, 0, 0));
			print3d(start, "Dev Block strings are not supported" + name1 + "Dev Block strings are not supported" + dist);
			print3d(end, name2);
			wait(0.05);
		}
	#/
}

/*
	Name: function_75321ef
	Namespace: spawnlogic
	Checksum: 0x6A7E6551
	Offset: 0x2330
	Size: 0x88B
	Parameters: 3
	Flags: None
*/
function function_75321ef(Spawnpoints, useweights, bestSpawnPoint)
{
	/#
		if(!isdefined(level.storeSpawnData) || !level.storeSpawnData)
		{
			return;
		}
		level.storeSpawnData = GetDvarInt("Dev Block strings are not supported");
		if(!level.storeSpawnData)
		{
			return;
		}
		if(!isdefined(level.spawnid))
		{
			level.spawnGameID = RandomInt(100);
			level.spawnid = 0;
		}
		if(bestSpawnPoint.targetname == "Dev Block strings are not supported")
		{
			return;
		}
		level.spawnid++;
		file = openfile("Dev Block strings are not supported", "Dev Block strings are not supported");
		fPrintFields(file, level.spawnGameID + "Dev Block strings are not supported" + level.spawnid + "Dev Block strings are not supported" + Spawnpoints.size + "Dev Block strings are not supported" + self.name);
		for(i = 0; i < Spawnpoints.size; i++)
		{
			STR = function_88dd1973(Spawnpoints[i].origin) + "Dev Block strings are not supported";
			if(Spawnpoints[i] == bestSpawnPoint)
			{
				STR = STR + "Dev Block strings are not supported";
			}
			else
			{
				STR = STR + "Dev Block strings are not supported";
			}
			if(!useweights)
			{
				STR = STR + "Dev Block strings are not supported";
			}
			else
			{
				STR = STR + Spawnpoints[i].weight + "Dev Block strings are not supported";
			}
			if(!isdefined(Spawnpoints[i].spawnData))
			{
				Spawnpoints[i].spawnData = [];
			}
			if(!isdefined(Spawnpoints[i].sightChecks))
			{
				Spawnpoints[i].sightChecks = [];
			}
			STR = STR + Spawnpoints[i].spawnData.size + "Dev Block strings are not supported";
			for(j = 0; j < Spawnpoints[i].spawnData.size; j++)
			{
				STR = STR + Spawnpoints[i].spawnData[j] + "Dev Block strings are not supported";
			}
			STR = STR + Spawnpoints[i].sightChecks.size + "Dev Block strings are not supported";
			for(j = 0; j < Spawnpoints[i].sightChecks.size; j++)
			{
				STR = STR + Spawnpoints[i].sightChecks[j].penalty + "Dev Block strings are not supported" + function_88dd1973(Spawnpoints[i].origin) + "Dev Block strings are not supported";
			}
			fPrintFields(file, STR);
		}
		obj = spawnstruct();
		get_all_allied_and_enemy_players(obj);
		numAllies = 0;
		numEnemies = 0;
		STR = "Dev Block strings are not supported";
		for(i = 0; i < obj.allies.size; i++)
		{
			if(obj.allies[i] == self)
			{
				continue;
			}
			numAllies++;
			STR = STR + function_88dd1973(obj.allies[i].origin) + "Dev Block strings are not supported";
		}
		for(i = 0; i < obj.enemies.size; i++)
		{
			numEnemies++;
			STR = STR + function_88dd1973(obj.enemies[i].origin) + "Dev Block strings are not supported";
		}
		STR = numAllies + "Dev Block strings are not supported" + numEnemies + "Dev Block strings are not supported" + STR;
		fPrintFields(file, STR);
		otherdata = [];
		if(isdefined(level.bombguy))
		{
			index = otherdata.size;
			otherdata[index] = spawnstruct();
			otherdata[index].origin = level.bombguy.origin + VectorScale((0, 0, 1), 20);
			otherdata[index].text = "Dev Block strings are not supported";
		}
		else if(isdefined(level.bombpos))
		{
			index = otherdata.size;
			otherdata[index] = spawnstruct();
			otherdata[index].origin = level.bombpos;
			otherdata[index].text = "Dev Block strings are not supported";
		}
		if(isdefined(level.flags))
		{
			for(i = 0; i < level.flags.size; i++)
			{
				index = otherdata.size;
				otherdata[index] = spawnstruct();
				otherdata[index].origin = level.flags[i].origin;
				otherdata[index].text = level.flags[i].useObj gameobjects::get_owner_team() + "Dev Block strings are not supported";
			}
		}
		STR = otherdata.size + "Dev Block strings are not supported";
		for(i = 0; i < otherdata.size; i++)
		{
			STR = STR + function_88dd1973(otherdata[i].origin) + "Dev Block strings are not supported" + otherdata[i].text + "Dev Block strings are not supported";
		}
		fPrintFields(file, STR);
		closefile(file);
		thisspawnid = level.spawnGameID + "Dev Block strings are not supported" + level.spawnid;
		self.thisspawnid = thisspawnid;
	#/
}

/*
	Name: function_78353cbc
	Namespace: spawnlogic
	Checksum: 0x11E58333
	Offset: 0x2BC8
	Size: 0xB33
	Parameters: 2
	Flags: None
*/
function function_78353cbc(desiredID, relativepos)
{
	/#
		file = openfile("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(file < 0)
		{
			return;
		}
		oldspawndata = level.curspawndata;
		level.curspawndata = undefined;
		prev = undefined;
		prevThisPlayer = undefined;
		lookingForNextThisPlayer = 0;
		lookingForNext = 0;
		if(isdefined(relativepos) && !isdefined(oldspawndata))
		{
			return;
		}
		while(1)
		{
			if(fReadLn(file) <= 0)
			{
				break;
			}
			data = spawnstruct();
			data.id = fGetArg(file, 0);
			numspawns = Int(fGetArg(file, 1));
			if(numspawns > 256)
			{
				break;
			}
			data.playerName = fGetArg(file, 2);
			data.Spawnpoints = [];
			data.friends = [];
			data.enemies = [];
			data.otherdata = [];
			for(i = 0; i < numspawns; i++)
			{
				if(fReadLn(file) <= 0)
				{
					break;
				}
				spawnpoint = spawnstruct();
				spawnpoint.origin = function_a76187dd(fGetArg(file, 0));
				spawnpoint.winner = Int(fGetArg(file, 1));
				spawnpoint.weight = Int(fGetArg(file, 2));
				spawnpoint.data = [];
				spawnpoint.sightChecks = [];
				if(i == 0)
				{
					data.minweight = spawnpoint.weight;
					data.maxweight = spawnpoint.weight;
				}
				else if(spawnpoint.weight < data.minweight)
				{
					data.minweight = spawnpoint.weight;
				}
				if(spawnpoint.weight > data.maxweight)
				{
					data.maxweight = spawnpoint.weight;
				}
				argnum = 4;
				numdata = Int(fGetArg(file, 3));
				if(numdata > 256)
				{
					break;
				}
				for(j = 0; j < numdata; j++)
				{
					spawnpoint.data[spawnpoint.data.size] = fGetArg(file, argnum);
					argnum++;
				}
				numsightchecks = Int(fGetArg(file, argnum));
				argnum++;
				if(numsightchecks > 256)
				{
					break;
				}
				for(j = 0; j < numsightchecks; j++)
				{
					index = spawnpoint.sightChecks.size;
					spawnpoint.sightChecks[index] = spawnstruct();
					spawnpoint.sightChecks[index].penalty = Int(fGetArg(file, argnum));
					argnum++;
					spawnpoint.sightChecks[index].origin = function_a76187dd(fGetArg(file, argnum));
					argnum++;
				}
				data.Spawnpoints[data.Spawnpoints.size] = spawnpoint;
			}
			if(!isdefined(data.minweight))
			{
				data.minweight = -1;
				data.maxweight = 0;
			}
			if(data.minweight == data.maxweight)
			{
				data.minweight = data.minweight - 1;
			}
			if(fReadLn(file) <= 0)
			{
				break;
			}
			numfriends = Int(fGetArg(file, 0));
			numEnemies = Int(fGetArg(file, 1));
			if(numfriends > 32 || numEnemies > 32)
			{
				break;
			}
			argnum = 2;
			for(i = 0; i < numfriends; i++)
			{
				data.friends[data.friends.size] = function_a76187dd(fGetArg(file, argnum));
				argnum++;
			}
			for(i = 0; i < numEnemies; i++)
			{
				data.enemies[data.enemies.size] = function_a76187dd(fGetArg(file, argnum));
				argnum++;
			}
			if(fReadLn(file) <= 0)
			{
				break;
			}
			numotherdata = Int(fGetArg(file, 0));
			argnum = 1;
			for(i = 0; i < numotherdata; i++)
			{
				otherdata = spawnstruct();
				otherdata.origin = function_a76187dd(fGetArg(file, argnum));
				argnum++;
				otherdata.text = fGetArg(file, argnum);
				argnum++;
				data.otherdata[data.otherdata.size] = otherdata;
			}
			if(isdefined(relativepos))
			{
				if(relativepos == "Dev Block strings are not supported")
				{
					if(data.id == oldspawndata.id)
					{
						level.curspawndata = prevThisPlayer;
						break;
					}
				}
				else if(relativepos == "Dev Block strings are not supported")
				{
					if(data.id == oldspawndata.id)
					{
						level.curspawndata = prev;
						break;
					}
				}
				else if(relativepos == "Dev Block strings are not supported")
				{
					if(lookingForNextThisPlayer)
					{
						level.curspawndata = data;
						break;
					}
					else if(data.id == oldspawndata.id)
					{
						lookingForNextThisPlayer = 1;
					}
				}
				else if(relativepos == "Dev Block strings are not supported")
				{
					if(lookingForNext)
					{
						level.curspawndata = data;
						break;
					}
					else if(data.id == oldspawndata.id)
					{
						lookingForNext = 1;
					}
				}
			}
			else if(data.id == desiredID)
			{
				level.curspawndata = data;
				break;
			}
			prev = data;
			if(isdefined(oldspawndata) && data.playerName == oldspawndata.playerName)
			{
				prevThisPlayer = data;
			}
		}
		closefile(file);
	#/
}

/*
	Name: function_363025a
	Namespace: spawnlogic
	Checksum: 0xA688EC78
	Offset: 0x3708
	Size: 0x473
	Parameters: 0
	Flags: None
*/
function function_363025a()
{
	/#
		level notify("drawing_spawn_data");
		level endon("drawing_spawn_data");
		textoffset = VectorScale((0, 0, -1), 12);
		while(1)
		{
			if(!isdefined(level.curspawndata))
			{
				wait(0.5);
				continue;
			}
			for(i = 0; i < level.curspawndata.friends.size; i++)
			{
				print3d(level.curspawndata.friends[i], "Dev Block strings are not supported", (0.5, 1, 0.5), 1, 5);
			}
			for(i = 0; i < level.curspawndata.enemies.size; i++)
			{
				print3d(level.curspawndata.enemies[i], "Dev Block strings are not supported", (1, 0.5, 0.5), 1, 5);
			}
			for(i = 0; i < level.curspawndata.otherdata.size; i++)
			{
				print3d(level.curspawndata.otherdata[i].origin, level.curspawndata.otherdata[i].text, (0.5, 0.75, 1), 1, 2);
			}
			for(i = 0; i < level.curspawndata.Spawnpoints.size; i++)
			{
				SP = level.curspawndata.Spawnpoints[i];
				orig = SP.sightTracePoint;
				if(SP.winner)
				{
					print3d(orig, level.curspawndata.playerName + "Dev Block strings are not supported", (0.5, 0.5, 1), 1, 2);
					orig = orig + textoffset;
				}
				amnt = SP.weight - level.curspawndata.minweight / level.curspawndata.maxweight - level.curspawndata.minweight;
				print3d(orig, "Dev Block strings are not supported" + SP.weight, (1 - amnt, amnt, 0.5));
				orig = orig + textoffset;
				for(j = 0; j < SP.data.size; j++)
				{
					print3d(orig, SP.data[j], (1, 1, 1));
					orig = orig + textoffset;
				}
				for(j = 0; j < SP.sightChecks.size; j++)
				{
					print3d(orig, "Dev Block strings are not supported" + SP.sightChecks[j].penalty, (1, 0.5, 0.5));
					orig = orig + textoffset;
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_88dd1973
	Namespace: spawnlogic
	Checksum: 0x877CABC6
	Offset: 0x3B88
	Size: 0x7D
	Parameters: 1
	Flags: None
*/
function function_88dd1973(vec)
{
	/#
		return Int(vec[0]) + "Dev Block strings are not supported" + Int(vec[1]) + "Dev Block strings are not supported" + Int(vec[2]);
	#/
}

/*
	Name: function_a76187dd
	Namespace: spawnlogic
	Checksum: 0x88D89BE4
	Offset: 0x3C10
	Size: 0x9D
	Parameters: 1
	Flags: None
*/
function function_a76187dd(STR)
{
	/#
		parts = StrTok(STR, "Dev Block strings are not supported");
		if(parts.size != 3)
		{
			return (0, 0, 0);
		}
		return (Int(parts[0]), Int(parts[1]), Int(parts[2]));
	#/
}

/*
	Name: get_spawnpoint_random
	Namespace: spawnlogic
	Checksum: 0x7BDF592F
	Offset: 0x3CB8
	Size: 0xC1
	Parameters: 1
	Flags: None
*/
function get_spawnpoint_random(Spawnpoints)
{
	if(!isdefined(Spawnpoints))
	{
		return undefined;
	}
	for(i = 0; i < Spawnpoints.size; i++)
	{
		j = RandomInt(Spawnpoints.size);
		spawnpoint = Spawnpoints[i];
		Spawnpoints[i] = Spawnpoints[j];
		Spawnpoints[j] = spawnpoint;
	}
	return get_spawnpoint_final(Spawnpoints, 0);
}

/*
	Name: get_all_other_players
	Namespace: spawnlogic
	Checksum: 0xACB256AB
	Offset: 0x3D88
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function get_all_other_players()
{
	aliveplayers = [];
	for(i = 0; i < level.players.size; i++)
	{
		if(!isdefined(level.players[i]))
		{
			continue;
		}
		player = level.players[i];
		if(player.sessionstate != "playing" || player == self)
		{
			continue;
		}
		aliveplayers[aliveplayers.size] = player;
	}
	return aliveplayers;
}

/*
	Name: get_all_allied_and_enemy_players
	Namespace: spawnlogic
	Checksum: 0xE24F2998
	Offset: 0x3E48
	Size: 0x1EB
	Parameters: 1
	Flags: None
*/
function get_all_allied_and_enemy_players(obj)
{
	if(level.teambased)
	{
		/#
			Assert(isdefined(level.teams[self.team]));
		#/
		obj.allies = level.aliveplayers[self.team];
		obj.enemies = undefined;
		foreach(team in level.teams)
		{
			if(team == self.team)
			{
				break;
			}
			if(!isdefined(obj.enemies))
			{
				obj.enemies = level.aliveplayers[team];
				break;
			}
			foreach(player in level.aliveplayers[team])
			{
				obj.enemies[obj.enemies.size] = player;
			}
		}
	}
	else
	{
		obj.allies = [];
		obj.enemies = level.activePlayers;
	}
}

/*
	Name: init_weights
	Namespace: spawnlogic
	Checksum: 0xAFBE77A0
	Offset: 0x4040
	Size: 0xB9
	Parameters: 1
	Flags: None
*/
function init_weights(Spawnpoints)
{
	for(i = 0; i < Spawnpoints.size; i++)
	{
		Spawnpoints[i].weight = 0;
	}
	/#
		if(level.storeSpawnData || level.debugSpawning)
		{
			for(i = 0; i < Spawnpoints.size; i++)
			{
				Spawnpoints[i].spawnData = [];
				Spawnpoints[i].sightChecks = [];
			}
		}
	#/
}

/*
	Name: get_spawnpoint_near_team
	Namespace: spawnlogic
	Checksum: 0x845BCCB9
	Offset: 0x4108
	Size: 0x53F
	Parameters: 2
	Flags: None
*/
function get_spawnpoint_near_team(Spawnpoints, favoredspawnpoints)
{
	if(!isdefined(Spawnpoints))
	{
		return undefined;
	}
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			return get_spawnpoint_random(Spawnpoints);
		}
	#/
	if(GetDvarInt("scr_spawnsimple") > 0)
	{
		return get_spawnpoint_random(Spawnpoints);
	}
	begin();
	k_favored_spawn_point_bonus = 25000;
	init_weights(Spawnpoints);
	obj = spawnstruct();
	get_all_allied_and_enemy_players(obj);
	numPlayers = obj.allies.size + obj.enemies.size;
	alliedDistanceWeight = 2;
	myTeam = self.team;
	for(i = 0; i < Spawnpoints.size; i++)
	{
		spawnpoint = Spawnpoints[i];
		if(!isdefined(spawnpoint.numPlayersAtLastUpdate))
		{
			spawnpoint.numPlayersAtLastUpdate = 0;
		}
		if(spawnpoint.numPlayersAtLastUpdate > 0)
		{
			allyDistSum = spawnpoint.distSum[myTeam];
			enemyDistSum = spawnpoint.enemyDistSum[myTeam];
			spawnpoint.weight = enemyDistSum - alliedDistanceWeight * allyDistSum / spawnpoint.numPlayersAtLastUpdate;
			/#
				if(level.storeSpawnData || level.debugSpawning)
				{
					spawnpoint.spawnData[spawnpoint.spawnData.size] = "Dev Block strings are not supported" + Int(spawnpoint.weight) + "Dev Block strings are not supported" + Int(enemyDistSum) + "Dev Block strings are not supported" + alliedDistanceWeight + "Dev Block strings are not supported" + Int(allyDistSum) + "Dev Block strings are not supported" + spawnpoint.numPlayersAtLastUpdate;
				}
			#/
			continue;
		}
		spawnpoint.weight = 0;
		/#
			if(level.storeSpawnData || level.debugSpawning)
			{
				spawnpoint.spawnData[spawnpoint.spawnData.size] = "Dev Block strings are not supported";
			}
		#/
	}
	if(isdefined(favoredspawnpoints))
	{
		for(i = 0; i < favoredspawnpoints.size; i++)
		{
			if(isdefined(favoredspawnpoints[i].weight))
			{
				favoredspawnpoints[i].weight = favoredspawnpoints[i].weight + k_favored_spawn_point_bonus;
				continue;
			}
			favoredspawnpoints[i].weight = k_favored_spawn_point_bonus;
		}
	}
	avoid_same_spawn(Spawnpoints);
	avoid_spawn_reuse(Spawnpoints, 1);
	avoid_weapon_damage(Spawnpoints);
	avoid_visible_enemies(Spawnpoints, 1);
	result = get_spawnpoint_final(Spawnpoints);
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_d46f7aa7(result);
		}
	#/
	return result;
}

/*
	Name: get_spawnpoint_dm
	Namespace: spawnlogic
	Checksum: 0xFA1AE4F7
	Offset: 0x4650
	Size: 0x299
	Parameters: 1
	Flags: None
*/
function get_spawnpoint_dm(Spawnpoints)
{
	if(!isdefined(Spawnpoints))
	{
		return undefined;
	}
	begin();
	init_weights(Spawnpoints);
	aliveplayers = get_all_other_players();
	idealDist = 1600;
	badDist = 1200;
	if(aliveplayers.size > 0)
	{
		for(i = 0; i < Spawnpoints.size; i++)
		{
			totalDistFromIdeal = 0;
			nearbyBadAmount = 0;
			for(j = 0; j < aliveplayers.size; j++)
			{
				dist = Distance(Spawnpoints[i].origin, aliveplayers[j].origin);
				if(dist < badDist)
				{
					nearbyBadAmount = nearbyBadAmount + badDist - dist / badDist;
				}
				distfromideal = Abs(dist - idealDist);
				totalDistFromIdeal = totalDistFromIdeal + distfromideal;
			}
			avgDistFromIdeal = totalDistFromIdeal / aliveplayers.size;
			wellDistancedAmount = idealDist - avgDistFromIdeal / idealDist;
			Spawnpoints[i].weight = wellDistancedAmount - nearbyBadAmount * 2 + RandomFloat(0.2);
		}
	}
	avoid_same_spawn(Spawnpoints);
	avoid_spawn_reuse(Spawnpoints, 0);
	avoid_weapon_damage(Spawnpoints);
	avoid_visible_enemies(Spawnpoints, 0);
	return get_spawnpoint_final(Spawnpoints);
}

/*
	Name: begin
	Namespace: spawnlogic
	Checksum: 0x7A324981
	Offset: 0x48F8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function begin()
{
	/#
		level.storeSpawnData = GetDvarInt("Dev Block strings are not supported");
		level.debugSpawning = GetDvarInt("Dev Block strings are not supported") > 0;
	#/
}

/*
	Name: function_f415b14
	Namespace: spawnlogic
	Checksum: 0x1A1AE24F
	Offset: 0x4950
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_f415b14()
{
	/#
		while(1)
		{
			while(1)
			{
				if(GetDvarInt("Dev Block strings are not supported") > 0)
				{
					break;
				}
				wait(0.05);
			}
			thread function_91a6180();
			while(1)
			{
				if(GetDvarInt("Dev Block strings are not supported") <= 0)
				{
					break;
				}
				wait(0.05);
			}
			level notify("stop_spawn_profile");
		}
	#/
}

/*
	Name: function_91a6180
	Namespace: spawnlogic
	Checksum: 0x12CA3AC
	Offset: 0x4A00
	Size: 0x10F
	Parameters: 0
	Flags: None
*/
function function_91a6180()
{
	/#
		level endon("stop_spawn_profile");
		while(1)
		{
			if(level.players.size > 0 && level.Spawnpoints.size > 0)
			{
				playerNum = RandomInt(level.players.size);
				player = level.players[playerNum];
				attempt = 1;
				while(!isdefined(player) && attempt < level.players.size)
				{
					playerNum = playerNum + 1 % level.players.size;
					attempt++;
					player = level.players[playerNum];
				}
				player get_spawnpoint_near_team(level.Spawnpoints);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_e2e4ca72
	Namespace: spawnlogic
	Checksum: 0xA2F3901C
	Offset: 0x4B18
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_e2e4ca72()
{
	/#
		while(1)
		{
			if(GetDvarInt("Dev Block strings are not supported") < 1)
			{
				wait(3);
				continue;
			}
			thread function_ee9ff5a7();
			return;
		}
	#/
}

/*
	Name: function_ee9ff5a7
	Namespace: spawnlogic
	Checksum: 0x8A7DA13B
	Offset: 0x4B80
	Size: 0x64F
	Parameters: 0
	Flags: None
*/
function function_ee9ff5a7()
{
	/#
		w = 20;
		h = 20;
		weightscale = 0.1;
		fakespawnpoints = [];
		corners = GetEntArray("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(corners.size != 2)
		{
			println("Dev Block strings are not supported");
			return;
		}
		min = corners[0].origin;
		max = corners[0].origin;
		if(corners[1].origin[0] > max[0])
		{
			max = (corners[1].origin[0], max[1], max[2]);
		}
		else
		{
			min = (corners[1].origin[0], min[1], min[2]);
		}
		if(corners[1].origin[1] > max[1])
		{
			max = (max[0], corners[1].origin[1], max[2]);
		}
		else
		{
			min = (min[0], corners[1].origin[1], min[2]);
		}
		i = 0;
		for(y = 0; y < h; y++)
		{
			yamnt = y / h - 1;
			for(x = 0; x < w; x++)
			{
				xamnt = x / w - 1;
				fakespawnpoints[i] = spawnstruct();
				fakespawnpoints[i].origin = (min[0] * xamnt + max[0] * 1 - xamnt, min[1] * yamnt + max[1] * 1 - yamnt, min[2]);
				fakespawnpoints[i].angles = (0, 0, 0);
				fakespawnpoints[i].FORWARD = AnglesToForward(fakespawnpoints[i].angles);
				fakespawnpoints[i].sightTracePoint = fakespawnpoints[i].origin;
				i++;
			}
		}
		didweights = 0;
		while(1)
		{
			spawni = 0;
			numiters = 5;
			for(i = 0; i < numiters; i++)
			{
				if(!level.players.size || !isdefined(level.players[0].team) || level.players[0].team == "Dev Block strings are not supported" || !isdefined(level.players[0].curClass))
				{
					break;
				}
				endspawni = spawni + fakespawnpoints.size / numiters;
				if(i == numiters - 1)
				{
					endspawni = fakespawnpoints.size;
				}
				while(spawni < endspawni)
				{
					spawnpoint_update(fakespawnpoints[spawni]);
					spawni++;
				}
				if(didweights)
				{
					level.players[0] function_714f6572(fakespawnpoints, w, h, weightscale);
				}
				wait(0.05);
			}
			if(!level.players.size || !isdefined(level.players[0].team) || level.players[0].team == "Dev Block strings are not supported" || !isdefined(level.players[0].curClass))
			{
				wait(1);
				continue;
			}
			level.players[0] get_spawnpoint_near_team(fakespawnpoints);
			for(i = 0; i < fakespawnpoints.size; i++)
			{
				function_3bdbf842(fakespawnpoints[i], weightscale);
			}
			didweights = 1;
			level.players[0] function_714f6572(fakespawnpoints, w, h, weightscale);
			wait(0.05);
		}
	#/
}

/*
	Name: function_714f6572
	Namespace: spawnlogic
	Checksum: 0xE87546D
	Offset: 0x51D8
	Size: 0x145
	Parameters: 4
	Flags: None
*/
function function_714f6572(fakespawnpoints, w, h, weightscale)
{
	/#
		i = 0;
		for(y = 0; y < h; y++)
		{
			yamnt = y / h - 1;
			for(x = 0; x < w; x++)
			{
				xamnt = x / w - 1;
				if(y > 0)
				{
					function_8965f304(fakespawnpoints[i], fakespawnpoints[i - w], weightscale);
				}
				if(x > 0)
				{
					function_8965f304(fakespawnpoints[i], fakespawnpoints[i - 1], weightscale);
				}
				i++;
			}
		}
	#/
}

/*
	Name: function_3bdbf842
	Namespace: spawnlogic
	Checksum: 0xDAA8BDAA
	Offset: 0x5328
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_3bdbf842(s1, weightscale)
{
	/#
		s1.visible = 1;
		if(s1.weight < -1000 / weightscale)
		{
			s1.visible = 0;
		}
	#/
}

/*
	Name: function_8965f304
	Namespace: spawnlogic
	Checksum: 0x658A4EA6
	Offset: 0x5390
	Size: 0xDB
	Parameters: 3
	Flags: None
*/
function function_8965f304(s1, s2, weightscale)
{
	/#
		if(!s1.visible || !s2.visible)
		{
			return;
		}
		p1 = s1.origin + (0, 0, s1.weight * weightscale + 100);
		p2 = s2.origin + (0, 0, s2.weight * weightscale + 100);
		line(p1, p2, (1, 1, 1));
	#/
}

/*
	Name: function_d320505c
	Namespace: spawnlogic
	Checksum: 0xC305282A
	Offset: 0x5478
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function function_d320505c()
{
	/#
		while(1)
		{
			if(GetDvarInt("Dev Block strings are not supported") < 1)
			{
				wait(3);
				continue;
			}
			if(!isdefined(level.players))
			{
				wait(0.05);
				continue;
			}
			bots = [];
			for(i = 0; i < level.players.size; i++)
			{
				if(!isdefined(level.players[i]))
				{
					continue;
				}
				if(level.players[i].sessionstate == "Dev Block strings are not supported" && IsSubStr(level.players[i].name, "Dev Block strings are not supported"))
				{
					bots[bots.size] = level.players[i];
				}
			}
			if(bots.size > 0)
			{
				if(GetDvarInt("Dev Block strings are not supported") == 1)
				{
					killer = bots[RandomInt(bots.size)];
					victim = bots[RandomInt(bots.size)];
					victim thread [[level.callbackPlayerDamage]](killer, killer, 1000, 0, "Dev Block strings are not supported", level.weaponNone, (0, 0, 0), (0, 0, 0), "Dev Block strings are not supported", (0, 0, 0), 0, 0, (1, 0, 0));
					break;
				}
				numKills = GetDvarInt("Dev Block strings are not supported");
				lastVictim = undefined;
				for(index = 0; index < numKills; index++)
				{
					killer = bots[RandomInt(bots.size)];
					for(victim = bots[RandomInt(bots.size)]; isdefined(lastVictim) && victim == lastVictim;  = bots[RandomInt(bots.size)])
					{
					}
					victim thread [[level.callbackPlayerDamage]](killer, killer, 1000, 0, "Dev Block strings are not supported", level.weaponNone, (0, 0, 0), (0, 0, 0), "Dev Block strings are not supported", (0, 0, 0), 0, 0, (1, 0, 0));
					lastVictim = victim;
				}
			}
			else if(GetDvarString("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				wait(GetDvarFloat("Dev Block strings are not supported"));
			}
			else
			{
				wait(0.05);
			}
		}
	#/
}

/*
	Name: function_8384886e
	Namespace: spawnlogic
	Checksum: 0x4656EE6C
	Offset: 0x57F8
	Size: 0x1E7
	Parameters: 0
	Flags: None
*/
function function_8384886e()
{
	/#
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		prevval = GetDvarString("Dev Block strings are not supported");
		prevrelval = GetDvarString("Dev Block strings are not supported");
		readthistime = 0;
		while(1)
		{
			VAL = GetDvarString("Dev Block strings are not supported");
			relval = undefined;
			if(!isdefined(VAL) || VAL == prevval)
			{
				relval = GetDvarString("Dev Block strings are not supported");
				if(isdefined(relval) && relval != "Dev Block strings are not supported")
				{
					SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
				}
				else
				{
					wait(0.5);
					continue;
				}
			}
			prevval = VAL;
			readthistime = 0;
			function_78353cbc(VAL, relval);
			if(!isdefined(level.curspawndata))
			{
				println("Dev Block strings are not supported");
			}
			else
			{
				println("Dev Block strings are not supported" + level.curspawndata.id);
			}
			thread function_363025a();
		}
	#/
}

/*
	Name: function_76bb9fb8
	Namespace: spawnlogic
	Checksum: 0xE7EE5738
	Offset: 0x59E8
	Size: 0x4AF
	Parameters: 0
	Flags: None
*/
function function_76bb9fb8()
{
	/#
		while(1)
		{
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				wait(3);
				continue;
			}
			time = GetTime();
			for(i = 0; i < level.spawnlogic_deaths.size; i++)
			{
				if(isdefined(level.spawnlogic_deaths[i].los))
				{
					line(level.spawnlogic_deaths[i].org, level.spawnlogic_deaths[i].killOrg, (1, 0, 0));
				}
				else
				{
					line(level.spawnlogic_deaths[i].org, level.spawnlogic_deaths[i].killOrg, (1, 1, 1));
				}
				killer = level.spawnlogic_deaths[i].killer;
				if(isdefined(killer) && isalive(killer))
				{
					line(level.spawnlogic_deaths[i].killOrg, killer.origin, (0.4, 0.4, 0.8));
				}
			}
			for(p = 0; p < level.players.size; p++)
			{
				if(!isdefined(level.players[p]))
				{
					continue;
				}
				if(isdefined(level.players[p].spawnlogic_killdist))
				{
					print3d(level.players[p].origin + VectorScale((0, 0, 1), 64), level.players[p].spawnlogic_killdist, (1, 1, 1));
				}
			}
			oldspawnkills = level.spawnlogic_spawnkills;
			level.spawnlogic_spawnkills = [];
			for(i = 0; i < oldspawnkills.size; i++)
			{
				spawnkill = oldspawnkills[i];
				if(spawnkill.dierwasspawner)
				{
					line(spawnkill.spawnpointorigin, spawnkill.dierorigin, (0.4, 0.5, 0.4));
					line(spawnkill.dierorigin, spawnkill.killerorigin, (0, 1, 1));
					print3d(spawnkill.dierorigin + VectorScale((0, 0, 1), 32), "Dev Block strings are not supported", (0, 1, 1));
				}
				else
				{
					line(spawnkill.spawnpointorigin, spawnkill.killerorigin, (0.4, 0.5, 0.4));
					line(spawnkill.killerorigin, spawnkill.dierorigin, (0, 1, 1));
					print3d(spawnkill.dierorigin + VectorScale((0, 0, 1), 32), "Dev Block strings are not supported", (0, 1, 1));
				}
				if(time - spawnkill.time < 60000)
				{
					level.spawnlogic_spawnkills[level.spawnlogic_spawnkills.size] = oldspawnkills[i];
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_403f0d14
	Namespace: spawnlogic
	Checksum: 0x63DD92BA
	Offset: 0x5EA0
	Size: 0x55
	Parameters: 0
	Flags: None
*/
function function_403f0d14()
{
	while(1)
	{
		if(GetDvarString("scr_spawnpointdebug") == "0")
		{
			wait(3);
			continue;
		}
		update_death_info();
		wait(3);
	}
}

/*
	Name: function_f5751b11
	Namespace: spawnlogic
	Checksum: 0x94F24A10
	Offset: 0x5F00
	Size: 0x313
	Parameters: 1
	Flags: None
*/
function function_f5751b11(Spawnpoints)
{
	level notify("stop_spawn_weight_debug");
	level endon("stop_spawn_weight_debug");
	/#
		while(1)
		{
			if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				wait(3);
				continue;
			}
			textoffset = VectorScale((0, 0, -1), 12);
			for(i = 0; i < Spawnpoints.size; i++)
			{
				amnt = 1 * 1 - Spawnpoints[i].weight / -100000;
				if(amnt < 0)
				{
					amnt = 0;
				}
				if(amnt > 1)
				{
					amnt = 1;
				}
				orig = Spawnpoints[i].origin + VectorScale((0, 0, 1), 80);
				print3d(orig, Int(Spawnpoints[i].weight), (1, amnt, 0.5));
				orig = orig + textoffset;
				if(isdefined(Spawnpoints[i].spawnData))
				{
					for(j = 0; j < Spawnpoints[i].spawnData.size; j++)
					{
						print3d(orig, Spawnpoints[i].spawnData[j], VectorScale((1, 1, 1), 0.5));
						orig = orig + textoffset;
					}
				}
				else if(isdefined(Spawnpoints[i].sightChecks))
				{
					for(j = 0; j < Spawnpoints[i].sightChecks.size; j++)
					{
						if(Spawnpoints[i].sightChecks[j].penalty == 0)
						{
							continue;
						}
						print3d(orig, "Dev Block strings are not supported" + Spawnpoints[i].sightChecks[j].penalty, VectorScale((1, 1, 1), 0.5));
						orig = orig + textoffset;
					}
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_9ce570b0
	Namespace: spawnlogic
	Checksum: 0xFD9796C0
	Offset: 0x6220
	Size: 0xEF
	Parameters: 0
	Flags: None
*/
function function_9ce570b0()
{
	while(1)
	{
		if(GetDvarString("scr_spawnpointprofile") != "1")
		{
			wait(3);
			continue;
		}
		for(i = 0; i < level.Spawnpoints.size; i++)
		{
			level.Spawnpoints[i].weight = RandomInt(10000);
		}
		if(level.players.size > 0)
		{
			level.players[RandomInt(level.players.size)] get_spawnpoint_near_team(level.Spawnpoints);
		}
		wait(0.05);
	}
}

/*
	Name: function_d98d4227
	Namespace: spawnlogic
	Checksum: 0xC2A22C43
	Offset: 0x6318
	Size: 0xDF
	Parameters: 2
	Flags: None
*/
function function_d98d4227(players, origin)
{
	/#
		if(GetDvarString("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			return;
		}
		startTime = GetTime();
		while(1)
		{
			for(i = 0; i < players.size; i++)
			{
				line(players[i].origin, origin, (0.5, 1, 0.5));
			}
			if(GetTime() - startTime > 5000)
			{
				return;
			}
			wait(0.05);
		}
	#/
}

/*
	Name: death_occured
	Namespace: spawnlogic
	Checksum: 0xC5612788
	Offset: 0x6400
	Size: 0x13
	Parameters: 2
	Flags: None
*/
function death_occured(dier, killer)
{
}

/*
	Name: check_for_similar_deaths
	Namespace: spawnlogic
	Checksum: 0xD976DF9E
	Offset: 0x6420
	Size: 0x121
	Parameters: 1
	Flags: None
*/
function check_for_similar_deaths(deathInfo)
{
	for(i = 0; i < level.spawnlogic_deaths.size; i++)
	{
		if(level.spawnlogic_deaths[i].killer == deathInfo.killer)
		{
			dist = Distance(level.spawnlogic_deaths[i].org, deathInfo.org);
			if(dist > 200)
			{
				continue;
			}
			dist = Distance(level.spawnlogic_deaths[i].killOrg, deathInfo.killOrg);
			if(dist > 200)
			{
				continue;
			}
			level.spawnlogic_deaths[i].remove = 1;
		}
	}
}

/*
	Name: update_death_info
	Namespace: spawnlogic
	Checksum: 0x3F01D1A8
	Offset: 0x6550
	Size: 0x1E3
	Parameters: 0
	Flags: None
*/
function update_death_info()
{
	time = GetTime();
	for(i = 0; i < level.spawnlogic_deaths.size; i++)
	{
		deathInfo = level.spawnlogic_deaths[i];
		if(time - deathInfo.time > 90000 || !isdefined(deathInfo.killer) || !isalive(deathInfo.killer) || !isdefined(level.teams[deathInfo.killer.team]) || Distance(deathInfo.killer.origin, deathInfo.killOrg) > 400)
		{
			level.spawnlogic_deaths[i].remove = 1;
		}
	}
	oldarray = level.spawnlogic_deaths;
	level.spawnlogic_deaths = [];
	start = 0;
	if(oldarray.size - 1024 > 0)
	{
		start = oldarray.size - 1024;
	}
	for(i = start; i < oldarray.size; i++)
	{
		if(!isdefined(oldarray[i].remove))
		{
			level.spawnlogic_deaths[level.spawnlogic_deaths.size] = oldarray[i];
		}
	}
}

/*
	Name: is_point_vulnerable
	Namespace: spawnlogic
	Checksum: 0x73FBDD1B
	Offset: 0x6740
	Size: 0x127
	Parameters: 1
	Flags: None
*/
function is_point_vulnerable(playerOrigin)
{
	pos = self.origin + level.bettymodelcenteroffset;
	playerpos = playerOrigin + VectorScale((0, 0, 1), 32);
	distSqrd = DistanceSquared(pos, playerpos);
	FORWARD = AnglesToForward(self.angles);
	if(distSqrd < level.bettyDetectionRadius * level.bettyDetectionRadius)
	{
		playerdir = VectorNormalize(playerpos - pos);
		angle = ACos(VectorDot(playerdir, FORWARD));
		if(angle < level.bettyDetectionConeAngle)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: avoid_weapon_damage
	Namespace: spawnlogic
	Checksum: 0x9BF393C4
	Offset: 0x6870
	Size: 0x211
	Parameters: 1
	Flags: None
*/
function avoid_weapon_damage(Spawnpoints)
{
	if(GetDvarString("scr_spawnpointnewlogic") == "0")
	{
		return;
	}
	weaponDamagePenalty = 100000;
	if(GetDvarString("scr_spawnpointweaponpenalty") != "" && GetDvarString("scr_spawnpointweaponpenalty") != "0")
	{
		weaponDamagePenalty = GetDvarFloat("scr_spawnpointweaponpenalty");
	}
	mingrenadedistsquared = 62500;
	for(i = 0; i < Spawnpoints.size; i++)
	{
		for(j = 0; j < level.grenades.size; j++)
		{
			if(!isdefined(level.grenades[j]))
			{
				continue;
			}
			if(DistanceSquared(Spawnpoints[i].origin, level.grenades[j].origin) < mingrenadedistsquared)
			{
				Spawnpoints[i].weight = Spawnpoints[i].weight - weaponDamagePenalty;
				/#
					if(level.storeSpawnData || level.debugSpawning)
					{
						Spawnpoints[i].spawnData[Spawnpoints[i].spawnData.size] = "Dev Block strings are not supported" + Int(weaponDamagePenalty);
					}
				#/
			}
		}
	}
}

/*
	Name: spawn_per_frame_update
	Namespace: spawnlogic
	Checksum: 0xAF74B47F
	Offset: 0x6A90
	Size: 0x7F
	Parameters: 0
	Flags: None
*/
function spawn_per_frame_update()
{
	spawnpointindex = 0;
	while(1)
	{
		wait(0.05);
		if(!isdefined(level.Spawnpoints))
		{
			return;
		}
		spawnpointindex = spawnpointindex + 1 % level.Spawnpoints.size;
		spawnpoint = level.Spawnpoints[spawnpointindex];
		spawnpoint_update(spawnpoint);
	}
}

/*
	Name: get_non_team_sum
	Namespace: spawnlogic
	Checksum: 0x8422B618
	Offset: 0x6B18
	Size: 0xBF
	Parameters: 2
	Flags: None
*/
function get_non_team_sum(skip_team, sums)
{
	value = 0;
	foreach(team in level.teams)
	{
		if(team == skip_team)
		{
			continue;
		}
		value = value + sums[team];
	}
	return value;
}

/*
	Name: get_non_team_min_dist
	Namespace: spawnlogic
	Checksum: 0xB500B02F
	Offset: 0x6BE0
	Size: 0xD1
	Parameters: 2
	Flags: None
*/
function get_non_team_min_dist(skip_team, minDists)
{
	dist = 9999999;
	foreach(team in level.teams)
	{
		if(team == skip_team)
		{
			continue;
		}
		if(dist > minDists[team])
		{
			dist = minDists[team];
		}
	}
	return dist;
}

/*
	Name: spawnpoint_update
	Namespace: spawnlogic
	Checksum: 0xD5F0D82F
	Offset: 0x6CC0
	Size: 0x6E9
	Parameters: 1
	Flags: None
*/
function spawnpoint_update(spawnpoint)
{
	if(level.teambased)
	{
		sights = [];
		foreach(team in level.teams)
		{
			spawnpoint.enemySights[team] = 0;
			sights[team] = 0;
			spawnpoint.nearbyPlayers[team] = [];
		}
	}
	else
	{
		spawnpoint.enemySights = 0;
		spawnpoint.nearbyPlayers["all"] = [];
	}
	spawnpointdir = spawnpoint.FORWARD;
	debug = 0;
	/#
		debug = GetDvarInt("Dev Block strings are not supported") > 0;
	#/
	mindist = [];
	distSum = [];
	if(!level.teambased)
	{
		mindist["all"] = 9999999;
	}
	foreach(team in level.teams)
	{
		spawnpoint.distSum[team] = 0;
		spawnpoint.enemyDistSum[team] = 0;
		spawnpoint.minEnemyDist[team] = 9999999;
		mindist[team] = 9999999;
	}
	spawnpoint.numPlayersAtLastUpdate = 0;
	for(i = 0; i < level.players.size; i++)
	{
		player = level.players[i];
		if(player.sessionstate != "playing")
		{
			continue;
		}
		diff = player.origin - spawnpoint.origin;
		diff = (diff[0], diff[1], 0);
		dist = length(diff);
		team = "all";
		if(level.teambased)
		{
			team = player.team;
		}
		if(dist < 1024)
		{
			spawnpoint.nearbyPlayers[team][spawnpoint.nearbyPlayers[team].size] = player;
		}
		if(dist < mindist[team])
		{
			mindist[team] = dist;
		}
		distSum[team] = distSum[team] + dist;
		spawnpoint.numPlayersAtLastUpdate++;
		pdir = AnglesToForward(player.angles);
		if(VectorDot(spawnpointdir, diff) < 0 && VectorDot(pdir, diff) > 0)
		{
			continue;
		}
		losExists = BulletTracePassed(player.origin + VectorScale((0, 0, 1), 50), spawnpoint.sightTracePoint, 0, undefined);
		spawnpoint.lastSightTraceTime = GetTime();
		if(losExists)
		{
			if(level.teambased)
			{
				sights[player.team]++;
			}
			else
			{
				spawnpoint.enemySights++;
			}
			/#
				if(debug)
				{
					line(player.origin + VectorScale((0, 0, 1), 50), spawnpoint.sightTracePoint, (0.5, 1, 0.5));
				}
			#/
		}
	}
	if(level.teambased)
	{
		foreach(team in level.teams)
		{
			spawnpoint.enemySights[team] = get_non_team_sum(team, sights);
			spawnpoint.minEnemyDist[team] = get_non_team_min_dist(team, mindist);
			spawnpoint.distSum[team] = distSum[team];
			spawnpoint.enemyDistSum[team] = get_non_team_sum(team, distSum);
		}
	}
	else
	{
		spawnpoint.distSum["all"] = distSum["all"];
		spawnpoint.enemyDistSum["all"] = distSum["all"];
		spawnpoint.minEnemyDist["all"] = mindist["all"];
	}
}

/*
	Name: get_los_penalty
	Namespace: spawnlogic
	Checksum: 0x18BA0E18
	Offset: 0x73B8
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function get_los_penalty()
{
	if(GetDvarString("scr_spawnpointlospenalty") != "" && GetDvarString("scr_spawnpointlospenalty") != "0")
	{
		return GetDvarFloat("scr_spawnpointlospenalty");
	}
	return 100000;
}

/*
	Name: last_minute_sight_traces
	Namespace: spawnlogic
	Checksum: 0xF13FB75B
	Offset: 0x7438
	Size: 0x2DD
	Parameters: 1
	Flags: None
*/
function last_minute_sight_traces(spawnpoint)
{
	if(!isdefined(spawnpoint.nearbyPlayers))
	{
		return 0;
	}
	closest = undefined;
	closestDistsq = undefined;
	secondClosest = undefined;
	secondClosestDistsq = undefined;
	foreach(team in spawnpoint.nearbyPlayers)
	{
		if(team == self.team)
		{
			break;
		}
		for(i = 0; i < spawnpoint.nearbyPlayers[team].size; i++)
		{
			player = spawnpoint.nearbyPlayers[team][i];
			if(!isdefined(player))
			{
				continue;
			}
			if(player.sessionstate != "playing")
			{
				continue;
			}
			if(player == self)
			{
				continue;
			}
			distSq = DistanceSquared(spawnpoint.origin, player.origin);
			if(!isdefined(closest) || distSq < closestDistsq)
			{
				secondClosest = closest;
				secondClosestDistsq = closestDistsq;
				closest = player;
				closestDistsq = distSq;
				continue;
			}
			if(!isdefined(secondClosest) || distSq < secondClosestDistsq)
			{
				secondClosest = player;
				secondClosestDistsq = distSq;
			}
		}
	}
	if(isdefined(closest))
	{
		if(BulletTracePassed(closest.origin + VectorScale((0, 0, 1), 50), spawnpoint.sightTracePoint, 0, undefined))
		{
			return 1;
		}
	}
	if(isdefined(secondClosest))
	{
		if(BulletTracePassed(secondClosest.origin + VectorScale((0, 0, 1), 50), spawnpoint.sightTracePoint, 0, undefined))
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: avoid_visible_enemies
	Namespace: spawnlogic
	Checksum: 0xC988B060
	Offset: 0x7720
	Size: 0x56F
	Parameters: 2
	Flags: None
*/
function avoid_visible_enemies(Spawnpoints, teambased)
{
	if(GetDvarString("scr_spawnpointnewlogic") == "0")
	{
		return;
	}
	lospenalty = get_los_penalty();
	minDistTeam = self.team;
	if(teambased)
	{
		for(i = 0; i < Spawnpoints.size; i++)
		{
			if(!isdefined(Spawnpoints[i].enemySights))
			{
				continue;
			}
			penalty = lospenalty * Spawnpoints[i].enemySights[self.team];
			Spawnpoints[i].weight = Spawnpoints[i].weight - penalty;
			/#
				if(level.storeSpawnData || level.debugSpawning)
				{
					index = Spawnpoints[i].sightChecks.size;
					Spawnpoints[i].sightChecks[index] = spawnstruct();
					Spawnpoints[i].sightChecks[index].penalty = penalty;
				}
			#/
		}
	}
	else
	{
		for(i = 0; i < Spawnpoints.size; i++)
		{
			if(!isdefined(Spawnpoints[i].enemySights))
			{
				continue;
			}
			penalty = lospenalty * Spawnpoints[i].enemySights;
			Spawnpoints[i].weight = Spawnpoints[i].weight - penalty;
			/#
				if(level.storeSpawnData || level.debugSpawning)
				{
					index = Spawnpoints[i].sightChecks.size;
					Spawnpoints[i].sightChecks[index] = spawnstruct();
					Spawnpoints[i].sightChecks[index].penalty = penalty;
				}
			#/
		}
		minDistTeam = "all";
	}
	avoidWeight = GetDvarFloat("scr_spawn_enemyavoidweight");
	if(avoidWeight != 0)
	{
		nearbyEnemyOuterRange = GetDvarFloat("scr_spawn_enemyavoiddist");
		nearbyEnemyOuterRangeSq = nearbyEnemyOuterRange * nearbyEnemyOuterRange;
		nearbyEnemyPenalty = 1500 * avoidWeight;
		nearbyEnemyMinorPenalty = 800 * avoidWeight;
		lastAttackerOrigin = VectorScale((-1, -1, -1), 99999);
		lastDeathPos = VectorScale((-1, -1, -1), 99999);
		if(isalive(self.lastAttacker))
		{
			lastAttackerOrigin = self.lastAttacker.origin;
		}
		if(isdefined(self.lastDeathPos))
		{
			lastDeathPos = self.lastDeathPos;
		}
		for(i = 0; i < Spawnpoints.size; i++)
		{
			mindist = Spawnpoints[i].minEnemyDist[minDistTeam];
			if(mindist < nearbyEnemyOuterRange * 2)
			{
				penalty = nearbyEnemyMinorPenalty * 1 - mindist / nearbyEnemyOuterRange * 2;
				if(mindist < nearbyEnemyOuterRange)
				{
					penalty = penalty + nearbyEnemyPenalty * 1 - mindist / nearbyEnemyOuterRange;
				}
				if(penalty > 0)
				{
					Spawnpoints[i].weight = Spawnpoints[i].weight - penalty;
					/#
						if(level.storeSpawnData || level.debugSpawning)
						{
							Spawnpoints[i].spawnData[Spawnpoints[i].spawnData.size] = "Dev Block strings are not supported" + Int(Spawnpoints[i].minEnemyDist[minDistTeam]) + "Dev Block strings are not supported" + Int(penalty);
						}
					#/
				}
			}
		}
	}
}

/*
	Name: avoid_spawn_reuse
	Namespace: spawnlogic
	Checksum: 0xDD3D43B9
	Offset: 0x7C98
	Size: 0x28B
	Parameters: 2
	Flags: None
*/
function avoid_spawn_reuse(Spawnpoints, teambased)
{
	if(GetDvarString("scr_spawnpointnewlogic") == "0")
	{
		return;
	}
	time = GetTime();
	maxTime = 10000;
	maxDistSq = 1048576;
	for(i = 0; i < Spawnpoints.size; i++)
	{
		spawnpoint = Spawnpoints[i];
		if(!isdefined(spawnpoint.lastspawnedplayer) || !isdefined(spawnpoint.lastspawntime) || !isalive(spawnpoint.lastspawnedplayer))
		{
			continue;
		}
		if(spawnpoint.lastspawnedplayer == self)
		{
			continue;
		}
		if(teambased && spawnpoint.lastspawnedplayer.team == self.team)
		{
			continue;
		}
		timePassed = time - spawnpoint.lastspawntime;
		if(timePassed < maxTime)
		{
			distSq = DistanceSquared(spawnpoint.lastspawnedplayer.origin, spawnpoint.origin);
			if(distSq < maxDistSq)
			{
				worsen = 5000 * 1 - distSq / maxDistSq * 1 - timePassed / maxTime;
				spawnpoint.weight = spawnpoint.weight - worsen;
				/#
					if(level.storeSpawnData || level.debugSpawning)
					{
						spawnpoint.spawnData[spawnpoint.spawnData.size] = "Dev Block strings are not supported" + worsen;
					}
				#/
			}
			else
			{
				spawnpoint.lastspawnedplayer = undefined;
			}
			continue;
		}
		spawnpoint.lastspawnedplayer = undefined;
	}
}

/*
	Name: avoid_same_spawn
	Namespace: spawnlogic
	Checksum: 0x37ECBE93
	Offset: 0x7F30
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function avoid_same_spawn(Spawnpoints)
{
	if(GetDvarString("scr_spawnpointnewlogic") == "0")
	{
		return;
	}
	if(!isdefined(self.lastSpawnPoint))
	{
		return;
	}
	for(i = 0; i < Spawnpoints.size; i++)
	{
		if(Spawnpoints[i] == self.lastSpawnPoint)
		{
			Spawnpoints[i].weight = Spawnpoints[i].weight - 50000;
			/#
				if(level.storeSpawnData || level.debugSpawning)
				{
					Spawnpoints[i].spawnData[Spawnpoints[i].spawnData.size] = "Dev Block strings are not supported";
				}
			#/
			break;
		}
	}
}

/*
	Name: get_random_intermission_point
	Namespace: spawnlogic
	Checksum: 0xC84B4010
	Offset: 0x8040
	Size: 0xA3
	Parameters: 0
	Flags: None
*/
function get_random_intermission_point()
{
	Spawnpoints = struct::get_array("cp_global_intermission", "targetname");
	if(!Spawnpoints.size)
	{
		Spawnpoints = struct::get_array("cp_coop_spawn", "targetname");
	}
	/#
		Assert(Spawnpoints.size);
	#/
	spawnpoint = get_spawnpoint_random(Spawnpoints);
	return spawnpoint;
}

/*
	Name: function_1e347e22
	Namespace: spawnlogic
	Checksum: 0x99EC1590
	Offset: 0x80F0
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_1e347e22()
{
}


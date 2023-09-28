#using scripts\codescripts\struct;
#using scripts\cp\_accolades;
#using scripts\cp\_achievements;
#using scripts\cp\_bb;
#using scripts\cp\_challenges;
#using scripts\cp\_decorations;
#using scripts\cp\_load;
#using scripts\cp\_objectives;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic_player;
#using scripts\cp\gametypes\_save;
#using scripts\cp\gametypes\_spawning;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\laststand_shared;
#using scripts\shared\load_shared;
#using scripts\shared\lui_shared;
#using scripts\shared\music_shared;
#using scripts\shared\player_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\system_shared;
#using scripts\shared\trigger_shared;
#using scripts\shared\util_shared;

#namespace skipto;

/*
	Name: __init__sytem__
	Namespace: skipto
	Checksum: 0xB3E302F9
	Offset: 0x1008
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("skipto", &__init__, &__main__, undefined);
}

/*
	Name: function_97bb1111
	Namespace: skipto
	Checksum: 0xEB808336
	Offset: 0x1050
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_97bb1111(mapname)
{
	return mapname + "_nightmares";
}

/*
	Name: function_23eda99c
	Namespace: skipto
	Checksum: 0x5333694A
	Offset: 0x1070
	Size: 0x177
	Parameters: 0
	Flags: None
*/
function function_23eda99c()
{
	var_cfc9cbb7 = [];
	Array::add(var_cfc9cbb7, "cp_mi_cairo_aquifer");
	Array::add(var_cfc9cbb7, "cp_mi_cairo_infection");
	Array::add(var_cfc9cbb7, "cp_mi_cairo_lotus");
	Array::add(var_cfc9cbb7, "cp_mi_cairo_ramses");
	Array::add(var_cfc9cbb7, "cp_mi_eth_prologue");
	Array::add(var_cfc9cbb7, "cp_mi_sing_biodomes");
	Array::add(var_cfc9cbb7, "cp_mi_sing_blackstation");
	Array::add(var_cfc9cbb7, "cp_mi_sing_sgen");
	Array::add(var_cfc9cbb7, "cp_mi_sing_vengeance");
	Array::add(var_cfc9cbb7, "cp_mi_zurich_coalescence");
	Array::add(var_cfc9cbb7, "cp_mi_zurich_newworld");
	return var_cfc9cbb7;
}

/*
	Name: __init__
	Namespace: skipto
	Checksum: 0x6CD7D766
	Offset: 0x11F0
	Size: 0x27B
	Parameters: 0
	Flags: None
*/
function __init__()
{
	level flag::init("start_skiptos");
	level flag::init("running_skipto");
	level flag::init("level_has_skiptos");
	level flag::init("level_has_skipto_branches");
	level flag::init("skip_safehouse_after_map");
	level flag::init("final_level");
	level flag::init("_exit");
	clientfield::register("toplayer", "catch_up_transition", 1, 1, "counter");
	clientfield::register("world", "set_last_map_dvar", 1, 1, "counter");
	function_fcea19f2("_default");
	function_fcea19f2("_exit", &function_eb66277b);
	function_fcea19f2("no_game", &function_7caf435a);
	function_7c1e8577("gamedata/tables/cp/cp_mapmissions.csv", level.script);
	level.var_df118466 = &function_df118466;
	callback::on_finalize_initialization(&on_finalize_initialization);
	callback::on_spawned(&on_player_spawn);
	callback::on_connect(&on_player_connect);
	/#
		level thread update_billboard();
		callback::on_spawned(&function_c40086b6);
	#/
}

/*
	Name: __main__
	Namespace: skipto
	Checksum: 0x1296E8CA
	Offset: 0x1478
	Size: 0x4B
	Parameters: 0
	Flags: None
*/
function __main__()
{
	level thread function_143fd222();
	level thread handle();
	level thread function_52904bc9();
}

/*
	Name: add
	Namespace: skipto
	Checksum: 0x91513088
	Offset: 0x14D0
	Size: 0x34B
	Parameters: 7
	Flags: None
*/
function add(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96, var_2bc8bbd9)
{
	if(!isdefined(var_2bc8bbd9))
	{
		var_2bc8bbd9 = 0;
	}
	if(!isdefined(level.default_skipto))
	{
		level.default_skipto = skipto;
	}
	if(function_a363b4b1(skipto))
	{
		/#
			errormsg("Dev Block strings are not supported");
		#/
		return;
	}
	if(isdefined(var_46c5ea43) || isdefined(var_c3efda96))
	{
		/#
			errormsg("Dev Block strings are not supported");
		#/
		return;
	}
	if(level flag::get("level_has_skipto_branches"))
	{
		/#
			errormsg("Dev Block strings are not supported");
		#/
	}
	if(!isdefined(var_46c5ea43))
	{
		if(isdefined(level.var_8b767436))
		{
			if(isdefined(level.var_e07f6589[level.var_8b767436]))
			{
				if(!isdefined(level.var_e07f6589[level.var_8b767436].var_c3efda96) || level.var_e07f6589[level.var_8b767436].var_c3efda96.size < 1)
				{
					if(!isdefined(level.var_e07f6589[level.var_8b767436].var_c3efda96))
					{
						level.var_e07f6589[level.var_8b767436].var_c3efda96 = [];
					}
					else if(!IsArray(level.var_e07f6589[level.var_8b767436].var_c3efda96))
					{
						level.var_e07f6589[level.var_8b767436].var_c3efda96 = Array(level.var_e07f6589[level.var_8b767436].var_c3efda96);
					}
					level.var_e07f6589[level.var_8b767436].var_c3efda96[level.var_e07f6589[level.var_8b767436].var_c3efda96.size] = skipto;
				}
			}
		}
		if(isdefined(level.var_8b767436))
		{
			var_46c5ea43 = level.var_8b767436;
		}
		level.var_8b767436 = skipto;
	}
	if(!isdefined(func))
	{
		/#
			Assert(isdefined(func), "Dev Block strings are not supported");
		#/
	}
	struct = function_fcea19f2(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96, var_2bc8bbd9);
	struct.public = 1;
	level flag::set("level_has_skiptos");
}

/*
	Name: function_d68e678e
	Namespace: skipto
	Checksum: 0xF4AE8E96
	Offset: 0x1828
	Size: 0x6F
	Parameters: 6
	Flags: None
*/
function function_d68e678e(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96)
{
	struct = add(skipto, func, str_name, cleanup_func, var_46c5ea43, undefined, 1);
}

/*
	Name: function_731571ad
	Namespace: skipto
	Checksum: 0xF40F861C
	Offset: 0x18A0
	Size: 0x317
	Parameters: 6
	Flags: None
*/
function function_731571ad(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96)
{
	if(!isdefined(level.default_skipto))
	{
		level.default_skipto = skipto;
	}
	if(function_a363b4b1(skipto))
	{
		/#
			errormsg("Dev Block strings are not supported");
		#/
		return;
	}
	if(!isdefined(var_46c5ea43) && !isdefined(var_c3efda96))
	{
		/#
			errormsg("Dev Block strings are not supported");
		#/
		return;
	}
	if(!isdefined(var_46c5ea43))
	{
		if(isdefined(level.var_8b767436))
		{
			if(isdefined(level.var_e07f6589[level.var_8b767436]))
			{
				if(!isdefined(level.var_e07f6589[level.var_8b767436].var_c3efda96) || level.var_e07f6589[level.var_8b767436].var_c3efda96.size < 1)
				{
					if(!isdefined(level.var_e07f6589[level.var_8b767436].var_c3efda96))
					{
						level.var_e07f6589[level.var_8b767436].var_c3efda96 = [];
					}
					else if(!IsArray(level.var_e07f6589[level.var_8b767436].var_c3efda96))
					{
						level.var_e07f6589[level.var_8b767436].var_c3efda96 = Array(level.var_e07f6589[level.var_8b767436].var_c3efda96);
					}
					level.var_e07f6589[level.var_8b767436].var_c3efda96[level.var_e07f6589[level.var_8b767436].var_c3efda96.size] = skipto;
				}
			}
		}
		if(isdefined(level.var_8b767436))
		{
			var_46c5ea43 = level.var_8b767436;
		}
		level.var_8b767436 = skipto;
	}
	if(!isdefined(func))
	{
		/#
			Assert(isdefined(func), "Dev Block strings are not supported");
		#/
	}
	struct = function_fcea19f2(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96);
	struct.public = 1;
	level flag::set("level_has_skiptos");
	level flag::set("level_has_skipto_branches");
	return struct;
}

/*
	Name: function_75d02344
	Namespace: skipto
	Checksum: 0x8ED1F06D
	Offset: 0x1BC0
	Size: 0x83
	Parameters: 6
	Flags: None
*/
function function_75d02344(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96)
{
	struct = function_731571ad(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96);
	if(isdefined(struct))
	{
		struct.looping = 1;
	}
}

/*
	Name: function_654c9dda
	Namespace: skipto
	Checksum: 0x5A135921
	Offset: 0x1C50
	Size: 0xD3
	Parameters: 6
	Flags: None
*/
function function_654c9dda(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96)
{
	if(!isdefined(level.default_skipto))
	{
		level.default_skipto = skipto;
	}
	if(function_a363b4b1(skipto))
	{
		struct = function_fcea19f2(skipto, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96);
		struct.var_3c612393 = 1;
		return;
	}
	/#
		errormsg("Dev Block strings are not supported");
	#/
}

/*
	Name: function_8ada4a91
	Namespace: skipto
	Checksum: 0x70D4A16A
	Offset: 0x1D30
	Size: 0xF9
	Parameters: 1
	Flags: None
*/
function function_8ada4a91(skipto)
{
	if(!isdefined(level.var_e07f6589[skipto]))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + skipto + "Dev Block strings are not supported");
		#/
		return;
	}
	level.var_e07f6589[skipto].var_f001de64 = 0;
	foreach(player in level.players)
	{
		bb::logobjectivestatuschange(skipto, player, "leave_objective_incomplete");
	}
}

/*
	Name: function_955393e
	Namespace: skipto
	Checksum: 0xAA2BA3B0
	Offset: 0x1E38
	Size: 0x71
	Parameters: 5
	Flags: None
*/
function function_955393e(skipto, event_name, event_type, event_size, event_state)
{
	if(!isdefined(level.var_81fdc5c1))
	{
		level.var_81fdc5c1 = [];
	}
	level.var_81fdc5c1[skipto] = Array(event_name, event_type, event_size, event_state);
}

/*
	Name: function_fcea19f2
	Namespace: skipto
	Checksum: 0x9CBEEE9D
	Offset: 0x1EB8
	Size: 0x107
	Parameters: 7
	Flags: None
*/
function function_fcea19f2(msg, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96, var_2bc8bbd9)
{
	/#
		Assert(!isdefined(level._loadStarted), "Dev Block strings are not supported");
	#/
	msg = ToLower(msg);
	struct = function_b545fa58(msg, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96, var_2bc8bbd9);
	level.var_e07f6589[msg] = struct;
	level flag::init(msg);
	level flag::init(msg + "_completed");
	return struct;
}

/*
	Name: change
	Namespace: skipto
	Checksum: 0x3CA0F9EE
	Offset: 0x1FC8
	Size: 0x123
	Parameters: 6
	Flags: None
*/
function change(msg, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96)
{
	struct = level.var_e07f6589[msg];
	if(isdefined(func))
	{
		struct.var_1ca15390 = func;
	}
	if(isdefined(str_name))
	{
		struct.str_name = str_name;
	}
	if(isdefined(cleanup_func))
	{
		struct.cleanup_func = cleanup_func;
	}
	if(isdefined(var_46c5ea43))
	{
		struct.var_f8c3deec = struct function_d4f0317b(var_46c5ea43);
	}
	if(isdefined(var_c3efda96))
	{
		struct.var_c3efda96 = StrTok(var_c3efda96, ",");
		struct.next = struct.var_c3efda96;
	}
}

/*
	Name: set_skipto_cleanup_func
	Namespace: skipto
	Checksum: 0xD3FAB905
	Offset: 0x20F8
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function set_skipto_cleanup_func(func)
{
	level.func_skipto_cleanup = func;
}

/*
	Name: function_b545fa58
	Namespace: skipto
	Checksum: 0x2FA11FAB
	Offset: 0x2118
	Size: 0x1DF
	Parameters: 7
	Flags: None
*/
function function_b545fa58(msg, func, str_name, cleanup_func, var_46c5ea43, var_c3efda96, var_2bc8bbd9)
{
	if(!isdefined(var_2bc8bbd9))
	{
		var_2bc8bbd9 = 0;
	}
	struct = spawnstruct();
	struct.name = msg;
	struct.var_84e9618b = function_4e21b348(msg);
	struct.var_1ca15390 = func;
	struct.str_name = str_name;
	struct.cleanup_func = cleanup_func;
	struct.next = [];
	struct.prev = [];
	struct.var_f8c3deec = "";
	struct.var_46c5ea43 = [];
	struct.var_2bc8bbd9 = var_2bc8bbd9;
	if(isdefined(var_46c5ea43))
	{
		struct.var_f8c3deec = struct function_d4f0317b(var_46c5ea43);
	}
	struct.var_c3efda96 = [];
	if(isdefined(var_c3efda96))
	{
		struct.var_c3efda96 = StrTok(var_c3efda96, ",");
		struct.next = struct.var_c3efda96;
	}
	struct.var_17618905 = [];
	return struct;
}

/*
	Name: level_has_skipto_points
	Namespace: skipto
	Checksum: 0x553F2964
	Offset: 0x2300
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function level_has_skipto_points()
{
	return level flag::get("level_has_skiptos");
}

/*
	Name: function_c3caf25
	Namespace: skipto
	Checksum: 0x66DB5C6C
	Offset: 0x2330
	Size: 0x2B
	Parameters: 1
	Flags: None
*/
function function_c3caf25(msg)
{
	/#
		/#
			ASSERTMSG(msg);
		#/
	#/
}

/*
	Name: function_b6a4291e
	Namespace: skipto
	Checksum: 0x46097ECF
	Offset: 0x2368
	Size: 0x2F3
	Parameters: 1
	Flags: None
*/
function function_b6a4291e(var_3d535daf)
{
	op = "";
	ret = [];
	var_23f47015 = 0;
	ret[var_23f47015] = "";
	var_dccf2883 = 0;
	for(i = 0; i < var_3d535daf.size; i++)
	{
		c = GetSubStr(var_3d535daf, i, i + 1);
		if(c == "(")
		{
			var_dccf2883++;
			ret[var_23f47015] = ret[var_23f47015] + c;
			continue;
		}
		if(c == ")")
		{
			var_dccf2883--;
			ret[var_23f47015] = ret[var_23f47015] + c;
			continue;
		}
		if(var_dccf2883 == 0 && c == "&")
		{
			if(op == "|")
			{
				/#
					function_c3caf25("Dev Block strings are not supported" + var_3d535daf);
				#/
			}
			op = "&";
			var_23f47015++;
			ret[var_23f47015] = "";
			continue;
		}
		if(var_dccf2883 == 0 && c == "|")
		{
			if(op == "&")
			{
				/#
					function_c3caf25("Dev Block strings are not supported" + var_3d535daf);
				#/
			}
			op = "|";
			var_23f47015++;
			ret[var_23f47015] = "";
			continue;
		}
		ret[var_23f47015] = ret[var_23f47015] + c;
	}
	if(var_dccf2883 != 0)
	{
		/#
			function_c3caf25("Dev Block strings are not supported" + var_3d535daf);
		#/
	}
	for(j = 0; j <= var_23f47015; j++)
	{
		ret[j] = function_e3af1c7b(ret[j]);
	}
	if(var_23f47015 == 0)
	{
		return ret[var_23f47015];
	}
	else
	{
		ret["op"] = op;
		return ret;
	}
}

/*
	Name: function_e3af1c7b
	Namespace: skipto
	Checksum: 0x8A5DA9D9
	Offset: 0x2668
	Size: 0x16D
	Parameters: 1
	Flags: None
*/
function function_e3af1c7b(var_3d535daf)
{
	c = GetSubStr(var_3d535daf, 0, 1);
	if(c == "(")
	{
		c2 = GetSubStr(var_3d535daf, var_3d535daf.size - 1, var_3d535daf.size);
		if(c2 != ")")
		{
			/#
				function_c3caf25("Dev Block strings are not supported" + var_3d535daf);
			#/
		}
		s = GetSubStr(var_3d535daf, 1, var_3d535daf.size - 1);
		return function_b6a4291e(s);
	}
	if(!isdefined(self.var_46c5ea43))
	{
		self.var_46c5ea43 = [];
	}
	else if(!IsArray(self.var_46c5ea43))
	{
		self.var_46c5ea43 = Array(self.var_46c5ea43);
	}
	self.var_46c5ea43[self.var_46c5ea43.size] = var_3d535daf;
	return var_3d535daf;
}

/*
	Name: function_d4f0317b
	Namespace: skipto
	Checksum: 0x9C926C7
	Offset: 0x27E0
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function function_d4f0317b(var_46c5ea43)
{
	retval = function_b6a4291e(var_46c5ea43);
	if(IsArray(retval))
	{
		return retval;
	}
	return "";
}

/*
	Name: function_e5ea5a62
	Namespace: skipto
	Checksum: 0xB6056E57
	Offset: 0x2840
	Size: 0x171
	Parameters: 2
	Flags: None
*/
function function_e5ea5a62(conditions, adding)
{
	if(!IsArray(conditions))
	{
		if(isdefined(level.var_e07f6589[conditions]) && (isdefined(level.var_e07f6589[conditions].var_e27d380a) && level.var_e07f6589[conditions].var_e27d380a || IsInArray(adding, conditions)))
		{
			return 0;
		}
		return 1;
	}
	else if(conditions["op"] == "|")
	{
		for(i = 0; i < conditions.size - 1; i++)
		{
			if(function_e5ea5a62(conditions[i], adding))
			{
				return 1;
			}
		}
		return 0;
	}
	else
	{
		for(i = 0; i < conditions.size - 1; i++)
		{
			if(!function_e5ea5a62(conditions[i], adding))
			{
				return 0;
			}
		}
		return 1;
	}
}

/*
	Name: function_b72da2d
	Namespace: skipto
	Checksum: 0x9AE446BA
	Offset: 0x29C0
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_b72da2d(objectives)
{
	result = [];
	foreach(name in objectives)
	{
		if(function_e5ea5a62(level.var_e07f6589[name].var_f8c3deec, result))
		{
			if(!isdefined(result))
			{
				result = [];
			}
			else if(!IsArray(result))
			{
				result = Array(result);
			}
			result[result.size] = name;
		}
	}
	return result;
}

/*
	Name: function_5771edb2
	Namespace: skipto
	Checksum: 0x75A36697
	Offset: 0x2AE8
	Size: 0x71B
	Parameters: 0
	Flags: None
*/
function function_5771edb2()
{
	foreach(struct in level.var_e07f6589)
	{
		if(isdefined(struct.public) && struct.public)
		{
			if(struct.var_46c5ea43.size)
			{
				foreach(var_46c5ea43 in struct.var_46c5ea43)
				{
					if(isdefined(level.var_e07f6589[var_46c5ea43]))
					{
						if(!IsInArray(level.var_e07f6589[var_46c5ea43].next, struct.name))
						{
							if(!isdefined(level.var_e07f6589[var_46c5ea43].next))
							{
								level.var_e07f6589[var_46c5ea43].next = [];
							}
							else if(!IsArray(level.var_e07f6589[var_46c5ea43].next))
							{
								level.var_e07f6589[var_46c5ea43].next = Array(level.var_e07f6589[var_46c5ea43].next);
							}
							level.var_e07f6589[var_46c5ea43].next[level.var_e07f6589[var_46c5ea43].next.size] = struct.name;
						}
						continue;
					}
					if(!isdefined(level.var_e07f6589["_default"].next))
					{
						level.var_e07f6589["_default"].next = [];
					}
					else if(!IsArray(level.var_e07f6589["_default"].next))
					{
						level.var_e07f6589["_default"].next = Array(level.var_e07f6589["_default"].next);
					}
					level.var_e07f6589["_default"].next[level.var_e07f6589["_default"].next.size] = struct.name;
				}
			}
			else if(!isdefined(level.var_e07f6589["_default"].next))
			{
				level.var_e07f6589["_default"].next = [];
			}
			else if(!IsArray(level.var_e07f6589["_default"].next))
			{
				level.var_e07f6589["_default"].next = Array(level.var_e07f6589["_default"].next);
			}
			level.var_e07f6589["_default"].next[level.var_e07f6589["_default"].next.size] = struct.name;
			foreach(var_c3efda96 in struct.var_c3efda96)
			{
				if(isdefined(level.var_e07f6589[var_c3efda96]))
				{
					if(!isdefined(level.var_e07f6589[var_c3efda96].prev))
					{
						level.var_e07f6589[var_c3efda96].prev = [];
					}
					else if(!IsArray(level.var_e07f6589[var_c3efda96].prev))
					{
						level.var_e07f6589[var_c3efda96].prev = Array(level.var_e07f6589[var_c3efda96].prev);
					}
					level.var_e07f6589[var_c3efda96].prev[level.var_e07f6589[var_c3efda96].prev.size] = struct.name;
				}
			}
		}
	}
	foreach(struct in level.var_e07f6589)
	{
		if(isdefined(struct.public) && struct.public)
		{
			if(struct.next.size < 1)
			{
				if(!isdefined(struct.next))
				{
					struct.next = [];
				}
				else if(!IsArray(struct.next))
				{
					struct.next = Array(struct.next);
				}
				struct.next[struct.next.size] = "_exit";
			}
		}
	}
}

/*
	Name: function_72453179
	Namespace: skipto
	Checksum: 0xEB6401EA
	Offset: 0x3210
	Size: 0x51
	Parameters: 1
	Flags: None
*/
function function_72453179(skipto_name)
{
	if(isdefined(level.var_e07f6589[skipto_name]))
	{
		return level.var_e07f6589[skipto_name].next;
	}
	return level.var_e07f6589["_default"].next;
}

/*
	Name: function_943de2e
	Namespace: skipto
	Checksum: 0xF7EDFE17
	Offset: 0x3270
	Size: 0xD7
	Parameters: 1
	Flags: None
*/
function function_943de2e(skiptos)
{
	var_cf6ef5e8 = "";
	first = 1;
	foreach(skipto in skiptos)
	{
		if(!first)
		{
			var_cf6ef5e8 = var_cf6ef5e8 + ",";
		}
		first = 0;
		var_cf6ef5e8 = var_cf6ef5e8 + skipto;
	}
	return var_cf6ef5e8;
}

/*
	Name: function_8b19ec5d
	Namespace: skipto
	Checksum: 0xF3ABB158
	Offset: 0x3350
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_8b19ec5d(var_533a04a6)
{
	var_c61bfb3e = GetDvarString("skipto_jump");
	if(isdefined(var_c61bfb3e) && var_c61bfb3e.size)
	{
		if(var_c61bfb3e == "_default")
		{
			var_c61bfb3e = "";
		}
		skiptos = [];
		skiptos[0] = var_c61bfb3e;
		return skiptos;
	}
	if(isdefined(var_533a04a6) && var_533a04a6)
	{
		skiptos = ToLower(GetDvarString("sv_saveGameSkipto"));
	}
	else
	{
		skiptos = ToLower(function_fa0beb8());
	}
	result = StrTok(skiptos, ",");
	return result;
}

/*
	Name: function_52c50cb8
	Namespace: skipto
	Checksum: 0x89792AAB
	Offset: 0x3480
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_52c50cb8()
{
	if(!isdefined(level.skipto_point) || !isdefined(level.var_e07f6589[level.skipto_point]))
	{
		return -1;
	}
	return level.var_e07f6589[level.skipto_point].var_84e9618b;
}

/*
	Name: function_677539fe
	Namespace: skipto
	Checksum: 0x4B2D3652
	Offset: 0x34D8
	Size: 0x9B
	Parameters: 1
	Flags: None
*/
function function_677539fe(skipto)
{
	if(skipto != "" && level.var_e07f6589[skipto].var_2bc8bbd9 === 1)
	{
		function_3f5625b4(ToLower(skipto), 1);
	}
	else
	{
		function_3f5625b4(ToLower(skipto), 0);
	}
}

/*
	Name: function_556029e1
	Namespace: skipto
	Checksum: 0xB09513E
	Offset: 0x3580
	Size: 0x33
	Parameters: 1
	Flags: None
*/
function function_556029e1(skiptos)
{
	function_677539fe(function_943de2e(skiptos));
}

/*
	Name: function_1b5a2a11
	Namespace: skipto
	Checksum: 0xB7F0B3FE
	Offset: 0x35C0
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_1b5a2a11()
{
	if(!isdefined(level.default_skipto))
	{
		level.default_skipto = "";
	}
	function_677539fe(level.default_skipto);
}

/*
	Name: indicate
	Namespace: skipto
	Checksum: 0x9A685C4F
	Offset: 0x3608
	Size: 0x1F3
	Parameters: 2
	Flags: None
*/
function indicate(skipto, index)
{
	/#
		if(isdefined(GetDvarString("Dev Block strings are not supported")) && GetDvarInt("Dev Block strings are not supported"))
		{
			return;
		}
		hudelem = NewHudElem();
		hudelem.alignX = "Dev Block strings are not supported";
		hudelem.alignY = "Dev Block strings are not supported";
		hudelem.x = 125;
		hudelem.y = 20 * index + 2;
		hudelem.fontscale = 1.5;
		hudelem.sort = 20;
		hudelem.alpha = 0;
		hudelem.color = VectorScale((1, 1, 1), 0.8);
		hudelem.font = "Dev Block strings are not supported";
		hudelem setText(skipto);
		wait(0.25 * index + 1);
		hudelem fadeOverTime(0.25);
		hudelem.alpha = 1;
		wait(0.25);
		wait(3);
		hudelem fadeOverTime(0.75);
		hudelem.alpha = 0;
		wait(0.75);
		hudelem destroy();
	#/
}

/*
	Name: function_bd4daf7b
	Namespace: skipto
	Checksum: 0x27646B6C
	Offset: 0x3808
	Size: 0xF5
	Parameters: 1
	Flags: None
*/
function function_bd4daf7b(skiptos)
{
	done = 0;
	while(isdefined(skiptos) && skiptos.size && !done)
	{
		done = 1;
		foreach(skipto in skiptos)
		{
			if(!isdefined(level.var_e07f6589[skipto]))
			{
				ArrayRemoveValue(skiptos, skipto, 0);
				done = 0;
				break;
			}
		}
	}
	return skiptos;
}

/*
	Name: handle
	Namespace: skipto
	Checksum: 0x5351EEED
	Offset: 0x3908
	Size: 0x33B
	Parameters: 0
	Flags: None
*/
function handle()
{
	function_5771edb2();
	function_1d4d83a6();
	level flag::wait_till("start_skiptos");
	var_7405b464 = function_72453179("_default");
	skiptos = function_8b19ec5d(1);
	var_c61bfb3e = GetDvarString("skipto_jump");
	if(isdefined(var_c61bfb3e) && var_c61bfb3e.size)
	{
		SetDvar("skipto_jump", "");
	}
	skiptos = function_bd4daf7b(skiptos);
	/#
		Assert(isdefined(level.first_frame) && level.first_frame, "Dev Block strings are not supported");
	#/
	if(isdefined(level.skipto_point))
	{
		skiptos = [];
		skiptos[0] = level.skipto_point;
	}
	level.var_fee90489 = skiptos;
	skipto = skiptos[0];
	if(isdefined(skipto) && isdefined(level.var_e07f6589[skipto]))
	{
		level.skipto_point = skipto;
	}
	is_default = 0;
	start = level.var_fee90489;
	if(start.size < 1)
	{
		is_default = 1;
		start = var_7405b464;
		if(isdefined(level.default_skipto))
		{
			level.skipto_point = level.default_skipto;
		}
		function_ba933d27();
	}
	level.var_b0a9f843 = start;
	skipto = start[0];
	if(isdefined(skipto) && isdefined(level.var_e07f6589[skipto]))
	{
		level.skipto_point = skipto;
	}
	if(start.size < 1)
	{
		return;
	}
	if(!is_default)
	{
		function_be04f9a5(var_7405b464);
	}
	level flagsys::set("scene_on_load_wait");
	set_level_objective(start, 1);
	if(is_default)
	{
		thread savegame::save();
	}
	else
	{
		thread savegame::load();
	}
	thread Devgui();
	/#
		waittillframeend;
		thread menu();
		level thread function_f70934af();
	#/
}

/*
	Name: create
	Namespace: skipto
	Checksum: 0xCB8396EC
	Offset: 0x3C50
	Size: 0x1CB
	Parameters: 2
	Flags: None
*/
function create(skipto, index)
{
	alpha = 1;
	color = VectorScale((1, 1, 1), 0.9);
	if(index != -1)
	{
		if(index != 4)
		{
			alpha = 1 - Abs(4 - index) / 4;
		}
		else
		{
			color = (1, 1, 0);
		}
	}
	if(alpha == 0)
	{
		alpha = 0.05;
	}
	hudelem = NewHudElem();
	hudelem.alignX = "left";
	hudelem.alignY = "middle";
	hudelem.x = 80;
	hudelem.y = 80 + index * 18;
	hudelem setText(skipto);
	hudelem.alpha = 0;
	hudelem.foreground = 1;
	hudelem.color = color;
	hudelem.fontscale = 1.75;
	hudelem fadeOverTime(0.5);
	hudelem.alpha = alpha;
	return hudelem;
}

/*
	Name: function_1d4d83a6
	Namespace: skipto
	Checksum: 0xA5831CCC
	Offset: 0x3E28
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_1d4d83a6()
{
	var_dc719734 = "devgui_remove "Map/Skipto" 
";
	AddDebugCommand(var_dc719734);
}

/*
	Name: Devgui
	Namespace: skipto
	Checksum: 0x4556B1F4
	Offset: 0x3E60
	Size: 0x2B7
	Parameters: 0
	Flags: None
*/
function Devgui()
{
	var_fcdf780c = "devgui_cmd "Map/Skipto/";
	var_67a5c424 = var_fcdf780c + "Jump to/";
	index = 1;
	AddDebugCommand(var_67a5c424 + "Default:0" "set " + "skipto_jump" + " " + "_default" + "" 
");
	foreach(struct in level.var_e07f6589)
	{
		name = struct.name + ":" + index;
		index++;
		AddDebugCommand(var_67a5c424 + name + "" "set " + "skipto_jump" + " " + struct.name + "" 
");
	}
	AddDebugCommand(var_67a5c424 + "No Game:" + index + "" "set " + "skipto_jump" + " " + "no_game" + "" 
");
	for(;;)
	{
		jumpto = GetDvarString("skipto_jump");
		if(isdefined(jumpto) && jumpto.size)
		{
			music::setmusicstate("death");
			map_restart();
			return;
		}
		complete = GetDvarString("skipto_complete");
		if(isdefined(complete) && complete.size)
		{
			SetDvar("skipto_complete", "");
			level function_be8adfb8(complete, GetPlayers()[0]);
		}
		wait(0.05);
	}
}

/*
	Name: menu
	Namespace: skipto
	Checksum: 0xA6DD03B9
	Offset: 0x4120
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function menu()
{
	/#
		level flag::wait_till("Dev Block strings are not supported");
		player = GetPlayers()[0];
		while(isdefined(player) && player buttonpressed("Dev Block strings are not supported"))
		{
			wait(0.05);
		}
		level thread function_32d804dd();
		while(isdefined(GetDvarInt("Dev Block strings are not supported")) && GetDvarInt("Dev Block strings are not supported"))
		{
			SetDvar("Dev Block strings are not supported", 0);
			GetPlayers()[0] AllowJump(0);
			display();
			GetPlayers()[0] AllowJump(1);
			wait(0.05);
		}
	#/
}

/*
	Name: function_5a20eade
	Namespace: skipto
	Checksum: 0xDF90C5C
	Offset: 0x4288
	Size: 0xBD
	Parameters: 0
	Flags: None
*/
function function_5a20eade()
{
	player = GetPlayers()[0];
	if(isdefined(player) && player buttonpressed("BUTTON_X") && player buttonpressed("DPAD_RIGHT") && player buttonpressed("BUTTON_LSHLDR") && player buttonpressed("BUTTON_RSHLDR"))
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_32d804dd
	Namespace: skipto
	Checksum: 0x7F65FE6B
	Offset: 0x4350
	Size: 0x67
	Parameters: 0
	Flags: None
*/
function function_32d804dd()
{
	while(!function_5a20eade())
	{
		wait(0.05);
		continue;
		SetDvar("debug_skipto", 1);
		while(function_5a20eade())
		{
			wait(0.05);
		}
	}
}

/*
	Name: function_73c9bef8
	Namespace: skipto
	Checksum: 0x426A6B09
	Offset: 0x43C0
	Size: 0x151
	Parameters: 1
	Flags: None
*/
function function_73c9bef8(objectives)
{
	var_dc719734 = "devgui_remove "Map/Skipto/Complete" 
";
	AddDebugCommand(var_dc719734);
	var_fcdf780c = "devgui_cmd "Map/Skipto/";
	var_86373479 = var_fcdf780c + "Complete/";
	index = 1;
	foreach(objective in objectives)
	{
		name = objective + ":" + index;
		index++;
		AddDebugCommand(var_86373479 + name + "" "set " + "skipto_complete" + " " + objective + "" 
");
	}
}

/*
	Name: function_d4de4cea
	Namespace: skipto
	Checksum: 0x993781FD
	Offset: 0x4520
	Size: 0xC7
	Parameters: 0
	Flags: None
*/
function function_d4de4cea()
{
	index = 0;
	names = [];
	foreach(struct in level.var_e07f6589)
	{
		name = struct.name;
		names[index] = name;
		index++;
	}
	return names;
}

/*
	Name: display
	Namespace: skipto
	Checksum: 0xAF9CB378
	Offset: 0x45F0
	Size: 0x633
	Parameters: 0
	Flags: None
*/
function display()
{
	if(level.var_e07f6589.size <= 0)
	{
		return;
	}
	names = function_d4de4cea();
	elems = list_menu();
	title = create("Selected skipto:", -1);
	title.color = (1, 1, 1);
	strings = [];
	for(i = 0; i < names.size; i++)
	{
		s_name = names[i];
		skipto_string = "[" + names[i] + "]";
		strings[strings.size] = skipto_string;
	}
	selected = names.size - 1;
	up_pressed = 0;
	down_pressed = 0;
	found_current_skipto = 0;
	while(selected > 0)
	{
		if(names[selected] == level.skipto_point)
		{
			found_current_skipto = 1;
			break;
		}
		selected--;
	}
	if(!found_current_skipto)
	{
		selected = names.size - 1;
	}
	function_59b1348d(elems, strings, selected);
	old_selected = selected;
	while(old_selected != selected)
	{
		function_59b1348d(elems, strings, selected);
		old_selected = selected;
		if(!up_pressed)
		{
			if(GetPlayers()[0] buttonpressed("UPARROW") || GetPlayers()[0] buttonpressed("DPAD_UP") || GetPlayers()[0] buttonpressed("APAD_UP"))
			{
				up_pressed = 1;
				selected--;
			}
		}
		else if(!GetPlayers()[0] buttonpressed("UPARROW") && !GetPlayers()[0] buttonpressed("DPAD_UP") && !GetPlayers()[0] buttonpressed("APAD_UP"))
		{
			up_pressed = 0;
		}
		if(!down_pressed)
		{
			if(GetPlayers()[0] buttonpressed("DOWNARROW") || GetPlayers()[0] buttonpressed("DPAD_DOWN") || GetPlayers()[0] buttonpressed("APAD_DOWN"))
			{
				down_pressed = 1;
				selected++;
			}
		}
		else if(!GetPlayers()[0] buttonpressed("DOWNARROW") && !GetPlayers()[0] buttonpressed("DPAD_DOWN") && !GetPlayers()[0] buttonpressed("APAD_DOWN"))
		{
			down_pressed = 0;
		}
		if(selected < 0)
		{
			selected = names.size - 1;
		}
		if(selected >= names.size)
		{
			selected = 0;
		}
		if(GetPlayers()[0] buttonpressed("BUTTON_B"))
		{
			function_30a9834c(elems, title);
			break;
		}
		if(GetPlayers()[0] buttonpressed("kp_enter") || GetPlayers()[0] buttonpressed("BUTTON_A") || GetPlayers()[0] buttonpressed("enter"))
		{
			if(names[selected] == "cancel")
			{
				function_30a9834c(elems, title);
				break;
			}
			function_677539fe(names[selected]);
			map_restart();
			return;
		}
		wait(0.05);
	}
}

/*
	Name: list_menu
	Namespace: skipto
	Checksum: 0x2D199890
	Offset: 0x4C30
	Size: 0x77
	Parameters: 0
	Flags: None
*/
function list_menu()
{
	hud_array = [];
	for(i = 0; i < 8; i++)
	{
		hud = create("", i);
		hud_array[hud_array.size] = hud;
	}
	return hud_array;
}

/*
	Name: function_59b1348d
	Namespace: skipto
	Checksum: 0x5A753745
	Offset: 0x4CB0
	Size: 0xBD
	Parameters: 3
	Flags: None
*/
function function_59b1348d(hud_array, strings, num)
{
	for(i = 0; i < hud_array.size; i++)
	{
		index = i + num - 4;
		if(isdefined(strings[index]))
		{
			text = strings[index];
		}
		else
		{
			text = "";
		}
		hud_array[i] setText(text);
	}
}

/*
	Name: function_30a9834c
	Namespace: skipto
	Checksum: 0x7E2EACEB
	Offset: 0x4D78
	Size: 0x75
	Parameters: 2
	Flags: None
*/
function function_30a9834c(elems, title)
{
	title destroy();
	for(i = 0; i < elems.size; i++)
	{
		elems[i] destroy();
	}
}

/*
	Name: function_7caf435a
	Namespace: skipto
	Checksum: 0xC77B9C1C
	Offset: 0x4DF8
	Size: 0x95
	Parameters: 0
	Flags: None
*/
function function_7caf435a()
{
	guys = GetAIArray();
	guys = ArrayCombine(guys, GetSpawnerArray(), 1, 0);
	for(i = 0; i < guys.size; i++)
	{
		guys[i] delete();
	}
}

/*
	Name: function_f70934af
	Namespace: skipto
	Checksum: 0x7E14FFB2
	Offset: 0x4E98
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_f70934af()
{
	if(!function_492f0713())
	{
		return;
	}
	hudelem = NewHudElem();
	hudelem.alignX = "left";
	hudelem.alignY = "top";
	hudelem.x = 0;
	hudelem.y = 70;
	hudelem setText("This skipto is for development purposes only!  The level may not progress from this point.");
	hudelem.alpha = 1;
	hudelem.fontscale = 1.8;
	hudelem.color = (1, 0.55, 0);
	wait(7);
	hudelem fadeOverTime(1);
	hudelem.alpha = 0;
	wait(1);
	hudelem destroy();
}

/*
	Name: function_a363b4b1
	Namespace: skipto
	Checksum: 0x3CF53C0D
	Offset: 0x4FE0
	Size: 0x5F
	Parameters: 1
	Flags: None
*/
function function_a363b4b1(skipto)
{
	subStr = ToLower(GetSubStr(skipto, 0, 4));
	if(subStr == "dev_")
	{
		return 1;
	}
	return 0;
}

/*
	Name: function_492f0713
	Namespace: skipto
	Checksum: 0x5E4F9D2C
	Offset: 0x5048
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_492f0713()
{
	return function_a363b4b1(level.skipto_point);
}

/*
	Name: function_6be1cbfa
	Namespace: skipto
	Checksum: 0xFC91AAD1
	Offset: 0x5070
	Size: 0x31
	Parameters: 0
	Flags: None
*/
function function_6be1cbfa()
{
	if(!isdefined(level.skipto_point))
	{
		return 0;
	}
	return IsSubStr(level.skipto_point, "no_game");
}

/*
	Name: function_6f516a11
	Namespace: skipto
	Checksum: 0x90F8584E
	Offset: 0x50B0
	Size: 0x9F
	Parameters: 0
	Flags: None
*/
function function_6f516a11()
{
	if(!function_6be1cbfa())
	{
		return;
	}
	level.stop_load = 1;
	if(isdefined(level.custom_no_game_setupFunc))
	{
		level [[level.custom_no_game_setupFunc]]();
	}
	level thread load::all_players_spawned();
	Array::thread_all(GetEntArray("water", "targetname"), &load::water_think);
	level waittill("eternity");
}

/*
	Name: function_2ece423b
	Namespace: skipto
	Checksum: 0xF1480212
	Offset: 0x5158
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function function_2ece423b(func)
{
	level.func_skipto_cleanup = func;
}

/*
	Name: default_skipto
	Namespace: skipto
	Checksum: 0xE0EC05B8
	Offset: 0x5178
	Size: 0x17
	Parameters: 1
	Flags: None
*/
function default_skipto(skipto)
{
	level.default_skipto = skipto;
}

/*
	Name: teleport
	Namespace: skipto
	Checksum: 0x8056E64E
	Offset: 0x5198
	Size: 0x4B
	Parameters: 3
	Flags: None
*/
function teleport(skipto_name, friendly_ai, coop_sort)
{
	teleport_ai(skipto_name, friendly_ai);
	teleport_players(skipto_name, coop_sort);
}

/*
	Name: teleport_ai
	Namespace: skipto
	Checksum: 0x7C0D512D
	Offset: 0x51F0
	Size: 0x2D9
	Parameters: 2
	Flags: None
*/
function teleport_ai(skipto_name, friendly_ai)
{
	if(!isdefined(friendly_ai))
	{
		if(isdefined(level.heroes))
		{
			friendly_ai = level.heroes;
		}
		else
		{
			friendly_ai = GetAITeamArray("allies");
		}
	}
	if(IsString(friendly_ai))
	{
		friendly_ai = GetAIArray(friendly_ai, "script_noteworthy");
	}
	if(!IsArray(friendly_ai))
	{
		friendly_ai = Array(friendly_ai);
	}
	friendly_ai = Array::remove_dead(friendly_ai);
	a_skipto_structs = ArrayCopy(struct::get_array(skipto_name + "_ai", "targetname"));
	/#
		Assert(a_skipto_structs.size >= friendly_ai.size, "Dev Block strings are not supported" + skipto_name + "Dev Block strings are not supported" + friendly_ai.size + "Dev Block strings are not supported" + a_skipto_structs.size + "Dev Block strings are not supported");
	#/
	if(!a_skipto_structs.size)
	{
		return;
	}
	foreach(ai in friendly_ai)
	{
		if(isdefined(ai))
		{
			start_i = 0;
			if(isdefined(ai.script_int))
			{
				for(j = 0; j < a_skipto_structs.size; j++)
				{
					if(isdefined(a_skipto_structs[j].script_int))
					{
						if(a_skipto_structs[j].script_int == ai.script_int)
						{
							start_i = j;
							break;
						}
					}
				}
			}
			ai function_d9b1ee00(a_skipto_structs[start_i]);
			ArrayRemoveValue(a_skipto_structs, a_skipto_structs[start_i]);
		}
	}
}

/*
	Name: function_d9b1ee00
	Namespace: skipto
	Checksum: 0xEF432080
	Offset: 0x54D8
	Size: 0x103
	Parameters: 1
	Flags: None
*/
function function_d9b1ee00(ai_skipto_spot)
{
	if(isdefined(ai_skipto_spot.angles))
	{
		self ForceTeleport(ai_skipto_spot.origin, ai_skipto_spot.angles);
	}
	else
	{
		self ForceTeleport(ai_skipto_spot.origin);
	}
	if(isdefined(ai_skipto_spot.target))
	{
		node = GetNode(ai_skipto_spot.target, "targetname");
		if(isdefined(node))
		{
			self SetGoal(node);
			return;
		}
	}
	self SetGoal(ai_skipto_spot.origin);
}

/*
	Name: teleport_players
	Namespace: skipto
	Checksum: 0x688C44ED
	Offset: 0x55E8
	Size: 0x185
	Parameters: 2
	Flags: None
*/
function teleport_players(skipto_name, coop_sort)
{
	level flag::wait_till("all_players_spawned");
	skipto_spots = function_3529c409(skipto_name, coop_sort);
	/#
		Assert(skipto_spots.size >= level.players.size, "Dev Block strings are not supported");
	#/
	for(i = 0; i < level.players.size; i++)
	{
		var_ac126ac5 = skipto_spots[i].origin;
		var_ac126ac5 = level.players[i] player::get_snapped_spot_origin(var_ac126ac5);
		level.players[i] SetOrigin(var_ac126ac5);
		if(isdefined(skipto_spots[i].angles))
		{
			level.players[i] util::delay_network_frames(2, "disconnect", &SetPlayerAngles, skipto_spots[i].angles);
		}
	}
}

/*
	Name: function_3529c409
	Namespace: skipto
	Checksum: 0x1F19CE7D
	Offset: 0x5778
	Size: 0x205
	Parameters: 2
	Flags: None
*/
function function_3529c409(skipto_name, coop_sort)
{
	if(!isdefined(coop_sort))
	{
		coop_sort = 0;
	}
	skipto_spots = struct::get_array(skipto_name, "targetname");
	if(!skipto_spots.size)
	{
		skipto_spots = spawnlogic::get_spawnpoint_array("cp_coop_spawn", 1);
		skipto_spots = function_c13ce5f8(undefined, skipto_spots, skipto_name);
	}
	if(coop_sort)
	{
		for(i = 0; i < skipto_spots.size; i++)
		{
			for(j = i; j < skipto_spots.size; j++)
			{
				/#
					Assert(isdefined(skipto_spots[j].script_int), "Dev Block strings are not supported" + skipto_spots[j].origin + "Dev Block strings are not supported");
				#/
				/#
					Assert(isdefined(skipto_spots[i].script_int), "Dev Block strings are not supported" + skipto_spots[i].origin + "Dev Block strings are not supported");
				#/
				if(skipto_spots[j].script_int < skipto_spots[i].script_int)
				{
					temp = skipto_spots[i];
					skipto_spots[i] = skipto_spots[j];
					skipto_spots[j] = temp;
				}
			}
		}
	}
	return skipto_spots;
}

/*
	Name: function_6542f12c
	Namespace: skipto
	Checksum: 0x4927B4C7
	Offset: 0x5988
	Size: 0x107
	Parameters: 3
	Flags: None
*/
function function_6542f12c(STR, var_2397f00d, var_3340d044)
{
	var_28ddff4b = StrTok(STR, var_2397f00d);
	var_e1dfd87d = "";
	first = 1;
	foreach(s in var_28ddff4b)
	{
		if(!first)
		{
			var_e1dfd87d = var_e1dfd87d + var_3340d044;
		}
		first = 0;
		var_e1dfd87d = var_e1dfd87d + s;
	}
	return var_e1dfd87d;
}

/*
	Name: function_7c1e8577
	Namespace: skipto
	Checksum: 0xBA87A2F0
	Offset: 0x5A98
	Size: 0x173
	Parameters: 3
	Flags: None
*/
function function_7c1e8577(table, levelname, var_310b47e9)
{
	if(!isdefined(var_310b47e9))
	{
		var_310b47e9 = "";
	}
	index = 0;
	for(row = TableLookupRow(table, index); isdefined(row);  = TableLookupRow(table, index))
	{
		if(row[0] == levelname && row[1] == var_310b47e9)
		{
			skipto = row[2];
			var_46c5ea43 = row[3];
			var_c3efda96 = row[4];
			var_c3efda96 = function_6542f12c(var_c3efda96, "+", ",");
			var_d9cbb73e = row[5];
			function_731571ad(skipto, &function_89a9b10f, var_d9cbb73e, undefined, var_46c5ea43, var_c3efda96);
		}
		index++;
	}
}

/*
	Name: function_89a9b10f
	Namespace: skipto
	Checksum: 0x99EC1590
	Offset: 0x5C18
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_89a9b10f()
{
}

/*
	Name: on_finalize_initialization
	Namespace: skipto
	Checksum: 0x25941DCA
	Offset: 0x5C28
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function on_finalize_initialization()
{
	level flag::set("start_skiptos");
}

/*
	Name: on_player_spawn
	Namespace: skipto
	Checksum: 0xADDE746E
	Offset: 0x5C58
	Size: 0x53
	Parameters: 0
	Flags: None
*/
function on_player_spawn()
{
	if(GetDvarInt("ui_blocksaves") == 0 && isdefined(self savegame::function_36adbb9c("savegame_score")))
	{
		return;
	}
	globallogic_player::function_a5ac6877();
}

/*
	Name: function_f2b024f8
	Namespace: skipto
	Checksum: 0xF87EB6E1
	Offset: 0x5CB8
	Size: 0x35
	Parameters: 0
	Flags: None
*/
function function_f2b024f8()
{
	self endon("disconnect");
	while(1)
	{
		self function_a5a105e8();
		wait(5);
	}
}

/*
	Name: function_bc7b05ac
	Namespace: skipto
	Checksum: 0xA63A30C3
	Offset: 0x5CF8
	Size: 0xA3
	Parameters: 4
	Flags: None
*/
function function_bc7b05ac(var_87fe1234, var_a3b4af10, var_eece3936, var_5db7ef95)
{
	var_a88ef0ad = 0;
	var_17986f3e = 0;
	if(isdefined(var_5db7ef95))
	{
		var_17986f3e = var_5db7ef95;
	}
	if(isdefined(var_eece3936))
	{
		var_a88ef0ad = var_eece3936;
	}
	var_96f7be40 = var_17986f3e - var_a88ef0ad;
	self function_892bf421(var_a3b4af10, var_87fe1234, var_96f7be40);
}

/*
	Name: function_84008d8d
	Namespace: skipto
	Checksum: 0xA0ACAE66
	Offset: 0x5DA8
	Size: 0x743
	Parameters: 2
	Flags: None
*/
function function_84008d8d(objectiveName, player)
{
	objectiveIndex = level.var_e07f6589[objectiveName].var_84e9618b;
	player function_bc7b05ac("kills_total", objectiveIndex, player.var_dc615b.kills, player.kills);
	var_93e3a3c4 = player GetDStat("PlayerStatsList", "TOTAL_SHOTS", "statValue");
	totalHits = player GetDStat("PlayerStatsList", "HITS", "statValue");
	if(isdefined(var_93e3a3c4))
	{
		player function_bc7b05ac("shots_total", objectiveIndex, player.var_dc615b.shots, var_93e3a3c4);
	}
	if(isdefined(totalHits))
	{
		player function_bc7b05ac("hits_total", objectiveIndex, player.var_dc615b.hits, totalHits);
	}
	player function_bc7b05ac("incaps_total", objectiveIndex, player.var_dc615b.var_58ef604f, player.var_58ef604f);
	player function_bc7b05ac("deaths_total", objectiveIndex, player.var_dc615b.deaths, player.deaths);
	player function_bc7b05ac("revives_total", objectiveIndex, player.var_dc615b.revives, player.revives);
	player function_bc7b05ac("headshots_total", objectiveIndex, player.var_dc615b.headshots, player.headshots);
	player function_bc7b05ac("duration_total", objectiveIndex, player.var_dc615b.timestamp, GetTime());
	player function_bc7b05ac("score_total", objectiveIndex, player.var_dc615b.score, player.score);
	player function_bc7b05ac("grenades_total", objectiveIndex, player.var_dc615b.grenadesUsed, player.grenadesUsed);
	player function_bc7b05ac("igcSeconds", objectiveIndex, player.var_dc615b.var_7479d3c, player.totalIGCViewtime);
	player function_bc7b05ac("secondsPaused", objectiveIndex, player.var_dc615b.var_adac7b4d, Int(function_355c5c13() / 1000));
	var_b1f1efe7 = 0;
	var_394190fb = 0;
	var_d88606f6 = 0;
	wallruncount = 0;
	var_4dbe4ef9 = 0;
	if(isdefined(player.movementTracking))
	{
		if(isdefined(player.movementTracking.wallRunning))
		{
			var_394190fb = player.movementTracking.wallRunning.Distance;
			wallruncount = player.movementTracking.wallRunning.count;
		}
		if(isdefined(player.movementTracking.sprinting))
		{
			var_b1f1efe7 = player.movementTracking.sprinting.Distance;
		}
		if(isdefined(player.movementTracking.doublejump))
		{
			var_d88606f6 = player.movementTracking.doublejump.Distance;
			var_4dbe4ef9 = player.movementTracking.doublejump.count;
		}
	}
	player function_bc7b05ac("distance_wallrun", objectiveIndex, player.var_dc615b.var_3a4eb4be, Int(var_394190fb));
	player function_bc7b05ac("distance_sprinted", objectiveIndex, player.var_dc615b.var_15b36d84, Int(var_b1f1efe7));
	player function_bc7b05ac("distance_boosted", objectiveIndex, player.var_dc615b.var_b3d62777, Int(var_d88606f6));
	player function_bc7b05ac("wallruns_total", objectiveIndex, player.var_dc615b.var_3e07bf28, Int(wallruncount));
	player function_bc7b05ac("boosts_total", objectiveIndex, player.var_dc615b.var_c5394042, Int(var_4dbe4ef9));
	player function_892bf421(objectiveIndex, "start_difficulty", player.var_dc615b.difficulty);
	player function_892bf421(objectiveIndex, "end_difficulty", level.gameskill);
	if(isdefined(level.sceneSkippedCount))
	{
		player function_892bf421(objectiveIndex, "igcSkippedNum", level.sceneSkippedCount);
	}
}

/*
	Name: function_723221dd
	Namespace: skipto
	Checksum: 0x2CF64545
	Offset: 0x64F8
	Size: 0x4D7
	Parameters: 1
	Flags: None
*/
function function_723221dd(player)
{
	if(!isdefined(player.var_dc615b))
	{
		player.var_dc615b = spawnstruct();
	}
	player.var_dc615b.kills = player.kills;
	shots = player GetDStat("PlayerStatsList", "TOTAL_SHOTS", "statValue");
	if(isdefined(shots))
	{
	}
	else
	{
	}
	player.var_dc615b.shots = 0;
	hits = player GetDStat("PlayerStatsList", "HITS", "statValue");
	if(isdefined(hits))
	{
	}
	else
	{
	}
	player.var_dc615b.hits = 0;
	player.var_dc615b.var_58ef604f = player.var_58ef604f;
	player.var_dc615b.deaths = player.deaths;
	player.var_dc615b.revives = player.revives;
	player.var_dc615b.headshots = player.headshots;
	player.var_dc615b.timestamp = GetTime();
	player.var_dc615b.score = player.score;
	player.var_dc615b.grenadesUsed = player.grenadesUsed;
	player.var_dc615b.var_7479d3c = player.totalIGCViewtime;
	player.var_dc615b.var_adac7b4d = Int(function_355c5c13() / 1000);
	player.var_dc615b.difficulty = level.gameskill;
	var_b1f1efe7 = 0;
	var_394190fb = 0;
	var_d88606f6 = 0;
	wallruncount = 0;
	var_4dbe4ef9 = 0;
	if(isdefined(player.movementTracking))
	{
		if(isdefined(player.movementTracking.wallRunning))
		{
			var_394190fb = player.movementTracking.wallRunning.Distance;
			wallruncount = player.movementTracking.wallRunning.count;
		}
		if(isdefined(player.movementTracking.sprinting))
		{
			var_b1f1efe7 = player.movementTracking.sprinting.Distance;
		}
		if(isdefined(player.movementTracking.doublejump))
		{
			var_d88606f6 = player.movementTracking.doublejump.Distance;
			var_4dbe4ef9 = player.movementTracking.doublejump.count;
		}
	}
	player.var_dc615b.var_3a4eb4be = Int(var_394190fb);
	player.var_dc615b.var_15b36d84 = Int(var_b1f1efe7);
	player.var_dc615b.var_b3d62777 = Int(var_d88606f6);
	player.var_dc615b.var_3e07bf28 = Int(wallruncount);
	player.var_dc615b.var_c5394042 = Int(var_4dbe4ef9);
}

/*
	Name: on_player_connect
	Namespace: skipto
	Checksum: 0xE77C4DBF
	Offset: 0x69D8
	Size: 0x58B
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	if(util::is_safehouse())
	{
		return;
	}
	if(isdefined(level.var_f0ca204d) && level.var_f0ca204d)
	{
		return;
	}
	if(!isdefined(function_9065d6ea()))
	{
		return;
	}
	self thread function_f2b024f8();
	if(GetDvarInt("ui_blocksaves") == 0)
	{
		if(self IsHost())
		{
			var_85f70d3f = 1;
			if(SessionModeIsOnlineGame())
			{
				var_85f70d3f = isdefined(self GetDStat("scoreboard_migrated")) && self GetDStat("scoreboard_migrated");
			}
			else
			{
				var_85f70d3f = isdefined(self GetDStat("reserveBools", 0)) && self GetDStat("reserveBools", 0);
			}
			if(!var_85f70d3f)
			{
				self savegame::function_bee608f0("savegame_score", self function_df7ef426("SCORE"));
				self savegame::function_bee608f0("savegame_kills", self function_df7ef426("KILLS"));
				self savegame::function_bee608f0("savegame_assists", self function_df7ef426("ASSISTS"));
				self savegame::function_bee608f0("savegame_incaps", self function_df7ef426("INCAPS"));
				self savegame::function_bee608f0("savegame_revives", self function_df7ef426("REVIVES"));
				if(SessionModeIsOnlineGame())
				{
					self SetDStat("scoreboard_migrated", 1);
				}
				else
				{
					self SetDStat("reserveBools", 0, 1);
				}
				UploadStats(self);
			}
			if(!isdefined(self savegame::function_36adbb9c("savegame_score")))
			{
				self savegame::function_bee608f0("savegame_score", 0);
			}
			if(!isdefined(self savegame::function_36adbb9c("savegame_kills")))
			{
				self savegame::function_bee608f0("savegame_kills", 0);
			}
			if(!isdefined(self savegame::function_36adbb9c("savegame_assists")))
			{
				self savegame::function_bee608f0("savegame_assists", 0);
			}
			if(!isdefined(self savegame::function_36adbb9c("savegame_incaps")))
			{
				self savegame::function_bee608f0("savegame_incaps", 0);
			}
			if(!isdefined(self savegame::function_36adbb9c("savegame_revives")))
			{
				self savegame::function_bee608f0("savegame_revives", 0);
			}
			self.pers["score"] = self savegame::function_36adbb9c("savegame_score", 0);
			self.pers["kills"] = self savegame::function_36adbb9c("savegame_kills", 0);
			self.pers["assists"] = self savegame::function_36adbb9c("savegame_assists", 0);
			self.pers["incaps"] = self savegame::function_36adbb9c("savegame_incaps", 0);
			self.pers["revives"] = self savegame::function_36adbb9c("savegame_revives", 0);
			self.score = self.pers["score"];
			self.kills = self.pers["kills"];
			self.assists = self.pers["assists"];
			self.var_58ef604f = self.pers["incaps"];
			self.revives = self.pers["revives"];
		}
	}
	function_723221dd(self);
}

/*
	Name: function_be8adfb8
	Namespace: skipto
	Checksum: 0x6C067933
	Offset: 0x6F70
	Size: 0x29B
	Parameters: 2
	Flags: None
*/
function function_be8adfb8(name, player)
{
	/#
		Assert(isdefined(level.var_e07f6589[name]), "Dev Block strings are not supported" + name + "Dev Block strings are not supported");
	#/
	SetDvar("NPCDeathTracking_Save", 1);
	foreach(var_eff42720 in level.players)
	{
		if(var_eff42720 IsTestClient())
		{
			continue;
		}
		bb::logobjectivestatuschange(name, var_eff42720, "complete");
		var_eff42720 globallogic_player::function_ece4ca01();
	}
	if(isdefined(name))
	{
		if(isdefined(player))
		{
			function_84008d8d(name, player);
			break;
		}
		foreach(var_63af5576 in level.players)
		{
			function_84008d8d(name, var_63af5576);
		}
		level function_2d700bc6(name, 0, 1, player);
	}
	next = function_72453179(name);
	next = function_b72da2d(next);
	if(isdefined(next) && next.size > 0)
	{
		level set_level_objective(next, 0, player);
		level thread savegame::save();
	}
}

/*
	Name: function_52904bc9
	Namespace: skipto
	Checksum: 0xA525A40F
	Offset: 0x7218
	Size: 0xA1
	Parameters: 0
	Flags: Private
*/
function private function_52904bc9()
{
	foreach(trig in trigger::get_all())
	{
		if(isdefined(trig.var_22c28736))
		{
			trig thread function_87fe8621();
		}
	}
}

/*
	Name: function_87fe8621
	Namespace: skipto
	Checksum: 0xFC459AD6
	Offset: 0x72C8
	Size: 0x271
	Parameters: 0
	Flags: Private
*/
function private function_87fe8621()
{
	self endon("death");
	level flag::wait_till("all_players_spawned");
	var_717810f = function_659bb22b(self.var_22c28736);
	/#
		Assert(var_717810f.size >= 3, "Dev Block strings are not supported");
	#/
	while(1)
	{
		self waittill("trigger", lead_player);
		if(isPlayer(lead_player))
		{
			self notify("hash_c0b9931e");
			foreach(player in level.players)
			{
				if(player != lead_player)
				{
					if(player.sessionstate === "playing")
					{
						if(isdefined(self.var_3367c99d))
						{
						}
						else
						{
						}
						n_dist = 2250000;
						n_player_dist = DistanceSquared(player.origin, lead_player.origin);
						if(n_player_dist > n_dist)
						{
							if(!player istouching(self))
							{
								player thread function_61843b91(var_717810f, n_player_dist);
							}
						}
						continue;
					}
					if(player.sessionstate === "spectator" && (isdefined(player.initialLoadoutGiven) && player.initialLoadoutGiven))
					{
						player thread function_61843b91(var_717810f);
					}
				}
			}
			break;
		}
	}
}

/*
	Name: function_659bb22b
	Namespace: skipto
	Checksum: 0x3E12E959
	Offset: 0x7548
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_659bb22b(var_3a36166b)
{
	a_ret = [];
	var_717810f = spawnlogic::function_93d52c4f(1);
	foreach(loc in var_717810f)
	{
		if(loc.var_22c28736 === var_3a36166b)
		{
			if(!isdefined(a_ret))
			{
				a_ret = [];
			}
			else if(!IsArray(a_ret))
			{
				a_ret = Array(a_ret);
			}
			a_ret[a_ret.size] = loc;
		}
	}
	return a_ret;
}

/*
	Name: function_61843b91
	Namespace: skipto
	Checksum: 0xAF9F131A
	Offset: 0x7678
	Size: 0x3D1
	Parameters: 2
	Flags: Private
*/
function private function_61843b91(var_717810f, n_player_dist)
{
	self endon("death");
	if(self IsInVehicle())
	{
		vh_occupied = self GetVehicleOccupied();
		n_seat = vh_occupied GetOccupantSeat(self);
		vh_occupied usevehicle(self, n_seat);
		if(isdefined(self.hijacked_vehicle_entity))
		{
			self waittill("transition_done");
		}
	}
	if(isdefined(self.hijacked_vehicle_entity))
	{
		self.hijacked_vehicle_entity delete();
	}
	if(self.sessionstate === "spectator")
	{
		self thread [[level.spawnPlayer]]();
		waittillframeend;
	}
	else if(self laststand::player_is_in_laststand())
	{
		self notify("auto_revive");
	}
	if(self IsPlayingAnimScripted())
	{
		self StopAnimScripted();
	}
	if(isdefined(self GetLinkedEnt()))
	{
		self Unlink();
		wait(0.1);
	}
	foreach(loc in var_717810f)
	{
		if(!(isdefined(loc.var_c2733dc7) && loc.var_c2733dc7))
		{
			loc.var_c2733dc7 = 1;
			self.b_teleport_invulnerability = 1;
			self FreezeControls(1);
			self playsoundtoplayer("evt_coop_regroup_out", self);
			if(isdefined(n_player_dist) && n_player_dist < 250000)
			{
				clientfield::increment_to_player("postfx_igc", 3);
			}
			else
			{
				clientfield::increment_to_player("postfx_igc", 1);
			}
			wait(0.5);
			self SetOrigin(loc.origin);
			if(isdefined(loc.angles))
			{
				util::delay_network_frames(2, "disconnect", &SetPlayerAngles, loc.angles);
			}
			self playsoundtoplayer("evt_coop_regroup_in", self);
			break;
		}
	}
	wait(2);
	self FreezeControls(0);
	wait(0.05);
	if(isdefined(level.var_1895e0f9))
	{
		self [[level.var_1895e0f9]]();
	}
	self util::streamer_wait(undefined, 0, 5);
	wait(5);
	self.b_teleport_invulnerability = undefined;
}

/*
	Name: function_de4f5ef8
	Namespace: skipto
	Checksum: 0x4C8F1864
	Offset: 0x7A58
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_de4f5ef8(objectives)
{
	/#
		SetDvar("Dev Block strings are not supported", 1);
		index = 0;
		foreach(name in objectives)
		{
			var_c52d91a9 = level.var_e07f6589[name];
			if(isdefined(var_c52d91a9.str_name) && var_c52d91a9.str_name.size)
			{
				thread indicate(var_c52d91a9.str_name, index);
				index++;
			}
		}
		SetDvar("Dev Block strings are not supported", 0);
	#/
}

/*
	Name: set_level_objective
	Namespace: skipto
	Checksum: 0x9C3965C4
	Offset: 0x7B90
	Size: 0x2FB
	Parameters: 3
	Flags: None
*/
function set_level_objective(objectives, starting, player)
{
	function_c951eb3d();
	foreach(name in objectives)
	{
		if(isdefined(level.var_e07f6589[name]))
		{
			function_2d700bc6(level.var_e07f6589[name].prev, starting, 0, player);
		}
	}
	if(isdefined(level.func_skipto_cleanup))
	{
		foreach(name in objectives)
		{
			thread [[level.func_skipto_cleanup]](name);
		}
	}
	/#
		thread function_de4f5ef8(objectives);
	#/
	function_bfe10ae8(objectives, starting);
	level.skipto_point = level.var_fee90489[0];
	if(!(isdefined(level.level_ending) && level.level_ending))
	{
		function_556029e1(level.var_fee90489);
	}
	level notify("hash_4b5852e7", level.var_fee90489);
	if(isdefined(level.var_26b4fb80))
	{
		[[level.var_26b4fb80]](level.var_fee90489);
	}
	function_73c9bef8(level.var_fee90489);
	if(isdefined(player))
	{
		function_723221dd(player);
		break;
	}
	foreach(var_63af5576 in level.players)
	{
		function_723221dd(var_63af5576);
	}
	level thread function_39213560(starting);
}

/*
	Name: function_39213560
	Namespace: skipto
	Checksum: 0x6BBE60D6
	Offset: 0x7E98
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function function_39213560(starting)
{
	level notify("hash_39213560");
	level endon("hash_39213560");
	level endon("hash_4b5852e7");
	level flag::wait_till("first_player_spawned");
	spawnlogic::clear_spawn_points();
	spawnlogic::add_spawn_points("allies", "cp_coop_spawn");
	spawnlogic::add_spawn_points("allies", "cp_coop_respawn");
	Spawning::updateAllSpawnPoints();
}

/*
	Name: function_bfe10ae8
	Namespace: skipto
	Checksum: 0x4B808A76
	Offset: 0x7F50
	Size: 0x391
	Parameters: 2
	Flags: None
*/
function function_bfe10ae8(name, starting)
{
	if(IsArray(name))
	{
		foreach(element in name)
		{
			function_bfe10ae8(element, starting);
		}
		break;
	}
	if(isdefined(level.var_e07f6589[name]))
	{
		if(!(isdefined(level.var_e07f6589[name].var_e27d380a) && level.var_e07f6589[name].var_e27d380a))
		{
			if(!IsInArray(level.var_fee90489, name))
			{
				if(!isdefined(level.var_fee90489))
				{
					level.var_fee90489 = [];
				}
				else if(!IsArray(level.var_fee90489))
				{
					level.var_fee90489 = Array(level.var_fee90489);
				}
				level.var_fee90489[level.var_fee90489.size] = name;
			}
			level notify(name + "_init");
			level.var_e07f6589[name].var_e27d380a = 1;
			if(!GetDvarInt("art_review", 0))
			{
				function_b342abc7(name, starting);
				if(isdefined(level.var_e07f6589[name].var_1ca15390))
				{
					thread [[level.var_e07f6589[name].var_1ca15390]](name, starting);
					savegame::function_5d2cdd99(level.var_e07f6589[name].var_2bc8bbd9);
				}
			}
		}
		if(!isdefined(level.var_e07f6589[name].var_b992dc79) && level.var_e07f6589[name].var_b992dc79 && isdefined(level.var_e07f6589[name].logic_func))
		{
			level.var_e07f6589[name].var_b992dc79 = 1;
			thread [[level.var_e07f6589[name].logic_func]](name);
		}
	}
	foreach(player in level.players)
	{
		bb::logobjectivestatuschange(name, player, "start");
	}
}

/*
	Name: function_c951eb3d
	Namespace: skipto
	Checksum: 0x2700A7FC
	Offset: 0x82F0
	Size: 0x85
	Parameters: 0
	Flags: None
*/
function function_c951eb3d()
{
	foreach(skipto in level.var_e07f6589)
	{
		skipto.var_62e39772 = 0;
	}
}

/*
	Name: function_2d700bc6
	Namespace: skipto
	Checksum: 0xF07E784E
	Offset: 0x8380
	Size: 0x403
	Parameters: 4
	Flags: None
*/
function function_2d700bc6(name, starting, direct, player)
{
	if(IsArray(name))
	{
		foreach(element in name)
		{
			function_2d700bc6(element, starting, direct, player);
		}
	}
	else if(isdefined(level.var_e07f6589[name]))
	{
		cleaned = 0;
		if(isdefined(level.var_e07f6589[name].var_e27d380a) && level.var_e07f6589[name].var_e27d380a)
		{
			cleaned = 1;
			level.var_e07f6589[name].var_e27d380a = 0;
			if(IsInArray(level.var_fee90489, name))
			{
				ArrayRemoveValue(level.var_fee90489, name);
			}
			if(!GetDvarInt("art_review", 0))
			{
				if(isdefined(level.var_e07f6589[name].cleanup_func))
				{
					thread [[level.var_e07f6589[name].cleanup_func]](name, starting, direct, player);
				}
				function_77ff537d(name, starting, direct, player);
			}
			level notify(name + "_terminate");
		}
		if(!(isdefined(level.var_e07f6589[name].var_62e39772) && level.var_e07f6589[name].var_62e39772))
		{
			level.var_e07f6589[name].var_62e39772 = 1;
			if(!(isdefined(level.var_e07f6589[name].looping) && level.var_e07f6589[name].looping))
			{
				prev = level.var_e07f6589[name].prev;
				foreach(element in prev)
				{
					function_2d700bc6(element, starting, 0, player);
				}
			}
			else if(starting && !cleaned)
			{
				if(!GetDvarInt("art_review", 0))
				{
					if(isdefined(level.var_e07f6589[name].cleanup_func))
					{
						thread [[level.var_e07f6589[name].cleanup_func]](name, starting, 0, player);
					}
					function_77ff537d(name, starting, 0, player);
				}
			}
		}
	}
}

/*
	Name: function_df118466
	Namespace: skipto
	Checksum: 0xB6DE3033
	Offset: 0x8790
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_df118466(Spawnpoints)
{
	return function_c13ce5f8(undefined, Spawnpoints);
}

/*
	Name: function_c13ce5f8
	Namespace: skipto
	Checksum: 0xD1C03E7B
	Offset: 0x87C0
	Size: 0x423
	Parameters: 3
	Flags: None
*/
function function_c13ce5f8(player, Spawnpoints, str_skipto)
{
	if(isdefined(str_skipto))
	{
	}
	else
	{
	}
	objectives = level.var_fee90489;
	if(!isdefined(objectives) || !objectives.size)
	{
		objectives = function_8b19ec5d();
		if(!isdefined(objectives) || !objectives.size)
		{
			objectives = level.default_skipto;
		}
	}
	filter = [];
	if(!isdefined(objectives))
	{
		objectives = [];
	}
	else if(!IsArray(objectives))
	{
		objectives = Array(objectives);
	}
	foreach(objective in objectives)
	{
		if(isdefined(level.var_e07f6589[objective]))
		{
			if(isdefined(level.var_e07f6589[objective].public) && level.var_e07f6589[objective].public || (isdefined(level.var_e07f6589[objective].var_3c612393) && level.var_e07f6589[objective].var_3c612393))
			{
				if(!isdefined(filter))
				{
					filter = [];
				}
				else if(!IsArray(filter))
				{
					filter = Array(filter);
				}
				filter[filter.size] = objective;
			}
		}
	}
	if(isdefined(filter) && filter.size > 0)
	{
		var_1f96054 = [];
		var_b431a153 = [];
		foreach(point in Spawnpoints)
		{
			point.var_9c98934d = 0;
			if(isdefined(point.script_objective) && IsInArray(filter, point.script_objective))
			{
				if(!isdefined(var_b431a153))
				{
					var_b431a153 = [];
				}
				else if(!IsArray(var_b431a153))
				{
					var_b431a153 = Array(var_b431a153);
				}
				var_b431a153[var_b431a153.size] = point;
				continue;
			}
			if(!isdefined(point.script_objective))
			{
				if(!isdefined(var_1f96054))
				{
					var_1f96054 = [];
				}
				else if(!IsArray(var_1f96054))
				{
					var_1f96054 = Array(var_1f96054);
				}
				var_1f96054[var_1f96054.size] = point;
				continue;
			}
			point.var_9c98934d = 1;
		}
		if(var_b431a153.size > 0)
		{
			return var_b431a153;
		}
		return var_1f96054;
	}
	return Spawnpoints;
}

/*
	Name: function_85826560
	Namespace: skipto
	Checksum: 0xBA3A9EB1
	Offset: 0x8BF0
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_85826560(str_skipto)
{
	var_1475fbe1 = spawnlogic::get_spawnpoint_array("cp_coop_spawn");
	foreach(spawn_point in var_1475fbe1)
	{
		if(spawn_point.script_objective == str_skipto)
		{
			if(spawn_point.classname === "script_model")
			{
				spawn_point delete();
				continue;
			}
			spawn_point struct::delete();
		}
	}
}

/*
	Name: function_b0e512a3
	Namespace: skipto
	Checksum: 0xF2DB3205
	Offset: 0x8D00
	Size: 0x83
	Parameters: 0
	Flags: None
*/
function function_b0e512a3()
{
	level.var_696b1f33 = 1;
	str_next_map = function_c7f783fe();
	if(function_89664f42())
	{
		SwitchMap_Preload(str_next_map);
	}
	else
	{
		Assert(0, "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_2711019f
	Namespace: skipto
	Checksum: 0xBB640EEC
	Offset: 0x8D90
	Size: 0x61
	Parameters: 0
	Flags: None
*/
function function_2711019f()
{
	while(1)
	{
		var_14bd4dfe = function_b2df7c6d();
		if(var_14bd4dfe <= level.var_897126b5)
		{
			level flag::set("all_players_closed_aar");
			break;
		}
		wait(1);
	}
}

/*
	Name: function_f380969b
	Namespace: skipto
	Checksum: 0xDCF51043
	Offset: 0x8E00
	Size: 0x29B
	Parameters: 0
	Flags: None
*/
function function_f380969b()
{
	self endon("disconnect");
	self endon("hash_33722592");
	var_67bda5a5 = self GetDStat("currentRankXP");
	var_72c4032 = self rank::getRankXpStat();
	var_9e54448b = self GetDStat("hasSeenMaxLevelNotification");
	if(var_9e54448b != 1 && var_72c4032 >= rank::getRankInfoMinXP(level.rankTable.size - 1))
	{
		self.var_a4c14d95 = self OpenLUIMenu("CPMaxLevelNotification");
		self SetDStat("hasSeenMaxLevelNotification", 1);
	}
	else
	{
		self.var_a4c14d95 = self OpenLUIMenu("RewardsOverlayCP");
	}
	self waittill("menuresponse", menu, response);
	while(response != "closed")
	{
		self waittill("menuresponse", menu, response);
	}
	foreach(player in GetPlayers())
	{
		if(player == self)
		{
			continue;
		}
		player notify("hash_33722592");
		player function_33722592();
	}
	self CloseLUIMenu(self.var_a4c14d95);
	self.var_a4c14d95 = undefined;
	var_a6f47549 = function_c7f783fe();
	if(isdefined(var_a6f47549))
	{
		self globallogic_player::function_4cef9872(var_a6f47549);
	}
	level.var_897126b5++;
}

/*
	Name: function_c7f783fe
	Namespace: skipto
	Checksum: 0xC6EB198B
	Offset: 0x90A8
	Size: 0xD9
	Parameters: 0
	Flags: None
*/
function function_c7f783fe()
{
	str_next_map = function_242738e();
	if(isdefined(str_next_map) && SessionModeIsCampaignZombiesGame())
	{
		tokens = StrTok(str_next_map, "_");
		var_a2a8516f = "cp";
		for(i = 1; i < tokens.size - 1; i++)
		{
			var_a2a8516f = var_a2a8516f + "_" + tokens[i];
		}
		str_next_map = var_a2a8516f;
	}
	return str_next_map;
}

/*
	Name: function_ab286e9e
	Namespace: skipto
	Checksum: 0x514F4D9
	Offset: 0x9190
	Size: 0x10B
	Parameters: 1
	Flags: None
*/
function function_ab286e9e(stat_name)
{
	var_8edaf582 = self function_df7ef426(stat_name);
	var_571a5472 = self savegame::function_36adbb9c("savegame_" + stat_name);
	var_aa6cf955 = self GetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", stat_name);
	var_a74fbb99 = var_8edaf582 - var_571a5472;
	var_aa6cf955 = var_aa6cf955 + var_a74fbb99;
	self SetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", stat_name, var_aa6cf955);
}

/*
	Name: function_61688376
	Namespace: skipto
	Checksum: 0x9CED6753
	Offset: 0x92A8
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_61688376()
{
	self endon("disconnect");
	/#
		Assert(isdefined(level.var_a7c3eb6f));
	#/
	/#
		Assert(level flag::exists("Dev Block strings are not supported"));
	#/
	self function_a5a105e8();
	util::waittill_notify_or_timeout("stats_changed", 2);
	level.var_a7c3eb6f++;
	var_7fba07d2 = function_b2df7c6d();
	if(var_7fba07d2 <= level.var_a7c3eb6f)
	{
		level flag::set("all_players_set_aar_scoreboard");
	}
}

/*
	Name: function_88bd85cc
	Namespace: skipto
	Checksum: 0x8F684282
	Offset: 0x9398
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_88bd85cc()
{
	/#
		Assert(isdefined(self));
	#/
	/#
		Assert(isPlayer(self));
	#/
	if(isdefined(self.var_40ac72fa))
	{
		self CloseLUIMenu(self.var_40ac72fa);
		self FreezeControls(0);
		if(self IsHost())
		{
			if(savegame::function_f6ab8f28())
			{
				mapIndex = function_59c5ca75();
				self SetDStat("highestMapReached", mapIndex + 1);
			}
		}
	}
	level flag::set("credits_done");
}

/*
	Name: function_33722592
	Namespace: skipto
	Checksum: 0x5C044B6B
	Offset: 0x94C0
	Size: 0x107
	Parameters: 0
	Flags: None
*/
function function_33722592()
{
	/#
		Assert(isdefined(self));
	#/
	/#
		Assert(isPlayer(self));
	#/
	if(isdefined(self.var_a4c14d95))
	{
		self CloseLUIMenu(self.var_a4c14d95);
		self LUINotifyEvent(&"close_cpaar", 0);
		self thread LUI::screen_fade_out(0.1, "black");
		var_a6f47549 = function_c7f783fe();
		if(isdefined(var_a6f47549))
		{
			self globallogic_player::function_4cef9872(var_a6f47549);
		}
		self.var_a4c14d95 = undefined;
		level.var_897126b5++;
	}
}

/*
	Name: function_eb66277b
	Namespace: skipto
	Checksum: 0x6CA61F8B
	Offset: 0x95D0
	Size: 0x196B
	Parameters: 2
	Flags: None
*/
function function_eb66277b(skipto, starting)
{
	/#
		level thread function_27c2dde4();
	#/
	if(isdefined(level.level_ending) && level.level_ending)
	{
		return;
	}
	level.level_ending = 1;
	foreach(var_63af5576 in level.players)
	{
		bb::logobjectivestatuschange("_level", var_63af5576, "complete");
		bb::logmatchsummary(var_63af5576);
	}
	function_7b818e23();
	MatchRecordSetLevelDifficultyForIndex(1, level.gameskill);
	if(level.var_6e1075a2 !== 0)
	{
		level LUI::screen_fade_out(1);
	}
	str_next_map = undefined;
	if(function_92b261a3())
	{
		level thread function_9a7d9229();
		level flag::init("credits_done");
		foreach(player in level.players)
		{
			player thread function_4aa085d7();
		}
		str_next_map = function_f4afdfcc(0);
		level flag::wait_till("credits_done");
	}
	else
	{
		str_next_map = function_c7f783fe();
	}
	if(isdefined(str_next_map))
	{
		/#
			if(skipto == "Dev Block strings are not supported" && starting)
			{
				wait(4);
			}
		#/
		world.var_a6f47549 = str_next_map;
		if(!isdefined(world.var_33c691cb) || function_59c5ca75(str_next_map) > function_59c5ca75(world.var_33c691cb) && savegame::function_f6ab8f28())
		{
			world.var_33c691cb = str_next_map;
			mapIndex = function_59c5ca75(str_next_map);
			foreach(player in level.players)
			{
				if(player IsHost())
				{
					player SetDStat("highestMapReached", mapIndex);
					break;
				}
			}
		}
		world.last_map = level.script;
		level clientfield::increment("set_last_map_dvar");
		level namespace_fe079222::commit(str_next_map);
		if(function_89664f42() || SessionModeIsCampaignZombiesGame())
		{
			var_521f25b4 = function_1a7f8d9(str_next_map);
			if(isdefined(var_521f25b4))
			{
				function_6df659a8(var_521f25b4);
			}
			if(!(isdefined(level.var_696b1f33) && level.var_696b1f33))
			{
				if(SessionModeIsCampaignZombiesGame())
				{
					if(!function_92b261a3())
					{
						function_ad95a4a4(str_next_map);
					}
				}
				else
				{
					function_ad95a4a4(str_next_map);
				}
				function_3f5625b4("", 1);
			}
		}
		else
		{
			var_45e618b3 = function_4eafb564();
			if(isdefined(var_45e618b3))
			{
				function_6df659a8(var_45e618b3);
			}
			if(!(isdefined(level.var_696b1f33) && level.var_696b1f33))
			{
				SetDvar("cp_queued_level", str_next_map);
				var_f26d4e96 = util::get_next_safehouse(str_next_map);
				function_ad95a4a4(var_f26d4e96);
				function_3f5625b4("", 1);
			}
		}
	}
	util::wait_network_frame();
	function_677539fe("");
	foreach(player in GetPlayers())
	{
		player player::take_weapons();
		player savegame::function_bee608f0("saved_weapon", player._current_weapon.name);
		player savegame::function_bee608f0("saved_weapondata", player._weapons);
		player savegame::function_bee608f0("lives", player.lives);
		player._weapons = undefined;
		player.gun_removed = undefined;
	}
	if(SessionModeIsCampaignZombiesGame())
	{
		var_a6f47549 = function_c7f783fe();
		if(isdefined(var_a6f47549) && function_cb7247d8(var_a6f47549))
		{
			foreach(player in level.players)
			{
				player globallogic_player::function_4cef9872(var_a6f47549);
			}
		}
	}
	UploadStats();
	if(!function_92b261a3())
	{
		if(GetDvarInt("tu1_saveNextMapOnLevelComplete", 1))
		{
			var_a6f47549 = function_c7f783fe();
			if(isdefined(var_a6f47549))
			{
				function_3f5625b4("", 1);
				function_ba933d27(var_a6f47549);
			}
			else
			{
				function_ba933d27();
			}
		}
		else
		{
			function_ba933d27();
		}
	}
	if(!isdefined(str_next_map) || function_cb7247d8(str_next_map))
	{
		foreach(e_player in level.players)
		{
			if(GetDvarInt("ui_blocksaves") == 0 && e_player IsHost() && isdefined(e_player savegame::function_36adbb9c("savegame_score")))
			{
				e_player savegame::function_bee608f0("savegame_score", e_player.pers["score"]);
				e_player savegame::function_bee608f0("savegame_kills", e_player.pers["kills"]);
				e_player savegame::function_bee608f0("savegame_assists", e_player.pers["assists"]);
				e_player savegame::function_bee608f0("savegame_incaps", e_player.pers["incaps"]);
				e_player savegame::function_bee608f0("savegame_revives", e_player.pers["revives"]);
				e_player function_ab286e9e("score");
				e_player function_ab286e9e("kills");
				e_player function_ab286e9e("assists");
				e_player function_ab286e9e("incaps");
				e_player function_ab286e9e("revives");
				e_player savegame::function_bee608f0("savegame_score", undefined);
				e_player savegame::function_bee608f0("savegame_kills", undefined);
				e_player savegame::function_bee608f0("savegame_assists", undefined);
				e_player savegame::function_bee608f0("savegame_incaps", undefined);
				e_player savegame::function_bee608f0("savegame_revives", undefined);
				e_player util::waittill_notify_or_timeout("stats_changed", 2);
			}
			if(!isdefined(function_9065d6ea()))
			{
				break;
			}
			e_player savegame::function_bee608f0("saved_weapon", undefined);
			e_player savegame::function_bee608f0("saved_weapondata", undefined);
			e_player savegame::function_bee608f0("lives", undefined);
			var_1e8a9261 = !e_player GetDStat("PlayerStatsByMap", function_9065d6ea(), "hasBeenCompleted");
			if(isdefined(var_1e8a9261) && var_1e8a9261)
			{
				e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "hasBeenCompleted", 1);
				if(SessionModeIsOnlineGame())
				{
					e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "firstTimeCompletedUTC", getUTC());
				}
				e_player thread challenges::function_96ed590f("career_tokens");
				e_player GiveUnlockToken(1);
			}
			if(e_player function_8295f89d(level.gameSkillLowest))
			{
				switch(level.gameSkillLowest)
				{
					case 0:
					{
						break;
					}
					case 1:
					{
						break;
					}
					case 2:
					{
						break;
					}
					case 3:
					{
						e_player GiveDecoration("cp_medal_complete_on_veteran");
						break;
					}
					case 4:
					{
						e_player GiveDecoration("cp_medal_complete_on_veteran");
						e_player GiveDecoration("cp_medal_complete_on_realistic");
						break;
					}
				}
			}
			e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "completedDifficulties", level.gameSkillLowest, 1);
			var_a4b6fa1f = e_player GetDStat("PlayerStatsByMap", function_9065d6ea(), "highestStats", "HIGHEST_DIFFICULTY");
			if(SessionModeIsOnlineGame())
			{
				e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "lastCompletedUTC", getUTC());
				var_1ee78bf0 = e_player GetDStat("PlayerStatsByMap", function_9065d6ea(), "numCompletions");
				if(isdefined(var_1ee78bf0))
				{
					e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "numCompletions", var_1ee78bf0 + 1);
				}
			}
			RecordComScoreEvent("defeat_level", "game_level", function_9065d6ea(), "game_difficulty_lowest", level.gameSkillLowest, "game_difficulty_highest", level.gameSkillHighest, "game_difficulty", level.gameskill, "player_count", level.players.size, "level_duration", GetTime() - level.startTime);
			if(level.gameSkillLowest > var_a4b6fa1f)
			{
				e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "highestStats", "HIGHEST_DIFFICULTY", level.gameSkillLowest);
			}
			e_player function_178f7e85(function_9065d6ea(), level.gameSkillLowest);
			achievements::function_733a6065(e_player, function_9065d6ea(), level.gameSkillLowest, SessionModeIsCampaignZombiesGame());
			if(level.gameSkillLowest >= 2)
			{
				e_player notify("hash_ee109657", level.savename);
				e_player AddPlayerStat("mission_diff_" + GetSubStr(function_4794dda(), 0, 3), 1);
			}
			e_player function_95093ed5();
			e_player savegame::function_bee608f0("last_mission", "");
			e_player function_628760b4();
			e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "lastCompletedDifficulty", level.gameSkillLowest);
			if(!e_player Decorations::playerhasdecoration("cp_medal_no_deaths"))
			{
				if(level.gameSkillLowest >= 3 && (!isdefined(world.var_bf966ebd) && world.var_bf966ebd))
				{
					e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "checkpointUsed", 0);
					if(e_player Decorations::function_931263b1(3))
					{
						e_player GiveDecoration("cp_medal_no_deaths");
					}
				}
				else if(var_a4b6fa1f >= 3 && (!isdefined(e_player GetDStat("PlayerStatsByMap", function_9065d6ea(), "checkpointUsed")) && e_player GetDStat("PlayerStatsByMap", function_9065d6ea(), "checkpointUsed")))
				{
				}
				else
				{
					e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "checkpointUsed", 1);
				}
			}
			if(e_player Decorations::function_bea4ff57())
			{
				e_player GiveDecoration("cp_medal_all_weapon_unlocks");
			}
		}
	}
	level flag::init("all_players_set_aar_scoreboard");
	level.var_a7c3eb6f = 0;
	foreach(player in GetPlayers())
	{
		player thread function_61688376();
	}
	level flag::wait_till_timeout(3, "all_players_set_aar_scoreboard");
	function_54fdc879();
	world.var_bf966ebd = undefined;
	recordGameResult("draw");
	globallogic_player::recordActivePlayersEndGameMatchRecordStats();
	finalizeMatchRecord();
	if(isdefined(str_next_map))
	{
		if(isdefined(level.var_d086f08f) && level.var_d086f08f && !SessionModeIsCampaignZombiesGame())
		{
			level namespace_fe079222::commit(str_next_map);
			foreach(e_player in level.players)
			{
				e_player SetDStat("PlayerStatsByMap", function_9065d6ea(), "lastCompletedDifficulty", level.gameSkillLowest);
				if(e_player Decorations::function_e72fc18())
				{
					e_player GiveDecoration("cp_medal_all_accolades");
				}
			}
			level flag::init("all_players_closed_aar");
			level.var_897126b5 = 0;
			level thread function_2711019f();
			for(i = 0; i < level.players.size; i++)
			{
				level.players[i] thread function_f380969b();
			}
			callback::on_spawned(&function_3fbee503);
			if(!function_92b261a3())
			{
				util::clientNotify("aar");
				music::setmusicstate("aar");
			}
			level flag::wait_till("all_players_closed_aar");
		}
		else if(!SessionModeIsCampaignZombiesGame())
		{
			if(function_cb7247d8(str_next_map))
			{
				foreach(player in GetPlayers())
				{
					player savegame::function_bee608f0("show_aar", 1);
				}
			}
			else
			{
				world.var_2c7a40d3 = undefined;
			}
		}
		if(!function_92b261a3())
		{
			switchmap_switch();
			UploadStats();
		}
		else
		{
			level notify("hash_504f6a41");
			music::setmusicstate("death");
			wait(1);
			if(SessionModeIsCampaignZombiesGame())
			{
				UploadStats();
				exitLevel(0);
			}
			else
			{
				switchmap_switch();
				UploadStats();
			}
		}
	}
	else
	{
		UploadStats();
		exitLevel(0);
	}
}

/*
	Name: function_3d23f76a
	Namespace: skipto
	Checksum: 0x9A7A2330
	Offset: 0xAF48
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_3d23f76a()
{
	self endon("disconnect");
	while(1)
	{
		self FreezeControls(1);
		wait(0.05);
	}
}

/*
	Name: function_3fbee503
	Namespace: skipto
	Checksum: 0x35EBDAC0
	Offset: 0xAF88
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_3fbee503()
{
	self endon("disconnect");
	level.var_897126b5++;
	self util::function_16c71b8(1);
	self thread function_3d23f76a();
	var_d21ab194 = self OpenLUIMenu("SpinnerFullscreenBlack");
	level flag::wait_till("all_players_closed_aar");
	self CloseLUIMenu(var_d21ab194);
}

/*
	Name: function_4aa085d7
	Namespace: skipto
	Checksum: 0xA9660B8B
	Offset: 0xB040
	Size: 0x193
	Parameters: 0
	Flags: None
*/
function function_4aa085d7()
{
	self endon("disconnect");
	self endon("hash_88bd85cc");
	if(isdefined(self))
	{
		self.var_40ac72fa = self OpenLUIMenu("Credit_Fullscreen", 1);
		self FreezeControls(1);
		self waittill("menuresponse", menu, response);
		self CloseLUIMenu(self.var_40ac72fa);
		self FreezeControls(0);
		self.var_40ac72fa = undefined;
		foreach(player in GetPlayers())
		{
			if(player == self)
			{
				continue;
			}
			player notify("hash_88bd85cc");
			player function_88bd85cc();
		}
		level flag::set("credits_done");
	}
}

/*
	Name: function_9a7d9229
	Namespace: skipto
	Checksum: 0x3F576D67
	Offset: 0xB1E0
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_9a7d9229()
{
	level endon("hash_504f6a41");
	wait(59);
	music::setmusicstate("unstoppable_credits");
	wait(148);
	music::setmusicstate("credits_song_3");
	wait(85);
	music::setmusicstate("credits_song_loop");
}

/*
	Name: function_cb7247d8
	Namespace: skipto
	Checksum: 0x6B704031
	Offset: 0xB258
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_cb7247d8(next_level_name)
{
	return !function_7ddcd415(next_level_name);
}

/*
	Name: function_df7ef426
	Namespace: skipto
	Checksum: 0x902EC35
	Offset: 0xB288
	Size: 0xF9
	Parameters: 2
	Flags: None
*/
function function_df7ef426(stat_name, map_name)
{
	if(!isdefined(map_name))
	{
		map_name = function_9065d6ea();
	}
	var_c10ccfdf = self GetDStat("PlayerStatsByMap", map_name, "currentStats", stat_name);
	var_9948d116 = self GetDStat("PlayerStatsList", stat_name, "statValue");
	/#
		Assert(var_c10ccfdf <= var_9948d116);
	#/
	return Int(Abs(var_9948d116 - var_c10ccfdf));
}

/*
	Name: function_95093ed5
	Namespace: skipto
	Checksum: 0xD4D3D9FA
	Offset: 0xB390
	Size: 0x39B
	Parameters: 1
	Flags: None
*/
function function_95093ed5(map_name)
{
	if(!isdefined(map_name))
	{
		map_name = function_9065d6ea();
	}
	var_32c2816f = [];
	Array::add(var_32c2816f, "KILLS");
	Array::add(var_32c2816f, "SCORE");
	Array::add(var_32c2816f, "ASSISTS");
	Array::add(var_32c2816f, "REVIVES");
	foreach(var_8dca536c in var_32c2816f)
	{
		var_43ea6c98 = function_df7ef426(var_8dca536c, map_name);
		/#
			Assert(var_43ea6c98 >= 0);
		#/
		var_c2a4cf78 = self GetDStat("PlayerStatsByMap", map_name, "highestStats", var_8dca536c);
		if(var_43ea6c98 > var_c2a4cf78)
		{
			self SetDStat("PlayerStatsByMap", map_name, "highestStats", var_8dca536c, var_43ea6c98);
		}
	}
	var_43ea6c98 = function_df7ef426("INCAPS", map_name);
	if(!(isdefined(self GetDStat("PlayerStatsByMap", map_name, "hasBeenCompleted") != 1) && self GetDStat("PlayerStatsByMap", map_name, "hasBeenCompleted") != 1))
	{
		self SetDStat("PlayerStatsByMap", map_name, "highestStats", "INCAPS", var_43ea6c98);
	}
	else
	{
		var_c2a4cf78 = self GetDStat("PlayerStatsByMap", map_name, "highestStats", "INCAPS");
		if(var_43ea6c98 < var_c2a4cf78)
		{
			self SetDStat("PlayerStatsByMap", map_name, "highestStats", "INCAPS", var_43ea6c98);
		}
	}
	if(level.gameSkillLowest >= 2)
	{
		var_c2a4cf78 = self GetDStat("PlayerStatsByMap", function_9065d6ea(), "highestStats", "INCAPS");
		if(var_c2a4cf78 == 0)
		{
			self thread challenges::function_96ed590f("mission_diff_nodeaths");
		}
	}
}

/*
	Name: function_8295f89d
	Namespace: skipto
	Checksum: 0x354B878D
	Offset: 0xB738
	Size: 0x137
	Parameters: 1
	Flags: None
*/
function function_8295f89d(difficulty)
{
	if(self GetDStat("PlayerStatsByMap", function_9065d6ea(), "completedDifficulties", difficulty) == 1)
	{
		return 0;
	}
	var_cfc9cbb7 = function_23eda99c();
	foreach(mission in var_cfc9cbb7)
	{
		if(mission == function_9065d6ea())
		{
			continue;
		}
		if(self GetDStat("PlayerStatsByMap", mission, "completedDifficulties", difficulty) == 0)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_178f7e85
	Namespace: skipto
	Checksum: 0x41890999
	Offset: 0xB878
	Size: 0x20D
	Parameters: 2
	Flags: None
*/
function function_178f7e85(root_map_name, difficulty)
{
	if(self GetDStat("PlayerStatsByMap", root_map_name, "receivedXPForDifficulty", difficulty) != 0)
	{
		return;
	}
	for(i = difficulty; i >= 0; i--)
	{
		if(self GetDStat("PlayerStatsByMap", root_map_name, "receivedXPForDifficulty", i) == 0)
		{
			switch(i)
			{
				case 0:
				{
					self AddRankXp("complete_mission_recruit");
					break;
				}
				case 1:
				{
					self AddRankXp("complete_mission_regular");
					break;
				}
				case 2:
				{
					self AddRankXp("complete_mission_hardened");
					self thread challenges::function_96ed590f("career_difficulty_hard");
					break;
				}
				case 3:
				{
					self AddRankXp("complete_mission_veteran");
					self thread challenges::function_96ed590f("career_difficulty_vet");
					break;
				}
				case 4:
				{
					self AddRankXp("complete_mission_heroic");
					self thread challenges::function_96ed590f("career_difficulty_real");
					break;
				}
			}
			self SetDStat("PlayerStatsByMap", root_map_name, "receivedXPForDifficulty", i, 1);
		}
	}
}

/*
	Name: function_a5a105e8
	Namespace: skipto
	Checksum: 0x9EE42BB2
	Offset: 0xBA90
	Size: 0x25D
	Parameters: 0
	Flags: None
*/
function function_a5a105e8()
{
	var_d47e142e = GetPlayers();
	for(i = 0; i < var_d47e142e.size; i++)
	{
		e_player = var_d47e142e[i];
		entnum = e_player GetEntityNumber();
		var_a4306248 = e_player function_df7ef426("score");
		var_aae80abd = e_player function_df7ef426("kills");
		var_8ce58b30 = e_player function_df7ef426("incaps");
		var_fcdd29fe = e_player function_df7ef426("assists");
		var_5c1478bc = e_player function_df7ef426("revives");
		self SetDStat("AfterActionReportStats", "playerStats", entnum, "score", var_a4306248);
		self SetDStat("AfterActionReportStats", "playerStats", entnum, "kills", var_aae80abd);
		self SetDStat("AfterActionReportStats", "playerStats", entnum, "deaths", var_8ce58b30);
		self SetDStat("AfterActionReportStats", "playerStats", entnum, "assists", var_fcdd29fe);
		self SetDStat("AfterActionReportStats", "playerStats", entnum, "revives", var_5c1478bc);
	}
}

/*
	Name: function_54fdc879
	Namespace: skipto
	Checksum: 0x4E640D9
	Offset: 0xBCF8
	Size: 0x179
	Parameters: 0
	Flags: None
*/
function function_54fdc879()
{
	var_cfc9cbb7 = function_23eda99c();
	foreach(player in level.players)
	{
		var_6511b67a = 1;
		foreach(mission in var_cfc9cbb7)
		{
			if(player GetDStat("PlayerStatsByMap", mission, "hasBeenCompleted") == 0)
			{
				var_6511b67a = 0;
				break;
			}
		}
		if(var_6511b67a)
		{
			player SetDStat("zmCampaignData", "unlocked", 1);
		}
	}
}

/*
	Name: function_b342abc7
	Namespace: skipto
	Checksum: 0x7A44328D
	Offset: 0xBE80
	Size: 0x85
	Parameters: 2
	Flags: Private
*/
function private function_b342abc7(skipto, starting)
{
	if(isdefined(level.BZMStartObjectiveCallback))
	{
		[[level.BZMStartObjectiveCallback]](skipto, starting);
	}
	level flag::set(skipto);
	level thread function_da2e7bff(skipto);
	level.var_c0e97bd = skipto;
	level notify("update_billboard");
}

/*
	Name: function_ab12ef82
	Namespace: skipto
	Checksum: 0x60DF9955
	Offset: 0xBF10
	Size: 0x23
	Parameters: 1
	Flags: None
*/
function function_ab12ef82(str_flag)
{
	util::function_ab12ef82(str_flag);
}

/*
	Name: function_77ff537d
	Namespace: skipto
	Checksum: 0xBF3327C7
	Offset: 0xBF40
	Size: 0x299
	Parameters: 4
	Flags: Private
*/
function private function_77ff537d(skipto, starting, direct, player)
{
	if(isdefined(level.BZMWaitForObjectiveCompletionCallback))
	{
		[[level.BZMWaitForObjectiveCompletionCallback]]();
	}
	level flag::clear(skipto);
	level flag::set(skipto + "_completed");
	if(!isdefined(level.var_e07f6589[skipto]))
	{
		/#
			ASSERTMSG("Dev Block strings are not supported" + skipto);
		#/
	}
	if(!(isdefined(level.var_f6ded45a) && level.var_f6ded45a))
	{
		waittillframeend;
		a_entities = GetEntArray(skipto, "script_objective");
		foreach(entity in a_entities)
		{
			if(IsSentient(entity))
			{
				if(!isdefined(level.heroes) || !IsInArray(level.heroes, entity))
				{
					entity thread util::auto_delete();
				}
				continue;
			}
			if(isVehicle(entity))
			{
				entity.delete_on_death = 1;
				entity notify("death");
				if(!isalive(entity))
				{
					entity delete();
				}
				continue;
			}
			if(SessionModeIsCampaignZombiesGame() && entity.script_noteworthy === "bonuszm_magicbox")
			{
				if(isdefined(level.BZM_CleanupMagicBoxOnDeletionCallback))
				{
					[[level.BZM_CleanupMagicBoxOnDeletionCallback]](entity);
				}
				continue;
			}
			entity delete();
		}
	}
}

/*
	Name: function_da2e7bff
	Namespace: skipto
	Checksum: 0xF10A5D87
	Offset: 0xC1E8
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_da2e7bff(name)
{
	var_f09f58e0 = undefined;
	var_41c34432 = GetEntArray("objective", "targetname");
	foreach(trigger in var_41c34432)
	{
		if(trigger.script_objective == name)
		{
			if(!isdefined(var_f09f58e0))
			{
				var_f09f58e0 = trigger;
			}
			var_f09f58e0 thread function_397eb920(trigger, name);
		}
	}
}

/*
	Name: all_players_touching
	Namespace: skipto
	Checksum: 0xAC583600
	Offset: 0xC2F8
	Size: 0xAB
	Parameters: 1
	Flags: None
*/
function all_players_touching(trigger)
{
	foreach(player in GetPlayers())
	{
		if(!player istouching(trigger))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_eb0ecd7a
	Namespace: skipto
	Checksum: 0xC5A7A133
	Offset: 0xC3B0
	Size: 0x16F
	Parameters: 2
	Flags: None
*/
function function_eb0ecd7a(trigger, name)
{
	trigger endon("death");
	level endon(name + "_terminate");
	if(trigger.script_noteworthy === "allplayers")
	{
		do
		{
			trigger waittill("trigger", player);
		}
		while(!!all_players_touching(trigger));
		break;
	}
	trigger waittill("trigger", player);
	if(trigger.script_noteworthy === "warpplayers")
	{
		foreach(other_player in level.players)
		{
			if(other_player != player)
			{
				other_player thread function_eb7240f8();
			}
		}
	}
	level thread function_be8adfb8(trigger.script_objective, player);
	return player;
}

/*
	Name: function_397eb920
	Namespace: skipto
	Checksum: 0x6782AF96
	Offset: 0xC528
	Size: 0x55
	Parameters: 2
	Flags: None
*/
function function_397eb920(trigger, name)
{
	self endon("hash_397eb920");
	player = function_eb0ecd7a(trigger, name);
	self notify("hash_397eb920");
}

/*
	Name: function_eb7240f8
	Namespace: skipto
	Checksum: 0xA7318D0
	Offset: 0xC588
	Size: 0xA1
	Parameters: 0
	Flags: None
*/
function function_eb7240f8()
{
	self.suicide = 0;
	self.teamKilled = 0;
	timePassed = undefined;
	if(isdefined(self.respawnTimerStartTime))
	{
		timePassed = GetTime() - self.respawnTimerStartTime / 1000;
	}
	if(self laststand::player_is_in_laststand())
	{
		self notify("auto_revive");
		waittillframeend;
	}
	self notify("death");
	self thread [[level.spawnClient]](timePassed);
	self.respawnTimerStartTime = undefined;
}

/*
	Name: function_143fd222
	Namespace: skipto
	Checksum: 0x7B557F5D
	Offset: 0xC638
	Size: 0x247
	Parameters: 0
	Flags: None
*/
function function_143fd222()
{
	var_e276a329 = struct::get_array("entity_objective_loc");
	foreach(mover in var_e276a329)
	{
		if(!isdefined(mover.angles))
		{
			mover.angles = (0, 0, 0);
		}
		if(isdefined(mover.script_objective) && isdefined(level.var_e07f6589[mover.script_objective]))
		{
			if(!isdefined(level.var_e07f6589[mover.script_objective].var_17618905))
			{
				level.var_e07f6589[mover.script_objective].var_17618905 = [];
			}
			else if(!IsArray(level.var_e07f6589[mover.script_objective].var_17618905))
			{
				level.var_e07f6589[mover.script_objective].var_17618905 = Array(level.var_e07f6589[mover.script_objective].var_17618905);
			}
			level.var_e07f6589[mover.script_objective].var_17618905[level.var_e07f6589[mover.script_objective].var_17618905.size] = mover;
		}
	}
	for(;;)
	{
		level waittill("hash_4b5852e7", objectives);
		function_be04f9a5(objectives);
	}
}

/*
	Name: function_be04f9a5
	Namespace: skipto
	Checksum: 0x38D1310F
	Offset: 0xC888
	Size: 0x10F
	Parameters: 1
	Flags: None
*/
function function_be04f9a5(objectives)
{
	foreach(objective in objectives)
	{
		foreach(mover in level.var_e07f6589[objective].var_17618905)
		{
			thread function_1c1454cd(mover);
		}
	}
}

/*
	Name: function_1c1454cd
	Namespace: skipto
	Checksum: 0x28DFC60A
	Offset: 0xC9A0
	Size: 0x4E1
	Parameters: 1
	Flags: None
*/
function function_1c1454cd(mover)
{
	targets = GetEntArray(mover.target, "targetname");
	if(isdefined(mover.script_noteworthy) && mover.script_noteworthy == "relative")
	{
		speed = 0;
		if(isdefined(mover.script_int))
		{
			speed = mover.script_int;
		}
		if(speed == 0)
		{
			speed = 0.05;
		}
		foreach(target in targets)
		{
			if(!isdefined(target.var_2c2e94d1))
			{
				target.var_2c2e94d1 = mover;
				target.var_86803507 = mover;
			}
			else
			{
				var_2c2e94d1 = target.var_86803507;
			}
			if(!isdefined(var_2c2e94d1))
			{
				var_2c2e94d1 = mover;
				speed = 0.05;
				continue;
			}
			/#
				Assert(var_2c2e94d1 == target.var_86803507, "Dev Block strings are not supported");
			#/
		}
		if(!isdefined(var_2c2e94d1) || var_2c2e94d1 == mover)
		{
			return;
		}
		script_mover = spawn("script_origin", var_2c2e94d1.origin);
		script_mover.angles = var_2c2e94d1.angles;
		foreach(target in targets)
		{
			target LinkTo(script_mover, "", script_mover WorldToLocalCoords(target.origin), target.angles - script_mover.angles);
		}
		util::wait_network_frame();
		script_mover moveto(mover.origin, speed);
		script_mover RotateTo(mover.angles, speed);
		script_mover waittill("movedone");
		foreach(target in targets)
		{
			target.var_86803507 = mover;
			target Unlink();
		}
		script_mover delete();
		break;
	}
	foreach(target in targets)
	{
		target.origin = mover.origin;
		if(isdefined(mover.angles))
		{
			target.angles = mover.angles;
		}
	}
}

/*
	Name: function_f3e035ef
	Namespace: skipto
	Checksum: 0xE4066B0E
	Offset: 0xCE90
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_f3e035ef()
{
	level flag::set("skip_safehouse_after_map");
}

/*
	Name: function_89664f42
	Namespace: skipto
	Checksum: 0x9234ABC6
	Offset: 0xCEC0
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_89664f42()
{
	return level flag::get("skip_safehouse_after_map") || SessionModeIsCampaignZombiesGame();
}

/*
	Name: function_272e1c8d
	Namespace: skipto
	Checksum: 0xD3F81F36
	Offset: 0xCF08
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_272e1c8d()
{
	level flag::set("final_level");
}

/*
	Name: function_92b261a3
	Namespace: skipto
	Checksum: 0x1A5026A8
	Offset: 0xCF38
	Size: 0x21
	Parameters: 0
	Flags: None
*/
function function_92b261a3()
{
	return level flag::get("final_level");
}

/*
	Name: function_27c2dde4
	Namespace: skipto
	Checksum: 0xCE9AA465
	Offset: 0xCF68
	Size: 0xE1
	Parameters: 0
	Flags: None
*/
function function_27c2dde4()
{
	/#
		if(isdefined(level.scriptbundles) && isdefined(level.scriptbundles["Dev Block strings are not supported"]))
		{
			foreach(scene in level.scriptbundles["Dev Block strings are not supported"])
			{
				if(!isdefined(scene.Used))
				{
					println("Dev Block strings are not supported" + scene.name);
				}
			}
		}
	#/
}

/*
	Name: update_billboard
	Namespace: skipto
	Checksum: 0x41883B8
	Offset: 0xD058
	Size: 0x243
	Parameters: 0
	Flags: None
*/
function update_billboard()
{
	/#
		self endon("death");
		while(1)
		{
			if(isdefined(level.var_81fdc5c1) && isdefined(level.var_81fdc5c1[level.var_c0e97bd]))
			{
				event_name = level.var_81fdc5c1[level.var_c0e97bd][0];
				var_f23fc04b = level.var_f2898bd7 === event_name;
				if(!var_f23fc04b)
				{
					level.var_f2898bd7 = event_name;
					level.var_c79b41f2 = level.var_81fdc5c1[level.var_c0e97bd][1];
					level.var_5f835655 = level.var_81fdc5c1[level.var_c0e97bd][2];
					level.var_8debf51 = level.var_81fdc5c1[level.var_c0e97bd][3];
					foreach(player in level.players)
					{
						player notify("update_billboard");
					}
				}
				else
				{
					Assert(level.var_c79b41f2 == level.var_81fdc5c1[level.var_c0e97bd][1], "Dev Block strings are not supported");
					/#
						Assert(level.var_5f835655 == level.var_81fdc5c1[level.var_c0e97bd][2], "Dev Block strings are not supported");
					#/
					/#
						Assert(level.var_8debf51 == level.var_81fdc5c1[level.var_c0e97bd][3], "Dev Block strings are not supported");
					#/
				}
				/#
				#/
			}
			level waittill("update_billboard");
		}
	#/
}

/*
	Name: function_c40086b6
	Namespace: skipto
	Checksum: 0xA6E94386
	Offset: 0xD2A8
	Size: 0x1A3
	Parameters: 0
	Flags: None
*/
function function_c40086b6()
{
	/#
		self endon("death");
		lui_menu = undefined;
		while(1)
		{
			if(isdefined(level.var_f2898bd7))
			{
				if(level.var_f2898bd7 == "Dev Block strings are not supported")
				{
					if(isdefined(lui_menu))
					{
						self CloseLUIMenu(lui_menu);
						lui_menu = undefined;
					}
				}
				else if(!isdefined(lui_menu))
				{
					lui_menu = self OpenLUIMenu("Dev Block strings are not supported");
				}
				self LUI::play_animation(lui_menu, "Dev Block strings are not supported");
				if(isdefined(level.var_8debf51))
				{
					self SetLUIMenuData(lui_menu, "Dev Block strings are not supported", level.var_f2898bd7 + "Dev Block strings are not supported" + level.var_8debf51 + "Dev Block strings are not supported");
				}
				else
				{
					self SetLUIMenuData(lui_menu, "Dev Block strings are not supported", level.var_f2898bd7);
				}
				self SetLUIMenuData(lui_menu, "Dev Block strings are not supported", level.var_c79b41f2);
				self SetLUIMenuData(lui_menu, "Dev Block strings are not supported", level.var_5f835655);
			}
			self waittill("update_billboard");
		}
	#/
}


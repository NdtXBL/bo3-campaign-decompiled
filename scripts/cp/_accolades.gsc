#using scripts\codescripts\struct;
#using scripts\cp\_challenges;
#using scripts\cp\_collectibles;
#using scripts\cp\_decorations;
#using scripts\cp\_skipto;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_save;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\scoreevents_shared;
#using scripts\shared\system_shared;
#using scripts\shared\table_shared;
#using scripts\shared\util_shared;

#namespace namespace_fe079222;

/*
	Name: __init__sytem__
	Namespace: namespace_fe079222
	Checksum: 0xD63EC753
	Offset: 0x388
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec __init__sytem__()
{
	system::register("accolades", &__init__, &__main__, undefined);
}

/*
	Name: __init__
	Namespace: namespace_fe079222
	Checksum: 0x1A356F14
	Offset: 0x3D0
	Size: 0x343
	Parameters: 0
	Flags: None
*/
function __init__()
{
	if(accoladesdisabled())
	{
		return;
	}
	mission_names = [];
	mission_names[mission_names.size] = "AQUIFER";
	mission_names[mission_names.size] = "BIODOMES";
	mission_names[mission_names.size] = "BLACKSTATION";
	mission_names[mission_names.size] = "INFECTION";
	mission_names[mission_names.size] = "LOTUS";
	mission_names[mission_names.size] = "NEWWORLD";
	mission_names[mission_names.size] = "PROLOGUE";
	mission_names[mission_names.size] = "RAMSES";
	mission_names[mission_names.size] = "SGEN";
	mission_names[mission_names.size] = "VENGEANCE";
	mission_names[mission_names.size] = "ZURICH";
	level.var_fe079222 = [];
	level.root_map_name = function_9065d6ea();
	level.mission_name = function_4794dda();
	if(isdefined(level.mission_name) && function_c4158488(level.root_map_name))
	{
		for(i = 0; i < mission_names.size; i++)
		{
			if(mission_names[i] == toupper(level.mission_name))
			{
				level.var_e232c324 = i + 1;
				break;
			}
		}
		callback::on_connect(&on_player_connect);
		callback::on_spawned(&on_player_spawned);
		callback::on_disconnect(&on_player_disconnect);
		level.default_accolades_prefix = "MISSION_" + toupper(level.mission_name) + "_";
		level.accolade_offset = Int(tableLookup("gamedata/stats/cp/statsmilestones1.csv", 4, level.default_accolades_prefix + "UNTOUCHED", 0));
		register(level.default_accolades_prefix + "UNTOUCHED", undefined, 1);
		register(level.default_accolades_prefix + "SCORE");
		register(level.default_accolades_prefix + "COLLECTIBLE");
		level thread restore_checkpoint_accolades();
	}
}

/*
	Name: __main__
	Namespace: namespace_fe079222
	Checksum: 0xC4E7E1DA
	Offset: 0x720
	Size: 0x17
	Parameters: 0
	Flags: None
*/
function __main__()
{
	if(accoladesdisabled())
	{
		return;
	}
}

/*
	Name: get_accolade
	Namespace: namespace_fe079222
	Checksum: 0x57BCF5DC
	Offset: 0x740
	Size: 0x4D
	Parameters: 1
	Flags: None
*/
function get_accolade(var_5ba0c4e7)
{
	var_fe079222 = self savegame::function_36adbb9c("accolades");
	if(isdefined(var_fe079222))
	{
		return var_fe079222[var_5ba0c4e7];
	}
}

/*
	Name: set_accolade
	Namespace: namespace_fe079222
	Checksum: 0xDBF64031
	Offset: 0x798
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function set_accolade(var_5ba0c4e7, new_accolade)
{
	accolade_array = self savegame::function_36adbb9c("accolades");
	accolade_array[var_5ba0c4e7] = new_accolade;
	self savegame::function_bee608f0("accolades", accolade_array);
}

/*
	Name: getaccolademapstat
	Namespace: namespace_fe079222
	Checksum: 0x29EFD725
	Offset: 0x818
	Size: 0x9B
	Parameters: 2
	Flags: None
*/
function getaccolademapstat(accolade_index, var_3180ccbb)
{
	if(isdefined(var_3180ccbb) && var_3180ccbb)
	{
		return self GetDStat("PlayerStatsByMap", level.root_map_name, "accolades", accolade_index, "state");
	}
	else
	{
		return self GetDStat("PlayerStatsByMap", level.root_map_name, "accolades", accolade_index, "value");
	}
}

/*
	Name: setaccolademapstat
	Namespace: namespace_fe079222
	Checksum: 0x682169A2
	Offset: 0x8C0
	Size: 0x113
	Parameters: 4
	Flags: None
*/
function setaccolademapstat(accolade_index, var_3180ccbb, value, save_noncheckpoint)
{
	if(isdefined(var_3180ccbb) && var_3180ccbb)
	{
		self setaccoladenoncheckpointstate(accolade_index, value);
		self SetDStat("PlayerStatsByMap", level.root_map_name, "accolades", accolade_index, "state", value);
	}
	else if(isdefined(save_noncheckpoint) && save_noncheckpoint)
	{
		self setaccoladenoncheckpointvalue(accolade_index, value);
	}
	self SetDStat("PlayerStatsByMap", level.root_map_name, "accolades", accolade_index, "value", value);
	/#
		self.accolades_dirty = 1;
	#/
}

/*
	Name: function_520227e6
	Namespace: namespace_fe079222
	Checksum: 0x5924BDDA
	Offset: 0x9E0
	Size: 0x21
	Parameters: 1
	Flags: None
*/
function function_520227e6(accolade_index)
{
	return self getaccolademapstat(accolade_index, 0);
}

/*
	Name: function_de8b9e62
	Namespace: namespace_fe079222
	Checksum: 0xEED5E7B7
	Offset: 0xA10
	Size: 0x3B
	Parameters: 3
	Flags: None
*/
function function_de8b9e62(accolade_index, value, save_noncheckpoint)
{
	self setaccolademapstat(accolade_index, 0, value, save_noncheckpoint);
}

/*
	Name: function_3bbb909b
	Namespace: namespace_fe079222
	Checksum: 0x8D5C91C9
	Offset: 0xA58
	Size: 0x6D
	Parameters: 3
	Flags: None
*/
function function_3bbb909b(accolade_index, value, save_noncheckpoint)
{
	statValue = self function_520227e6(accolade_index);
	self function_de8b9e62(accolade_index, statValue + value, save_noncheckpoint);
	return statValue + value;
}

/*
	Name: function_3a7fd23a
	Namespace: namespace_fe079222
	Checksum: 0x264464E4
	Offset: 0xAD0
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_3a7fd23a(accolade_index)
{
	return self getaccolademapstat(accolade_index, 1);
}

/*
	Name: function_8992915e
	Namespace: namespace_fe079222
	Checksum: 0xE13E5E42
	Offset: 0xB08
	Size: 0x33
	Parameters: 2
	Flags: None
*/
function function_8992915e(accolade_index, State)
{
	self setaccolademapstat(accolade_index, 1, State);
}

/*
	Name: setaccoladenoncheckpointvalue
	Namespace: namespace_fe079222
	Checksum: 0x29DD6E99
	Offset: 0xB48
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function setaccoladenoncheckpointvalue(accolade_index, value)
{
	self function_b26abbde("accolades" + accolade_index + "value", value);
}

/*
	Name: setaccoladenoncheckpointstate
	Namespace: namespace_fe079222
	Checksum: 0xB04FC44
	Offset: 0xB98
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function setaccoladenoncheckpointstate(accolade_index, State)
{
	self function_b26abbde("accolades" + accolade_index + "state", State);
}

/*
	Name: getaccoladenoncheckpointvalue
	Namespace: namespace_fe079222
	Checksum: 0xF5774B7A
	Offset: 0xBE8
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function getaccoladenoncheckpointvalue(accolade_index)
{
	return self function_ebacf39a("accolades" + accolade_index + "value");
}

/*
	Name: getaccoladenoncheckpointstate
	Namespace: namespace_fe079222
	Checksum: 0x31C73142
	Offset: 0xC28
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function getaccoladenoncheckpointstate(accolade_index)
{
	return self function_ebacf39a("accolades" + accolade_index + "state");
}

/*
	Name: clearaccoladenoncheckpointdata
	Namespace: namespace_fe079222
	Checksum: 0x78BB8F3C
	Offset: 0xC68
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function clearaccoladenoncheckpointdata(accolade_index)
{
	self function_b016cdb3("accolades" + accolade_index + "state");
	self function_b016cdb3("accolades" + accolade_index + "value");
}

/*
	Name: function_77b3b4d1
	Namespace: namespace_fe079222
	Checksum: 0x4068A011
	Offset: 0xCD0
	Size: 0x1C1
	Parameters: 0
	Flags: None
*/
function function_77b3b4d1()
{
	if(self == level)
	{
		foreach(player in level.players)
		{
			player function_77b3b4d1();
		}
		break;
	}
	var_fe079222 = self savegame::function_36adbb9c("accolades");
	if(!isdefined(var_fe079222))
	{
		return;
	}
	foreach(var_8c03895d in level.var_fe079222)
	{
		var_b71e3573 = var_fe079222[var_5ba0c4e7];
		if(var_b71e3573.current_value > self function_520227e6(var_b71e3573.index))
		{
			self function_de8b9e62(var_b71e3573.index, var_b71e3573.current_value, 1);
		}
	}
}

/*
	Name: function_9ba543a3
	Namespace: namespace_fe079222
	Checksum: 0xB55DAA3
	Offset: 0xEA0
	Size: 0x87
	Parameters: 2
	Flags: Private
*/
function private function_9ba543a3(var_5ba0c4e7, var_eb856299)
{
	var_51ccabeb = TableLookupRowNum("gamedata/stats/cp/statsmilestones1.csv", 4, var_5ba0c4e7);
	var_35cb50ff = TableLookupColumnForRow("gamedata/stats/cp/statsmilestones1.csv", var_51ccabeb, 2);
	return Int(var_35cb50ff) <= var_eb856299;
}

/*
	Name: accoladesdisabled
	Namespace: namespace_fe079222
	Checksum: 0x440F2787
	Offset: 0xF30
	Size: 0x29
	Parameters: 0
	Flags: Private
*/
function private accoladesdisabled()
{
	return isdefined(level.var_837b3a61) && level.var_837b3a61 || SessionModeIsCampaignZombiesGame();
}

/*
	Name: function_3c63ee8
	Namespace: namespace_fe079222
	Checksum: 0x10C75537
	Offset: 0xF68
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_3c63ee8()
{
	return !function_7ddcd415() && (GetDvarString("skipto") == "" || GetDvarString("skipto") == "level_start");
}

/*
	Name: function_994b29af
	Namespace: namespace_fe079222
	Checksum: 0x3C691062
	Offset: 0xFD8
	Size: 0x5B
	Parameters: 1
	Flags: None
*/
function function_994b29af(var_5ba0c4e7)
{
	var_ea75dd36 = tableLookup("gamedata/stats/cp/statsmilestones1.csv", 4, toupper(var_5ba0c4e7), 7);
	return var_ea75dd36 != "";
}

/*
	Name: function_7efd1da3
	Namespace: namespace_fe079222
	Checksum: 0x9C46B75E
	Offset: 0x1040
	Size: 0x75
	Parameters: 1
	Flags: None
*/
function function_7efd1da3(var_5ba0c4e7)
{
	var_a33c5066 = tableLookup("gamedata/stats/cp/statsmilestones1.csv", 4, toupper(var_5ba0c4e7), 6);
	if(var_a33c5066 != "")
	{
		return Int(var_a33c5066);
	}
	return 0;
}

/*
	Name: function_77abfac7
	Namespace: namespace_fe079222
	Checksum: 0x569D9FB
	Offset: 0x10C0
	Size: 0x7B
	Parameters: 1
	Flags: None
*/
function function_77abfac7(num_tokens)
{
	if(!isdefined(num_tokens))
	{
		num_tokens = 1;
	}
	var_6dff2ed7 = self GetDStat("unlocks", 0);
	var_6dff2ed7 = var_6dff2ed7 + num_tokens;
	self SetDStat("unlocks", 0, var_6dff2ed7);
}

/*
	Name: update_highest_value
	Namespace: namespace_fe079222
	Checksum: 0x76CAACD1
	Offset: 0x1148
	Size: 0xB3
	Parameters: 2
	Flags: None
*/
function update_highest_value(accolade_index, var_eb856299)
{
	currenthighestvalue = self GetDStat("PlayerStatsByMap", function_9065d6ea(), "accolades", accolade_index, "highestValue");
	if(var_eb856299 > currenthighestvalue)
	{
		self SetDStat("PlayerStatsByMap", function_9065d6ea(), "accolades", accolade_index, "highestValue", var_eb856299);
	}
}

/*
	Name: get_target_value
	Namespace: namespace_fe079222
	Checksum: 0x68D87354
	Offset: 0x1208
	Size: 0x79
	Parameters: 1
	Flags: None
*/
function get_target_value(var_5ba0c4e7)
{
	var_8dab6968 = tableLookup("gamedata/stats/cp/statsmilestones1.csv", 4, toupper(var_5ba0c4e7), 2);
	if(var_8dab6968 == "")
	{
		return 0;
	}
	return Int(var_8dab6968);
}

/*
	Name: function_42acdca5
	Namespace: namespace_fe079222
	Checksum: 0xF584BBBE
	Offset: 0x1290
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_42acdca5(var_5ba0c4e7)
{
	var_b71e3573 = self get_accolade(var_5ba0c4e7);
	if(function_9ba543a3(var_5ba0c4e7, var_b71e3573.current_value))
	{
		return;
	}
	self clearaccoladenoncheckpointdata(var_b71e3573.index);
	self function_8992915e(var_b71e3573.index, 0);
	if(isdefined(var_b71e3573.var_ab795acb) && var_b71e3573.var_ab795acb)
	{
		var_b71e3573.current_value = 1;
	}
	else
	{
		var_b71e3573.current_value = 0;
	}
	self function_de8b9e62(var_b71e3573.index, var_b71e3573.current_value, 0);
}

/*
	Name: register
	Namespace: namespace_fe079222
	Checksum: 0x6A3B1FCF
	Offset: 0x13C0
	Size: 0x10B
	Parameters: 3
	Flags: None
*/
function register(var_5ba0c4e7, var_fe4f6a44, var_ab795acb)
{
	if(accoladesdisabled())
	{
		return;
	}
	if(!isdefined(level.var_fe079222[var_5ba0c4e7]))
	{
		accolade_offset = Int(tableLookup("gamedata/stats/cp/statsmilestones1.csv", 4, var_5ba0c4e7, 0));
		level.var_fe079222[var_5ba0c4e7] = spawnstruct();
		level.var_fe079222[var_5ba0c4e7].var_1b47f988 = var_fe4f6a44;
		level.var_fe079222[var_5ba0c4e7].index = accolade_offset - level.accolade_offset;
		level.var_fe079222[var_5ba0c4e7].var_ab795acb = isdefined(var_ab795acb) && var_ab795acb;
	}
}

/*
	Name: increment
	Namespace: namespace_fe079222
	Checksum: 0x759A9010
	Offset: 0x14D8
	Size: 0x4D3
	Parameters: 3
	Flags: None
*/
function increment(var_5ba0c4e7, n_val, dont_print)
{
	if(!isdefined(n_val))
	{
		n_val = 1;
	}
	if(accoladesdisabled())
	{
		return;
	}
	if(self == level)
	{
		foreach(player in level.players)
		{
			player increment(var_5ba0c4e7);
		}
	}
	else
	{
		var_b71e3573 = self get_accolade(var_5ba0c4e7);
		if(!isdefined(var_b71e3573))
		{
			return;
		}
		if(function_3a7fd23a(var_b71e3573.index) != 0)
		{
			if(var_5ba0c4e7 == level.default_accolades_prefix + "SCORE")
			{
				var_b71e3573.current_value = var_b71e3573.current_value + n_val;
				self update_highest_value(var_b71e3573.index, var_b71e3573.current_value);
			}
			return;
		}
		if(!(isdefined(var_b71e3573.var_ab795acb) && var_b71e3573.var_ab795acb))
		{
			var_b71e3573.current_value = var_b71e3573.current_value + n_val;
		}
		else
		{
			var_b71e3573.current_value = 0;
		}
		/#
			if(!(isdefined(dont_print) && dont_print))
			{
				accolade_string = tableLookupIString("Dev Block strings are not supported", 4, var_5ba0c4e7, 5);
				iprintln(accolade_string);
			}
			self.accolades_dirty = 1;
		#/
		self function_de8b9e62(var_b71e3573.index, var_b71e3573.current_value, 0);
		self update_highest_value(var_b71e3573.index, var_b71e3573.current_value);
		if(!function_9ba543a3(var_5ba0c4e7, var_b71e3573.current_value) || var_b71e3573.index == 1)
		{
			return;
		}
		self function_de8b9e62(var_b71e3573.index, var_b71e3573.current_value, 1);
		self function_8992915e(var_b71e3573.index, 1);
		accolade_string_complete = tableLookupIString("gamedata/stats/cp/statsmilestones1.csv", 4, var_5ba0c4e7, 8);
		if(isdefined(accolade_string_complete))
		{
			util::function_964b7eb7(self, accolade_string_complete);
			self playlocalsound("uin_accolade");
		}
		self thread challenges::function_96ed590f("career_accolades");
		var_b71e3573.var_8a644747 = 1;
		self Decorations::function_e72fc18();
		if(isdefined(var_b71e3573.gives_unlock_token) && var_b71e3573.gives_unlock_token)
		{
			self thread challenges::function_96ed590f("career_tokens");
			self GiveUnlockToken(1);
		}
		self AddRankXPValue("award_accolade", var_b71e3573.award_xp);
		self Decorations::function_59f1fa79();
		UploadStats(self);
	}
}

/*
	Name: function_35e3d94b
	Namespace: namespace_fe079222
	Checksum: 0xFC9CEB9D
	Offset: 0x19B8
	Size: 0xBF
	Parameters: 2
	Flags: Private
*/
function private function_35e3d94b(var_5ba0c4e7, str_notify)
{
	self endon("_reset_incomplete_accolades");
	self endon("disconnect");
	if(!isdefined(self.accolades_notify_threads))
	{
		self.accolades_notify_threads = [];
	}
	if(isdefined(self.accolades_notify_threads[str_notify]) && self.accolades_notify_threads[str_notify])
	{
		return;
	}
	self.accolades_notify_threads[str_notify] = 1;
	while(1)
	{
		self waittill(str_notify, n_val);
		self increment(var_5ba0c4e7, n_val);
	}
}

/*
	Name: _reset_incomplete_accolades
	Namespace: namespace_fe079222
	Checksum: 0xCDAC2E41
	Offset: 0x1A80
	Size: 0x453
	Parameters: 0
	Flags: Private
*/
function private _reset_incomplete_accolades()
{
	self notify("_reset_incomplete_accolades");
	var_fe079222 = [];
	self savegame::function_bee608f0("accolades", var_fe079222);
	foreach(var_8c03895d in level.var_fe079222)
	{
		var_aa6073 = spawnstruct();
		var_aa6073.index = var_8c03895d.index;
		var_aa6073.var_ab795acb = var_8c03895d.var_ab795acb;
		var_cba20a96 = self function_3a7fd23a(var_8c03895d.index);
		self setaccoladenoncheckpointstate(var_8c03895d.index, var_cba20a96);
		if(var_cba20a96 != 0)
		{
			var_aa6073.current_value = function_520227e6(var_8c03895d.index);
			var_aa6073.var_8a644747 = 1;
			self set_accolade(var_5ba0c4e7, var_aa6073);
			self setaccoladenoncheckpointvalue(var_8c03895d.index, var_aa6073.current_value);
			continue;
		}
		if(isdefined(var_8c03895d.var_1b47f988) && (!isdefined(StrEndsWith(var_5ba0c4e7, "COLLECTIBLE")) && StrEndsWith(var_5ba0c4e7, "COLLECTIBLE")))
		{
			self thread function_35e3d94b(var_5ba0c4e7, var_8c03895d.var_1b47f988);
		}
		if(var_8c03895d.var_ab795acb)
		{
			var_aa6073.current_value = 1;
		}
		else
		{
			var_aa6073.current_value = 0;
		}
		if(isdefined(StrEndsWith(var_5ba0c4e7, "COLLECTIBLE")) && StrEndsWith(var_5ba0c4e7, "COLLECTIBLE"))
		{
			var_aa6073.current_value = self GetDStat("PlayerStatsByMap", function_9065d6ea(), "accolades", var_8c03895d.index, "highestValue");
		}
		self function_de8b9e62(var_8c03895d.index, var_aa6073.current_value, 1);
		if(function_994b29af(var_5ba0c4e7))
		{
			var_aa6073.gives_unlock_token = 1;
		}
		var_aa6073.award_xp = function_7efd1da3(var_5ba0c4e7);
		self set_accolade(var_5ba0c4e7, var_aa6073);
	}
	/#
		self.accolades_dirty = 1;
	#/
	self Decorations::function_e72fc18();
	self savegame::function_bee608f0("last_mission", function_4794dda());
}

/*
	Name: check_collectibles_accolade
	Namespace: namespace_fe079222
	Checksum: 0x45C94B93
	Offset: 0x1EE0
	Size: 0xDF
	Parameters: 0
	Flags: None
*/
function check_collectibles_accolade()
{
	self endon("disconnect");
	self endon("death");
	collectible_accolade = self get_accolade(level.default_accolades_prefix + "COLLECTIBLE");
	while(1)
	{
		self waittill("picked_up_collectible");
		if(self function_3a7fd23a(collectible_accolade.index) != 0)
		{
			continue;
		}
		self function_3bbb909b(collectible_accolade.index, 1, 1);
		self increment(level.default_accolades_prefix + "COLLECTIBLE");
	}
}

/*
	Name: check_damage_accolade
	Namespace: namespace_fe079222
	Checksum: 0xB0AA4C2
	Offset: 0x1FC8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function check_damage_accolade()
{
	self endon("disconnect");
	var_b71e3573 = self get_accolade(level.default_accolades_prefix + "UNTOUCHED");
	if(var_b71e3573.current_value == 0)
	{
		return;
	}
	self util::waittill_any("death", "increment_untouched");
	self increment(level.default_accolades_prefix + "UNTOUCHED");
	self function_de8b9e62(var_b71e3573.index, var_b71e3573.current_value, 1);
}

/*
	Name: check_score_accolade
	Namespace: namespace_fe079222
	Checksum: 0x7876C739
	Offset: 0x20A8
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function check_score_accolade()
{
	self endon("disconnect");
	self endon("death");
	last_score = self GetDStat("PlayerStatsByMap", function_9065d6ea(), "currentStats", "SCORE");
	score_accolade = self get_accolade(level.default_accolades_prefix + "SCORE");
	accolade_state = self function_3a7fd23a(score_accolade.index);
	if(isdefined(accolade_state) && accolade_state)
	{
		return;
	}
	while(1)
	{
		self waittill("score_event");
		last_score = score_accolade.current_value;
		new_score = self.pers["score"];
		scoreDiff = new_score - last_score;
		self increment(level.default_accolades_prefix + "SCORE", scoreDiff, 1);
	}
}

/*
	Name: on_player_connect
	Namespace: namespace_fe079222
	Checksum: 0x1850FCE4
	Offset: 0x2210
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function on_player_connect()
{
	if(accoladesdisabled())
	{
		return;
	}
	self clear_noncheckpoint_accolades();
	if(!function_7ddcd415() && level.skipto_point == level.default_skipto)
	{
		self _reset_incomplete_accolades();
	}
	/#
		if(isdefined(level.var_fe079222))
		{
			self.accolades_dirty = 1;
			self devgui_init();
			self thread manage_accolades_gui();
		}
	#/
}

/*
	Name: on_player_spawned
	Namespace: namespace_fe079222
	Checksum: 0xDA95208F
	Offset: 0x22D0
	Size: 0x15B
	Parameters: 0
	Flags: None
*/
function on_player_spawned()
{
	if(self savegame::function_36adbb9c("last_mission") === function_4794dda())
	{
		foreach(var_8c03895d in level.var_fe079222)
		{
			if(isdefined(var_8c03895d.var_1b47f988))
			{
				self thread function_35e3d94b(var_5ba0c4e7, var_8c03895d.var_1b47f988);
			}
		}
	}
	else
	{
		self _reset_incomplete_accolades();
	}
	self thread commit_checkpoint_accolades();
	self thread check_damage_accolade();
	self thread check_collectibles_accolade();
	self thread check_score_accolade();
}

/*
	Name: clear_noncheckpoint_accolades
	Namespace: namespace_fe079222
	Checksum: 0xFE05E667
	Offset: 0x2438
	Size: 0xA9
	Parameters: 0
	Flags: None
*/
function clear_noncheckpoint_accolades()
{
	if(!isdefined(level.var_fe079222))
	{
		return;
	}
	foreach(var_8c03895d in level.var_fe079222)
	{
		self clearaccoladenoncheckpointdata(var_8c03895d.index);
	}
}

/*
	Name: on_player_disconnect
	Namespace: namespace_fe079222
	Checksum: 0xD095E079
	Offset: 0x24F0
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function on_player_disconnect()
{
	foreach(var_8c03895d in level.var_fe079222)
	{
		if(self function_3a7fd23a(var_8c03895d.index) == 1)
		{
			self function_8992915e(var_8c03895d.index, 2);
		}
	}
	self savegame::function_bee608f0("accolades", undefined);
	self savegame::function_bee608f0("last_mission", "");
}

/*
	Name: manage_accolades_gui
	Namespace: namespace_fe079222
	Checksum: 0xBE206A2D
	Offset: 0x2610
	Size: 0x133
	Parameters: 0
	Flags: None
*/
function manage_accolades_gui()
{
	/#
		self endon("disconnect");
		while(1)
		{
			cmd = GetDvarString("Dev Block strings are not supported");
			if(isdefined(cmd) && cmd != "Dev Block strings are not supported")
			{
				self debug_increment_accolade(Int(cmd));
			}
			if(cmd != "Dev Block strings are not supported")
			{
				SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			if(self.accolades_dirty == 1 && isdefined(self.accolades_text))
			{
				destroy_accolades_text();
			}
			if(GetDvarInt("Dev Block strings are not supported") > 0)
			{
				self print_accolades();
			}
			else
			{
				self notify("destroy_accolades");
			}
			wait(1);
		}
	#/
}

/*
	Name: destroy_accolades_text_helper
	Namespace: namespace_fe079222
	Checksum: 0xC1669079
	Offset: 0x2750
	Size: 0x33
	Parameters: 0
	Flags: None
*/
function destroy_accolades_text_helper()
{
	/#
		self endon("disconnect");
		self waittill("destroy_accolades");
		destroy_accolades_text();
	#/
}

/*
	Name: destroy_accolades_text
	Namespace: namespace_fe079222
	Checksum: 0x8C549448
	Offset: 0x2790
	Size: 0x1C1
	Parameters: 0
	Flags: None
*/
function destroy_accolades_text()
{
	/#
		if(isdefined(self.accolades_text))
		{
			foreach(accolades_text in self.accolades_text)
			{
				accolades_text destroy();
			}
			foreach(accolades_count_text in self.accolades_count_text)
			{
				accolades_count_text destroy();
			}
			foreach(var_eda8fa83 in self.accolades_stats_text)
			{
				var_eda8fa83 destroy();
			}
			self.accolades_text = undefined;
			self.accolades_count_text = undefined;
			self.accolades_stats_text = undefined;
		}
	#/
}

/*
	Name: print_accolades
	Namespace: namespace_fe079222
	Checksum: 0xA3AABF7D
	Offset: 0x2960
	Size: 0x8CF
	Parameters: 0
	Flags: None
*/
function print_accolades()
{
	/#
		x = 0;
		y = 100;
		accolades_string = "Dev Block strings are not supported";
		accolades_count_string = "Dev Block strings are not supported";
		accolades_stats_string = "Dev Block strings are not supported";
		if(!isdefined(level.var_fe079222) || isdefined(self.accolades_text) || !isdefined(self savegame::function_36adbb9c("Dev Block strings are not supported")))
		{
			return;
		}
		self.accolades_text = [];
		self.accolades_count_text = [];
		self.accolades_stats_text = [];
		num_accolades = 0;
		accolades_text = newClientHudElem(self);
		accolades_count_text = newClientHudElem(self);
		accolades_stats_text = newClientHudElem(self);
		foreach(var_8c03895d in level.var_fe079222)
		{
			if(num_accolades % 7 == 6)
			{
				accolades_text.x = x + 2;
				accolades_text.y = y + 2;
				accolades_text.alignX = "Dev Block strings are not supported";
				accolades_text.alignY = "Dev Block strings are not supported";
				accolades_text setText(accolades_string);
				accolades_text.hidewheninmenu = 1;
				accolades_text.font = "Dev Block strings are not supported";
				accolades_text.foreground = 1;
				accolades_count_text.x = x + 120;
				accolades_count_text.y = y + 2;
				accolades_count_text.alignX = "Dev Block strings are not supported";
				accolades_count_text.alignY = "Dev Block strings are not supported";
				accolades_count_text setText(accolades_count_string);
				accolades_count_text.hidewheninmenu = 1;
				accolades_count_text.font = "Dev Block strings are not supported";
				accolades_count_text.foreground = 1;
				accolades_stats_text.x = x + 180;
				accolades_stats_text.y = y + 2;
				accolades_stats_text.alignX = "Dev Block strings are not supported";
				accolades_stats_text.alignY = "Dev Block strings are not supported";
				accolades_stats_text setText(accolades_stats_string);
				accolades_stats_text.hidewheninmenu = 1;
				accolades_stats_text.font = "Dev Block strings are not supported";
				accolades_stats_text.foreground = 1;
				self.accolades_text[self.accolades_text.size] = accolades_text;
				self.accolades_count_text[self.accolades_count_text.size] = accolades_count_text;
				self.accolades_stats_text[self.accolades_stats_text.size] = accolades_stats_text;
				accolades_text = newClientHudElem(self);
				accolades_count_text = newClientHudElem(self);
				accolades_stats_text = newClientHudElem(self);
				y = y + 73;
				num_accolades = 1;
				accolades_string = var_5ba0c4e7 + "Dev Block strings are not supported";
				accolades_count_string = self get_accolade(var_5ba0c4e7).current_value;
				if(isdefined(self get_accolade(var_5ba0c4e7).var_8a644747) && self get_accolade(var_5ba0c4e7).var_8a644747)
				{
					accolades_count_string = accolades_count_string + "Dev Block strings are not supported";
				}
				accolades_count_string = accolades_count_string + "Dev Block strings are not supported";
				accolades_stats_string = self function_520227e6(var_8c03895d.index) + "Dev Block strings are not supported";
				continue;
			}
			accolades_string = accolades_string + var_5ba0c4e7 + "Dev Block strings are not supported";
			accolades_count_string = accolades_count_string + self get_accolade(var_5ba0c4e7).current_value;
			if(isdefined(self get_accolade(var_5ba0c4e7).var_8a644747) && self get_accolade(var_5ba0c4e7).var_8a644747)
			{
				accolades_count_string = accolades_count_string + "Dev Block strings are not supported";
			}
			accolades_count_string = accolades_count_string + "Dev Block strings are not supported";
			accolades_stats_string = accolades_stats_string + self function_520227e6(var_8c03895d.index) + "Dev Block strings are not supported";
			num_accolades++;
		}
		accolades_text.x = x + 2;
		accolades_text.y = y + 2;
		accolades_text.alignX = "Dev Block strings are not supported";
		accolades_text.alignY = "Dev Block strings are not supported";
		accolades_text setText(accolades_string);
		accolades_text.hidewheninmenu = 1;
		accolades_text.font = "Dev Block strings are not supported";
		accolades_text.foreground = 1;
		accolades_count_text.x = x + 120;
		accolades_count_text.y = y + 2;
		accolades_count_text.alignX = "Dev Block strings are not supported";
		accolades_count_text.alignY = "Dev Block strings are not supported";
		accolades_count_text setText(accolades_count_string);
		accolades_count_text.hidewheninmenu = 1;
		accolades_count_text.font = "Dev Block strings are not supported";
		accolades_count_text.foreground = 1;
		accolades_stats_text.x = x + 180;
		accolades_stats_text.y = y + 2;
		accolades_stats_text.alignX = "Dev Block strings are not supported";
		accolades_stats_text.alignY = "Dev Block strings are not supported";
		accolades_stats_text setText(accolades_stats_string);
		accolades_stats_text.hidewheninmenu = 1;
		accolades_stats_text.font = "Dev Block strings are not supported";
		accolades_stats_text.foreground = 1;
		self.accolades_text[self.accolades_text.size] = accolades_text;
		self.accolades_count_text[self.accolades_count_text.size] = accolades_count_text;
		self.accolades_stats_text[self.accolades_stats_text.size] = accolades_stats_text;
		self thread destroy_accolades_text_helper();
		self.accolades_dirty = 0;
	#/
}

/*
	Name: debug_increment_accolade
	Namespace: namespace_fe079222
	Checksum: 0xB70A2CFE
	Offset: 0x3238
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function debug_increment_accolade(accolade_index)
{
	/#
		current_index = 0;
		foreach(var_8c03895d in level.var_fe079222)
		{
			if(current_index == accolade_index)
			{
				self increment(var_5ba0c4e7);
				break;
			}
			current_index++;
		}
	#/
}

/*
	Name: devgui_init
	Namespace: namespace_fe079222
	Checksum: 0x76270097
	Offset: 0x3308
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function devgui_init()
{
	/#
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		SetDvar("Dev Block strings are not supported", "Dev Block strings are not supported");
		AddDebugCommand("Dev Block strings are not supported");
		for(i = 0; i < level.var_fe079222.size; i++)
		{
			AddDebugCommand("Dev Block strings are not supported" + i + "Dev Block strings are not supported" + i + "Dev Block strings are not supported" + i + "Dev Block strings are not supported");
		}
	#/
}

/*
	Name: commit_checkpoint_accolades
	Namespace: namespace_fe079222
	Checksum: 0xBE13E843
	Offset: 0x33E8
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function commit_checkpoint_accolades()
{
	self endon("disconnect");
	self endon("death");
	return;
	while(1)
	{
		level util::waittill_any("checkpoint_save", "_checkpoint_save_safe");
	}
}

/*
	Name: restore_checkpoint_accolades
	Namespace: namespace_fe079222
	Checksum: 0xF109D403
	Offset: 0x3440
	Size: 0x3EF
	Parameters: 0
	Flags: None
*/
function restore_checkpoint_accolades()
{
	self endon("disconnect");
	while(1)
	{
		level waittill("save_restore");
		if(function_3c63ee8())
		{
			continue;
		}
		foreach(e_player in level.players)
		{
			foreach(var_8c03895d in level.var_fe079222)
			{
				var_b71e3573 = e_player get_accolade(var_5ba0c4e7);
				accoladestatstate = e_player function_3a7fd23a(var_8c03895d.index);
				accoladenoncheckpointstate = e_player getaccoladenoncheckpointstate(var_8c03895d.index);
				accoladenoncheckpointvalue = e_player getaccoladenoncheckpointvalue(var_8c03895d.index);
				if(isdefined(accoladenoncheckpointstate) && accoladenoncheckpointstate && accoladestatstate == 0)
				{
					if(isdefined(var_b71e3573.gives_unlock_token) && var_b71e3573.gives_unlock_token)
					{
						e_player GiveUnlockToken(1);
					}
					e_player AddRankXPValue("award_accolade", var_b71e3573.award_xp);
					e_player AddPlayerStat("career_accolades", 1);
				}
				if(var_8c03895d.index == 2 || (isdefined(accoladenoncheckpointstate) && accoladenoncheckpointstate) && isdefined(accoladenoncheckpointvalue))
				{
					e_player function_8992915e(var_8c03895d.index, accoladenoncheckpointstate);
					var_b71e3573.var_8a644747 = isdefined(accoladenoncheckpointstate) && accoladenoncheckpointstate;
					e_player function_de8b9e62(var_8c03895d.index, accoladenoncheckpointvalue);
					e_player update_highest_value(var_8c03895d.index, accoladenoncheckpointvalue);
					var_b71e3573.current_value = accoladenoncheckpointvalue;
					continue;
				}
				if(var_8c03895d.index == 0 && isdefined(accoladenoncheckpointvalue))
				{
					e_player function_de8b9e62(var_8c03895d.index, accoladenoncheckpointvalue, 1);
					var_b71e3573.current_value = accoladenoncheckpointvalue;
				}
			}
			e_player Decorations::function_59f1fa79();
			/#
				e_player.accolades_dirty = 1;
			#/
		}
		UploadStats();
	}
}

/*
	Name: function_83f30558
	Namespace: namespace_fe079222
	Checksum: 0x3EAAC124
	Offset: 0x3838
	Size: 0x11B
	Parameters: 1
	Flags: None
*/
function function_83f30558(var_b71e3573)
{
	var_c3291c61 = self GetDStat("PlayerStatsByMap", function_9065d6ea(), "accolades", var_b71e3573.index, "highestValue");
	currentValue = var_b71e3573.current_value;
	if(!(isdefined(var_b71e3573.var_ab795acb) && var_b71e3573.var_ab795acb))
	{
		var_fd9588d9 = currentValue > var_c3291c61;
	}
	if(isdefined(var_fd9588d9) && var_fd9588d9)
	{
		self SetDStat("PlayerStatsByMap", function_9065d6ea(), "accolades", var_b71e3573.index, "highestValue", currentValue);
	}
}

/*
	Name: commit
	Namespace: namespace_fe079222
	Checksum: 0x52989734
	Offset: 0x3960
	Size: 0x3B3
	Parameters: 1
	Flags: None
*/
function commit(map_name)
{
	if(!isdefined(map_name))
	{
		map_name = level.script;
	}
	if(accoladesdisabled())
	{
		return;
	}
	if(self == level)
	{
		foreach(player in level.players)
		{
			player commit(map_name);
			player clear_noncheckpoint_accolades();
		}
	}
	else if(IsArray(self savegame::function_36adbb9c("accolades")))
	{
		foreach(var_8c03895d in level.var_fe079222)
		{
			var_b71e3573 = self get_accolade(var_5ba0c4e7);
			if(!isdefined(var_b71e3573) || self function_3a7fd23a(var_b71e3573.index) != 0)
			{
				continue;
			}
			if(var_b71e3573.index == 2)
			{
				var_40a77a3a = self collectibles::function_ccb1e08d(function_9065d6ea());
				while(var_b71e3573.current_value < var_40a77a3a)
				{
					self increment(var_5ba0c4e7);
				}
			}
			if(function_9ba543a3(var_5ba0c4e7, var_b71e3573.current_value))
			{
				if(var_b71e3573.index == 0 || var_b71e3573.index == 1 && !skipto::function_cb7247d8(map_name))
				{
					continue;
				}
				var_b71e3573.var_8a644747 = 1;
				self function_8992915e(var_b71e3573.index, 1);
				self function_de8b9e62(var_b71e3573.index, var_b71e3573.current_value, 1);
				if(isdefined(var_b71e3573.gives_unlock_token) && var_b71e3573.gives_unlock_token)
				{
					self GiveUnlockToken(1);
				}
				self AddPlayerStat("career_accolades", 1);
			}
		}
		self Decorations::function_59f1fa79();
	}
}


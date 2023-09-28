#using scripts\cp\_accolades;
#using scripts\cp\_skipto;
#using scripts\cp\gametypes\_save;

#namespace Decorations;

/*
	Name: playerhasdecoration
	Namespace: Decorations
	Checksum: 0xBE24EBC8
	Offset: 0x238
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function playerhasdecoration(decoration_name)
{
	a_decorations = self GetDecorations(1);
	foreach(decoration in a_decorations)
	{
		if(decoration.name == decoration_name)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_59f1fa79
	Namespace: Decorations
	Checksum: 0xC88625D6
	Offset: 0x300
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_59f1fa79(map_name)
{
	if(!isdefined(map_name))
	{
		map_name = function_9065d6ea();
	}
	a_accolades = self savegame::function_36adbb9c("accolades");
	if(isdefined(a_accolades))
	{
		foreach(var_b71e3573 in a_accolades)
		{
			if(!(isdefined(var_b71e3573.var_8a644747) && var_b71e3573.var_8a644747))
			{
				return 0;
			}
		}
		self SetDStat("PlayerStatsByMap", map_name, "allAccoladesComplete", 1);
	}
}

/*
	Name: function_e72fc18
	Namespace: Decorations
	Checksum: 0x22B99D7
	Offset: 0x430
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_e72fc18()
{
	mission_names = skipto::function_23eda99c();
	foreach(mission in mission_names)
	{
		if(!(isdefined(self GetDStat("PlayerStatsByMap", mission, "allAccoladesComplete")) && self GetDStat("PlayerStatsByMap", mission, "allAccoladesComplete")))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_45ddfa6
	Namespace: Decorations
	Checksum: 0xB2C3D069
	Offset: 0x530
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_45ddfa6()
{
	for(itemIndex = 100; itemIndex < 141; itemIndex++)
	{
		var_f62f7b55 = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, itemIndex, 17);
		if(var_f62f7b55 == "")
		{
			continue;
		}
		if(!self isItemPurchased(itemIndex))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_59727018
	Namespace: Decorations
	Checksum: 0x50CF07F1
	Offset: 0x5C8
	Size: 0x1F
	Parameters: 0
	Flags: None
*/
function function_59727018()
{
	return isdefined(self.var_d1b47d51) && self.var_d1b47d51 >= 35000;
}

/*
	Name: function_13cc355e
	Namespace: Decorations
	Checksum: 0xE2A2060B
	Offset: 0x5F0
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_13cc355e()
{
	maxRank = tableLookup("gamedata/tables/cp/cp_rankTable.csv", 0, "maxrank", 1);
	var_4223990f = Int(tableLookup("gamedata/tables/cp/cp_rankTable.csv", 0, maxRank, 2));
	return self GetDStat("PlayerStatsList", "RANKXP", "statValue") >= var_4223990f;
}

/*
	Name: function_7006b9ad
	Namespace: Decorations
	Checksum: 0x4AA8D7BD
	Offset: 0x6A0
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_7006b9ad()
{
	for(itemIndex = 1; itemIndex < 76; itemIndex++)
	{
		var_8e9deedf = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, itemIndex, 17);
		if(var_8e9deedf == "")
		{
			continue;
		}
		var_1976a117 = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, itemIndex, 4);
		if(!self isItemPurchased(itemIndex))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_931263b1
	Namespace: Decorations
	Checksum: 0x758A52D6
	Offset: 0x768
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function function_931263b1(difficulty)
{
	foreach(mission in skipto::function_23eda99c())
	{
		var_a4b6fa1f = self GetDStat("PlayerStatsByMap", mission, "highestStats", "HIGHEST_DIFFICULTY");
		if(var_a4b6fa1f < difficulty)
		{
			return 0;
		}
		checkpointused = self GetDStat("PlayerStatsByMap", mission, "checkpointUsed");
		if(isdefined(checkpointused) && checkpointused)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_2bc66a34
	Namespace: Decorations
	Checksum: 0x13458D59
	Offset: 0x890
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2bc66a34()
{
	kills = self GetDStat("PlayerStatsList", "KILLS", "statValue");
	if(kills >= 2000)
	{
		self GiveDecoration("cp_medal_kill_enemies");
	}
}

/*
	Name: function_7b01cb74
	Namespace: Decorations
	Checksum: 0x9417D87E
	Offset: 0x908
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_7b01cb74()
{
	for(itemIndex = 1; itemIndex < 60; itemIndex++)
	{
		var_4d26d5ca = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, itemIndex, 12);
		if(var_4d26d5ca == "-1")
		{
			continue;
		}
		var_1976a117 = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, itemIndex, 4);
		var_f41ce74f = TableLookupRowNum("gamedata/weapons/cp/cp_gunlevels.csv", 2, var_1976a117);
		if(var_f41ce74f == -1)
		{
			continue;
		}
		rankID = TableLookupColumnForRow("gamedata/weapons/cp/cp_gunlevels.csv", var_f41ce74f, 0);
		var_f554224b = TableLookupColumnForRow("gamedata/weapons/cp/cp_gunlevels.csv", var_f41ce74f, 2);
		var_3f3ab3c1 = var_f41ce74f;
		while(var_f554224b == var_1976a117)
		{
			rankID = TableLookupColumnForRow("gamedata/weapons/cp/cp_gunlevels.csv", var_3f3ab3c1, 0);
			var_3f3ab3c1++;
			var_f554224b = TableLookupColumnForRow("gamedata/weapons/cp/cp_gunlevels.csv", var_3f3ab3c1, 2);
		}
		var_b0863e9a = Int(rankID);
		var_b47d78c4 = self function_bc8e235e(itemIndex);
		if(!isdefined(var_b47d78c4))
		{
			var_b47d78c4 = 0;
		}
		if(var_b47d78c4 < var_b0863e9a)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_6cd12a29
	Namespace: Decorations
	Checksum: 0x3716A6F
	Offset: 0xB30
	Size: 0x1DD
	Parameters: 0
	Flags: None
*/
function function_6cd12a29()
{
	for(itemIndex = 1; itemIndex < 60; itemIndex++)
	{
		var_4d26d5ca = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, itemIndex, 12);
		if(var_4d26d5ca == "-1")
		{
			continue;
		}
		weapon_group = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, itemIndex, 2);
		if(weapon_group == "")
		{
			continue;
		}
		var_1976a117 = tableLookup("gamedata/stats/cp/cp_statstable.csv", 0, itemIndex, 4);
		if(var_1976a117 == "hero_annihilator" || var_1976a117 == "hero_pineapplegun")
		{
			continue;
		}
		var_c1b6a586 = TableLookupRowNum("gamedata/stats/cp/statsmilestones3.csv", 3, weapon_group);
		if(var_c1b6a586 == -1)
		{
			continue;
		}
		var_ed54f9d7 = tableLookup("gamedata/stats/cp/statsmilestones3.csv", 3, weapon_group, 1, 3, 2);
		var_15879d61 = Int(var_ed54f9d7);
		if(self GetDStat("ItemStats", itemIndex, "stats", "kills", "statValue") < var_15879d61)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_bea4ff57
	Namespace: Decorations
	Checksum: 0x9EC2B837
	Offset: 0xD18
	Size: 0x4D
	Parameters: 0
	Flags: None
*/
function function_bea4ff57()
{
	if(!function_13cc355e())
	{
		return 0;
	}
	if(!function_7b01cb74())
	{
		return 0;
	}
	if(!function_6cd12a29())
	{
		return 0;
	}
	return 1;
}


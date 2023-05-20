#using scripts\cp\_accolades;
#using scripts\cp\_skipto;
#using scripts\cp\gametypes\_save;

#namespace namespace_8f94416a;

/*
	Name: function_25328f50
	Namespace: namespace_8f94416a
	Checksum: 0xBE24EBC8
	Offset: 0x238
	Size: 0xBD
	Parameters: 1
	Flags: None
*/
function function_25328f50(var_aeda862b)
{
	var_3e91b40a = self function_e5e45ad4(1);
	foreach(var_edbb760b in var_3e91b40a)
	{
		if(var_edbb760b.var_4be20d44 == var_aeda862b)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_59f1fa79
	Namespace: namespace_8f94416a
	Checksum: 0xC88625D6
	Offset: 0x300
	Size: 0x123
	Parameters: 1
	Flags: None
*/
function function_59f1fa79(var_fb4674a9)
{
	if(!isdefined(var_fb4674a9))
	{
		var_fb4674a9 = function_9065d6ea();
	}
	var_ebb087c2 = self namespace_9f824288::function_36adbb9c("accolades");
	if(isdefined(var_ebb087c2))
	{
		foreach(var_b71e3573 in var_ebb087c2)
		{
			if(!(isdefined(var_b71e3573.var_8a644747) && var_b71e3573.var_8a644747))
			{
				return 0;
			}
		}
		self function_8f67433b("PlayerStatsByMap", var_fb4674a9, "allAccoladesComplete", 1);
	}
}

/*
	Name: function_e72fc18
	Namespace: namespace_8f94416a
	Checksum: 0x22B99D7
	Offset: 0x430
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_e72fc18()
{
	var_c02de660 = namespace_1d795d47::function_23eda99c();
	foreach(var_1a443ebd in var_c02de660)
	{
		if(!(isdefined(self function_84368297("PlayerStatsByMap", var_1a443ebd, "allAccoladesComplete")) && self function_84368297("PlayerStatsByMap", var_1a443ebd, "allAccoladesComplete")))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_45ddfa6
	Namespace: namespace_8f94416a
	Checksum: 0xB2C3D069
	Offset: 0x530
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_45ddfa6()
{
	for(var_1630584c = 100; var_1630584c < 141; var_1630584c++)
	{
		var_f62f7b55 = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_1630584c, 17);
		if(var_f62f7b55 == "")
		{
			continue;
		}
		if(!self function_1c4cc403(var_1630584c))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_59727018
	Namespace: namespace_8f94416a
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
	Namespace: namespace_8f94416a
	Checksum: 0xE2A2060B
	Offset: 0x5F0
	Size: 0xA7
	Parameters: 0
	Flags: None
*/
function function_13cc355e()
{
	var_f4b99bdf = function_d4cc1345("gamedata/tables/cp/cp_rankTable.csv", 0, "maxrank", 1);
	var_4223990f = function_b6b79a0(function_d4cc1345("gamedata/tables/cp/cp_rankTable.csv", 0, var_f4b99bdf, 2));
	return self function_84368297("PlayerStatsList", "RANKXP", "statValue") >= var_4223990f;
}

/*
	Name: function_7006b9ad
	Namespace: namespace_8f94416a
	Checksum: 0x4AA8D7BD
	Offset: 0x6A0
	Size: 0xBF
	Parameters: 0
	Flags: None
*/
function function_7006b9ad()
{
	for(var_1630584c = 1; var_1630584c < 76; var_1630584c++)
	{
		var_8e9deedf = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_1630584c, 17);
		if(var_8e9deedf == "")
		{
			continue;
		}
		var_1976a117 = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_1630584c, 4);
		if(!self function_1c4cc403(var_1630584c))
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_931263b1
	Namespace: namespace_8f94416a
	Checksum: 0x758A52D6
	Offset: 0x768
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function function_931263b1(var_3f0972ca)
{
	foreach(var_1a443ebd in namespace_1d795d47::function_23eda99c())
	{
		var_a4b6fa1f = self function_84368297("PlayerStatsByMap", var_1a443ebd, "highestStats", "HIGHEST_DIFFICULTY");
		if(var_a4b6fa1f < var_3f0972ca)
		{
			return 0;
		}
		var_346332b8 = self function_84368297("PlayerStatsByMap", var_1a443ebd, "checkpointUsed");
		if(isdefined(var_346332b8) && var_346332b8)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_2bc66a34
	Namespace: namespace_8f94416a
	Checksum: 0x13458D59
	Offset: 0x890
	Size: 0x6B
	Parameters: 0
	Flags: None
*/
function function_2bc66a34()
{
	var_ec0b278c = self function_84368297("PlayerStatsList", "KILLS", "statValue");
	if(var_ec0b278c >= 2000)
	{
		self function_f07412c0("cp_medal_kill_enemies");
	}
}

/*
	Name: function_7b01cb74
	Namespace: namespace_8f94416a
	Checksum: 0x9417D87E
	Offset: 0x908
	Size: 0x219
	Parameters: 0
	Flags: None
*/
function function_7b01cb74()
{
	for(var_1630584c = 1; var_1630584c < 60; var_1630584c++)
	{
		var_4d26d5ca = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_1630584c, 12);
		if(var_4d26d5ca == "-1")
		{
			continue;
		}
		var_1976a117 = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_1630584c, 4);
		var_f41ce74f = function_8f1ef9("gamedata/weapons/cp/cp_gunlevels.csv", 2, var_1976a117);
		if(var_f41ce74f == -1)
		{
			continue;
		}
		var_30934be8 = function_5a31ce6c("gamedata/weapons/cp/cp_gunlevels.csv", var_f41ce74f, 0);
		var_f554224b = function_5a31ce6c("gamedata/weapons/cp/cp_gunlevels.csv", var_f41ce74f, 2);
		var_3f3ab3c1 = var_f41ce74f;
		while(var_f554224b == var_1976a117)
		{
			var_30934be8 = function_5a31ce6c("gamedata/weapons/cp/cp_gunlevels.csv", var_3f3ab3c1, 0);
			var_3f3ab3c1++;
			var_f554224b = function_5a31ce6c("gamedata/weapons/cp/cp_gunlevels.csv", var_3f3ab3c1, 2);
		}
		var_b0863e9a = function_b6b79a0(var_30934be8);
		var_b47d78c4 = self function_bc8e235e(var_1630584c);
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
	Namespace: namespace_8f94416a
	Checksum: 0x3716A6F
	Offset: 0xB30
	Size: 0x1DD
	Parameters: 0
	Flags: None
*/
function function_6cd12a29()
{
	for(var_1630584c = 1; var_1630584c < 60; var_1630584c++)
	{
		var_4d26d5ca = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_1630584c, 12);
		if(var_4d26d5ca == "-1")
		{
			continue;
		}
		var_b3820a09 = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_1630584c, 2);
		if(var_b3820a09 == "")
		{
			continue;
		}
		var_1976a117 = function_d4cc1345("gamedata/stats/cp/cp_statstable.csv", 0, var_1630584c, 4);
		if(var_1976a117 == "hero_annihilator" || var_1976a117 == "hero_pineapplegun")
		{
			continue;
		}
		var_c1b6a586 = function_8f1ef9("gamedata/stats/cp/statsmilestones3.csv", 3, var_b3820a09);
		if(var_c1b6a586 == -1)
		{
			continue;
		}
		var_ed54f9d7 = function_d4cc1345("gamedata/stats/cp/statsmilestones3.csv", 3, var_b3820a09, 1, 3, 2);
		var_15879d61 = function_b6b79a0(var_ed54f9d7);
		if(self function_84368297("ItemStats", var_1630584c, "stats", "kills", "statValue") < var_15879d61)
		{
			return 0;
		}
	}
	return 1;
}

/*
	Name: function_bea4ff57
	Namespace: namespace_8f94416a
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


#using scripts\codescripts\struct;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\flagsys_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_fbc778c5;

/*
	Name: function_c35e6aab
	Namespace: namespace_fbc778c5
	Checksum: 0xC45E0C15
	Offset: 0x428
	Size: 0x161
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	function_2ea898a8();
	level.var_c1aa5253["swarm_attack"] = "weapon/fx_ability_firefly_attack";
	level.var_c1aa5253["swarm_attack_dmg"] = "weapon/fx_ability_firefly_attack_damage";
	level.var_c1aa5253["swarm_hunt"] = "weapon/fx_ability_firefly_hunting";
	level.var_c1aa5253["swarm_hunt_trans_to_move"] = "weapon/fx_ability_firefly_travel";
	level.var_c1aa5253["swarm_die"] = "weapon/fx_ability_firefly_swarm_die";
	level.var_c1aa5253["swarm_move"] = "weapon/fx_ability_firefly_travel";
	level.var_c1aa5253["upgraded_swarm_attack"] = "weapon/fx_ability_firebug_attack";
	level.var_c1aa5253["upgraded_swarm_attack_dmg"] = "weapon/fx_ability_firebug_attack_damage";
	level.var_c1aa5253["upgraded_swarm_hunt"] = "weapon/fx_ability_firebug_hunting";
	level.var_c1aa5253["upgraded_swarm_hunt_trans_to_move"] = "weapon/fx_ability_firebug_travel";
	level.var_c1aa5253["upgraded_swarm_die"] = "weapon/fx_ability_firebug_swarm_die";
	level.var_c1aa5253["upgraded_swarm_move"] = "weapon/fx_ability_firebug_travel";
}

/*
	Name: function_2ea898a8
	Namespace: namespace_fbc778c5
	Checksum: 0xD9E1CC2
	Offset: 0x598
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("vehicle", "firefly_state", 1, 4, "int", &function_44167a82, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "firefly_state", 1, 4, "int", &function_595dab90, 0, 0);
}

/*
	Name: function_44167a82
	Namespace: namespace_fbc778c5
	Checksum: 0x88F23BF1
	Offset: 0x638
	Size: 0x36F
	Parameters: 7
	Flags: None
*/
function function_44167a82(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0 || var_9193c732 == var_ade4d29d)
	{
		return;
	}
	if(isdefined(self.var_5753664b))
	{
		function_d555a113(var_ec74b091, self.var_5753664b);
		self.var_5753664b = undefined;
	}
	switch(var_9193c732)
	{
		case 1:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["swarm_hunt"], self, "tag_origin");
			break;
		}
		case 2:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["swarm_hunt_trans_to_move"], self, "tag_origin");
			break;
		}
		case 3:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["swarm_move"], self, "tag_origin");
			break;
		}
		case 5:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["swarm_die"], self, "tag_origin");
			self function_921a1574(0, "gdt_firefly_die");
			break;
		}
		case 6:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["upgraded_swarm_hunt"], self, "tag_origin");
			break;
		}
		case 7:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["upgraded_swarm_hunt_trans_to_move"], self, "tag_origin");
			break;
		}
		case 8:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["upgraded_swarm_move"], self, "tag_origin");
			break;
		}
		case 10:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["upgraded_swarm_die"], self, "tag_origin");
			self function_921a1574(0, "gdt_firefly_die");
			break;
		}
	}
	if(function_27c72c1b())
	{
		if(isdefined(self.var_5753664b))
		{
			function_6af43dcb(var_ec74b091, self.var_5753664b, 1);
		}
	}
	self.var_615e3c8f = var_9193c732;
}

/*
	Name: function_595dab90
	Namespace: namespace_fbc778c5
	Checksum: 0xD8A5393
	Offset: 0x9B0
	Size: 0x307
	Parameters: 7
	Flags: None
*/
function function_595dab90(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 0 || var_9193c732 == var_ade4d29d)
	{
		return;
	}
	if(isdefined(self.var_5753664b))
	{
		function_d555a113(var_ec74b091, self.var_5753664b);
		self.var_5753664b = undefined;
	}
	switch(var_9193c732)
	{
		case 4:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["swarm_attack_dmg"], self, "j_neck");
			self.var_9a18ebba = self function_c2931a36("gdt_firefly_attack_lp", 0.5);
			break;
		}
		case 9:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["upgraded_swarm_attack_dmg"], self, "j_neck");
			self.var_9a18ebba = self function_c2931a36("gdt_firefly_attack_fire_lp", 0.5);
			break;
		}
		case 5:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["swarm_die"], self, "j_neck");
			self function_921a1574(0, "gdt_firefly_die");
			if(isdefined(self.var_9a18ebba))
			{
				self function_eaa69754(self.var_9a18ebba);
			}
			break;
		}
		case 10:
		{
			self.var_5753664b = function_da6acfd2(var_ec74b091, level.var_c1aa5253["upgraded_swarm_die"], self, "j_neck");
			self function_921a1574(0, "gdt_firefly_die");
			if(isdefined(self.var_9a18ebba))
			{
				self function_eaa69754(self.var_9a18ebba);
			}
			break;
		}
		case default:
		{
			break;
		}
	}
	if(function_27c72c1b())
	{
		if(isdefined(self.var_5753664b))
		{
			function_6af43dcb(var_ec74b091, self.var_5753664b, 1);
		}
	}
	self.var_615e3c8f = var_9193c732;
}


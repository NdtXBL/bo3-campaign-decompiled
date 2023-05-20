#using scripts\codescripts\struct;
#using scripts\shared\util_shared;

#namespace namespace_7df5be44;

/*
	Name: function_c35e6aab
	Namespace: namespace_7df5be44
	Checksum: 0x3D9A17FE
	Offset: 0xE8
	Size: 0x25
	Parameters: 1
	Flags: None
*/
function function_c35e6aab(var_ec74b091)
{
	level.var_c1aa5253["fx_claymore_laser"] = "_t6/weapon/claymore/fx_claymore_laser";
}

/*
	Name: function_ab1f9ea1
	Namespace: namespace_7df5be44
	Checksum: 0x6F4FCF8C
	Offset: 0x118
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_ab1f9ea1(var_ec74b091)
{
	self endon("hash_d5da096");
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	while(1)
	{
		if(isdefined(self.var_5ff63112) && self.var_5ff63112)
		{
			wait(0.1);
			continue;
		}
		self.var_75c6ead3 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["fx_claymore_laser"], self, "tag_fx");
		self waittill("hash_5ff63112");
		function_d555a113(var_ec74b091, self.var_75c6ead3);
	}
}


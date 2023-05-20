#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\filter_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;
#using scripts\shared\vehicle_shared;

#namespace namespace_a28cc5ab;

/*
	Name: function_2dc19561
	Namespace: namespace_a28cc5ab
	Checksum: 0x110C29CB
	Offset: 0x1C0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("siegebot_theia", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_a28cc5ab
	Checksum: 0xDF954525
	Offset: 0x200
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_96fa87af::function_74adaefb("siegebot_theia", &function_ef842362);
	namespace_71e9cb84::function_50f16166("vehicle", "sarah_rumble_on_landing", 1, 1, "counter", &function_1af24cf2, 0, 0);
	namespace_71e9cb84::function_50f16166("vehicle", "sarah_minigun_spin", 1, 1, "int", &function_e290aa8d, 0, 0);
}

/*
	Name: function_ef842362
	Namespace: namespace_a28cc5ab
	Checksum: 0xF1DAA58E
	Offset: 0x2C8
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_ef842362(var_ec74b091)
{
}

/*
	Name: function_1af24cf2
	Namespace: namespace_a28cc5ab
	Checksum: 0x5B92FA25
	Offset: 0x2E0
	Size: 0x5B
	Parameters: 7
	Flags: None
*/
function function_1af24cf2(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self function_e2af603e(var_ec74b091, "cp_infection_sarah_battle_land");
}

/*
	Name: function_e290aa8d
	Namespace: namespace_a28cc5ab
	Checksum: 0x3ABFB80E
	Offset: 0x348
	Size: 0xEB
	Parameters: 7
	Flags: None
*/
function function_e290aa8d(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(self.var_279dd9e7))
	{
		return;
	}
	var_c1239d26 = namespace_14b42b8a::function_b7af54ae("vehiclecustomsettings", self.var_279dd9e7);
	if(!isdefined(var_c1239d26))
	{
		return;
	}
	if(isdefined(self.var_2e47b303))
	{
		function_28573e36(var_ec74b091, self.var_2e47b303);
	}
	if(var_9193c732)
	{
		self.var_2e47b303 = function_da6acfd2(var_ec74b091, var_c1239d26.var_953198d9, self, var_c1239d26.var_d46638ca);
	}
}


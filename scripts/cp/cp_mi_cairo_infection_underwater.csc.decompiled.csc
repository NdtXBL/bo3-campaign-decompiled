#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\shared\array_shared;
#using scripts\shared\clientfield_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_bcdc229e;

/*
	Name: function_d290ebfa
	Namespace: namespace_bcdc229e
	Checksum: 0x443E33B3
	Offset: 0x2F0
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	function_2ea898a8();
}

/*
	Name: function_2ea898a8
	Namespace: namespace_bcdc229e
	Checksum: 0x4D4E0D61
	Offset: 0x310
	Size: 0x93
	Parameters: 0
	Flags: None
*/
function function_2ea898a8()
{
	namespace_71e9cb84::function_50f16166("world", "infection_underwater_debris", 1, 1, "int", &function_e186ab41, 1, 1);
	namespace_71e9cb84::function_50f16166("toplayer", "water_motes", 1, 1, "int", &function_5cefaf77, 0, 0);
}

/*
	Name: function_e186ab41
	Namespace: namespace_bcdc229e
	Checksum: 0x453681C2
	Offset: 0x3B0
	Size: 0x149
	Parameters: 7
	Flags: None
*/
function function_e186ab41(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(!isdefined(var_9193c732))
	{
		return;
	}
	if(var_ade4d29d != var_9193c732)
	{
		var_5ddef2e5 = function_d4b4bd92();
		foreach(var_5dc5e20a in var_5ddef2e5)
		{
			var_ae6a34c0 = var_5dc5e20a function_8448e0ee();
			if(var_9193c732)
			{
				var_5dc5e20a thread function_c6db22a1(var_ae6a34c0);
				continue;
			}
			var_5dc5e20a thread function_1c0537db(var_ae6a34c0);
		}
	}
}

/*
	Name: function_c6db22a1
	Namespace: namespace_bcdc229e
	Checksum: 0xE087F70D
	Offset: 0x508
	Size: 0x433
	Parameters: 1
	Flags: None
*/
function function_c6db22a1(var_ec74b091)
{
	var_55750b30 = [];
	level.var_c1aa5253["bubbles_pews"] = "water/fx_water_bubbles_debris_50x10";
	level.var_c1aa5253["bubbles_body"] = "water/fx_water_bubbles_debris_body";
	level.var_c1aa5253["bubbles_books"] = "water/fx_water_bubbles_debris_sm";
	var_c7b6e8e4 = namespace_14b42b8a::function_7faf4c39("underwater_debris");
	for(var_c957f6b6 = 0; var_c957f6b6 < var_c7b6e8e4.size; var_c957f6b6++)
	{
		if(isdefined(var_c7b6e8e4[var_c957f6b6].var_6df9264))
		{
			var_5aeadf3 = function_9b7fda5e(var_ec74b091, var_c7b6e8e4[var_c957f6b6].var_722885f3, "script_model");
			var_5aeadf3 function_e48f905e(var_c7b6e8e4[var_c957f6b6].var_6df9264);
			var_5aeadf3.var_170527fb = var_c7b6e8e4[var_c957f6b6].var_170527fb;
			if(var_5aeadf3.var_6df9264 === "c_ger_winter_soldier_1_body")
			{
				var_5aeadf3 thread namespace_cc27597::function_43718187("cin_gen_ambient_float01", var_5aeadf3);
				var_5aeadf3.var_b3f6e066 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["bubbles_body"], var_5aeadf3, "tag_origin");
			}
			else if(var_5aeadf3.var_6df9264 === "c_ger_winter_soldier_2_body")
			{
				var_5aeadf3 thread namespace_cc27597::function_43718187("cin_gen_ambient_float02", var_5aeadf3);
				var_5aeadf3.var_b3f6e066 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["bubbles_body"], var_5aeadf3, "tag_origin");
			}
			else if(var_5aeadf3.var_6df9264 === "p7_church_pew_01")
			{
				var_5aeadf3.var_b3f6e066 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["bubbles_pews"], var_5aeadf3, "tag_origin");
			}
			else if(var_5aeadf3.var_6df9264 === "p7_book_vintage_02_burn")
			{
				var_5aeadf3.var_b3f6e066 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["bubbles_books"], var_5aeadf3, "tag_origin");
			}
			else if(var_5aeadf3.var_6df9264 === "p7_book_vintage_open_01_burn")
			{
				var_5aeadf3.var_b3f6e066 = function_da6acfd2(var_ec74b091, level.var_c1aa5253["bubbles_books"], var_5aeadf3, "tag_origin");
			}
			if(isdefined(var_c7b6e8e4[var_c957f6b6].var_6ab6f4fd))
			{
				var_5aeadf3.var_6ab6f4fd = var_c7b6e8e4[var_c957f6b6].var_6ab6f4fd;
			}
			if(isdefined(var_c7b6e8e4[var_c957f6b6].var_caae374e))
			{
				var_5aeadf3.var_caae374e = var_c7b6e8e4[var_c957f6b6].var_caae374e;
			}
			namespace_84970cc4::function_69554b3e(var_55750b30, var_5aeadf3, 0);
		}
	}
	namespace_84970cc4::function_966ecb29(var_55750b30, &function_7c14204);
}

/*
	Name: function_7c14204
	Namespace: namespace_bcdc229e
	Checksum: 0xBD01168A
	Offset: 0x948
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_7c14204()
{
	level endon("hash_33a3e0a5");
	var_d7115b10 = function_e1dc201c(self.var_722885f3, self.var_722885f3 + VectorScale((0, 0, -1), 1500), 0, undefined);
	self function_a96a2721(var_d7115b10["position"], 60);
	while(1)
	{
		var_60db70fa = function_72a94f05(4, 6);
		self function_c0b6566f(self.var_6ab6f4fd + (function_72a94f05(-30, 30), function_72a94f05(-30, 30), function_72a94f05(-30, 30)), var_60db70fa);
		self waittill("hash_6654e4f4");
	}
}

/*
	Name: function_1c0537db
	Namespace: namespace_bcdc229e
	Checksum: 0x9C1893C3
	Offset: 0xA78
	Size: 0x133
	Parameters: 1
	Flags: None
*/
function function_1c0537db(var_ec74b091)
{
	var_4b2f4450 = function_99201f25(var_ec74b091, "underwater_debris", "targetname");
	if(isdefined(var_4b2f4450))
	{
		for(var_c957f6b6 = 0; var_c957f6b6 < var_4b2f4450.size; var_c957f6b6++)
		{
			if(var_4b2f4450[var_c957f6b6] namespace_cc27597::function_367f8966())
			{
				var_4b2f4450[var_c957f6b6] namespace_cc27597::function_fcf56ab5();
			}
			if(isdefined(var_4b2f4450[var_c957f6b6].var_b3f6e066))
			{
				function_28573e36(var_ec74b091, var_4b2f4450[var_c957f6b6].var_b3f6e066, 0);
				var_4b2f4450[var_c957f6b6].var_b3f6e066 = undefined;
			}
			var_4b2f4450[var_c957f6b6] function_dc8c8404();
		}
	}
	function_d92493fb(var_ec74b091);
}

/*
	Name: function_5cefaf77
	Namespace: namespace_bcdc229e
	Checksum: 0xF898CFAF
	Offset: 0xBB8
	Size: 0xB3
	Parameters: 7
	Flags: None
*/
function function_5cefaf77(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 != 0)
	{
		self.var_8e8c7340 = function_2e9c26ef(var_ec74b091, level.var_c1aa5253["water_motes"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	}
	else if(isdefined(self.var_8e8c7340))
	{
		function_28573e36(var_ec74b091, self.var_8e8c7340, 1);
	}
}


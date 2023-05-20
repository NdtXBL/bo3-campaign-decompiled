#using scripts\codescripts\struct;

#namespace namespace_5fc59ced;

/*
	Name: function_c35e6aab
	Namespace: namespace_5fc59ced
	Checksum: 0x91A53073
	Offset: 0x120
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	if(!isdefined(game["flagmodels"]))
	{
		game["flagmodels"] = [];
	}
	if(!isdefined(game["carry_flagmodels"]))
	{
		game["carry_flagmodels"] = [];
	}
	if(!isdefined(game["carry_icon"]))
	{
		game["carry_icon"] = [];
	}
	game["flagmodels"]["neutral"] = "mp_flag_neutral";
}

/*
	Name: function_c66f3f44
	Namespace: namespace_5fc59ced
	Checksum: 0xE8151C0E
	Offset: 0x1B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_c66f3f44()
{
	if(function_6f1ebe57("g_customTeamName_Allies") != "")
	{
		function_6c1294b8("g_TeamName_Allies", function_6f1ebe57("g_customTeamName_Allies"));
	}
	if(function_6f1ebe57("g_customTeamName_Axis") != "")
	{
		function_6c1294b8("g_TeamName_Axis", function_6f1ebe57("g_customTeamName_Axis"));
	}
}


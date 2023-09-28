#using scripts\codescripts\struct;

#namespace _teamset;

/*
	Name: init
	Namespace: _teamset
	Checksum: 0x91A53073
	Offset: 0x120
	Size: 0x81
	Parameters: 0
	Flags: None
*/
function init()
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
	Name: customteam_init
	Namespace: _teamset
	Checksum: 0xE8151C0E
	Offset: 0x1B0
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function customteam_init()
{
	if(GetDvarString("g_customTeamName_Allies") != "")
	{
		SetDvar("g_TeamName_Allies", GetDvarString("g_customTeamName_Allies"));
	}
	if(GetDvarString("g_customTeamName_Axis") != "")
	{
		SetDvar("g_TeamName_Axis", GetDvarString("g_customTeamName_Axis"));
	}
}


#using scripts\codescripts\struct;
#using scripts\shared\util_shared;

#namespace namespace_97b5406d;

/*
	Name: function_63e16ac6
	Namespace: namespace_97b5406d
	Checksum: 0x99EC1590
	Offset: 0x140
	Size: 0x3
	Parameters: 0
	Flags: None
*/
function function_63e16ac6()
{
}

/*
	Name: function_b071d8c
	Namespace: namespace_97b5406d
	Checksum: 0x16DFC1BC
	Offset: 0x150
	Size: 0x19B
	Parameters: 1
	Flags: None
*/
function function_b071d8c(var_ec74b091)
{
	self namespace_82b91a51::function_2e224d69(var_ec74b091);
	if(!isdefined(level.var_c1aa5253["character_fire_death_torso"]))
	{
		function_63e16ac6();
	}
	var_538fc792 = [];
	var_538fc792[var_538fc792.size] = "J_Wrist_RI";
	var_538fc792[var_538fc792.size] = "J_Wrist_LE";
	var_538fc792[var_538fc792.size] = "J_Elbow_LE";
	var_538fc792[var_538fc792.size] = "J_Elbow_RI";
	var_538fc792[var_538fc792.size] = "J_Knee_RI";
	var_538fc792[var_538fc792.size] = "J_Knee_LE";
	var_538fc792[var_538fc792.size] = "J_Ankle_RI";
	var_538fc792[var_538fc792.size] = "J_Ankle_LE";
	if(isdefined(level.var_c1aa5253["character_fire_death_sm"]))
	{
		for(var_f2152198 = 0; var_f2152198 < var_538fc792.size; var_f2152198++)
		{
			function_da6acfd2(var_ec74b091, level.var_c1aa5253["character_fire_death_sm"], self, var_538fc792[var_f2152198]);
		}
	}
	function_da6acfd2(var_ec74b091, level.var_c1aa5253["character_fire_death_torso"], self, "J_SpineLower");
}


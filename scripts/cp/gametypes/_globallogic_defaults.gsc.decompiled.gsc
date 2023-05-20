#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\cp\gametypes\_spawnlogic;
#using scripts\shared\math_shared;
#using scripts\shared\rank_shared;

#namespace namespace_5deb553;

/*
	Name: function_79d6ccd1
	Namespace: namespace_5deb553
	Checksum: 0x1D8E98FB
	Offset: 0x2D8
	Size: 0x31
	Parameters: 1
	Flags: None
*/
function function_79d6ccd1(var_55b7a495)
{
	if(level.var_c906d2a3)
	{
		return "tie";
	}
	return namespace_82b91a51::function_fad13578(var_55b7a495);
}

/*
	Name: function_7a7141a5
	Namespace: namespace_5deb553
	Checksum: 0xEC77D729
	Offset: 0x318
	Size: 0x323
	Parameters: 1
	Flags: None
*/
function function_7a7141a5(var_3e94206a)
{
	level.var_71945be3 = 1;
	level notify("hash_d343f3a0");
	level endon("hash_d343f3a0");
	level endon("hash_577494dc");
	var_e0f2e2e6 = 20;
	function_b37c7904(game["strings"]["opponent_forfeiting_in"], var_e0f2e2e6, 0);
	wait(10);
	function_b37c7904(game["strings"]["opponent_forfeiting_in"], 10, 0);
	wait(10);
	var_7494be90 = &"";
	if(level.var_c906d2a3)
	{
		function_6c1294b8("ui_text_endreason", game["strings"]["other_teams_forfeited"]);
		var_7494be90 = game["strings"]["other_teams_forfeited"];
		var_f49bab78 = var_3e94206a;
	}
	else if(!isdefined(var_3e94206a))
	{
		function_6c1294b8("ui_text_endreason", game["strings"]["players_forfeited"]);
		var_7494be90 = game["strings"]["players_forfeited"];
		var_f49bab78 = level.var_2395e945[0];
	}
	else if(isdefined(level.var_e7a38025[var_3e94206a]))
	{
		var_7494be90 = game["strings"][var_3e94206a + "_forfeited"];
		function_6c1294b8("ui_text_endreason", var_7494be90);
		var_f49bab78 = function_79d6ccd1(var_3e94206a);
	}
	else
	{
		namespace_33b293fd::function_a7ee953(isdefined(var_3e94206a), "Dev Block strings are not supported");
		/#
			namespace_33b293fd::function_a7ee953(0, "Dev Block strings are not supported" + var_3e94206a + "Dev Block strings are not supported");
		#/
		var_f49bab78 = "tie";
	}
	/#
	#/
	level.var_73353c45 = 1;
	/#
		if(function_65f192a6(var_f49bab78))
		{
			function_3bc5b442("Dev Block strings are not supported" + var_f49bab78 function_f49dd4fd() + "Dev Block strings are not supported" + var_f49bab78.var_4be20d44 + "Dev Block strings are not supported");
		}
		else
		{
			namespace_c46f5728::function_ca399f3("Dev Block strings are not supported", var_f49bab78);
		}
	#/
	thread namespace_2282eece::function_11bc1b62(var_f49bab78, var_7494be90);
}

/*
	Name: function_d617fe3e
	Namespace: namespace_5deb553
	Checksum: 0x8248F09F
	Offset: 0x648
	Size: 0xC3
	Parameters: 1
	Flags: None
*/
function function_d617fe3e(var_3e94206a)
{
	if(var_3e94206a == "all")
	{
		var_f49bab78 = level.var_73ce26f0;
		namespace_c46f5728::function_ca399f3("team eliminated", var_f49bab78);
		thread namespace_2282eece::function_11bc1b62(var_f49bab78, &"SM_ALL_PLAYERS_KILLED");
	}
	else
	{
		var_f49bab78 = function_79d6ccd1(var_3e94206a);
		namespace_c46f5728::function_ca399f3("team eliminated", var_f49bab78);
		thread namespace_2282eece::function_11bc1b62(var_f49bab78, &"SM_ALL_PLAYERS_KILLED");
	}
}

/*
	Name: function_45c10f52
	Namespace: namespace_5deb553
	Checksum: 0xB17C3EAF
	Offset: 0x718
	Size: 0x183
	Parameters: 1
	Flags: None
*/
function function_45c10f52(var_3e94206a)
{
	if(isdefined(level.var_e7a38025[var_3e94206a]))
	{
		var_7522519a = game["strings"]["enemies_eliminated"];
		function_d52b076d(var_7522519a);
		function_6c1294b8("ui_text_endreason", var_7522519a);
		var_f49bab78 = namespace_2282eece::function_f2724c55("teamScores");
		namespace_c46f5728::function_ca399f3("team eliminated", var_f49bab78);
		thread namespace_2282eece::function_11bc1b62(var_f49bab78, var_7522519a);
	}
	else
	{
		function_6c1294b8("ui_text_endreason", game["strings"]["tie"]);
		namespace_c46f5728::function_ca399f3("tie");
		if(level.var_de12b72f)
		{
			thread namespace_2282eece::function_11bc1b62("tie", game["strings"]["tie"]);
		}
		else
		{
			thread namespace_2282eece::function_11bc1b62(undefined, game["strings"]["tie"]);
		}
	}
}

/*
	Name: function_b4bcebce
	Namespace: namespace_5deb553
	Checksum: 0x1C661E8A
	Offset: 0x8A8
	Size: 0xD
	Parameters: 1
	Flags: None
*/
function function_b4bcebce(var_3e94206a)
{
	return 0;
}

/*
	Name: function_e6761e5b
	Namespace: namespace_5deb553
	Checksum: 0x4D3D9222
	Offset: 0x8C0
	Size: 0xAD
	Parameters: 1
	Flags: None
*/
function function_e6761e5b(var_3e94206a)
{
	if(function_b4bcebce(var_3e94206a))
	{
		return 1;
	}
	if(level.var_7e2c28b7[var_3e94206a] == 1 && level.var_c2f0038d[var_3e94206a] == 1)
	{
		/#
			namespace_33b293fd::function_a7ee953(level.var_bbd67d26[var_3e94206a].size == 1);
		#/
		if(level.var_bbd67d26[var_3e94206a][0].var_dc4a16f6 > 0)
		{
			return 1;
		}
	}
	return 0;
}

/*
	Name: function_e4443d68
	Namespace: namespace_5deb553
	Checksum: 0xD888D4D
	Offset: 0x978
	Size: 0x93
	Parameters: 1
	Flags: None
*/
function function_e4443d68(var_3e94206a)
{
	if(function_e6761e5b(var_3e94206a))
	{
		return;
	}
	if(var_3e94206a == "all")
	{
		thread namespace_2282eece::function_11bc1b62(level.var_73ce26f0, &"SM_ALL_PLAYERS_KILLED");
	}
	else
	{
		thread namespace_2282eece::function_11bc1b62(namespace_82b91a51::function_fad13578(var_3e94206a), &"SM_ALL_PLAYERS_KILLED");
	}
}

/*
	Name: function_c4c198b0
	Namespace: namespace_5deb553
	Checksum: 0x8B5C3696
	Offset: 0xA18
	Size: 0xB
	Parameters: 1
	Flags: None
*/
function function_c4c198b0(var_3e94206a)
{
}

/*
	Name: function_aca983ed
	Namespace: namespace_5deb553
	Checksum: 0x302553B9
	Offset: 0xA30
	Size: 0xF
	Parameters: 1
	Flags: None
*/
function function_aca983ed(var_f49bab78)
{
	return var_f49bab78;
}

/*
	Name: function_6ab3de3d
	Namespace: namespace_5deb553
	Checksum: 0x4DE415D7
	Offset: 0xA48
	Size: 0x153
	Parameters: 1
	Flags: None
*/
function function_6ab3de3d(var_3e94206a)
{
	if(!level.var_de12b72f)
	{
		var_f49bab78 = namespace_e32b5089::function_b2a6c667();
		/#
			if(isdefined(var_f49bab78))
			{
				function_3bc5b442("Dev Block strings are not supported" + var_f49bab78.var_4be20d44);
			}
			else
			{
				function_3bc5b442("Dev Block strings are not supported");
			}
		#/
		thread namespace_2282eece::function_11bc1b62(var_f49bab78, &"MP_ENEMIES_ELIMINATED");
		break;
	}
	for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
	{
		var_5dc5e20a = level.var_2395e945[var_5e76f0af];
		if(!function_5b49d38c(var_5dc5e20a))
		{
			continue;
		}
		if(!isdefined(var_5dc5e20a.var_44fb8955["team"]) || var_5dc5e20a.var_44fb8955["team"] != var_3e94206a)
		{
			continue;
		}
	}
}

/*
	Name: function_3c98c1e8
	Namespace: namespace_5deb553
	Checksum: 0x482C3A2B
	Offset: 0xBA8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_3c98c1e8()
{
	var_f49bab78 = undefined;
	if(level.var_de12b72f)
	{
		var_f49bab78 = namespace_2282eece::function_f2724c55("teamScores");
		namespace_c46f5728::function_ca399f3("time limit", var_f49bab78);
	}
	else
	{
		var_f49bab78 = namespace_e32b5089::function_b2a6c667();
		/#
			if(isdefined(var_f49bab78))
			{
				function_3bc5b442("Dev Block strings are not supported" + var_f49bab78.var_4be20d44);
			}
			else
			{
				function_3bc5b442("Dev Block strings are not supported");
			}
		#/
	}
	function_6c1294b8("ui_text_endreason", game["strings"]["time_limit_reached"]);
	thread namespace_2282eece::function_11bc1b62(var_f49bab78, game["strings"]["time_limit_reached"]);
}

/*
	Name: function_8455a753
	Namespace: namespace_5deb553
	Checksum: 0x8419719F
	Offset: 0xCD8
	Size: 0x137
	Parameters: 0
	Flags: None
*/
function function_8455a753()
{
	if(!level.var_c8fa349a)
	{
		return 0;
	}
	var_f49bab78 = undefined;
	if(level.var_de12b72f)
	{
		var_f49bab78 = namespace_2282eece::function_f2724c55("teamScores");
		namespace_c46f5728::function_ca399f3("scorelimit", var_f49bab78);
	}
	else
	{
		var_f49bab78 = namespace_e32b5089::function_b2a6c667();
		/#
			if(isdefined(var_f49bab78))
			{
				function_3bc5b442("Dev Block strings are not supported" + var_f49bab78.var_4be20d44);
			}
			else
			{
				function_3bc5b442("Dev Block strings are not supported");
			}
		#/
	}
	function_6c1294b8("ui_text_endreason", game["strings"]["score_limit_reached"]);
	thread namespace_2282eece::function_11bc1b62(var_f49bab78, game["strings"]["score_limit_reached"]);
	return 1;
}

/*
	Name: function_3127df38
	Namespace: namespace_5deb553
	Checksum: 0x52CBDF0E
	Offset: 0xE18
	Size: 0x1A3
	Parameters: 2
	Flags: None
*/
function function_3127df38(var_722885f3, var_6ab6f4fd)
{
	if(isdefined(var_722885f3) && isdefined(var_6ab6f4fd))
	{
		self function_9b7fda5e(var_722885f3, var_6ab6f4fd);
		return;
	}
	var_9885f415 = "cp_global_intermission";
	var_8d8007e7 = namespace_14b42b8a::function_7faf4c39(var_9885f415, "targetname");
	/#
		namespace_33b293fd::function_a7ee953(var_8d8007e7.size, "Dev Block strings are not supported" + var_9885f415 + "Dev Block strings are not supported");
	#/
	var_3f6206f4 = namespace_4a43ba8::function_68eb5b1b(var_8d8007e7);
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3f6206f4.var_722885f3), "Dev Block strings are not supported" + var_9885f415 + "Dev Block strings are not supported");
	#/
	/#
		namespace_33b293fd::function_a7ee953(isdefined(var_3f6206f4.var_6ab6f4fd), "Dev Block strings are not supported" + var_9885f415 + "Dev Block strings are not supported" + var_3f6206f4.var_722885f3 + "Dev Block strings are not supported");
	#/
	self function_9b7fda5e(var_3f6206f4.var_722885f3, var_3f6206f4.var_6ab6f4fd);
}

/*
	Name: function_91904565
	Namespace: namespace_5deb553
	Checksum: 0x239EF23E
	Offset: 0xFC8
	Size: 0xBB
	Parameters: 0
	Flags: None
*/
function function_91904565()
{
	var_9885f415 = "cp_global_intermission";
	var_8d8007e7 = namespace_14b42b8a::function_7faf4c39(var_9885f415, "targetname");
	var_3f6206f4 = var_8d8007e7[0];
	if(isdefined(var_3f6206f4))
	{
		self function_9b7fda5e(var_3f6206f4.var_722885f3, var_3f6206f4.var_6ab6f4fd);
	}
	else
	{
		namespace_82b91a51::function_fe17af4d("Dev Block strings are not supported" + var_9885f415 + "Dev Block strings are not supported");
	}
	/#
	#/
}

/*
	Name: function_3d887edf
	Namespace: namespace_5deb553
	Checksum: 0xEEEB70B4
	Offset: 0x1090
	Size: 0x39
	Parameters: 0
	Flags: None
*/
function function_3d887edf()
{
	return namespace_d73b9283::function_31931862(function_92a88da3("timeLimit"), level.var_93e2614d, level.var_d1466c63);
}

/*
	Name: function_da304ba5
	Namespace: namespace_5deb553
	Checksum: 0x6C66B424
	Offset: 0x10D8
	Size: 0x71
	Parameters: 4
	Flags: None
*/
function function_da304ba5(var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd)
{
	var_b7976fb0 = 1;
	var_f1242439 = namespace_e32b5089::function_acc5da4b(var_a0ad4f34);
	if(var_f1242439 == 0)
	{
		var_b7976fb0 = 2;
	}
	return var_b7976fb0;
}

/*
	Name: function_72921290
	Namespace: namespace_5deb553
	Checksum: 0xCA25ED86
	Offset: 0x1158
	Size: 0x39
	Parameters: 4
	Flags: None
*/
function function_72921290(var_51e6a548, var_a0ad4f34, var_ba36487d, var_dfcc01fd)
{
	return namespace_f3970517::function_57fb3da2("team_kill");
}


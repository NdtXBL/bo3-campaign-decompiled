#using scripts\codescripts\struct;
#using scripts\shared\bb_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace namespace_d8129fdd;

/*
	Name: function_2dc19561
	Namespace: namespace_d8129fdd
	Checksum: 0xFB919CA
	Offset: 0x918
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("bb", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_d8129fdd
	Checksum: 0x67D59EAA
	Offset: 0x958
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	function_1463e4e5();
}

/*
	Name: function_edae084d
	Namespace: namespace_d8129fdd
	Checksum: 0x574EF48B
	Offset: 0x978
	Size: 0xD7
	Parameters: 1
	Flags: Private
*/
function private function_edae084d(var_5dc5e20a)
{
	var_24a24c3f = "";
	if(isdefined(var_5dc5e20a.var_b3dc8451))
	{
		for(var_5e76f0af = 0; var_5e76f0af < var_5dc5e20a.var_b3dc8451.size; var_5e76f0af++)
		{
			if(isdefined(var_5dc5e20a.var_b3dc8451[var_5e76f0af]) && var_5dc5e20a.var_b3dc8451[var_5e76f0af])
			{
				if(isdefined(var_24a24c3f) && var_24a24c3f != "")
				{
					var_24a24c3f = var_24a24c3f + ";";
				}
				var_24a24c3f = var_24a24c3f + var_5e76f0af;
			}
		}
	}
	return var_24a24c3f;
}

/*
	Name: function_b918cb9
	Namespace: namespace_d8129fdd
	Checksum: 0x8691E15F
	Offset: 0xA58
	Size: 0xDF
	Parameters: 1
	Flags: Private
*/
function private function_b918cb9(var_5dc5e20a)
{
	var_6a98da9a = "";
	foreach(var_ee404e07 in var_5dc5e20a.var_1c0132c)
	{
		if(var_6a98da9a != "")
		{
			var_6a98da9a = var_6a98da9a + ";";
		}
		var_6a98da9a = var_6a98da9a + var_3ca39bd6 + ":" + var_ee404e07;
	}
	return var_6a98da9a;
}

/*
	Name: function_e7f3440
	Namespace: namespace_d8129fdd
	Checksum: 0x2784A880
	Offset: 0xB40
	Size: 0x91B
	Parameters: 1
	Flags: None
*/
function function_e7f3440(var_5dc5e20a)
{
	if(!function_65f192a6(var_5dc5e20a))
	{
		return;
	}
	var_4b34a5fc = 1;
	if(isdefined(var_5dc5e20a.var_add55f80) && var_5dc5e20a.var_add55f80 > 0)
	{
		var_4b34a5fc = var_5dc5e20a.var_add55f80;
	}
	var_78239021 = var_5dc5e20a.var_ec0b278c / var_4b34a5fc;
	var_2bb84605 = 0;
	if(isdefined(var_5dc5e20a.var_5df1dd49))
	{
		var_2bb84605 = GetTime() - var_5dc5e20a.var_5df1dd49;
	}
	var_93e3a3c4 = 0;
	var_3804cf0b = 0;
	if(isdefined(var_5dc5e20a.var_4c9e802c))
	{
		if(isdefined(var_5dc5e20a.var_4c9e802c["shots"]))
		{
		}
		else
		{
		}
		var_93e3a3c4 = 0;
		if(isdefined(var_5dc5e20a.var_4c9e802c["hits"]))
		{
		}
		else
		{
		}
		var_3804cf0b = 0;
	}
	var_2b04bf92 = 0;
	if(var_93e3a3c4 > 0)
	{
		var_2b04bf92 = var_3804cf0b / var_93e3a3c4;
	}
	var_6a98da9a = function_b918cb9(var_5dc5e20a);
	var_24a24c3f = function_edae084d(var_5dc5e20a);
	var_ffb22fd = function_99201f25("minimap_corner", "targetname");
	var_c5fc654e = 0;
	var_ebfedfb7 = 0;
	if(isdefined(var_ffb22fd) && var_ffb22fd.size >= 2)
	{
		var_c5fc654e = var_ffb22fd[1].var_722885f3[0] - var_ffb22fd[0].var_722885f3[0];
		var_ebfedfb7 = var_ffb22fd[1].var_722885f3[1] - var_ffb22fd[0].var_722885f3[1];
	}
	var_5753f897 = 0;
	var_f3970517 = 0;
	if(isdefined(var_5dc5e20a.var_44fb8955))
	{
		if(isdefined(var_5dc5e20a.var_44fb8955["rank"]))
		{
			var_f3970517 = var_5dc5e20a.var_44fb8955["rank"];
		}
		if(isdefined(var_5dc5e20a.var_44fb8955["rankxp"]))
		{
			var_5753f897 = var_5dc5e20a.var_44fb8955["rankxp"];
		}
	}
	var_82ff3ed3 = 0;
	var_93b6bd63 = 0;
	var_839dfb41 = 0;
	var_142b9d5 = 0;
	var_32d177c9 = 0;
	var_c7adc857 = 0;
	var_62519794 = 0;
	var_38b26966 = 0;
	var_512e490e = 0;
	if(isdefined(var_5dc5e20a.var_edd32051))
	{
		if(isdefined(var_5dc5e20a.var_edd32051.var_1e3438ee))
		{
			var_82ff3ed3 = var_5dc5e20a.var_edd32051.var_1e3438ee.var_7d15e2f8;
			var_93b6bd63 = var_5dc5e20a.var_edd32051.var_1e3438ee.var_74952a22;
			var_839dfb41 = var_5dc5e20a.var_edd32051.var_1e3438ee.var_60db70fa;
		}
		if(isdefined(var_5dc5e20a.var_edd32051.var_ec8f8b3e))
		{
			var_142b9d5 = var_5dc5e20a.var_edd32051.var_ec8f8b3e.var_7d15e2f8;
			var_32d177c9 = var_5dc5e20a.var_edd32051.var_ec8f8b3e.var_74952a22;
			var_c7adc857 = var_5dc5e20a.var_edd32051.var_ec8f8b3e.var_60db70fa;
		}
		if(isdefined(var_5dc5e20a.var_edd32051.var_4a302def))
		{
			var_62519794 = var_5dc5e20a.var_edd32051.var_4a302def.var_7d15e2f8;
			var_38b26966 = var_5dc5e20a.var_edd32051.var_4a302def.var_74952a22;
			var_512e490e = var_5dc5e20a.var_edd32051.var_4a302def.var_60db70fa;
		}
	}
	var_a7032a9 = function_d3edf2f2(var_5dc5e20a);
	if(isdefined(var_5dc5e20a.var_44fb8955["best_kill_streak"]))
	{
	}
	else
	{
	}
	var_30da0509 = 0;
	if(isdefined(var_5dc5e20a.var_247e0696))
	{
	}
	else
	{
	}
	var_247e0696 = 0;
	if(isdefined(var_5dc5e20a.var_b79a4566))
	{
	}
	else
	{
	}
	var_b79a4566 = 0;
	if(isdefined(var_5dc5e20a.var_3ec4eaaf))
	{
	}
	else
	{
	}
	var_7b9eb83b = "undefined";
	if(isdefined(var_5dc5e20a.var_fd4f9b7c))
	{
	}
	else
	{
	}
	var_fd4f9b7c = "undefined";
	if(isdefined(var_5dc5e20a.var_c1acde73))
	{
	}
	else
	{
	}
	var_c1acde73 = 0;
	if(isdefined(var_5dc5e20a.var_4be20d44))
	{
	}
	else
	{
	}
	var_b3d32c97 = "undefined";
	if(isdefined(var_5dc5e20a.var_ec0b278c))
	{
	}
	else
	{
	}
	var_ec0b278c = 0;
	if(isdefined(var_5dc5e20a.var_add55f80))
	{
	}
	else
	{
	}
	var_add55f80 = 0;
	if(isdefined(var_5dc5e20a.var_44fb8955["incaps"]))
	{
	}
	else
	{
	}
	var_58ef604f = 0;
	if(isdefined(var_5dc5e20a.var_e69b4157))
	{
	}
	else
	{
	}
	var_e69b4157 = 0;
	if(isdefined(var_5dc5e20a.var_f1242439))
	{
	}
	else
	{
	}
	var_f1242439 = 0;
	function_3aedd0a2("cpplayermatchsummary", "gametime %d spawnid %d username %s kills %d deaths %d incaps %d kd %f shotshit %d totalshots %d accuracy %f assists %d score %d playertime %d meleekills %d headshots %d primaryloadoutweapon %s currentweapon %s grenadesused %d bestkillstreak %d dj_dist %d dj_count %d dj_time %d wallrun_dist %d wallrun_count %d wallrun_time %d sprint_dist %d sprint_count %d sprint_time %d cybercomsused %s dim0 %d dim1 %d rank %d rankxp %d collectibles %s", GetTime(), var_a7032a9, var_b3d32c97, var_ec0b278c, var_add55f80, var_58ef604f, var_78239021, var_3804cf0b, var_93e3a3c4, var_2b04bf92, var_e69b4157, var_f1242439, var_2bb84605, var_247e0696, var_b79a4566, var_7b9eb83b, var_fd4f9b7c, var_c1acde73, var_30da0509, var_82ff3ed3, var_93b6bd63, var_839dfb41, var_142b9d5, var_32d177c9, var_c7adc857, var_62519794, var_38b26966, var_512e490e, var_6a98da9a, var_c5fc654e, var_ebfedfb7, var_f3970517, var_5753f897, var_24a24c3f);
}

/*
	Name: function_bea1c67c
	Namespace: namespace_d8129fdd
	Checksum: 0xDA90D10C
	Offset: 0x1468
	Size: 0x133
	Parameters: 3
	Flags: None
*/
function function_bea1c67c(var_30ff5083, var_5dc5e20a, var_2e2a14bb)
{
	var_a7032a9 = -1;
	if(function_65f192a6(var_5dc5e20a))
	{
		var_a7032a9 = function_d3edf2f2(var_5dc5e20a);
	}
	else
	{
		return;
	}
	function_3aedd0a2("cpcheckpoints", "gametime %d spawnid %d username %s checkpointname %s eventtype %s playerx %d playery %d playerz %d kills %d revives %d deathcount %d deaths %d headshots %d hits %d score %d shotshit %d shotsmissed %d suicides %d downs %d difficulty %s", GetTime(), var_a7032a9, var_5dc5e20a.var_4be20d44, var_30ff5083, var_2e2a14bb, var_5dc5e20a.var_722885f3, var_5dc5e20a.var_ec0b278c, var_5dc5e20a.var_a433a6cd, var_5dc5e20a.var_9ae398f6, var_5dc5e20a.var_add55f80, var_5dc5e20a.var_b79a4566, var_5dc5e20a.var_14e7569b, var_5dc5e20a.var_f1242439, var_5dc5e20a.var_3804cf0b, var_5dc5e20a.var_6ebec54f, var_5dc5e20a.var_7bdaa8ee, var_5dc5e20a.var_c60db088, level.var_aa9bd2f3);
}

/*
	Name: function_2aa586aa
	Namespace: namespace_d8129fdd
	Checksum: 0xFA4D0B8E
	Offset: 0x15A8
	Size: 0x5A3
	Parameters: 8
	Flags: None
*/
function function_2aa586aa(var_a0ad4f34, var_8bcb913d, var_dfcc01fd, var_f9348fda, var_35b8669a, var_33fded15, var_a56ab5fa, var_935fe30e)
{
	var_14ac1c86 = -1;
	var_233cd484 = "";
	var_d3117c75 = "";
	var_5db61f33 = (0, 0, 0);
	var_4c26f55 = 0;
	var_99e7469c = 0;
	var_f4bca593 = 0;
	var_cb683866 = 0;
	var_38d64c0f = "";
	var_7367ca3b = 0;
	var_8daf73c8 = 0;
	var_2f4e1ee3 = -1;
	var_8a68755 = "";
	var_2746427c = "";
	var_ea783ed2 = (0, 0, 0);
	var_6ecba8dc = 0;
	var_33f13d47 = 0;
	var_b8bd32a2 = 0;
	var_ad96a70b = 0;
	var_cd3a2efe = "";
	var_b434c004 = 0;
	var_e5f9350b = "";
	var_b8b49851 = "";
	var_b1989306 = "";
	var_c46938ee = "";
	var_5833b024 = "";
	var_2b383b77 = "";
	if(isdefined(var_a0ad4f34))
	{
		if(function_65f192a6(var_a0ad4f34))
		{
			var_2f4e1ee3 = function_d3edf2f2(var_a0ad4f34);
			var_2746427c = "_player";
			var_8a68755 = var_a0ad4f34.var_4be20d44;
		}
		else if(function_e70ab977(var_a0ad4f34))
		{
			var_2746427c = "_ai";
			var_2b383b77 = var_a0ad4f34.var_aeb9eaf0;
			var_2f4e1ee3 = var_a0ad4f34.var_d6a02814;
		}
		else
		{
			var_2746427c = "_other";
		}
		var_ea783ed2 = var_a0ad4f34.var_722885f3;
		var_6ecba8dc = var_a0ad4f34.var_255b9315;
		var_b8bd32a2 = var_a0ad4f34.var_a1f56f1f;
		var_ad96a70b = var_a0ad4f34.var_2a373326;
		if(isdefined(var_a0ad4f34.var_b691b9cf))
		{
			var_cd3a2efe = var_a0ad4f34.var_b691b9cf;
		}
		if(isdefined(var_a0ad4f34.var_564407fb))
		{
			var_b434c004 = var_a0ad4f34.var_564407fb;
		}
	}
	if(isdefined(var_8bcb913d))
	{
		if(function_65f192a6(var_8bcb913d))
		{
			var_14ac1c86 = function_d3edf2f2(var_8bcb913d);
			var_d3117c75 = "_player";
			var_233cd484 = var_8bcb913d.var_4be20d44;
			var_8daf73c8 = var_8bcb913d.var_c60db088;
		}
		else if(function_e70ab977(var_8bcb913d))
		{
			var_d3117c75 = "_ai";
			var_b1989306 = var_8bcb913d.var_aeb9eaf0;
			var_14ac1c86 = var_8bcb913d.var_d6a02814;
		}
		else
		{
			var_d3117c75 = "_other";
		}
		var_5db61f33 = var_8bcb913d.var_722885f3;
		var_4c26f55 = var_8bcb913d.var_255b9315;
		var_f4bca593 = var_8bcb913d.var_a1f56f1f;
		var_cb683866 = var_8bcb913d.var_2a373326;
		if(isdefined(var_8bcb913d.var_b691b9cf))
		{
			var_38d64c0f = var_8bcb913d.var_b691b9cf;
		}
		if(isdefined(var_8bcb913d.var_564407fb))
		{
			var_7367ca3b = var_8bcb913d.var_564407fb;
		}
	}
	function_3aedd0a2("cpattacks", "gametime %d attackerid %d attackertype %s attackername %s attackerweapon %s attackerx %d attackery %d attackerz %d aiattckercombatmode %s attackerignoreme %d attackerignoreall %d attackerfovcos %d attackermaxsightdistsqrd %d attackeranimname %s attackerlaststand %d victimid %d victimtype %s victimname %s victimx %d victimy %d victimz %d aivictimcombatmode %s victimignoreme %d victimignoreall %d victimfovcos %d victimmaxsightdistsqrd %d victimanimname %s victimlaststand %d damage %d damagetype %s damagelocation %s death %d victimdowned %d downs %d", GetTime(), var_2f4e1ee3, var_2746427c, var_8a68755, var_dfcc01fd.var_4be20d44, var_ea783ed2, var_2b383b77, var_6ecba8dc, var_33f13d47, var_b8bd32a2, var_ad96a70b, var_cd3a2efe, var_b434c004, var_14ac1c86, var_d3117c75, var_233cd484, var_5db61f33, var_b1989306, var_4c26f55, var_99e7469c, var_f4bca593, var_cb683866, var_38d64c0f, var_7367ca3b, var_f9348fda, var_35b8669a, var_33fded15, var_a56ab5fa, var_935fe30e, var_8daf73c8);
}

/*
	Name: function_a96d8fec
	Namespace: namespace_d8129fdd
	Checksum: 0x9F3AD9B
	Offset: 0x1B58
	Size: 0xFB
	Parameters: 2
	Flags: None
*/
function function_a96d8fec(var_4ad207ea, var_2f06d687)
{
	function_3aedd0a2("cpaispawn", "gametime %d actorid %d aitype %s archetype %s airank %s accuracy %d originx %d originy %d originz %d weapon %s team %s alertlevel %s grenadeawareness %d canflank %d engagemaxdist %d engagemaxfalloffdist %d engagemindist %d engageminfalloffdist %d health %d", GetTime(), var_4ad207ea.var_d6a02814, var_4ad207ea.var_312ffe43, var_4ad207ea.var_8fc0e50e, var_4ad207ea.var_a0faa0f9, var_4ad207ea.var_2b04bf92, var_4ad207ea.var_722885f3, var_4ad207ea.var_3ae58dd.var_4be20d44, var_4ad207ea.var_3e94206a, var_4ad207ea.var_4a8372a9, var_4ad207ea.var_356d8ec0, var_4ad207ea.var_10fa5cf1, var_4ad207ea.var_a01aef5a, var_4ad207ea.var_48ae01f2, var_4ad207ea.var_bdf12110, var_4ad207ea.var_c36083d6, var_4ad207ea.var_3a90f16b);
}

/*
	Name: function_945c54c5
	Namespace: namespace_d8129fdd
	Checksum: 0xF63741AA
	Offset: 0x1C60
	Size: 0x153
	Parameters: 2
	Flags: None
*/
function function_945c54c5(var_6659cc8, var_5dc5e20a)
{
	var_a7032a9 = -1;
	var_ce35e7ea = "";
	var_e733c32b = (0, 0, 0);
	var_b3d32c97 = "";
	if(function_e70ab977(var_5dc5e20a))
	{
		var_a7032a9 = var_5dc5e20a.var_d6a02814;
		var_ce35e7ea = "_ai";
		var_e733c32b = var_5dc5e20a.var_722885f3;
	}
	else if(function_65f192a6(var_5dc5e20a))
	{
		var_a7032a9 = function_d3edf2f2(var_5dc5e20a);
		var_ce35e7ea = "_player";
		var_e733c32b = var_5dc5e20a.var_722885f3;
		var_b3d32c97 = var_5dc5e20a.var_4be20d44;
	}
	function_3aedd0a2("cpnotifications", "gametime %d notificationtype %s spawnid %d username %s spawnidtype %s locationx %d locationy %d locationz %d", GetTime(), var_6659cc8, var_a7032a9, var_b3d32c97, var_ce35e7ea, var_e733c32b);
}

/*
	Name: function_42ffd679
	Namespace: namespace_d8129fdd
	Checksum: 0x798E1E14
	Offset: 0x1DC0
	Size: 0x15B
	Parameters: 3
	Flags: None
*/
function function_42ffd679(var_5dc5e20a, var_279e4e97, var_7fbb3f9d)
{
	var_36bd81a3 = -1;
	var_1c68d23c = "";
	var_db66094d = (0, 0, 0);
	var_2a082815 = "";
	if(function_e70ab977(var_5dc5e20a))
	{
		var_36bd81a3 = var_5dc5e20a.var_d6a02814;
		var_1c68d23c = "_ai";
		var_db66094d = var_5dc5e20a.var_722885f3;
	}
	else if(function_65f192a6(var_5dc5e20a))
	{
		var_36bd81a3 = function_d3edf2f2(var_5dc5e20a);
		var_1c68d23c = "_player";
		var_db66094d = var_5dc5e20a.var_722885f3;
		var_2a082815 = var_5dc5e20a.var_4be20d44;
	}
	function_3aedd0a2("cpcybercomevents", "gametime %d userid %d username %s usertype %s eventtype %s gadget %s locationx %d locationy %d locationz %d", GetTime(), var_36bd81a3, var_2a082815, var_1c68d23c, var_279e4e97, var_7fbb3f9d, var_db66094d);
}

/*
	Name: function_1a69bad6
	Namespace: namespace_d8129fdd
	Checksum: 0xAB716E51
	Offset: 0x1F28
	Size: 0x17B
	Parameters: 4
	Flags: None
*/
function function_1a69bad6(var_932b0331, var_a0ad4f34, var_1a69bad6, var_f8456b37)
{
	var_2f4e1ee3 = -1;
	var_2746427c = "";
	var_ac96e48d = (0, 0, 0);
	var_3c4717b4 = "";
	if(function_e70ab977(var_a0ad4f34))
	{
		var_2f4e1ee3 = var_a0ad4f34.var_d6a02814;
		var_2746427c = "_ai";
		var_ac96e48d = var_a0ad4f34.var_722885f3;
	}
	else if(function_65f192a6(var_a0ad4f34))
	{
		var_2f4e1ee3 = function_d3edf2f2(var_a0ad4f34);
		var_2746427c = "_player";
		var_ac96e48d = var_a0ad4f34.var_722885f3;
		var_3c4717b4 = var_a0ad4f34.var_4be20d44;
	}
	function_3aedd0a2("cpexplosionevents", "gametime %d explosiontype %s objectname %s attackerid %d attackerusername %s attackertype %s locationx %d locationy %d locationz %d radius %d attackerx %d attackery %d attackerz %d", GetTime(), var_1a69bad6, var_932b0331.var_e6e9b8de, var_2f4e1ee3, var_3c4717b4, var_2746427c, var_932b0331.var_722885f3, var_f8456b37, var_ac96e48d);
}


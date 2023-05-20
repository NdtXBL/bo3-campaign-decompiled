#using scripts\codescripts\struct;
#using scripts\cp\_util;
#using scripts\cp\gametypes\_dev_class;
#using scripts\cp\gametypes\_globallogic;
#using scripts\cp\gametypes\_globallogic_score;
#using scripts\cp\gametypes\_globallogic_utils;
#using scripts\shared\array_shared;
#using scripts\shared\bots\_bot;
#using scripts\shared\callbacks_shared;
#using scripts\shared\dev_shared;
#using scripts\shared\hud_message_shared;
#using scripts\shared\rank_shared;
#using scripts\shared\sound_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_eae8c9fa;

/*
	Name: function_2dc19561
	Namespace: namespace_eae8c9fa
	Checksum: 0xE20E768C
	Offset: 0x268
	Size: 0x3B
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	/#
		namespace_bea63b8a::function_50f16166("Dev Block strings are not supported", &function_8c87d8eb, undefined, "Dev Block strings are not supported");
	#/
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_eae8c9fa
	Checksum: 0x9270C289
	Offset: 0x2B0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	/#
		namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
	#/
}

/*
	Name: function_c35e6aab
	Namespace: namespace_eae8c9fa
	Checksum: 0x2209A918
	Offset: 0x2E8
	Size: 0x35F
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		thread function_cf63752();
		thread function_92600b0d();
		thread function_eace8596();
		thread function_5528f222();
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		thread function_660b1787();
		thread function_4ebc24c9();
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		level.var_5d659878 = [];
		if(level.var_76c6e677 == "Dev Block strings are not supported")
		{
			var_bb386068 = [];
			var_bb386068[0] = "Dev Block strings are not supported";
			var_bb386068[1] = "Dev Block strings are not supported";
			var_bb386068[2] = "Dev Block strings are not supported";
			var_bb386068[3] = "Dev Block strings are not supported";
			for(var_c957f6b6 = 0; var_c957f6b6 < var_bb386068.size; var_c957f6b6++)
			{
				var_d3a18b74 = function_99201f25(var_bb386068[var_c957f6b6], "Dev Block strings are not supported");
				if(isdefined(var_d3a18b74) && var_d3a18b74.size > 0)
				{
					level.var_5d659878 = function_525ae497(level.var_5d659878, var_d3a18b74, 1, 0);
				}
			}
		}
		namespace_dabbe128::function_eb99da89(&function_fb4f96b5);
		for(;;)
		{
			function_f49597b8();
			wait(0.5);
		}
	#/
}

/*
	Name: function_fb4f96b5
	Namespace: namespace_eae8c9fa
	Checksum: 0x1E134AD4
	Offset: 0x650
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_fb4f96b5()
{
	/#
	#/
}

/*
	Name: function_277100a1
	Namespace: namespace_eae8c9fa
	Checksum: 0xB3CFE920
	Offset: 0x660
	Size: 0x53
	Parameters: 1
	Flags: None
*/
function function_277100a1(var_3e94206a)
{
	/#
		var_bdb4d59b = namespace_82b91a51::function_5e770196();
		function_93f46504(var_3e94206a, var_bdb4d59b.var_4be20d44);
	#/
}

/*
	Name: function_93f46504
	Namespace: namespace_eae8c9fa
	Checksum: 0x734ABC16
	Offset: 0x6C0
	Size: 0x373
	Parameters: 2
	Flags: None
*/
function function_93f46504(var_3e94206a, var_5dc5e20a)
{
	/#
		var_2395e945 = function_3f10449f();
		var_b07228b6 = undefined;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
		{
			if(var_2395e945[var_c957f6b6].var_4be20d44 == var_5dc5e20a)
			{
				var_b07228b6 = var_2395e945[var_c957f6b6];
				break;
			}
		}
		if(isdefined(var_b07228b6))
		{
			var_722885f3 = var_b07228b6.var_722885f3;
			var_f901131c = function_c0545f55(var_722885f3, 128, 32, 128, "Dev Block strings are not supported");
			var_6ab6f4fd = var_b07228b6 function_89c87c9c();
			var_3b6e5f7e = (0, var_6ab6f4fd[1], 0);
			var_1a859714 = function_bc7ce905(var_3b6e5f7e);
			var_63353033 = var_722885f3 + var_1a859714 * 128 + VectorScale((0, 0, 1), 16);
			if(!function_7178c13c(var_b07228b6 function_501eb072(), var_63353033, 0, var_b07228b6))
			{
				var_63353033 = undefined;
			}
			for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
			{
				if(var_2395e945[var_c957f6b6] == var_b07228b6)
				{
					continue;
				}
				if(isdefined(var_3e94206a))
				{
					if(function_39c15145(var_3e94206a, "Dev Block strings are not supported") && var_b07228b6.var_3e94206a == var_2395e945[var_c957f6b6].var_3e94206a)
					{
						continue;
					}
					if(function_39c15145(var_3e94206a, "Dev Block strings are not supported") && var_b07228b6.var_3e94206a != var_2395e945[var_c957f6b6].var_3e94206a)
					{
						continue;
					}
				}
				if(isdefined(var_63353033))
				{
					var_2395e945[var_c957f6b6] function_a30814d(var_63353033);
					continue;
				}
				if(var_f901131c.size > 0)
				{
					var_90ca1fdd = namespace_84970cc4::function_47d18840(var_f901131c);
					var_2395e945[var_c957f6b6] function_a30814d(var_90ca1fdd.var_722885f3);
					continue;
				}
				var_2395e945[var_c957f6b6] function_a30814d(var_722885f3);
			}
		}
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: function_f755c633
	Namespace: namespace_eae8c9fa
	Checksum: 0xBBF0471C
	Offset: 0xA40
	Size: 0x453
	Parameters: 0
	Flags: None
*/
function function_f755c633()
{
	/#
		if(level.var_2395e945.size > 0)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				if(!isdefined(level.var_a36eff6c))
				{
					level.var_a36eff6c = 0;
				}
				else
				{
					level.var_a36eff6c++;
				}
				var_8235b45a = 0;
				var_8d8007e7 = [];
				var_35940ed8 = level.var_4730264f;
				if(var_35940ed8 == "Dev Block strings are not supported" || var_35940ed8 == "Dev Block strings are not supported" && isdefined(level.var_cfc78025))
				{
					var_35940ed8 = level.var_cfc78025;
				}
				var_bde1f0c8 = level.var_87542f3b + "Dev Block strings are not supported" + var_35940ed8;
				if(level.var_a36eff6c < level.var_e7a38025.size)
				{
					var_9cb39dc5 = namespace_14b42b8a::function_7faf4c39("Dev Block strings are not supported", "Dev Block strings are not supported");
					if(isdefined(var_9cb39dc5))
					{
						foreach(var_14b42b8a in var_9cb39dc5)
						{
							if(isdefined(var_14b42b8a.var_db7bb468))
							{
								var_b952f48f = function_d6df1f20(var_14b42b8a.var_db7bb468, "Dev Block strings are not supported");
								foreach(var_ed54230c in var_b952f48f)
								{
									if(var_ed54230c == var_bde1f0c8)
									{
										var_8d8007e7[var_8d8007e7.size] = var_14b42b8a;
									}
								}
							}
						}
					}
					else if(!isdefined(var_8d8007e7) || var_8d8007e7.size == 0)
					{
						var_8d8007e7 = namespace_14b42b8a::function_7faf4c39("Dev Block strings are not supported", "Dev Block strings are not supported");
					}
					if(isdefined(var_8d8007e7))
					{
						var_8235b45a = var_8d8007e7.size;
					}
				}
				if(var_8235b45a == 0)
				{
					function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
					level.var_a36eff6c = -1;
				}
				else
				{
					var_aea8ffcc = (0, 0, 0);
					var_74eb71b2 = (0, 0, 0);
					foreach(var_3f6206f4 in var_8d8007e7)
					{
						var_aea8ffcc = var_aea8ffcc + var_3f6206f4.var_722885f3 / var_8235b45a;
						var_74eb71b2 = var_74eb71b2 + var_3f6206f4.var_6ab6f4fd / var_8235b45a;
					}
					level.var_2395e945[0] function_eda2be50(var_74eb71b2);
					level.var_2395e945[0] function_a30814d(var_aea8ffcc);
					wait(0.05);
					function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				}
			}
		}
	#/
}

/*
	Name: function_f49597b8
	Namespace: namespace_eae8c9fa
	Checksum: 0x71897E1C
	Offset: 0xEA0
	Size: 0x18BD
	Parameters: 0
	Flags: None
*/
function function_f49597b8()
{
	/#
		var_796ea479 = function_4bd0142f("Dev Block strings are not supported");
		var_97e977f6 = function_4bd0142f("Dev Block strings are not supported");
		var_5dc5e20a = namespace_82b91a51::function_5e770196();
		function_b7e632c1();
		if(level.var_2395e945.size > 0)
		{
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				function_277100a1();
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				function_277100a1(function_6f1ebe57("Dev Block strings are not supported"));
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				function_277100a1(function_6f1ebe57("Dev Block strings are not supported"));
			}
			else if(function_39c15145(function_6f1ebe57("Dev Block strings are not supported"), "Dev Block strings are not supported"))
			{
				var_4be20d44 = function_f45850ec(function_6f1ebe57("Dev Block strings are not supported"), 8);
				function_93f46504(function_6f1ebe57("Dev Block strings are not supported"), var_4be20d44);
			}
			else if(function_39c15145(function_6f1ebe57("Dev Block strings are not supported"), "Dev Block strings are not supported"))
			{
				var_4be20d44 = function_f45850ec(function_6f1ebe57("Dev Block strings are not supported"), 11);
				function_93f46504(function_6f1ebe57("Dev Block strings are not supported"), var_4be20d44);
			}
			else if(function_39c15145(function_6f1ebe57("Dev Block strings are not supported"), "Dev Block strings are not supported"))
			{
				var_4be20d44 = function_f45850ec(function_6f1ebe57("Dev Block strings are not supported"), 4);
				function_93f46504(undefined, var_4be20d44);
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				var_2395e945 = function_3f10449f();
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				if(!isdefined(level.var_907d076f))
				{
					level.var_907d076f = 0;
				}
				var_5dc5e20a = namespace_82b91a51::function_5e770196();
				var_217c06c1 = level.var_fbf937df[var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]];
				if(!isdefined(var_217c06c1) || var_217c06c1.size <= 0)
				{
					return;
				}
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					var_2395e945[var_c957f6b6] function_a30814d(var_217c06c1[level.var_907d076f].var_722885f3);
					var_2395e945[var_c957f6b6] function_eda2be50(var_217c06c1[level.var_907d076f].var_6ab6f4fd);
				}
				level.var_907d076f++;
				if(level.var_907d076f >= var_217c06c1.size)
				{
					level.var_907d076f = 0;
				}
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				var_2395e945 = function_3f10449f();
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				if(!isdefined(level.var_907d076f))
				{
					level.var_907d076f = 0;
				}
				var_5dc5e20a = namespace_82b91a51::function_5e770196();
				var_217c06c1 = level.var_fbf937df[var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"]];
				if(!isdefined(var_217c06c1) || var_217c06c1.size <= 0)
				{
					return;
				}
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					var_2395e945[var_c957f6b6] function_a30814d(var_217c06c1[level.var_907d076f].var_722885f3);
					var_2395e945[var_c957f6b6] function_eda2be50(var_217c06c1[level.var_907d076f].var_6ab6f4fd);
				}
				level.var_907d076f--;
				if(level.var_907d076f < 0)
				{
					level.var_907d076f = var_217c06c1.size - 1;
				}
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				var_2395e945 = function_3f10449f();
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				var_217c06c1 = level.var_8d8007e7;
				var_217c06c1 = function_525ae497(var_217c06c1, level.var_5d659878, 1, 0);
				if(!isdefined(level.var_8195cb32))
				{
					level.var_8195cb32 = 0;
				}
				else
				{
					level.var_8195cb32++;
					if(level.var_8195cb32 >= var_217c06c1.size)
					{
						level.var_8195cb32 = 0;
					}
				}
				if(!isdefined(var_217c06c1) || var_217c06c1.size <= 0)
				{
					return;
				}
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					var_2395e945[var_c957f6b6] function_a30814d(var_217c06c1[level.var_8195cb32].var_722885f3);
					var_2395e945[var_c957f6b6] function_eda2be50(var_217c06c1[level.var_8195cb32].var_6ab6f4fd);
				}
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				var_2395e945 = function_3f10449f();
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				var_217c06c1 = level.var_8d8007e7;
				var_217c06c1 = function_525ae497(var_217c06c1, level.var_5d659878, 1, 0);
				if(!isdefined(level.var_8195cb32))
				{
					level.var_8195cb32 = 0;
				}
				else
				{
					level.var_8195cb32--;
					if(level.var_8195cb32 < 0)
					{
						level.var_8195cb32 = var_217c06c1.size - 1;
					}
				}
				if(!isdefined(var_217c06c1) || var_217c06c1.size <= 0)
				{
					return;
				}
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					var_2395e945[var_c957f6b6] function_a30814d(var_217c06c1[level.var_8195cb32].var_722885f3);
					var_2395e945[var_c957f6b6] function_eda2be50(var_217c06c1[level.var_8195cb32].var_6ab6f4fd);
				}
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				var_5dc5e20a = namespace_82b91a51::function_5e770196();
				if(!isdefined(var_5dc5e20a.var_d0dda7bc))
				{
					var_5dc5e20a.var_d0dda7bc = 0;
				}
				if(!var_5dc5e20a.var_d0dda7bc)
				{
					function_d52b076d("Dev Block strings are not supported");
					function_d52b076d("Dev Block strings are not supported");
					var_5dc5e20a.var_d0dda7bc = 1;
					var_5dc5e20a thread function_1870c86a();
				}
				else
				{
					var_5dc5e20a notify("hash_1870c86a");
					var_5dc5e20a.var_d0dda7bc = 0;
					var_5dc5e20a function_23e013b9(3, "Dev Block strings are not supported");
				}
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				var_2395e945 = function_3f10449f();
				if(!isdefined(level.var_1fefb654))
				{
					level.var_1fefb654 = 1;
				}
				else
				{
					level.var_1fefb654 = !level.var_1fefb654;
				}
				if(level.var_1fefb654)
				{
					function_d52b076d("Dev Block strings are not supported");
				}
				else
				{
					function_d52b076d("Dev Block strings are not supported");
				}
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					if(level.var_1fefb654)
					{
						var_2395e945[var_c957f6b6] thread function_1fefb654();
						continue;
					}
					var_2395e945[var_c957f6b6] notify("hash_1fefb654");
				}
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				var_2395e945 = function_3f10449f();
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					var_5dc5e20a = var_2395e945[var_c957f6b6];
					var_f996a5bc = var_5dc5e20a function_21995b5a();
					function_81403b2f(var_f996a5bc, level.var_965f378e);
					for(var_a3557c4d = 0; var_a3557c4d < var_f996a5bc.size; var_a3557c4d++)
					{
						if(var_f996a5bc[var_a3557c4d] == level.var_6c3e6703)
						{
							continue;
						}
						var_5dc5e20a function_cdf98bcd(var_f996a5bc[var_a3557c4d], 0);
						var_5dc5e20a function_67795b5f(var_f996a5bc[var_a3557c4d], 0);
					}
				}
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				var_2395e945 = function_3f10449f();
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					var_5dc5e20a = var_2395e945[var_c957f6b6];
					if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
					{
						var_5dc5e20a function_6185f4d9(0);
						continue;
					}
					var_5dc5e20a function_6185f4d9(1);
				}
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				if(!isdefined(level.var_a36eff6c))
				{
					level.var_a36eff6c = 0;
				}
				else
				{
					level.var_a36eff6c++;
				}
				var_8235b45a = 0;
				if(level.var_a36eff6c < level.var_e7a38025.size)
				{
					var_2c31cef7 = function_391512da(level.var_e7a38025)[level.var_a36eff6c];
					if(isdefined(level.var_fbf937df[var_2c31cef7]))
					{
						var_8235b45a = level.var_fbf937df[var_2c31cef7].size;
					}
				}
				if(var_8235b45a == 0)
				{
					function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
					level.var_a36eff6c = -1;
				}
				else
				{
					var_aea8ffcc = (0, 0, 0);
					var_74eb71b2 = (0, 0, 0);
					foreach(var_3f6206f4 in level.var_fbf937df[var_2c31cef7])
					{
						var_aea8ffcc = var_aea8ffcc + var_3f6206f4.var_722885f3 / var_8235b45a;
						var_74eb71b2 = var_74eb71b2 + var_3f6206f4.var_6ab6f4fd / var_8235b45a;
					}
					level.var_2395e945[0] function_eda2be50(var_74eb71b2);
					level.var_2395e945[0] function_a30814d(var_aea8ffcc);
					wait(0.05);
					function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				}
			}
		}
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_279e4e97 = function_6f1ebe57("Dev Block strings are not supported");
			var_5dc5e20a = namespace_82b91a51::function_5e770196();
			var_1a859714 = function_bc7ce905(var_5dc5e20a.var_6ab6f4fd);
			var_7d6c9041 = function_298b8148(var_5dc5e20a.var_6ab6f4fd);
			if(var_279e4e97 == "Dev Block strings are not supported")
			{
				var_5dc5e20a function_c3945cd5(1, var_5dc5e20a.var_722885f3 + var_1a859714);
			}
			else if(var_279e4e97 == "Dev Block strings are not supported")
			{
				var_5dc5e20a function_c3945cd5(1, var_5dc5e20a.var_722885f3 - var_1a859714);
			}
			else if(var_279e4e97 == "Dev Block strings are not supported")
			{
				var_5dc5e20a function_c3945cd5(1, var_5dc5e20a.var_722885f3 - var_7d6c9041);
			}
			else if(var_279e4e97 == "Dev Block strings are not supported")
			{
				var_5dc5e20a function_c3945cd5(1, var_5dc5e20a.var_722885f3 + var_7d6c9041);
			}
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_750f5c9d = function_6f1ebe57("Dev Block strings are not supported");
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
			{
				level.var_2395e945[var_c957f6b6] function_e52e855c(var_750f5c9d);
				level.var_2395e945[var_c957f6b6].var_44a06448[var_750f5c9d] = undefined;
			}
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_f9a857aa = function_d6df1f20(function_6f1ebe57("Dev Block strings are not supported"), "Dev Block strings are not supported");
			if(var_f9a857aa.size > 1)
			{
				thread function_3a8a644f(var_f9a857aa[0], var_f9a857aa[1]);
			}
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] = 0;
			var_5dc5e20a.var_44fb8955["Dev Block strings are not supported"] = 0;
			var_74e68017 = function_95d0212b(function_4bd0142f("Dev Block strings are not supported"), 54);
			var_74e68017 = function_aaeec8c5(var_74e68017, 1);
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			var_4834df2d = 0;
			for(var_5e76f0af = 0; var_5e76f0af <= var_74e68017; var_5e76f0af++)
			{
				var_940bfd8d = namespace_f3970517::function_1f2cf483(var_5e76f0af);
				var_5dc5e20a thread namespace_f3970517::function_2589caf0("Dev Block strings are not supported", var_940bfd8d - var_4834df2d);
				var_4834df2d = var_940bfd8d;
				wait(0.25);
				self notify("hash_aa6f899d");
			}
		}
		else if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_5dc5e20a thread namespace_f3970517::function_2589caf0("Dev Block strings are not supported", function_4bd0142f("Dev Block strings are not supported"), 1);
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
			{
				level.var_2395e945[var_c957f6b6] namespace_4d476a30::function_2bb1fc0(function_6f1ebe57("Dev Block strings are not supported"), function_6f1ebe57("Dev Block strings are not supported"), game["Dev Block strings are not supported"]["Dev Block strings are not supported"]);
			}
			function_b37c7904(function_6f1ebe57("Dev Block strings are not supported"), 0);
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			var_de878e17 = function_99201f25();
			level.var_7547c2d3 = [];
			level.var_b76fcb40 = [];
			level.var_7235794c = [];
			for(var_5e76f0af = 0; var_5e76f0af < var_de878e17.size; var_5e76f0af++)
			{
				var_e6e9b8de = var_de878e17[var_5e76f0af].var_e6e9b8de;
				if(!function_5dbf7eca(var_e6e9b8de, "Dev Block strings are not supported"))
				{
					var_704e33e0 = var_de878e17[var_5e76f0af];
					level.var_7547c2d3[level.var_7547c2d3.size] = var_704e33e0;
					if(!isdefined(level.var_b76fcb40[var_e6e9b8de]))
					{
						level.var_b76fcb40[var_e6e9b8de] = 0;
					}
					level.var_b76fcb40[var_e6e9b8de]++;
					if(!isdefined(level.var_7235794c[var_e6e9b8de]))
					{
						level.var_7235794c[var_e6e9b8de] = [];
					}
					level.var_7235794c[var_e6e9b8de][level.var_7235794c[var_e6e9b8de].size] = var_704e33e0;
				}
			}
		}
	#/
}

/*
	Name: function_1870c86a
	Namespace: namespace_eae8c9fa
	Checksum: 0xA345A04F
	Offset: 0x2768
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_1870c86a()
{
	/#
		self notify("hash_1870c86a");
		self endon("hash_1870c86a");
		self endon("hash_643a7daf");
		var_77c6e696 = 0;
		var_1e83b66d = 0;
		for(;;)
		{
			self function_23e013b9(3, "Dev Block strings are not supported");
			self function_23e013b9(4, "Dev Block strings are not supported");
			if(!var_77c6e696 && self function_ce2b5f5("Dev Block strings are not supported"))
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				var_77c6e696 = 1;
			}
			else if(!self function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_77c6e696 = 0;
			}
			if(!var_1e83b66d && self function_ce2b5f5("Dev Block strings are not supported"))
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				var_1e83b66d = 1;
			}
			else if(!self function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_1e83b66d = 0;
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_1fefb654
	Namespace: namespace_eae8c9fa
	Checksum: 0x563F228F
	Offset: 0x2900
	Size: 0x149
	Parameters: 0
	Flags: None
*/
function function_1fefb654()
{
	/#
		self notify("hash_1fefb654");
		self endon("hash_1fefb654");
		self endon("hash_643a7daf");
		for(;;)
		{
			wait(1);
			var_337ff1cf = self function_da26566c();
			var_25b081b2 = namespace_84970cc4::function_d010fbb9(self function_21995b5a(1), var_337ff1cf);
			var_f996a5bc = function_525ae497(var_337ff1cf, var_25b081b2, 0, 0);
			function_81403b2f(var_f996a5bc, level.var_965f378e);
			for(var_c957f6b6 = 0; var_c957f6b6 < var_f996a5bc.size; var_c957f6b6++)
			{
				var_dfcc01fd = var_f996a5bc[var_c957f6b6];
				if(var_dfcc01fd == level.var_6c3e6703)
				{
					continue;
				}
				self function_704b802a(var_dfcc01fd);
			}
		}
	#/
}

/*
	Name: function_a72d8be8
	Namespace: namespace_eae8c9fa
	Checksum: 0x95250B68
	Offset: 0x2A58
	Size: 0x317
	Parameters: 0
	Flags: None
*/
function function_a72d8be8()
{
	/#
		self notify("hash_a72d8be8");
		self endon("hash_a72d8be8");
		self endon("hash_643a7daf");
		var_4f8217af = 80;
		var_297f9d46 = 40;
		self.var_7c6a5565 = function_ad13099a(self);
		self.var_7c6a5565.var_4f8217af = var_4f8217af + 80;
		self.var_7c6a5565.var_297f9d46 = var_297f9d46 + 2;
		self.var_7c6a5565.var_b5536acc = "Dev Block strings are not supported";
		self.var_7c6a5565.var_db55e535 = "Dev Block strings are not supported";
		self.var_7c6a5565.var_740218b1 = "Dev Block strings are not supported";
		self.var_7c6a5565.var_f9134763 = "Dev Block strings are not supported";
		self.var_7c6a5565.var_aabe9f43 = 1;
		self.var_7c6a5565.var_79e0f792 = 1;
		self.var_7c6a5565 function_9befb288("Dev Block strings are not supported", 1, 8);
		self.var_95de76a7 = function_ad13099a(self);
		self.var_95de76a7.var_4f8217af = var_4f8217af + 80;
		self.var_95de76a7.var_297f9d46 = var_297f9d46;
		self.var_95de76a7.var_b5536acc = "Dev Block strings are not supported";
		self.var_95de76a7.var_db55e535 = "Dev Block strings are not supported";
		self.var_95de76a7.var_740218b1 = "Dev Block strings are not supported";
		self.var_95de76a7.var_f9134763 = "Dev Block strings are not supported";
		self.var_95de76a7.var_aabe9f43 = 1;
		self.var_95de76a7.var_2363da9c = 1;
		self.var_95de76a7.var_79e0f792 = 1;
		if(!isdefined(self.var_47c252e3) || self.var_47c252e3 <= 0)
		{
			self.var_47c252e3 = 100;
		}
		for(;;)
		{
			wait(0.05);
			var_d0bae973 = self.var_3a90f16b / self.var_47c252e3 * 300;
			var_d0bae973 = function_b6b79a0(function_aaeec8c5(var_d0bae973, 1));
			self.var_7c6a5565 function_9befb288("Dev Block strings are not supported", var_d0bae973, 8);
			self.var_95de76a7 function_ee69b16e(self.var_3a90f16b);
		}
	#/
}

/*
	Name: function_91e82e7b
	Namespace: namespace_eae8c9fa
	Checksum: 0xC7FA43D0
	Offset: 0x2D78
	Size: 0xC5
	Parameters: 0
	Flags: None
*/
function function_91e82e7b()
{
	/#
		if(!isdefined(self.var_44a06448))
		{
			return;
		}
		var_133ce9dc = function_391512da(self.var_44a06448);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_133ce9dc.size; var_c957f6b6++)
		{
			/#
				function_895b00("Dev Block strings are not supported" + self.var_4be20d44 + "Dev Block strings are not supported" + var_133ce9dc[var_c957f6b6] + "Dev Block strings are not supported");
			#/
			self function_5d8fa337(var_133ce9dc[var_c957f6b6]);
		}
	#/
}

/*
	Name: function_3a8a644f
	Namespace: namespace_eae8c9fa
	Checksum: 0x1C9D1429
	Offset: 0x2E48
	Size: 0x14B
	Parameters: 2
	Flags: None
*/
function function_3a8a644f(var_8a68755, var_233cd484)
{
	/#
		var_a0ad4f34 = undefined;
		var_8bcb913d = undefined;
		for(var_5e76f0af = 0; var_5e76f0af < level.var_2395e945.size; var_5e76f0af++)
		{
			if(level.var_2395e945[var_5e76f0af].var_4be20d44 == var_8a68755)
			{
				var_a0ad4f34 = level.var_2395e945[var_5e76f0af];
				continue;
			}
			if(level.var_2395e945[var_5e76f0af].var_4be20d44 == var_233cd484)
			{
				var_8bcb913d = level.var_2395e945[var_5e76f0af];
			}
		}
		if(!function_5b49d38c(var_a0ad4f34) || !function_5b49d38c(var_8bcb913d))
		{
			return;
		}
		var_8bcb913d thread [[level.var_637baea8]](var_a0ad4f34, var_a0ad4f34, 1000, 0, "Dev Block strings are not supported", level.var_6c3e6703, (0, 0, 0), (0, 0, 0), "Dev Block strings are not supported", (0, 0, 0), 0, 0, (1, 0, 0));
	#/
}

/*
	Name: function_efe63614
	Namespace: namespace_eae8c9fa
	Checksum: 0xB430D3B
	Offset: 0x2FA0
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_efe63614()
{
	/#
		wait(1);
		/#
			namespace_33b293fd::function_a7ee953(0);
		#/
	#/
}

/*
	Name: function_d6c7ab4
	Namespace: namespace_eae8c9fa
	Checksum: 0x495F3EC9
	Offset: 0x2FD0
	Size: 0x43
	Parameters: 0
	Flags: None
*/
function function_d6c7ab4()
{
	/#
		var_e45ac5f1 = "Dev Block strings are not supported";
		if(var_e45ac5f1 == 1)
		{
			function_895b00("Dev Block strings are not supported");
		}
	#/
}

/*
	Name: function_7f73e9ef
	Namespace: namespace_eae8c9fa
	Checksum: 0x8F9B8D47
	Offset: 0x3020
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_7f73e9ef()
{
	/#
		function_d6c7ab4();
	#/
}

/*
	Name: function_cf63752
	Namespace: namespace_eae8c9fa
	Checksum: 0xA55889D4
	Offset: 0x3048
	Size: 0xCB
	Parameters: 0
	Flags: None
*/
function function_cf63752()
{
	/#
		wait(5);
		while(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			break;
			wait(1);
		}
		var_1ee2971b = function_6f1ebe57("Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		if(var_1ee2971b == "Dev Block strings are not supported")
		{
			function_efe63614();
		}
		else
		{
			function_7f73e9ef();
		}
		thread function_cf63752();
	#/
}

/*
	Name: function_92600b0d
	Namespace: namespace_eae8c9fa
	Checksum: 0xD7D2BB8F
	Offset: 0x3120
	Size: 0xF3
	Parameters: 0
	Flags: None
*/
function function_92600b0d()
{
	/#
		wait(5);
		while(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			break;
			wait(1);
		}
		var_b952f48f = function_d6df1f20(function_6f1ebe57("Dev Block strings are not supported"), "Dev Block strings are not supported");
		var_90c70533 = var_b952f48f[0];
		var_6b1f7819 = var_b952f48f[1];
		function_6c1294b8(var_90c70533, var_6b1f7819);
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		thread function_92600b0d();
	#/
}

/*
	Name: function_2bacd307
	Namespace: namespace_eae8c9fa
	Checksum: 0x8E440970
	Offset: 0x3220
	Size: 0x58D
	Parameters: 5
	Flags: None
*/
function function_2bacd307(var_18196fa5, var_d900369a, var_76911730, var_e363b850, var_3bc5b442)
{
	/#
		if(!isdefined(var_e363b850) || var_e363b850 <= 0)
		{
			var_e363b850 = namespace_82b91a51::function_4bb1ad3d();
		}
		if(!isdefined(var_3bc5b442))
		{
			var_3bc5b442 = var_18196fa5.var_e6e9b8de;
		}
		var_4880f4e6 = var_18196fa5.var_722885f3;
		var_1a859714 = function_bc7ce905(var_18196fa5.var_6ab6f4fd);
		var_7d6c9041 = function_298b8148(var_18196fa5.var_6ab6f4fd);
		var_1a859714 = VectorScale(var_1a859714, 16);
		var_7d6c9041 = VectorScale(var_7d6c9041, 16);
		var_f96bc9fe = var_4880f4e6 + var_1a859714 - var_7d6c9041;
		var_d3694f95 = var_4880f4e6 + var_1a859714 + var_7d6c9041;
		var_ad66d52c = var_4880f4e6 - var_1a859714 + var_7d6c9041;
		var_87645ac3 = var_4880f4e6 - var_1a859714 - var_7d6c9041;
		thread function_fb4b2169(var_f96bc9fe, var_d3694f95, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_d3694f95, var_ad66d52c, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_ad66d52c, var_87645ac3, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_87645ac3, var_f96bc9fe, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_f96bc9fe, var_f96bc9fe + (0, 0, var_e363b850), var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_d3694f95, var_d3694f95 + (0, 0, var_e363b850), var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_ad66d52c, var_ad66d52c + (0, 0, var_e363b850), var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_87645ac3, var_87645ac3 + (0, 0, var_e363b850), var_d900369a, 0, var_76911730);
		var_f96bc9fe = var_f96bc9fe + (0, 0, var_e363b850);
		var_d3694f95 = var_d3694f95 + (0, 0, var_e363b850);
		var_ad66d52c = var_ad66d52c + (0, 0, var_e363b850);
		var_87645ac3 = var_87645ac3 + (0, 0, var_e363b850);
		thread function_fb4b2169(var_f96bc9fe, var_d3694f95, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_d3694f95, var_ad66d52c, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_ad66d52c, var_87645ac3, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_87645ac3, var_f96bc9fe, var_d900369a, 0, var_76911730);
		var_4880f4e6 = var_4880f4e6 + (0, 0, var_e363b850 / 2);
		var_fbb5e942 = function_bc7ce905(var_18196fa5.var_6ab6f4fd);
		var_34a4f6b8 = function_bc7ce905(var_18196fa5.var_6ab6f4fd);
		var_56c2f745 = function_298b8148(var_18196fa5.var_6ab6f4fd);
		var_fbb5e942 = VectorScale(var_fbb5e942, 32);
		var_34a4f6b8 = VectorScale(var_34a4f6b8, 24);
		var_56c2f745 = VectorScale(var_56c2f745, 8);
		var_f96bc9fe = var_4880f4e6 + var_fbb5e942;
		var_d3694f95 = var_4880f4e6 + var_34a4f6b8 - var_56c2f745;
		var_ad66d52c = var_4880f4e6 + var_34a4f6b8 + var_56c2f745;
		thread function_fb4b2169(var_4880f4e6, var_f96bc9fe, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_f96bc9fe, var_d3694f95, var_d900369a, 0, var_76911730);
		thread function_fb4b2169(var_f96bc9fe, var_ad66d52c, var_d900369a, 0, var_76911730);
		thread function_f573927d(var_18196fa5.var_722885f3 + (0, 0, var_e363b850), var_3bc5b442, var_d900369a, 1, 1, var_76911730);
		return;
	#/
}

/*
	Name: function_f573927d
	Namespace: namespace_eae8c9fa
	Checksum: 0xE04B8C8F
	Offset: 0x37B8
	Size: 0x6F
	Parameters: 6
	Flags: None
*/
function function_f573927d(var_722885f3, var_8caa0808, var_d900369a, var_aabe9f43, var_5c21ad3d, var_76911730)
{
	/#
		level endon(var_76911730);
		for(;;)
		{
			function_8f3e0f73(var_722885f3, var_8caa0808, var_d900369a, var_aabe9f43, var_5c21ad3d);
			wait(0.05);
		}
	#/
}

/*
	Name: function_fb4b2169
	Namespace: namespace_eae8c9fa
	Checksum: 0x4FBD31A7
	Offset: 0x3830
	Size: 0x67
	Parameters: 5
	Flags: None
*/
function function_fb4b2169(var_34fb19f, var_3fc1574, var_d900369a, var_cf753724, var_76911730)
{
	/#
		level endon(var_76911730);
		for(;;)
		{
			function_4e418837(var_34fb19f, var_3fc1574, var_d900369a, var_cf753724);
			wait(0.05);
		}
	#/
}

/*
	Name: function_9019491d
	Namespace: namespace_eae8c9fa
	Checksum: 0x96D21C6B
	Offset: 0x38A0
	Size: 0x29
	Parameters: 1
	Flags: None
*/
function function_9019491d(var_35c84e32)
{
	/#
		if(var_35c84e32 <= 0)
		{
			return 0;
		}
		else
		{
			return 1;
		}
	#/
}

/*
	Name: function_fb312e3b
	Namespace: namespace_eae8c9fa
	Checksum: 0x6C24969E
	Offset: 0x38D8
	Size: 0xC1
	Parameters: 5
	Flags: None
*/
function function_fb312e3b(var_c8478ed6, var_813fc428, var_4f8217af, var_297f9d46, var_5c21ad3d)
{
	/#
		if(!isdefined(level.var_1901fb66))
		{
			level.var_1901fb66 = [];
		}
		if(!isdefined(level.var_1901fb66[var_c8478ed6]))
		{
			level.var_1901fb66[var_c8478ed6] = [];
		}
		var_724a4794 = function_8bd98a60(var_813fc428, var_4f8217af, var_297f9d46, var_5c21ad3d);
		level.var_1901fb66[var_c8478ed6][level.var_1901fb66[var_c8478ed6].size] = var_724a4794;
		return var_724a4794;
	#/
}

/*
	Name: function_8bd98a60
	Namespace: namespace_eae8c9fa
	Checksum: 0x706AD4FA
	Offset: 0x39A8
	Size: 0x1A1
	Parameters: 7
	Flags: None
*/
function function_8bd98a60(var_8caa0808, var_4f8217af, var_297f9d46, var_5c21ad3d, var_aabe9f43, var_4d19365, var_5bf34339)
{
	/#
		/#
			if(!isdefined(var_aabe9f43))
			{
				var_aabe9f43 = 1;
			}
			if(!isdefined(var_5c21ad3d))
			{
				var_5c21ad3d = 1;
			}
			if(!isdefined(var_4d19365))
			{
				var_4d19365 = 20;
			}
			var_724a4794 = function_84c0e150();
			var_724a4794.var_5bf34339 = 1;
			var_724a4794.var_35940ed8 = 0;
			var_724a4794.var_b5536acc = "Dev Block strings are not supported";
			var_724a4794.var_db55e535 = "Dev Block strings are not supported";
			var_724a4794.var_79e0f792 = 1;
			var_724a4794.var_2363da9c = var_5c21ad3d;
			var_724a4794.var_4d19365 = var_4d19365;
			var_724a4794.var_aabe9f43 = var_aabe9f43;
			var_724a4794.var_4f8217af = var_4f8217af;
			var_724a4794.var_297f9d46 = var_297f9d46;
			var_724a4794.var_7879f904 = var_5c21ad3d;
			if(isdefined(var_8caa0808))
			{
				var_724a4794 function_f6181aca(var_8caa0808);
			}
			return var_724a4794;
		#/
	#/
}

/*
	Name: function_d99660db
	Namespace: namespace_eae8c9fa
	Checksum: 0x32172257
	Offset: 0x3B58
	Size: 0xF
	Parameters: 0
	Flags: None
*/
function function_d99660db()
{
	/#
		return "Dev Block strings are not supported";
	#/
}

/*
	Name: function_c5833485
	Namespace: namespace_eae8c9fa
	Checksum: 0xC2E840B
	Offset: 0x3B70
	Size: 0x3AB
	Parameters: 0
	Flags: None
*/
function function_c5833485()
{
	/#
		self endon("hash_643a7daf");
		var_cf6fe380 = self function_c7f3ce11();
		if(var_cf6fe380 != 0)
		{
			return;
		}
		var_77c6e696 = 0;
		var_1e83b66d = 0;
		var_ebfdeb3a = 0;
		var_61d18625 = 0;
		var_96f03d58 = 0;
		var_e90d1b0d = function_d99660db();
		while(self function_ce2b5f5(var_e90d1b0d))
		{
			if(!var_77c6e696 && self function_ce2b5f5("Dev Block strings are not supported"))
			{
				self function_a11bd22a("Dev Block strings are not supported");
				var_77c6e696 = 1;
				self thread function_142688a5();
			}
			if(!var_1e83b66d && self function_ce2b5f5("Dev Block strings are not supported"))
			{
				self function_a11bd22a("Dev Block strings are not supported");
				var_1e83b66d = 1;
				self thread function_142688a5();
			}
			if(!var_ebfdeb3a && self function_ce2b5f5("Dev Block strings are not supported"))
			{
				self function_a11bd22a("Dev Block strings are not supported");
				var_ebfdeb3a = 1;
				self thread function_142688a5();
			}
			if(!var_61d18625 && self function_ce2b5f5("Dev Block strings are not supported"))
			{
				self function_a11bd22a("Dev Block strings are not supported");
				var_61d18625 = 1;
				self thread function_142688a5();
			}
			if(!var_96f03d58 && self function_ce2b5f5("Dev Block strings are not supported"))
			{
				self function_a11bd22a("Dev Block strings are not supported");
				var_96f03d58 = 1;
				self thread function_142688a5();
			}
			if(!self function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_77c6e696 = 0;
			}
			if(!self function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_1e83b66d = 0;
			}
			if(!self function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_ebfdeb3a = 0;
			}
			if(!self function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_61d18625 = 0;
			}
			if(!self function_ce2b5f5("Dev Block strings are not supported"))
			{
				var_96f03d58 = 0;
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_142688a5
	Namespace: namespace_eae8c9fa
	Checksum: 0x602EB61A
	Offset: 0x3F28
	Size: 0x11B
	Parameters: 0
	Flags: None
*/
function function_142688a5()
{
	/#
		self notify("hash_142688a5");
		self endon("hash_142688a5");
		wait(0.2);
		if(self function_d5770832())
		{
			self waittill("hash_9206d256", var_dfcc01fd);
			var_f86ebbbb = 0;
			while(var_dfcc01fd == level.var_6c3e6703)
			{
				self waittill("hash_9206d256", var_dfcc01fd);
				wait(0.05);
				var_f86ebbbb++;
				if(var_f86ebbbb > 120)
				{
					break;
				}
			}
		}
		else
		{
			var_dfcc01fd = self function_48c6a3a2();
		}
		var_3eb3b19f = function_4bd0142f("Dev Block strings are not supported", 1);
		if(var_3eb3b19f)
		{
			function_2e4b8c78(var_dfcc01fd.var_4be20d44);
		}
	#/
}

/*
	Name: function_5bd29d09
	Namespace: namespace_eae8c9fa
	Checksum: 0xD6345BA
	Offset: 0x4050
	Size: 0x189
	Parameters: 0
	Flags: None
*/
function function_5bd29d09()
{
	/#
		if(isdefined(level.var_ad281de7))
		{
			return;
		}
		level.var_ad281de7 = [];
		level.var_ad281de7[1] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_ad281de7[2] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_ad281de7[3] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_ad281de7[4] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_ad281de7[5] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_ad281de7[6] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_ad281de7[7] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_ad281de7[8] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_ad281de7[9] = function_c4d5ec1f("Dev Block strings are not supported");
	#/
}

/*
	Name: function_bf6932f7
	Namespace: namespace_eae8c9fa
	Checksum: 0xDFCE22F0
	Offset: 0x41E8
	Size: 0x1B1
	Parameters: 0
	Flags: None
*/
function function_bf6932f7()
{
	/#
		if(isdefined(level.var_d1c383d9))
		{
			return;
		}
		level.var_d1c383d9 = [];
		level.var_d1c383d9[1] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[2] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[3] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[4] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[5] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[6] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[7] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[8] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[9] = function_c4d5ec1f("Dev Block strings are not supported");
		level.var_d1c383d9[10] = function_c4d5ec1f("Dev Block strings are not supported");
	#/
}

/*
	Name: function_498ac57d
	Namespace: namespace_eae8c9fa
	Checksum: 0xFDA9360F
	Offset: 0x43A8
	Size: 0xB5
	Parameters: 1
	Flags: None
*/
function function_498ac57d(var_5dc5e20a)
{
	/#
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_ad281de7.size; var_c957f6b6++)
		{
			var_5dc5e20a function_1f3745c0(level.var_ad281de7[var_c957f6b6 + 1]);
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_d1c383d9.size; var_c957f6b6++)
		{
			var_5dc5e20a function_1f3745c0(level.var_d1c383d9[var_c957f6b6 + 1]);
		}
	#/
}

/*
	Name: function_660b1787
	Namespace: namespace_eae8c9fa
	Checksum: 0xD8F24030
	Offset: 0x4468
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function function_660b1787()
{
	/#
		function_5bd29d09();
		function_bf6932f7();
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		while(1)
		{
			wait(0.5);
			var_6225e431 = function_4bd0142f("Dev Block strings are not supported");
			if(var_6225e431 != 0)
			{
				for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
				{
					function_498ac57d(level.var_2395e945[var_c957f6b6]);
					level.var_2395e945[var_c957f6b6] function_860a040a(level.var_ad281de7[var_6225e431]);
				}
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
		}
	#/
}

/*
	Name: function_4ebc24c9
	Namespace: namespace_eae8c9fa
	Checksum: 0x3EA2D3AF
	Offset: 0x4598
	Size: 0x127
	Parameters: 0
	Flags: None
*/
function function_4ebc24c9()
{
	/#
		function_5bd29d09();
		function_bf6932f7();
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		while(1)
		{
			wait(0.5);
			var_6225e431 = function_4bd0142f("Dev Block strings are not supported");
			if(var_6225e431 != 0)
			{
				for(var_c957f6b6 = 0; var_c957f6b6 < level.var_2395e945.size; var_c957f6b6++)
				{
					function_498ac57d(level.var_2395e945[var_c957f6b6]);
					level.var_2395e945[var_c957f6b6] function_860a040a(level.var_d1c383d9[var_6225e431]);
				}
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
		}
	#/
}

/*
	Name: function_5528f222
	Namespace: namespace_eae8c9fa
	Checksum: 0x35D27DCA
	Offset: 0x46C8
	Size: 0x499
	Parameters: 0
	Flags: None
*/
function function_5528f222()
{
	/#
		var_ff9f74e8 = (1, 1, 1);
		var_fd4d3e12 = (1, 0, 0);
		var_10e5c2b2 = (0, 1, 0);
		var_a8886e1 = (0, 0, 1);
		var_fe4b5444 = (0.4, 0, 0.6);
		var_f39cf6ec = 10;
		var_6a9adb24 = var_f39cf6ec;
		var_5c9266cf = VectorScale((0, 0, -1), 50);
		var_bd76cea6 = "Dev Block strings are not supported";
		while(1)
		{
			if(function_4bd0142f("Dev Block strings are not supported") > 0)
			{
				var_f901131c = [];
				var_3fc1574 = 0;
				var_90ca1fdd = function_243bb261("Dev Block strings are not supported", "Dev Block strings are not supported");
				if(!isdefined(var_90ca1fdd))
				{
					function_895b00("Dev Block strings are not supported");
					function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
					continue;
				}
				while(isdefined(var_90ca1fdd.var_b07228b6))
				{
					var_5e37ce14 = function_243bb261(var_90ca1fdd.var_b07228b6, "Dev Block strings are not supported");
					foreach(var_b4b92a9 in var_f901131c)
					{
						if(var_b4b92a9 == var_5e37ce14)
						{
							var_3fc1574 = 1;
						}
					}
					var_2d49050e = 30;
					if(var_6a9adb24 == var_f39cf6ec)
					{
						var_90ca1fdd thread function_2f793f75(var_5e37ce14, var_fe4b5444, var_fe4b5444, 1, var_2d49050e, var_5c9266cf, var_6a9adb24, var_bd76cea6);
					}
					if(isdefined(var_90ca1fdd.var_caae374e))
					{
						var_2d49050e = 10;
						switch(var_90ca1fdd.var_caae374e)
						{
							case "Dev Block strings are not supported":
							{
								var_ab23f9bd = var_10e5c2b2;
								var_1a5cfa14 = 1;
								break;
							}
							case "Dev Block strings are not supported":
							{
								var_ab23f9bd = var_fd4d3e12;
								var_1a5cfa14 = 1;
								break;
							}
							case "Dev Block strings are not supported":
							{
								var_ab23f9bd = var_ff9f74e8;
								var_1a5cfa14 = 1;
								break;
							}
						}
						switch(var_90ca1fdd.var_caae374e)
						{
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							{
								var_22e844df = 10;
								var_f8456b37 = 100;
								if(var_6a9adb24 == var_f39cf6ec)
								{
									function_2d3eaa0e(var_90ca1fdd.var_722885f3, var_f8456b37, var_ab23f9bd, var_1a5cfa14, 1, var_22e844df, var_6a9adb24 * 1000);
								}
								var_90ca1fdd function_a1b4a9e6();
								var_90ca1fdd function_4c38993b(var_ab23f9bd, var_1a5cfa14, var_2d49050e);
								break;
							}
						}
					}
					if(var_3fc1574)
					{
						break;
					}
					var_f901131c[var_f901131c.size] = var_5e37ce14;
					var_90ca1fdd = var_5e37ce14;
				}
				var_6a9adb24 = var_6a9adb24 - 0.05;
				if(var_6a9adb24 < 0)
				{
					var_6a9adb24 = var_f39cf6ec;
				}
				wait(0.05);
			}
			else
			{
				wait(1);
			}
		}
	#/
}

/*
	Name: function_eace8596
	Namespace: namespace_eae8c9fa
	Checksum: 0x5A438BFA
	Offset: 0x4B70
	Size: 0x3BF
	Parameters: 0
	Flags: None
*/
function function_eace8596()
{
	/#
		var_ff9f74e8 = (1, 1, 1);
		var_fd4d3e12 = (1, 0, 0);
		var_10e5c2b2 = (0, 1, 0);
		var_a8886e1 = (0, 0, 1);
		var_ab23f9bd = var_ff9f74e8;
		var_1a5cfa14 = 1;
		var_2d49050e = 1;
		var_f39cf6ec = 10;
		var_6a9adb24 = var_f39cf6ec;
		var_5c9266cf = VectorScale((0, 0, -1), 50);
		var_bd76cea6 = "Dev Block strings are not supported";
		while(1)
		{
			if(function_4bd0142f("Dev Block strings are not supported") > 0)
			{
				var_b551e1dc = function_99201f25("Dev Block strings are not supported", "Dev Block strings are not supported");
				foreach(var_a3d46ee4 in var_b551e1dc)
				{
					if(isdefined(var_a3d46ee4.var_170527fb))
					{
						switch(var_a3d46ee4.var_170527fb)
						{
							case "Dev Block strings are not supported":
							{
								var_ab23f9bd = var_a8886e1;
								var_1a5cfa14 = 1;
								var_2d49050e = 3;
								break;
							}
							case "Dev Block strings are not supported":
							{
								var_ab23f9bd = var_10e5c2b2;
								var_1a5cfa14 = 1;
								var_2d49050e = 3;
								break;
							}
							case "Dev Block strings are not supported":
							{
								var_ab23f9bd = var_fd4d3e12;
								var_1a5cfa14 = 1;
								var_2d49050e = 3;
								break;
							}
							case "Dev Block strings are not supported":
							{
								var_ab23f9bd = var_ff9f74e8;
								var_1a5cfa14 = 1;
								var_2d49050e = 3;
								break;
							}
						}
						switch(var_a3d46ee4.var_170527fb)
						{
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							case "Dev Block strings are not supported":
							{
								if(var_6a9adb24 == var_f39cf6ec)
								{
									var_a3d46ee4 thread function_2302cd4a(var_ab23f9bd, var_ff9f74e8, var_1a5cfa14, var_2d49050e, var_5c9266cf, var_6a9adb24, var_bd76cea6);
								}
								var_a3d46ee4 function_a1b4a9e6();
								var_a3d46ee4 function_9c8f13fc(var_ab23f9bd, var_1a5cfa14, var_2d49050e);
								var_a3d46ee4 function_6d6b630(var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_5c9266cf);
								break;
							}
						}
					}
				}
				var_6a9adb24 = var_6a9adb24 - 0.05;
				if(var_6a9adb24 < 0)
				{
					var_6a9adb24 = var_f39cf6ec;
				}
			}
			if(function_4bd0142f("Dev Block strings are not supported") == 0)
			{
				level notify(var_bd76cea6);
				var_6a9adb24 = var_f39cf6ec;
				wait(1);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_a1b4a9e6
	Namespace: namespace_eae8c9fa
	Checksum: 0xEDD3418F
	Offset: 0x4F38
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_a1b4a9e6()
{
	/#
		var_fd4d3e12 = (1, 0, 0);
		var_10e5c2b2 = (0, 1, 0);
		var_a8886e1 = (0, 0, 1);
		function_4e418837(self.var_722885f3, self.var_722885f3 + function_bc7ce905(self.var_6ab6f4fd) * 10, var_fd4d3e12);
		function_4e418837(self.var_722885f3, self.var_722885f3 + function_298b8148(self.var_6ab6f4fd) * 10, var_10e5c2b2);
		function_4e418837(self.var_722885f3, self.var_722885f3 + function_aba60185(self.var_6ab6f4fd) * 10, var_a8886e1);
	#/
}

/*
	Name: function_9c8f13fc
	Namespace: namespace_eae8c9fa
	Checksum: 0x1969D55
	Offset: 0x5058
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function function_9c8f13fc(var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_f07c0031)
{
	/#
		if(!isdefined(var_f07c0031))
		{
			var_f07c0031 = (0, 0, 0);
		}
		function_8f3e0f73(self.var_722885f3 + var_f07c0031, self.var_170527fb, var_ab23f9bd, var_1a5cfa14, var_2d49050e);
	#/
}

/*
	Name: function_4c38993b
	Namespace: namespace_eae8c9fa
	Checksum: 0xB62B37CC
	Offset: 0x50D8
	Size: 0x73
	Parameters: 4
	Flags: None
*/
function function_4c38993b(var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_f07c0031)
{
	/#
		if(!isdefined(var_f07c0031))
		{
			var_f07c0031 = (0, 0, 0);
		}
		function_8f3e0f73(self.var_722885f3 + var_f07c0031, self.var_caae374e, var_ab23f9bd, var_1a5cfa14, var_2d49050e);
	#/
}

/*
	Name: function_6d6b630
	Namespace: namespace_eae8c9fa
	Checksum: 0x2163031B
	Offset: 0x5158
	Size: 0xC3
	Parameters: 4
	Flags: None
*/
function function_6d6b630(var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_f07c0031)
{
	/#
		if(!isdefined(var_f07c0031))
		{
			var_f07c0031 = (0, 0, 0);
		}
		var_ef81d894 = "Dev Block strings are not supported" + self.var_722885f3[0] + "Dev Block strings are not supported" + self.var_722885f3[1] + "Dev Block strings are not supported" + self.var_722885f3[2] + "Dev Block strings are not supported";
		function_8f3e0f73(self.var_722885f3 + var_f07c0031, var_ef81d894, var_ab23f9bd, var_1a5cfa14, var_2d49050e);
	#/
}

/*
	Name: function_d02a2e25
	Namespace: namespace_eae8c9fa
	Checksum: 0x9F3838D7
	Offset: 0x5228
	Size: 0xDB
	Parameters: 4
	Flags: None
*/
function function_d02a2e25(var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_f07c0031)
{
	/#
		if(isdefined(self.var_3fffd1c6))
		{
			function_8f3e0f73(self.var_722885f3 + (0, 0, var_f07c0031[2] * 2), "Dev Block strings are not supported" + self.var_3fffd1c6, var_ab23f9bd, var_1a5cfa14, var_2d49050e);
		}
		if(isdefined(self.var_535014a9))
		{
			function_8f3e0f73(self.var_722885f3 + (0, 0, var_f07c0031[2] * 3), "Dev Block strings are not supported" + self.var_535014a9, var_ab23f9bd, var_1a5cfa14, var_2d49050e);
		}
	#/
}

/*
	Name: function_2302cd4a
	Namespace: namespace_eae8c9fa
	Checksum: 0x8A673EFB
	Offset: 0x5310
	Size: 0x153
	Parameters: 7
	Flags: None
*/
function function_2302cd4a(var_72896920, var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_f07c0031, var_6a9adb24, var_bd76cea6)
{
	/#
		level endon(var_bd76cea6);
		var_a3d46ee4 = self;
		var_85a98779 = var_a3d46ee4.var_170527fb;
		while(isdefined(var_a3d46ee4.var_b07228b6))
		{
			var_6e829dcf = function_6ada35ba(var_a3d46ee4.var_b07228b6, "Dev Block strings are not supported");
			var_a3d46ee4 thread function_2f793f75(var_6e829dcf, var_72896920, var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_f07c0031, var_6a9adb24, var_bd76cea6);
			if(var_a3d46ee4.var_170527fb == "Dev Block strings are not supported")
			{
				var_85a98779 = var_a3d46ee4.var_b07228b6;
			}
			else if(var_a3d46ee4.var_b07228b6 == var_85a98779)
			{
				break;
			}
			var_a3d46ee4 = var_6e829dcf;
			wait(0.05);
		}
	#/
}

/*
	Name: function_2f793f75
	Namespace: namespace_eae8c9fa
	Checksum: 0x31BFE0B9
	Offset: 0x5470
	Size: 0x123
	Parameters: 8
	Flags: None
*/
function function_2f793f75(var_6e829dcf, var_72896920, var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_f07c0031, var_6a9adb24, var_bd76cea6)
{
	/#
		level endon(var_bd76cea6);
		while(var_6a9adb24 > 0)
		{
			if(isdefined(self.var_170527fb) && self.var_170527fb == "Dev Block strings are not supported")
			{
				function_8f3e0f73(self.var_722885f3 + var_f07c0031, self.var_170527fb, var_ab23f9bd, var_1a5cfa14, var_2d49050e);
			}
			function_4e418837(self.var_722885f3, var_6e829dcf.var_722885f3, var_72896920);
			self function_d02a2e25(var_ab23f9bd, var_1a5cfa14, var_2d49050e, var_f07c0031);
			var_6a9adb24 = var_6a9adb24 - 0.05;
			wait(0.05);
		}
	#/
}

/*
	Name: function_2c520d1
	Namespace: namespace_eae8c9fa
	Checksum: 0xACEE10D5
	Offset: 0x55A0
	Size: 0xC5
	Parameters: 1
	Flags: None
*/
function function_2c520d1(var_5dc5e20a)
{
	/#
		var_6ab6f4fd = var_5dc5e20a function_89c87c9c();
		var_1a859714 = function_bc7ce905(var_6ab6f4fd);
		var_bd00ff2a = VectorScale(var_1a859714, 8000);
		var_f8681460 = var_5dc5e20a function_501eb072();
		var_a52faa04 = function_e1dc201c(var_f8681460, var_f8681460 + var_bd00ff2a, 0, undefined);
		return var_a52faa04["Dev Block strings are not supported"];
	#/
}

/*
	Name: function_71fc369f
	Namespace: namespace_eae8c9fa
	Checksum: 0x90F6F6A8
	Offset: 0x5670
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_71fc369f(var_90ca1fdd, var_d900369a)
{
	/#
		if(!isdefined(var_d900369a))
		{
			var_d900369a = (1, 0, 1);
		}
		function_30077d70(var_90ca1fdd.var_722885f3, VectorScale((-1, -1, 0), 16), VectorScale((1, 1, 1), 16), 0, var_d900369a, 1, 0, 1);
	#/
}

/*
	Name: function_11a3f646
	Namespace: namespace_eae8c9fa
	Checksum: 0xAE81BC87
	Offset: 0x56F0
	Size: 0x47
	Parameters: 2
	Flags: None
*/
function function_11a3f646(var_90ca1fdd, var_d900369a)
{
	/#
		level endon("hash_6c832592");
		for(;;)
		{
			function_71fc369f(var_90ca1fdd, var_d900369a);
			wait(0.05);
		}
	#/
}

/*
	Name: function_7a3af9ad
	Namespace: namespace_eae8c9fa
	Checksum: 0x5A16418B
	Offset: 0x5740
	Size: 0x19
	Parameters: 0
	Flags: None
*/
function function_7a3af9ad()
{
	/#
		wait(5);
		level notify("hash_6c832592");
	#/
}

/*
	Name: function_dfff46e4
	Namespace: namespace_eae8c9fa
	Checksum: 0xDDCCDFDB
	Offset: 0x5768
	Size: 0x11F
	Parameters: 1
	Flags: None
*/
function function_dfff46e4(var_5dc5e20a)
{
	/#
		for(;;)
		{
			wait(0.05);
			var_722885f3 = function_2c520d1(var_5dc5e20a);
			var_90ca1fdd = function_6d5b92c7(var_722885f3);
			if(!isdefined(var_90ca1fdd))
			{
				continue;
			}
			if(var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
			{
				return var_90ca1fdd;
			}
			else if(var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
			{
				return undefined;
			}
			if(var_90ca1fdd.var_fe311e35 == "Dev Block strings are not supported")
			{
				function_71fc369f(var_90ca1fdd, (1, 0, 1));
				continue;
			}
			function_71fc369f(var_90ca1fdd, (0.85, 0.85, 0.1));
		}
	#/
}

/*
	Name: function_fe53bfd5
	Namespace: namespace_eae8c9fa
	Checksum: 0xE203DB97
	Offset: 0x5890
	Size: 0x1A7
	Parameters: 0
	Flags: None
*/
function function_fe53bfd5()
{
	/#
		var_5dc5e20a = namespace_82b91a51::function_5e770196();
		var_34fb19f = undefined;
		while(!isdefined(var_34fb19f))
		{
			var_34fb19f = function_dfff46e4(var_5dc5e20a);
			if(var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
			{
				level notify("hash_6c832592");
				return undefined;
			}
		}
		level thread function_11a3f646(var_34fb19f, (0, 1, 0));
		while(var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
		{
			wait(0.05);
		}
		var_3fc1574 = undefined;
		while(!isdefined(var_3fc1574))
		{
			var_3fc1574 = function_dfff46e4(var_5dc5e20a);
			if(var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
			{
				level notify("hash_6c832592");
				return undefined;
			}
		}
		level thread function_11a3f646(var_3fc1574, (0, 1, 0));
		level thread function_7a3af9ad();
		var_84970cc4 = [];
		var_84970cc4[0] = var_34fb19f;
		var_84970cc4[1] = var_3fc1574;
		return var_84970cc4;
	#/
}

/*
	Name: function_348d62f8
	Namespace: namespace_eae8c9fa
	Checksum: 0x5FE65E0E
	Offset: 0x5A40
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_348d62f8(var_722885f3, var_d900369a)
{
	/#
		if(!isdefined(var_d900369a))
		{
			var_d900369a = (1, 0, 1);
		}
		function_2d3eaa0e(var_722885f3, 16, var_d900369a, 0.25, 0, 16, 1);
	#/
}

/*
	Name: function_7a7785fc
	Namespace: namespace_eae8c9fa
	Checksum: 0xDF6AFAD9
	Offset: 0x5AA8
	Size: 0x9F
	Parameters: 1
	Flags: None
*/
function function_7a7785fc(var_5dc5e20a)
{
	/#
		for(;;)
		{
			wait(0.05);
			var_722885f3 = function_2c520d1(var_5dc5e20a);
			if(var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
			{
				return var_722885f3;
			}
			else if(var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
			{
				return undefined;
			}
			function_348d62f8(var_722885f3, (1, 0, 1));
		}
	#/
}

/*
	Name: function_2258c623
	Namespace: namespace_eae8c9fa
	Checksum: 0x53BB7461
	Offset: 0x5B50
	Size: 0x11F
	Parameters: 0
	Flags: None
*/
function function_2258c623()
{
	/#
		var_5dc5e20a = namespace_82b91a51::function_5e770196();
		var_34fb19f = undefined;
		var_d3a18b74 = [];
		while(!isdefined(var_34fb19f))
		{
			var_34fb19f = function_7a7785fc(var_5dc5e20a);
			if(!isdefined(var_34fb19f))
			{
				return var_d3a18b74;
			}
		}
		while(var_5dc5e20a function_ce2b5f5("Dev Block strings are not supported"))
		{
			wait(0.05);
		}
		var_3fc1574 = undefined;
		while(!isdefined(var_3fc1574))
		{
			var_3fc1574 = function_7a7785fc(var_5dc5e20a);
			if(!isdefined(var_3fc1574))
			{
				return var_d3a18b74;
			}
		}
		var_d3a18b74[0] = var_34fb19f;
		var_d3a18b74[1] = var_3fc1574;
		return var_d3a18b74;
	#/
}


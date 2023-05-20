#using scripts\cp\_debug_menu;
#using scripts\cp\_util;
#using scripts\shared\ai\archetype_utility;
#using scripts\shared\ai\systems\init;
#using scripts\shared\ai\systems\weaponlist;
#using scripts\shared\ai_puppeteer_shared;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\colors_shared;
#using scripts\shared\hud_util_shared;
#using scripts\shared\spawner_shared;
#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_f96f74aa;

/*
	Name: function_2dc19561
	Namespace: namespace_f96f74aa
	Checksum: 0x48227B8
	Offset: 0x220
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	/#
		namespace_bea63b8a::function_50f16166("Dev Block strings are not supported", &function_8c87d8eb, undefined, undefined);
	#/
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_f96f74aa
	Checksum: 0x6A97CE95
	Offset: 0x260
	Size: 0xB3
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	/#
		level.var_20edc3aa = 14;
		level.var_f089ed = [];
		level.var_f089ed["Dev Block strings are not supported"] = (1, 0, 0);
		level.var_f089ed["Dev Block strings are not supported"] = (0, 1, 0);
		level.var_f089ed["Dev Block strings are not supported"] = (1, 1, 0);
		level.var_f089ed["Dev Block strings are not supported"] = (1, 1, 1);
		thread function_198f6ed8();
		thread function_d6bb5795();
		thread function_6e62d3e3();
	#/
}

/*
	Name: function_35afc60e
	Namespace: namespace_f96f74aa
	Checksum: 0xBCDFA15D
	Offset: 0x320
	Size: 0xDB
	Parameters: 1
	Flags: None
*/
function function_35afc60e(var_791757)
{
	/#
		var_d84e54db = function_c20c2e8();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_d84e54db.size; var_c957f6b6++)
		{
			if(var_d84e54db[var_c957f6b6] function_2235f722() != var_791757)
			{
				continue;
			}
			var_d84e54db[var_c957f6b6] thread function_5390672f(function_6f1ebe57("Dev Block strings are not supported"));
		}
		/#
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		#/
	#/
}

/*
	Name: function_3670931
	Namespace: namespace_f96f74aa
	Checksum: 0x59EC0D79
	Offset: 0x408
	Size: 0x83
	Parameters: 2
	Flags: None
*/
function function_3670931(var_b31a6ddf, var_20f3f965)
{
	/#
		var_22ae8d39 = self function_d48f2ab3(var_b31a6ddf);
		var_37831ac3 = self function_cd1d99bd(var_b31a6ddf);
		function_351b2d2a(var_22ae8d39, var_37831ac3, var_20f3f965);
	#/
}

/*
	Name: function_772b561c
	Namespace: namespace_f96f74aa
	Checksum: 0x3A943FFF
	Offset: 0x498
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_772b561c(var_20f3f965)
{
	/#
		for(;;)
		{
			function_351b2d2a(self.var_722885f3, self.var_6ab6f4fd, var_20f3f965);
			wait(0.05);
		}
	#/
}

/*
	Name: function_1990f86f
	Namespace: namespace_f96f74aa
	Checksum: 0x3793B79C
	Offset: 0x4E0
	Size: 0x3F
	Parameters: 2
	Flags: None
*/
function function_1990f86f(var_22ae8d39, var_37831ac3)
{
	/#
		for(;;)
		{
			function_351b2d2a(var_22ae8d39, var_37831ac3);
			wait(0.05);
		}
	#/
}

/*
	Name: function_252cee46
	Namespace: namespace_f96f74aa
	Checksum: 0x93399B64
	Offset: 0x528
	Size: 0x37
	Parameters: 0
	Flags: None
*/
function function_252cee46()
{
	/#
		for(;;)
		{
			function_351b2d2a(self.var_722885f3, self.var_6ab6f4fd);
			wait(0.05);
		}
	#/
}

/*
	Name: function_351b2d2a
	Namespace: namespace_f96f74aa
	Checksum: 0xC0B4A71A
	Offset: 0x568
	Size: 0x2BB
	Parameters: 3
	Flags: None
*/
function function_351b2d2a(var_22ae8d39, var_37831ac3, var_20f3f965)
{
	/#
		var_1a859714 = function_bc7ce905(var_37831ac3);
		var_b393f1e7 = VectorScale(var_1a859714, 50);
		var_1c4abaa0 = VectorScale(var_1a859714, 50 * 0.8);
		var_7d6c9041 = function_298b8148(var_37831ac3);
		var_4368f9d0 = VectorScale(var_7d6c9041, 50 * -0.2);
		var_e7e9a7ab = VectorScale(var_7d6c9041, 50 * 0.2);
		var_b5f6560e = function_aba60185(var_37831ac3);
		var_7d6c9041 = VectorScale(var_7d6c9041, 50);
		var_b5f6560e = VectorScale(var_b5f6560e, 50);
		var_fd4d3e12 = (0.9, 0.2, 0.2);
		var_10e5c2b2 = (0.2, 0.9, 0.2);
		var_a8886e1 = (0.2, 0.2, 0.9);
		if(isdefined(var_20f3f965))
		{
			var_fd4d3e12 = var_20f3f965;
			var_10e5c2b2 = var_20f3f965;
			var_a8886e1 = var_20f3f965;
		}
		function_4e418837(var_22ae8d39, var_22ae8d39 + var_b393f1e7, var_fd4d3e12, 0.9);
		function_4e418837(var_22ae8d39 + var_b393f1e7, var_22ae8d39 + var_1c4abaa0 + var_e7e9a7ab, var_fd4d3e12, 0.9);
		function_4e418837(var_22ae8d39 + var_b393f1e7, var_22ae8d39 + var_1c4abaa0 + var_4368f9d0, var_fd4d3e12, 0.9);
		function_4e418837(var_22ae8d39, var_22ae8d39 + var_7d6c9041, var_a8886e1, 0.9);
		function_4e418837(var_22ae8d39, var_22ae8d39 + var_b5f6560e, var_10e5c2b2, 0.9);
	#/
}

/*
	Name: function_3a767f94
	Namespace: namespace_f96f74aa
	Checksum: 0x81E515F0
	Offset: 0x830
	Size: 0x4F
	Parameters: 0
	Flags: None
*/
function function_3a767f94()
{
	/#
		for(;;)
		{
			function_351b2d2a(level.var_5dc5e20a.var_722885f3, level.var_5dc5e20a function_89c87c9c(), (1, 1, 1));
			wait(0.05);
		}
	#/
}

/*
	Name: function_23c143a2
	Namespace: namespace_f96f74aa
	Checksum: 0xFF551FF8
	Offset: 0x888
	Size: 0x47
	Parameters: 2
	Flags: None
*/
function function_23c143a2(var_b31a6ddf, var_20f3f965)
{
	/#
		self endon("hash_128f8789");
		for(;;)
		{
			function_3670931(var_b31a6ddf, var_20f3f965);
			wait(0.05);
		}
	#/
}

/*
	Name: function_5390672f
	Namespace: namespace_f96f74aa
	Checksum: 0xF5055DBA
	Offset: 0x8D8
	Size: 0x3F
	Parameters: 1
	Flags: None
*/
function function_5390672f(var_b31a6ddf)
{
	/#
		while(!isdefined(self.var_722885f3))
		{
			break;
			function_3670931(var_b31a6ddf);
			wait(0.05);
		}
	#/
}

/*
	Name: function_5ae336c6
	Namespace: namespace_f96f74aa
	Checksum: 0xAE1589C0
	Offset: 0x920
	Size: 0x10D
	Parameters: 2
	Flags: None
*/
function function_5ae336c6(var_fe311e35, var_b31a6ddf)
{
	/#
		if(var_fe311e35 == "Dev Block strings are not supported")
		{
			var_d84e54db = function_c20c2e8();
			for(var_c957f6b6 = 0; var_c957f6b6 < var_d84e54db.size; var_c957f6b6++)
			{
				var_d84e54db[var_c957f6b6] function_3670931(var_b31a6ddf);
			}
			break;
		}
		var_96fa87af = function_99201f25("Dev Block strings are not supported", "Dev Block strings are not supported");
		for(var_c957f6b6 = 0; var_c957f6b6 < var_96fa87af.size; var_c957f6b6++)
		{
			var_96fa87af[var_c957f6b6] function_3670931(var_b31a6ddf);
		}
	#/
}

/*
	Name: function_e8b49185
	Namespace: namespace_f96f74aa
	Checksum: 0xFE7DB7D3
	Offset: 0xA38
	Size: 0x8F
	Parameters: 1
	Flags: None
*/
function function_e8b49185(var_2f06d687)
{
	/#
		var_5e7a027e = [];
		for(var_7f95eaf7 = 0; var_7f95eaf7 < level.var_b7026eba.size; var_7f95eaf7++)
		{
			if(level.var_b7026eba[var_7f95eaf7] == var_2f06d687)
			{
				continue;
			}
			var_5e7a027e[var_5e7a027e.size] = level.var_b7026eba[var_7f95eaf7];
		}
		level.var_b7026eba = var_5e7a027e;
	#/
}

/*
	Name: function_2957c2ff
	Namespace: namespace_f96f74aa
	Checksum: 0xEBD5B11B
	Offset: 0xAD0
	Size: 0x67
	Parameters: 1
	Flags: None
*/
function function_2957c2ff(var_22ae8d39)
{
	/#
		for(;;)
		{
			function_4e418837(var_22ae8d39 + VectorScale((0, 0, 1), 35), var_22ae8d39, (0.2, 0.5, 0.8), 0.5);
			wait(0.05);
		}
	#/
}

/*
	Name: function_1a6b9fc2
	Namespace: namespace_f96f74aa
	Checksum: 0xA2078325
	Offset: 0xB40
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_1a6b9fc2(var_a3d46ee4)
{
	/#
		var_22ae8d39 = undefined;
		while(function_5b49d38c(var_a3d46ee4))
		{
			var_22ae8d39 = var_a3d46ee4.var_722885f3;
			wait(0.05);
		}
		for(;;)
		{
			function_4e418837(var_22ae8d39 + VectorScale((0, 0, 1), 35), var_22ae8d39, (1, 0.2, 0.1), 0.5);
			wait(0.05);
		}
	#/
}

/*
	Name: function_623a7ff5
	Namespace: namespace_f96f74aa
	Checksum: 0x988EE688
	Offset: 0xBF0
	Size: 0x117
	Parameters: 0
	Flags: None
*/
function function_623a7ff5()
{
	/#
		self notify("hash_276537bd");
		self endon("hash_276537bd");
		self endon("hash_128f8789");
		while(self.var_f96bc9fe.var_c8a628d6 <= 0)
		{
			function_8f3e0f73(self function_d48f2ab3("Dev Block strings are not supported") + VectorScale((0, 0, 1), 15), "Dev Block strings are not supported", (0.3, 1, 1), 1);
			continue;
			function_8f3e0f73(self function_d48f2ab3("Dev Block strings are not supported") + VectorScale((0, 0, 1), 15), self.var_f96bc9fe.var_c8a628d6 / 20, (0.3, 1, 1), 1);
			wait(0.05);
		}
	#/
}

/*
	Name: function_27526d8c
	Namespace: namespace_f96f74aa
	Checksum: 0x6B45A073
	Offset: 0xD10
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_27526d8c()
{
	/#
		self notify("hash_276537bd");
	#/
}

/*
	Name: function_f4f56901
	Namespace: namespace_f96f74aa
	Checksum: 0xE3C73AC7
	Offset: 0xD30
	Size: 0x5B
	Parameters: 2
	Flags: None
*/
function function_f4f56901(var_14f658ae, var_1676559f)
{
	/#
		/#
			if(function_6f1ebe57(var_14f658ae) == "Dev Block strings are not supported")
			{
				function_6c1294b8(var_14f658ae, var_1676559f);
			}
		#/
	#/
}

/*
	Name: function_b856d862
	Namespace: namespace_f96f74aa
	Checksum: 0x6F6D57C1
	Offset: 0xD98
	Size: 0xEF
	Parameters: 1
	Flags: None
*/
function function_b856d862(var_791757)
{
	/#
		var_d84e54db = function_c20c2e8();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_d84e54db.size; var_c957f6b6++)
		{
			if(var_d84e54db[var_c957f6b6] function_2235f722() != var_791757)
			{
				continue;
			}
			var_2395e945 = function_3f10449f();
			function_4e418837(var_2395e945[0].var_722885f3, var_d84e54db[var_c957f6b6].var_722885f3, (0.2, 0.3, 1));
			return;
		}
	#/
}

/*
	Name: function_198f6ed8
	Namespace: namespace_f96f74aa
	Checksum: 0x63A43B57
	Offset: 0xE90
	Size: 0x1327
	Parameters: 0
	Flags: None
*/
function function_198f6ed8()
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
		function_f4f56901("Dev Block strings are not supported", "Dev Block strings are not supported");
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
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		level.var_bce48547 = 0;
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
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		for(var_c957f6b6 = 1; var_c957f6b6 <= level.var_20edc3aa; var_c957f6b6++)
		{
			if(function_6f1ebe57("Dev Block strings are not supported" + var_c957f6b6) == "Dev Block strings are not supported")
			{
				function_6c1294b8("Dev Block strings are not supported" + var_c957f6b6, "Dev Block strings are not supported");
			}
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
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		level.var_ce1f7160 = -23430;
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		waittillframeend;
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		var_c7c95dcd = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
		while(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			function_b856d862(function_6f1ebe57("Dev Block strings are not supported"));
			if(function_4bd0142f("Dev Block strings are not supported") == 1)
			{
				level thread function_2ceda325();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread function_5ae336c6("Dev Block strings are not supported", function_6f1ebe57("Dev Block strings are not supported"));
				if(function_6f1ebe57("Dev Block strings are not supported") > 0)
				{
					thread function_35afc60e(function_6f1ebe57("Dev Block strings are not supported"));
				}
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				level thread function_1b48a096();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				level thread function_2f07adbd();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				level thread function_60739d4f();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				level thread function_3f8623e8();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread function_5ae336c6("Dev Block strings are not supported", function_6f1ebe57("Dev Block strings are not supported"));
			}
			thread function_cd5df5f3();
			if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread function_a21fd562();
			}
			for(var_c957f6b6 = 1; var_c957f6b6 <= level.var_20edc3aa; var_c957f6b6++)
			{
				if(function_6f1ebe57("Dev Block strings are not supported" + var_c957f6b6) != "Dev Block strings are not supported")
				{
					thread function_e2b31d5(var_c957f6b6);
				}
			}
			if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread function_493715dc();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				thread function_8bd4c862();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				namespace_84970cc4::function_966ecb29(function_c20c2e8(), &function_623a7ff5);
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				namespace_84970cc4::function_966ecb29(function_c20c2e8(), &function_27526d8c);
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				thread function_af59d001();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				var_2395e945 = function_3f10449f();
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					var_2395e945[var_c957f6b6] function_c3945cd5(50, (324234, 3423423, 2323));
				}
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				var_2395e945 = function_3f10449f();
				for(var_c957f6b6 = 0; var_c957f6b6 < var_2395e945.size; var_c957f6b6++)
				{
					var_2395e945[var_c957f6b6] function_c3945cd5(50, (324234, 3423423, 2323));
				}
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				thread function_c6b94609();
			}
			if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported" && function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
			{
				function_da39cd7e();
			}
			level.var_bce48547 = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
			if(!var_c7c95dcd && function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				var_c7c95dcd = 1;
			}
			if(var_c7c95dcd && function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				anim.var_fcae7efb = &namespace_82b91a51::function_e09caba4;
				anim notify("hash_9a6633d5");
				var_c7c95dcd = 0;
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
			{
				if(!isdefined(level.var_eb736920))
				{
					thread function_437172a();
				}
				var_2395e945 = function_3f10449f();
				level.var_eb736920 = var_2395e945[0] function_501eb072();
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported" && (!isdefined(level.var_fb723f3f) || level.var_fb723f3f == 0))
			{
				level.var_fb723f3f = 1;
				thread function_34690750();
			}
			else if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported" && isdefined(level.var_fb723f3f) && level.var_fb723f3f == 1)
			{
				level.var_fb723f3f = 0;
				level notify("hash_d123a0a5");
			}
			function_922b5110();
			wait(0.05);
		}
	#/
}

/*
	Name: function_922b5110
	Namespace: namespace_f96f74aa
	Checksum: 0xF64BC17F
	Offset: 0x21C0
	Size: 0x1A1
	Parameters: 0
	Flags: None
*/
function function_922b5110()
{
	/#
		var_117f1d5a = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
		if(!var_117f1d5a)
		{
			return;
		}
		var_140e9c8f = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
		var_4aa508b3 = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
		var_65184ffa = function_2ba4336d();
		foreach(var_d84e54db in var_65184ffa)
		{
			if(var_140e9c8f)
			{
				var_d84e54db.var_52229333 = 1;
			}
			else
			{
				var_d84e54db.var_52229333 = 0;
			}
			if(var_4aa508b3)
			{
				var_d84e54db function_873ad9f2(level.var_2395e945[0]);
				continue;
			}
			var_d84e54db function_873ad9f2();
		}
	#/
}

/*
	Name: function_437172a
	Namespace: namespace_f96f74aa
	Checksum: 0xE4E1AA1A
	Offset: 0x2370
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function function_437172a()
{
	/#
		var_34559887 = undefined;
		var_4653ce6c = undefined;
		var_34559887 = (15.1859, -12.2822, 4.071);
		var_4653ce6c = (947.2, -10918, 64.9514);
		/#
			namespace_33b293fd::function_a7ee953(!isdefined(level.var_7ba56af3));
		#/
		for(;;)
		{
			var_2395e945 = function_3f10449f();
			wait(0.05);
			var_34fb19f = var_34559887;
			var_3fc1574 = var_4653ce6c;
			if(!isdefined(var_34559887))
			{
				var_34fb19f = level.var_eb736920;
			}
			if(!isdefined(var_4653ce6c))
			{
				var_3fc1574 = var_2395e945[0] function_501eb072();
			}
			var_a52faa04 = function_e1dc201c(var_34fb19f, var_3fc1574, 0, undefined);
			function_4e418837(var_34fb19f, var_a52faa04["Dev Block strings are not supported"], (0.9, 0.5, 0.8), 0.5);
		}
	#/
}

/*
	Name: function_16afe8cf
	Namespace: namespace_f96f74aa
	Checksum: 0x1E358FF9
	Offset: 0x24F8
	Size: 0x1DD
	Parameters: 0
	Flags: None
*/
function function_16afe8cf()
{
	/#
		while(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			return;
			var_d3c22d53 = [];
			var_d84e54db = function_c20c2e8();
			for(var_c957f6b6 = 0; var_c957f6b6 < var_d84e54db.size; var_c957f6b6++)
			{
				if(isdefined(var_d84e54db[var_c957f6b6].var_16afe8cf))
				{
					continue;
				}
				var_6b35e678 = 0;
				for(var_7f95eaf7 = 0; var_7f95eaf7 < var_d3c22d53.size; var_7f95eaf7++)
				{
					if(var_d3c22d53[var_7f95eaf7] != var_d84e54db[var_c957f6b6].var_e6e9b8de)
					{
						continue;
					}
					var_6b35e678 = 1;
					break;
				}
				if(!var_6b35e678)
				{
					var_d3c22d53[var_d3c22d53.size] = var_d84e54db[var_c957f6b6].var_e6e9b8de;
				}
			}
			if(var_d3c22d53.size)
			{
				function_895b00("Dev Block strings are not supported");
				function_895b00("Dev Block strings are not supported");
				for(var_c957f6b6 = 0; var_c957f6b6 < var_d3c22d53.size; var_c957f6b6++)
				{
					function_895b00("Dev Block strings are not supported", var_d3c22d53[var_c957f6b6]);
				}
				function_895b00("Dev Block strings are not supported");
			}
			wait(15);
		}
	#/
}

/*
	Name: function_8bd4c862
	Namespace: namespace_f96f74aa
	Checksum: 0x5D08F0E2
	Offset: 0x26E0
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_8bd4c862()
{
	/#
		var_2395e945 = function_3f10449f();
		var_5dc5e20a = var_2395e945[0];
		var_14f658ae = function_6f1ebe57("Dev Block strings are not supported");
		if(var_14f658ae == "Dev Block strings are not supported")
		{
			var_d84e54db = function_b8494651("Dev Block strings are not supported", "Dev Block strings are not supported");
			for(var_c957f6b6 = 0; var_c957f6b6 < var_d84e54db.size; var_c957f6b6++)
			{
				var_2bafb34f = 0;
				var_e6e9b8de = var_d84e54db[var_c957f6b6].var_e6e9b8de;
				if(isdefined(var_e6e9b8de) && (function_5dbf7eca(var_e6e9b8de, "Dev Block strings are not supported") || function_5dbf7eca(var_e6e9b8de, "Dev Block strings are not supported") || function_5dbf7eca(var_e6e9b8de, "Dev Block strings are not supported")))
				{
					var_2bafb34f = 1;
				}
				if(!var_2bafb34f)
				{
					var_d84e54db[var_c957f6b6] function_c3945cd5(var_d84e54db[var_c957f6b6].var_3a90f16b, (0, 0, 0), var_5dc5e20a);
				}
			}
			break;
		}
		if(var_14f658ae == "Dev Block strings are not supported")
		{
			var_d84e54db = function_b8494651("Dev Block strings are not supported");
			for(var_c957f6b6 = 0; var_c957f6b6 < var_d84e54db.size; var_c957f6b6++)
			{
				var_d84e54db[var_c957f6b6] function_c3945cd5(var_d84e54db[var_c957f6b6].var_3a90f16b, (0, 0, 0), var_5dc5e20a);
			}
			break;
		}
		if(var_14f658ae == "Dev Block strings are not supported")
		{
			var_d84e54db = function_24e95264("Dev Block strings are not supported", "Dev Block strings are not supported");
			for(var_c957f6b6 = 0; var_c957f6b6 < var_d84e54db.size; var_c957f6b6++)
			{
				var_d84e54db[var_c957f6b6] function_c3945cd5(var_d84e54db[var_c957f6b6].var_3a90f16b, (0, 0, 0), var_5dc5e20a);
			}
		}
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: function_5a84c632
	Namespace: namespace_f96f74aa
	Checksum: 0x39FFB43E
	Offset: 0x29E0
	Size: 0x7
	Parameters: 0
	Flags: None
*/
function function_5a84c632()
{
	/#
	#/
}

/*
	Name: function_a5e55398
	Namespace: namespace_f96f74aa
	Checksum: 0xD558006
	Offset: 0x29F0
	Size: 0x2B
	Parameters: 0
	Flags: None
*/
function function_a5e55398()
{
	/#
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: function_af59d001
	Namespace: namespace_f96f74aa
	Checksum: 0xFBDAF281
	Offset: 0x2A28
	Size: 0x15F
	Parameters: 0
	Flags: None
*/
function function_af59d001()
{
	/#
		waittillframeend;
		for(var_c957f6b6 = 0; var_c957f6b6 < 50; var_c957f6b6++)
		{
			if(!isdefined(level.var_a3fc3ccd[var_c957f6b6]))
			{
				break;
			}
			var_84970cc4 = level.var_a3fc3ccd[var_c957f6b6];
			for(var_7f95eaf7 = 0; var_7f95eaf7 < var_84970cc4.size; var_7f95eaf7++)
			{
				var_a3d46ee4 = var_84970cc4[var_7f95eaf7];
				if(isdefined(var_a3d46ee4.var_60a22b86))
				{
					function_8f3e0f73(var_a3d46ee4.var_722885f3, var_c957f6b6 + "Dev Block strings are not supported" + var_a3d46ee4.var_60a22b86, (0, 0.8, 0.6), 5);
					continue;
				}
				function_8f3e0f73(var_a3d46ee4.var_722885f3, var_c957f6b6 + "Dev Block strings are not supported" + "Dev Block strings are not supported", (0, 0.8, 0.6), 5);
			}
		}
	#/
}

/*
	Name: function_db2ecc51
	Namespace: namespace_f96f74aa
	Checksum: 0xDACD9543
	Offset: 0x2B90
	Size: 0xA5
	Parameters: 0
	Flags: None
*/
function function_db2ecc51()
{
	/#
		var_9371e8db = [];
		var_9371e8db = function_99201f25("Dev Block strings are not supported", "Dev Block strings are not supported");
		var_84970cc4 = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < var_9371e8db.size; var_c957f6b6++)
		{
			var_84970cc4[var_c957f6b6] = var_9371e8db[var_c957f6b6] function_9af7862e();
		}
		return var_84970cc4;
	#/
}

/*
	Name: function_9af7862e
	Namespace: namespace_f96f74aa
	Checksum: 0xB640BE75
	Offset: 0x2C40
	Size: 0x125
	Parameters: 0
	Flags: None
*/
function function_9af7862e()
{
	/#
		var_84970cc4 = [];
		var_a3d46ee4 = self;
		while(isdefined(var_a3d46ee4))
		{
			var_84970cc4[var_84970cc4.size] = var_a3d46ee4;
			if(!isdefined(var_a3d46ee4) || !isdefined(var_a3d46ee4.var_b07228b6))
			{
				break;
			}
			var_a3d46ee4 = function_6ada35ba(var_a3d46ee4.var_b07228b6, "Dev Block strings are not supported");
			if(isdefined(var_a3d46ee4) && var_a3d46ee4 == var_84970cc4[0])
			{
				var_84970cc4[var_84970cc4.size] = var_a3d46ee4;
				break;
			}
		}
		var_d979839e = [];
		for(var_c957f6b6 = 0; var_c957f6b6 < var_84970cc4.size; var_c957f6b6++)
		{
			var_d979839e[var_c957f6b6] = var_84970cc4[var_c957f6b6].var_722885f3;
		}
		return var_d979839e;
	#/
}

/*
	Name: function_854418c9
	Namespace: namespace_f96f74aa
	Checksum: 0x63961390
	Offset: 0x2D70
	Size: 0x49
	Parameters: 2
	Flags: None
*/
function function_854418c9(var_d2412961, var_1edae8b9)
{
	/#
		return (var_d2412961[0] * var_1edae8b9, var_d2412961[1] * var_1edae8b9, var_d2412961[2] * var_1edae8b9);
	#/
}

/*
	Name: function_56457375
	Namespace: namespace_f96f74aa
	Checksum: 0x9BCC0140
	Offset: 0x2DC8
	Size: 0x12B
	Parameters: 1
	Flags: None
*/
function function_56457375(var_722885f3)
{
	/#
		var_a5c9da0e = function_f679a325(var_722885f3 - self function_cc086df());
		var_a6a0b668 = function_f679a325(var_722885f3 - VectorScale((0, 0, 1), 24) - self function_cc086df());
		var_89dbf78e = function_5f9a4869(var_a5c9da0e, var_a6a0b668);
		var_879d92ec = function_bc7ce905(self function_89c87c9c());
		var_5f9a4869 = function_5f9a4869(var_879d92ec, var_a5c9da0e);
		if(var_5f9a4869 > var_89dbf78e)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	#/
}

/*
	Name: function_c6b94609
	Namespace: namespace_f96f74aa
	Checksum: 0xF53F8B38
	Offset: 0x2F00
	Size: 0x113
	Parameters: 0
	Flags: None
*/
function function_c6b94609()
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
		var_b5a4f84f = function_4bd0142f("Dev Block strings are not supported");
		var_a1506c2c = function_4bd0142f("Dev Block strings are not supported");
		function_a3c3db68(var_b5a4f84f, var_a1506c2c, 1, 1, 1, 0);
	#/
}

/*
	Name: function_da39cd7e
	Namespace: namespace_f96f74aa
	Checksum: 0xE53222EC
	Offset: 0x3020
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_da39cd7e()
{
	/#
		level.var_ce1f7160 = GetTime();
		thread function_d891d05d();
	#/
}

/*
	Name: function_d891d05d
	Namespace: namespace_f96f74aa
	Checksum: 0x2411F664
	Offset: 0x3050
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_d891d05d()
{
	/#
		var_d84e54db = function_c20c2e8();
		var_270018c4 = function_6f1ebe57("Dev Block strings are not supported");
		var_aa10fce8 = undefined;
		var_2395e945 = function_3f10449f();
		if(var_270018c4 == 0)
		{
			var_aa10fce8 = var_2395e945[0];
			break;
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < var_d84e54db.size; var_c957f6b6++)
		{
			if(var_270018c4 != var_d84e54db[var_c957f6b6] function_2235f722())
			{
				continue;
			}
			var_aa10fce8 = var_d84e54db[var_c957f6b6];
			break;
		}
		if(!function_5b49d38c(var_aa10fce8))
		{
			return;
		}
		var_6372a4c1 = var_aa10fce8 function_492daadd();
		namespace_84970cc4::function_966ecb29(var_d84e54db, &function_d2987025, var_aa10fce8, var_6372a4c1);
		var_2395e945[0] thread function_d2987025(var_aa10fce8, var_6372a4c1);
	#/
}

/*
	Name: function_d2987025
	Namespace: namespace_f96f74aa
	Checksum: 0x4B06F516
	Offset: 0x31E8
	Size: 0x3CD
	Parameters: 2
	Flags: None
*/
function function_d2987025(var_aa10fce8, var_6372a4c1)
{
	/#
		self endon("hash_128f8789");
		if(self.var_3e94206a == var_aa10fce8.var_3e94206a)
		{
			return;
		}
		var_af3947cf = 0;
		var_af3947cf = var_af3947cf + self.var_d28ae602;
		var_aa86143d = 0;
		var_aa86143d = var_aa86143d + var_aa10fce8.var_d28ae602;
		var_ef76a39c = undefined;
		if(isdefined(var_6372a4c1))
		{
			var_ef76a39c = self function_492daadd();
			if(isdefined(var_ef76a39c))
			{
				var_aa86143d = var_aa86143d + function_12d05134(var_6372a4c1, var_ef76a39c);
				var_af3947cf = var_af3947cf + function_12d05134(var_ef76a39c, var_6372a4c1);
			}
		}
		if(var_aa10fce8.var_255b9315 || var_aa86143d < -900000)
		{
			var_aa86143d = "Dev Block strings are not supported";
		}
		if(self.var_255b9315 || var_af3947cf < -900000)
		{
			var_af3947cf = "Dev Block strings are not supported";
		}
		var_2395e945 = function_3f10449f();
		var_f14d5bc5 = (1, 0.5, 0.2);
		var_763975fd = (0.2, 0.5, 1);
		var_25bfbf8e = self != var_2395e945[0] && self.var_25bfbf8e;
		for(var_c957f6b6 = 0; var_c957f6b6 <= 20; var_c957f6b6++)
		{
			function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, 1), 65), "Dev Block strings are not supported", var_f14d5bc5, 3);
			function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, 1), 50), var_aa86143d, var_f14d5bc5, 5);
			if(isdefined(var_6372a4c1))
			{
				function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, 1), 35), var_6372a4c1, var_f14d5bc5, 2);
			}
			function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, 1), 15), "Dev Block strings are not supported", var_763975fd, 3);
			function_8f3e0f73(self.var_722885f3 + (0, 0, 0), var_af3947cf, var_763975fd, 5);
			if(isdefined(var_ef76a39c))
			{
				function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, -1), 15), var_ef76a39c, var_763975fd, 2);
			}
			if(var_25bfbf8e)
			{
				function_8f3e0f73(self.var_722885f3 + VectorScale((0, 0, 1), 25), "Dev Block strings are not supported", var_763975fd, 5);
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_63fac781
	Namespace: namespace_f96f74aa
	Checksum: 0x311D95C7
	Offset: 0x35C0
	Size: 0xE5
	Parameters: 0
	Flags: None
*/
function function_63fac781()
{
	/#
		level.var_81d76986 = [];
		level.var_86d1772e = [];
		waittillframeend;
		waittillframeend;
		var_3bf30796 = function_391512da(level.var_c2d9ae5b);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_3bf30796.size; var_c957f6b6++)
		{
			function_bc32eadf(var_3bf30796[var_c957f6b6]);
		}
		var_3bf30796 = function_391512da(level.var_90f2486a);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_3bf30796.size; var_c957f6b6++)
		{
			function_d5348a76(var_3bf30796[var_c957f6b6]);
		}
	#/
}

/*
	Name: function_bc32eadf
	Namespace: namespace_f96f74aa
	Checksum: 0x1F1A8413
	Offset: 0x36B0
	Size: 0x16D
	Parameters: 1
	Flags: None
*/
function function_bc32eadf(var_b691b9cf)
{
	/#
		var_1a7fbd05 = function_391512da(level.var_c2d9ae5b[var_b691b9cf]);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1a7fbd05.size; var_c957f6b6++)
		{
			var_2017476 = level.var_c2d9ae5b[var_b691b9cf][var_c957f6b6]["Dev Block strings are not supported"];
			if(!isdefined(var_2017476))
			{
				continue;
			}
			var_37da384b = level.var_c2d9ae5b[var_b691b9cf][var_c957f6b6]["Dev Block strings are not supported"];
			var_4298e0ca = level.var_c2d9ae5b[var_b691b9cf][var_c957f6b6]["Dev Block strings are not supported"];
			level.var_86d1772e[var_b691b9cf][var_37da384b][var_4298e0ca]["Dev Block strings are not supported"] = var_2017476;
			if(isdefined(level.var_c2d9ae5b[var_b691b9cf][var_c957f6b6]["Dev Block strings are not supported"]))
			{
				level.var_86d1772e[var_b691b9cf][var_37da384b][var_4298e0ca]["Dev Block strings are not supported"] = 1;
			}
		}
	#/
}

/*
	Name: function_d5348a76
	Namespace: namespace_f96f74aa
	Checksum: 0x741F5161
	Offset: 0x3828
	Size: 0x101
	Parameters: 1
	Flags: None
*/
function function_d5348a76(var_b691b9cf)
{
	/#
		var_7cc2d7aa = function_391512da(level.var_90f2486a[var_b691b9cf]);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_7cc2d7aa.size; var_c957f6b6++)
		{
			var_37da384b = var_7cc2d7aa[var_c957f6b6];
			var_2017476 = level.var_90f2486a[var_b691b9cf][var_37da384b];
			level.var_86d1772e[var_b691b9cf][var_37da384b]["Dev Block strings are not supported" + var_37da384b]["Dev Block strings are not supported"] = var_2017476;
			level.var_86d1772e[var_b691b9cf][var_37da384b]["Dev Block strings are not supported" + var_37da384b]["Dev Block strings are not supported"] = 1;
		}
	#/
}

/*
	Name: function_7fbb23d9
	Namespace: namespace_f96f74aa
	Checksum: 0x33A0EFE9
	Offset: 0x3938
	Size: 0xE7
	Parameters: 3
	Flags: None
*/
function function_7fbb23d9(var_4f8217af, var_297f9d46, var_813fc428)
{
	/#
		var_53131098 = function_c49dde5();
		var_53131098.var_b5536acc = "Dev Block strings are not supported";
		var_53131098.var_db55e535 = "Dev Block strings are not supported";
		var_53131098.var_4f8217af = var_4f8217af;
		var_53131098.var_297f9d46 = var_297f9d46;
		var_53131098.var_aabe9f43 = 1;
		var_53131098.var_2363da9c = 1;
		var_53131098.var_8e7edb95 = var_813fc428;
		level.var_5554117b[level.var_5554117b.size] = var_53131098;
		return var_53131098;
	#/
}

/*
	Name: function_cd5df5f3
	Namespace: namespace_f96f74aa
	Checksum: 0x9A542A82
	Offset: 0x3A28
	Size: 0x96B
	Parameters: 0
	Flags: None
*/
function function_cd5df5f3()
{
	/#
		var_b55533bc = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
		if(!isdefined(level.var_ea2cea69))
		{
			if(!var_b55533bc)
			{
				return;
			}
			level.var_c2b2b1f5 = 0;
			level.var_5a4ace76 = "Dev Block strings are not supported";
			level.var_ea2cea69 = [];
			level.var_f6c2c62f = [];
			level.var_71faaea0 = [];
			level.var_5554117b = [];
			level.var_cdfd9380 = 0;
			level.var_eb308447 = 0;
			level.var_a6af2926 = function_7fbb23d9(-30, 180, "Dev Block strings are not supported");
			level.var_98457b2c = function_7fbb23d9(100, 180, "Dev Block strings are not supported");
			function_7fbb23d9(10, 190, "Dev Block strings are not supported");
			function_7fbb23d9(-30, 190, "Dev Block strings are not supported");
			function_7fbb23d9(-30, 160, "Dev Block strings are not supported");
			function_7fbb23d9(-30, 150, "Dev Block strings are not supported");
			function_7fbb23d9(-30, 140, "Dev Block strings are not supported");
			level.var_235f707e = function_7fbb23d9(-30, 170, "Dev Block strings are not supported");
			level.var_235f707e.var_aabe9f43 = 0;
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_20edc3aa; var_c957f6b6++)
			{
				var_53131098 = function_c49dde5();
				var_53131098.var_b5536acc = "Dev Block strings are not supported";
				var_53131098.var_db55e535 = "Dev Block strings are not supported";
				var_53131098.var_4f8217af = 10;
				var_53131098.var_297f9d46 = 200 + var_c957f6b6 * 10;
				var_53131098.var_aabe9f43 = 1;
				var_53131098.var_2363da9c = 1;
				var_53131098.var_8e7edb95 = "Dev Block strings are not supported";
				level.var_ea2cea69[level.var_ea2cea69.size] = var_53131098;
				var_53131098 = function_c49dde5();
				var_53131098.var_b5536acc = "Dev Block strings are not supported";
				var_53131098.var_db55e535 = "Dev Block strings are not supported";
				var_53131098.var_4f8217af = -10;
				var_53131098.var_297f9d46 = 200 + var_c957f6b6 * 10;
				var_53131098.var_aabe9f43 = 1;
				var_53131098.var_2363da9c = 1;
				var_53131098.var_8e7edb95 = "Dev Block strings are not supported";
				level.var_f6c2c62f[level.var_f6c2c62f.size] = var_53131098;
				var_53131098 = function_c49dde5();
				var_53131098.var_b5536acc = "Dev Block strings are not supported";
				var_53131098.var_db55e535 = "Dev Block strings are not supported";
				var_53131098.var_4f8217af = 210;
				var_53131098.var_297f9d46 = 200 + var_c957f6b6 * 10;
				var_53131098.var_aabe9f43 = 1;
				var_53131098.var_2363da9c = 1;
				var_53131098.var_8e7edb95 = "Dev Block strings are not supported";
				level.var_71faaea0[level.var_71faaea0.size] = var_53131098;
			}
			level.var_ea2cea69[0].var_d900369a = (1, 1, 0);
			level.var_f6c2c62f[0].var_d900369a = (1, 1, 0);
		}
		else if(!var_b55533bc)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_20edc3aa; var_c957f6b6++)
			{
				level.var_ea2cea69[var_c957f6b6] function_89cd542d();
				level.var_f6c2c62f[var_c957f6b6] function_89cd542d();
				level.var_71faaea0[var_c957f6b6] function_89cd542d();
			}
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_5554117b.size; var_c957f6b6++)
			{
				level.var_5554117b[var_c957f6b6] function_89cd542d();
			}
			level.var_ea2cea69 = undefined;
			level.var_f6c2c62f = undefined;
			level.var_71faaea0 = undefined;
			level.var_5554117b = undefined;
			level.var_81d76986 = undefined;
			return;
		}
		if(!isdefined(level.var_c9080de))
		{
			level.var_cdfd9380 = 0;
		}
		if(level.var_cdfd9380)
		{
			level.var_235f707e.var_aabe9f43 = 1;
		}
		else
		{
			level.var_235f707e.var_aabe9f43 = 0;
		}
		if(!isdefined(level.var_81d76986))
		{
			function_63fac781();
		}
		level.var_f16332a4 = [];
		function_81403b2f(level.var_81d76986, undefined);
		namespace_84970cc4::function_966ecb29(level.var_81d76986, &function_49e24c84);
		var_2395e945 = function_3f10449f();
		if(level.var_cdfd9380)
		{
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_f16332a4.size; var_c957f6b6++)
			{
				var_301cf87f = level.var_f16332a4[var_c957f6b6];
				var_301cf87f.var_b739cc23 = VectorScale((1, 1, 1), 0.5);
			}
			break;
		}
		if(var_2395e945.size > 0)
		{
			var_42bd74de = 0.85;
			var_1a859714 = function_bc7ce905(var_2395e945[0] function_89c87c9c());
			for(var_c957f6b6 = 0; var_c957f6b6 < level.var_f16332a4.size; var_c957f6b6++)
			{
				var_301cf87f = level.var_f16332a4[var_c957f6b6];
				var_301cf87f.var_b739cc23 = (0.25, 1, 0.5);
				var_730c3740 = function_f679a325(var_301cf87f.var_722885f3 + VectorScale((0, 0, 1), 40) - var_2395e945[0].var_722885f3 + VectorScale((0, 0, 1), 55));
				var_9e88edde = function_5f9a4869(var_1a859714, var_730c3740);
				if(var_9e88edde < var_42bd74de)
				{
					continue;
				}
				var_42bd74de = var_9e88edde;
				level.var_c9080de = var_301cf87f;
			}
		}
		else if(isdefined(level.var_c9080de))
		{
			level.var_c9080de.var_b739cc23 = (1, 1, 0);
		}
		var_86517d78 = isdefined(level.var_c9080de);
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_f16332a4.size; var_c957f6b6++)
		{
			var_301cf87f = level.var_f16332a4[var_c957f6b6];
			var_813fc428 = "Dev Block strings are not supported";
			if(level.var_cdfd9380)
			{
				var_813fc428 = "Dev Block strings are not supported";
			}
			function_8f3e0f73(var_301cf87f.var_722885f3 + VectorScale((0, 0, 1), 40), var_813fc428 + var_301cf87f.var_81d76986.size, var_301cf87f.var_b739cc23, 1, 1);
		}
		if(var_86517d78)
		{
			function_6cb53fab();
		}
	#/
}

/*
	Name: function_6cb53fab
	Namespace: namespace_f96f74aa
	Checksum: 0x62FFED0B
	Offset: 0x43A0
	Size: 0x6EB
	Parameters: 0
	Flags: None
*/
function function_6cb53fab()
{
	/#
		var_6b45b25e = level.var_c9080de;
		var_81d76986 = var_6b45b25e.var_81d76986;
		var_b691b9cf = "Dev Block strings are not supported";
		if(isdefined(var_6b45b25e.var_b691b9cf))
		{
			var_b691b9cf = var_6b45b25e.var_b691b9cf;
		}
		level.var_a6af2926.var_8e7edb95 = "Dev Block strings are not supported" + var_b691b9cf;
		var_2395e945 = function_3f10449f();
		if(var_2395e945[0] function_ce2b5f5("Dev Block strings are not supported"))
		{
			if(!level.var_eb308447)
			{
				level.var_cdfd9380 = !level.var_cdfd9380;
				level.var_eb308447 = 1;
			}
		}
		else
		{
			level.var_eb308447 = 0;
		}
		if(var_2395e945[0] function_ce2b5f5("Dev Block strings are not supported"))
		{
			if(level.var_5a4ace76 != "Dev Block strings are not supported")
			{
				level.var_c2b2b1f5--;
			}
			level.var_5a4ace76 = "Dev Block strings are not supported";
		}
		else if(var_2395e945[0] function_ce2b5f5("Dev Block strings are not supported"))
		{
			if(level.var_5a4ace76 != "Dev Block strings are not supported")
			{
				level.var_c2b2b1f5++;
			}
			level.var_5a4ace76 = "Dev Block strings are not supported";
		}
		else
		{
			level.var_5a4ace76 = "Dev Block strings are not supported";
		}
		for(var_c957f6b6 = 0; var_c957f6b6 < level.var_20edc3aa; var_c957f6b6++)
		{
			var_53131098 = level.var_ea2cea69[var_c957f6b6];
			var_53131098.var_8e7edb95 = "Dev Block strings are not supported";
			var_53131098.var_d900369a = (1, 1, 1);
			var_53131098 = level.var_f6c2c62f[var_c957f6b6];
			var_53131098.var_8e7edb95 = "Dev Block strings are not supported";
			var_53131098.var_d900369a = (1, 1, 1);
			var_53131098 = level.var_71faaea0[var_c957f6b6];
			var_53131098.var_8e7edb95 = "Dev Block strings are not supported";
			var_53131098.var_d900369a = (1, 1, 1);
		}
		var_e22c8ccd = function_391512da(var_81d76986);
		var_6065acbf = -1;
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e22c8ccd.size; var_c957f6b6++)
		{
			if(var_e22c8ccd[var_c957f6b6] > var_6065acbf)
			{
				var_6065acbf = var_e22c8ccd[var_c957f6b6];
			}
		}
		if(var_6065acbf == -1)
		{
			return;
		}
		if(level.var_c2b2b1f5 > var_6065acbf)
		{
			level.var_c2b2b1f5 = var_6065acbf;
		}
		if(level.var_c2b2b1f5 < 0)
		{
			level.var_c2b2b1f5 = 0;
		}
		while(isdefined(var_81d76986[level.var_c2b2b1f5]))
		{
			break;
			level.var_c2b2b1f5--;
			if(level.var_c2b2b1f5 < 0)
			{
				level.var_c2b2b1f5 = var_6065acbf;
			}
		}
		level.var_98457b2c.var_8e7edb95 = "Dev Block strings are not supported" + var_81d76986[level.var_c2b2b1f5].var_37da384b;
		level.var_ea2cea69[level.var_c2b2b1f5].var_d900369a = (1, 1, 0);
		level.var_f6c2c62f[level.var_c2b2b1f5].var_d900369a = (1, 1, 0);
		level.var_71faaea0[level.var_c2b2b1f5].var_d900369a = (1, 1, 0);
		var_60db70fa = GetTime();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_e22c8ccd.size; var_c957f6b6++)
		{
			var_f54b9c82 = var_e22c8ccd[var_c957f6b6];
			var_301cf87f = var_81d76986[var_f54b9c82];
			var_53131098 = level.var_ea2cea69[var_f54b9c82];
			var_2017476 = function_8651c3cd(var_301cf87f);
			var_53131098.var_8e7edb95 = var_f54b9c82 + 1 + "Dev Block strings are not supported" + var_301cf87f.var_4298e0ca;
			var_53131098 = level.var_f6c2c62f[var_f54b9c82];
			var_53131098.var_8e7edb95 = function_b6b79a0(var_60db70fa - var_301cf87f.var_7d1d3d30 - 60000 * 0.001);
			if(isdefined(var_2017476))
			{
				var_53131098 = level.var_71faaea0[var_f54b9c82];
				var_53131098.var_8e7edb95 = var_2017476;
				if(!function_5aa9671(var_301cf87f.var_b691b9cf, var_301cf87f.var_37da384b, var_301cf87f.var_4298e0ca))
				{
					var_53131098.var_d900369a = VectorScale((1, 1, 1), 0.7);
				}
			}
		}
		var_2395e945 = function_3f10449f();
		if(var_2395e945[0] function_ce2b5f5("Dev Block strings are not supported"))
		{
			var_301cf87f = var_81d76986[level.var_c2b2b1f5];
			var_2017476 = function_8651c3cd(var_301cf87f);
			if(!isdefined(var_2017476))
			{
				return;
			}
			if(!function_5aa9671(var_301cf87f.var_b691b9cf, var_301cf87f.var_37da384b, var_301cf87f.var_4298e0ca))
			{
				return;
			}
			level.var_86d1772e[var_301cf87f.var_b691b9cf][var_301cf87f.var_37da384b][var_301cf87f.var_4298e0ca] = undefined;
			function_493715dc();
		}
	#/
}

/*
	Name: function_8651c3cd
	Namespace: namespace_f96f74aa
	Checksum: 0xE89DA0A4
	Offset: 0x4A98
	Size: 0xD3
	Parameters: 1
	Flags: None
*/
function function_8651c3cd(var_301cf87f)
{
	/#
		if(!isdefined(level.var_86d1772e[var_301cf87f.var_b691b9cf]))
		{
			return;
		}
		if(!isdefined(level.var_86d1772e[var_301cf87f.var_b691b9cf][var_301cf87f.var_37da384b]))
		{
			return;
		}
		if(!isdefined(level.var_86d1772e[var_301cf87f.var_b691b9cf][var_301cf87f.var_37da384b][var_301cf87f.var_4298e0ca]))
		{
			return;
		}
		return level.var_86d1772e[var_301cf87f.var_b691b9cf][var_301cf87f.var_37da384b][var_301cf87f.var_4298e0ca]["Dev Block strings are not supported"];
	#/
}

/*
	Name: function_5aa9671
	Namespace: namespace_f96f74aa
	Checksum: 0x64BF1628
	Offset: 0x4B78
	Size: 0x45
	Parameters: 3
	Flags: None
*/
function function_5aa9671(var_b691b9cf, var_37da384b, var_4298e0ca)
{
	/#
		return isdefined(level.var_86d1772e[var_b691b9cf][var_37da384b][var_4298e0ca]["Dev Block strings are not supported"]);
	#/
}

/*
	Name: function_49e24c84
	Namespace: namespace_f96f74aa
	Checksum: 0x200114FD
	Offset: 0x4BC8
	Size: 0x71
	Parameters: 0
	Flags: None
*/
function function_49e24c84()
{
	/#
		var_2395e945 = function_3f10449f();
		if(function_7d15e2f8(var_2395e945[0].var_722885f3, self.var_722885f3) > 1500)
		{
			return;
		}
		level.var_f16332a4[level.var_f16332a4.size] = self;
	#/
}

/*
	Name: function_e2b31d5
	Namespace: namespace_f96f74aa
	Checksum: 0x50D81A90
	Offset: 0x4C48
	Size: 0xB3
	Parameters: 1
	Flags: None
*/
function function_e2b31d5(var_72e75789)
{
	/#
		var_b31a6ddf = function_6f1ebe57("Dev Block strings are not supported" + var_72e75789);
		if(var_b31a6ddf == "Dev Block strings are not supported")
		{
			function_2e4b8c78("Dev Block strings are not supported");
			return;
		}
		function_39ec6137(var_b31a6ddf, var_72e75789 - 1);
		function_6c1294b8("Dev Block strings are not supported" + var_72e75789, "Dev Block strings are not supported");
	#/
}

/*
	Name: function_a21fd562
	Namespace: namespace_f96f74aa
	Checksum: 0x711905BE
	Offset: 0x4D08
	Size: 0x9B
	Parameters: 0
	Flags: None
*/
function function_a21fd562()
{
	/#
		var_b31a6ddf = function_6f1ebe57("Dev Block strings are not supported");
		if(var_b31a6ddf == "Dev Block strings are not supported")
		{
			function_2e4b8c78("Dev Block strings are not supported");
			return;
		}
		function_39ec6137(var_b31a6ddf, level.var_c2b2b1f5);
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: function_39ec6137
	Namespace: namespace_f96f74aa
	Checksum: 0x71EC5DA1
	Offset: 0x4DB0
	Size: 0x163
	Parameters: 2
	Flags: None
*/
function function_39ec6137(var_b31a6ddf, var_72e75789)
{
	/#
		if(!isdefined(level.var_c9080de))
		{
			return;
		}
		if(!isdefined(level.var_c9080de.var_81d76986[var_72e75789]))
		{
			return;
		}
		var_301cf87f = level.var_c9080de.var_81d76986[var_72e75789];
		var_2017476 = function_8651c3cd(var_301cf87f);
		if(!isdefined(var_2017476) || function_5aa9671(var_301cf87f.var_b691b9cf, var_301cf87f.var_37da384b, var_301cf87f.var_4298e0ca))
		{
			level.var_86d1772e[var_301cf87f.var_b691b9cf][var_301cf87f.var_37da384b][var_301cf87f.var_4298e0ca]["Dev Block strings are not supported"] = var_b31a6ddf;
			level.var_86d1772e[var_301cf87f.var_b691b9cf][var_301cf87f.var_37da384b][var_301cf87f.var_4298e0ca]["Dev Block strings are not supported"] = 1;
			function_493715dc();
		}
	#/
}

/*
	Name: function_493715dc
	Namespace: namespace_f96f74aa
	Checksum: 0x591A8F25
	Offset: 0x4F20
	Size: 0x10B
	Parameters: 0
	Flags: None
*/
function function_493715dc()
{
	/#
		var_6741050e = "Dev Block strings are not supported" + level.var_cd724008 + "Dev Block strings are not supported";
		var_51166293 = function_5f2d88f7(var_6741050e, "Dev Block strings are not supported");
		if(var_51166293 == -1)
		{
			function_2e4b8c78("Dev Block strings are not supported" + var_6741050e + "Dev Block strings are not supported");
			return;
		}
		function_2e4b8c78("Dev Block strings are not supported" + var_6741050e);
		function_83eae51a(var_51166293);
		var_36f01cae = function_76ae2169(var_51166293);
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
	#/
}

/*
	Name: function_83eae51a
	Namespace: namespace_f96f74aa
	Checksum: 0x43768076
	Offset: 0x5038
	Size: 0x4B3
	Parameters: 1
	Flags: None
*/
function function_83eae51a(var_51166293)
{
	/#
		var_f50e09d2 = "Dev Block strings are not supported";
		function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, var_f50e09d2 + "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, var_f50e09d2 + "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
		function_73ab5c8c(var_51166293, var_f50e09d2 + "Dev Block strings are not supported");
		var_3bf30796 = function_391512da(level.var_86d1772e);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_3bf30796.size; var_c957f6b6++)
		{
			var_7cc2d7aa = function_391512da(level.var_86d1772e[var_3bf30796[var_c957f6b6]]);
			for(var_7f95eaf7 = 0; var_7f95eaf7 < var_7cc2d7aa.size; var_7f95eaf7++)
			{
				var_37da384b = var_7cc2d7aa[var_7f95eaf7];
				var_1a7fbd05 = function_391512da(level.var_86d1772e[var_3bf30796[var_c957f6b6]][var_37da384b]);
				for(var_37d22dd = 0; var_37d22dd < var_1a7fbd05.size; var_37d22dd++)
				{
					var_4298e0ca = var_1a7fbd05[var_37d22dd];
					if(!function_5aa9671(var_3bf30796[var_c957f6b6], var_37da384b, var_4298e0ca))
					{
						continue;
					}
					var_48b937ab = level.var_86d1772e[var_3bf30796[var_c957f6b6]][var_37da384b][var_4298e0ca]["Dev Block strings are not supported"];
					if(var_4298e0ca == "Dev Block strings are not supported" + var_37da384b)
					{
						function_73ab5c8c(var_51166293, var_f50e09d2 + "Dev Block strings are not supported" + function_3dc1d1a7(var_3bf30796[var_c957f6b6]) + "Dev Block strings are not supported" + function_3dc1d1a7(var_37da384b) + "Dev Block strings are not supported" + function_3dc1d1a7(var_48b937ab) + "Dev Block strings are not supported");
					}
					else
					{
						function_73ab5c8c(var_51166293, var_f50e09d2 + "Dev Block strings are not supported" + function_3dc1d1a7(var_3bf30796[var_c957f6b6]) + "Dev Block strings are not supported" + function_3dc1d1a7(var_37da384b) + "Dev Block strings are not supported" + function_3dc1d1a7(var_4298e0ca) + "Dev Block strings are not supported" + function_3dc1d1a7(var_48b937ab) + "Dev Block strings are not supported");
					}
					function_895b00("Dev Block strings are not supported" + var_48b937ab + "Dev Block strings are not supported" + var_4298e0ca);
				}
			}
		}
		function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
	#/
}

/*
	Name: function_2ceda325
	Namespace: namespace_f96f74aa
	Checksum: 0xBA2242B3
	Offset: 0x54F8
	Size: 0x2F3
	Parameters: 0
	Flags: None
*/
function function_2ceda325()
{
	/#
		function_6c1294b8("Dev Block strings are not supported", 0);
		if(!isdefined(level.var_d4b93527) || function_4bd0142f("Dev Block strings are not supported") != 1)
		{
			return;
		}
		var_2395e945 = function_3f10449f();
		var_6741050e = "Dev Block strings are not supported" + level.var_31b95173 + "Dev Block strings are not supported" + var_2395e945[0].var_b3d32c97 + "Dev Block strings are not supported";
		/#
			var_51166293 = function_5f2d88f7(var_6741050e, "Dev Block strings are not supported");
			if(var_51166293 == -1)
			{
				function_2e4b8c78("Dev Block strings are not supported" + var_6741050e + "Dev Block strings are not supported");
				return;
			}
			if(isdefined(level.var_c0e97bd))
			{
				function_73ab5c8c(var_51166293, "Dev Block strings are not supported" + level.var_c0e97bd + "Dev Block strings are not supported");
			}
			else
			{
				function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
			}
			if(level.var_d4b93527.size <= 0)
			{
				function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
			}
			foreach(var_2b2af279 in level.var_d4b93527)
			{
				function_73ab5c8c(var_51166293, var_2b2af279.var_af46d184 + "Dev Block strings are not supported" + var_2b2af279.var_c964043b + "Dev Block strings are not supported" + var_2b2af279.var_50b2a78e + "Dev Block strings are not supported" + var_2b2af279.var_1f8e7452);
			}
			function_73ab5c8c(var_51166293, "Dev Block strings are not supported");
			function_2e4b8c78("Dev Block strings are not supported" + var_6741050e);
			var_36f01cae = function_76ae2169(var_51166293);
		#/
		level.var_d4b93527 = [];
	#/
}

/*
	Name: function_3dc1d1a7
	Namespace: namespace_f96f74aa
	Checksum: 0x94437A62
	Offset: 0x57F8
	Size: 0xBF
	Parameters: 1
	Flags: None
*/
function function_3dc1d1a7(var_fa42a0e2)
{
	/#
		var_560e19e2 = "Dev Block strings are not supported";
		for(var_c957f6b6 = 0; var_c957f6b6 < var_fa42a0e2.size; var_c957f6b6++)
		{
			if(var_fa42a0e2[var_c957f6b6] == "Dev Block strings are not supported")
			{
				var_560e19e2 = var_560e19e2 + "Dev Block strings are not supported";
				var_560e19e2 = var_560e19e2 + "Dev Block strings are not supported";
				continue;
			}
			var_560e19e2 = var_560e19e2 + var_fa42a0e2[var_c957f6b6];
		}
		var_560e19e2 = var_560e19e2 + "Dev Block strings are not supported";
		return var_560e19e2;
	#/
}

/*
	Name: function_accdf135
	Namespace: namespace_f96f74aa
	Checksum: 0x7EDD907C
	Offset: 0x58C0
	Size: 0x75
	Parameters: 4
	Flags: None
*/
function function_accdf135(var_10c74fb1, var_beca1774, var_d900369a, var_98fe0d1b)
{
	/#
		for(var_c957f6b6 = 0; var_c957f6b6 < var_98fe0d1b; var_c957f6b6++)
		{
			function_4e418837(var_10c74fb1, var_beca1774, var_d900369a);
			wait(0.05);
		}
	#/
}

/*
	Name: function_4b340fbe
	Namespace: namespace_f96f74aa
	Checksum: 0x8C49236A
	Offset: 0x5940
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_4b340fbe(var_10c74fb1, var_beca1774, var_d900369a, var_98fe0d1b)
{
	/#
		thread function_accdf135(var_10c74fb1, var_beca1774, var_d900369a, var_98fe0d1b);
	#/
}

/*
	Name: function_31372144
	Namespace: namespace_f96f74aa
	Checksum: 0xDAFA6D3A
	Offset: 0x5998
	Size: 0x9D
	Parameters: 4
	Flags: None
*/
function function_31372144(var_11e3ff05, var_37e6796e, var_d900369a, var_98fe0d1b)
{
	/#
		for(var_c957f6b6 = 0; var_c957f6b6 < var_98fe0d1b; var_c957f6b6++)
		{
			if(!isdefined(var_11e3ff05) || !isdefined(var_37e6796e))
			{
				return;
			}
			function_4e418837(var_11e3ff05.var_722885f3, var_37e6796e.var_722885f3, var_d900369a);
			wait(0.05);
		}
	#/
}

/*
	Name: function_b975103d
	Namespace: namespace_f96f74aa
	Checksum: 0x2AAA9B33
	Offset: 0x5A40
	Size: 0x4B
	Parameters: 4
	Flags: None
*/
function function_b975103d(var_11e3ff05, var_37e6796e, var_d900369a, var_98fe0d1b)
{
	/#
		thread function_31372144(var_11e3ff05, var_37e6796e, var_d900369a, var_98fe0d1b);
	#/
}

/*
	Name: function_fb312e3b
	Namespace: namespace_f96f74aa
	Checksum: 0x68479A06
	Offset: 0x5A98
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
		var_724a4794 = namespace_4ed4457c::function_8bd98a60(var_813fc428, var_4f8217af, var_297f9d46, var_5c21ad3d);
		level.var_1901fb66[var_c8478ed6][level.var_1901fb66[var_c8478ed6].size] = var_724a4794;
		return var_724a4794;
	#/
}

/*
	Name: function_6c82c36c
	Namespace: namespace_f96f74aa
	Checksum: 0x4D031F93
	Offset: 0x5B68
	Size: 0x533
	Parameters: 0
	Flags: None
*/
function function_6c82c36c()
{
	/#
		var_a6c8d30f = function_84c0e150();
		var_a6c8d30f.var_4f8217af = 10;
		var_a6c8d30f.var_297f9d46 = 300;
		var_a6c8d30f.var_aabe9f43 = 0;
		var_a6c8d30f.var_b5536acc = "Dev Block strings are not supported";
		var_a6c8d30f.var_2363da9c = 1.2;
		var_a6c8d30f function_f6181aca(&"Dev Block strings are not supported");
		var_79710d4c = var_a6c8d30f.var_4f8217af + 50;
		var_91b7d2e9 = function_84c0e150();
		var_91b7d2e9.var_4f8217af = var_79710d4c;
		var_91b7d2e9.var_297f9d46 = 300;
		var_91b7d2e9.var_aabe9f43 = 0;
		var_91b7d2e9.var_b5536acc = "Dev Block strings are not supported";
		var_91b7d2e9.var_2363da9c = 1.2;
		var_91b7d2e9 function_ee69b16e(0);
		var_6bb55880 = function_84c0e150();
		var_6bb55880.var_4f8217af = 10;
		var_6bb55880.var_297f9d46 = 300;
		var_6bb55880.var_aabe9f43 = 0;
		var_6bb55880.var_b5536acc = "Dev Block strings are not supported";
		var_6bb55880.var_2363da9c = 1.2;
		var_6bb55880 function_ee69b16e(0);
		var_ddbcc7bb = function_84c0e150();
		var_ddbcc7bb.var_4f8217af = 10;
		var_ddbcc7bb.var_297f9d46 = 300;
		var_ddbcc7bb.var_aabe9f43 = 0;
		var_ddbcc7bb.var_b5536acc = "Dev Block strings are not supported";
		var_ddbcc7bb.var_2363da9c = 1.2;
		var_ddbcc7bb function_ee69b16e(0);
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		var_2395e945 = function_3f10449f();
		while(1)
		{
			if(function_4bd0142f("Dev Block strings are not supported") > 0)
			{
				var_a6c8d30f.var_aabe9f43 = 1;
				var_91b7d2e9.var_aabe9f43 = 1;
				var_6bb55880.var_aabe9f43 = 1;
				var_ddbcc7bb.var_aabe9f43 = 1;
				var_4f8217af = var_2395e945[0].var_722885f3[0];
				var_297f9d46 = var_2395e945[0].var_722885f3[1];
				var_37d22dd = var_2395e945[0].var_722885f3[2];
				var_c364c995 = 2 + function_c5b08bb8(var_4f8217af) * 8 + 10;
				var_e96743fe = 2 + function_c5b08bb8(var_297f9d46) * 8 + 10;
				var_6bb55880.var_4f8217af = var_79710d4c + var_c364c995;
				var_ddbcc7bb.var_4f8217af = var_79710d4c + var_c364c995 + var_e96743fe;
				var_91b7d2e9 function_ee69b16e(function_45c6ba11(var_4f8217af, 100));
				var_6bb55880 function_ee69b16e(function_45c6ba11(var_297f9d46, 100));
				var_ddbcc7bb function_ee69b16e(function_45c6ba11(var_37d22dd, 100));
			}
			else
			{
				var_a6c8d30f.var_aabe9f43 = 0;
				var_91b7d2e9.var_aabe9f43 = 0;
				var_6bb55880.var_aabe9f43 = 0;
				var_ddbcc7bb.var_aabe9f43 = 0;
			}
			wait(0.5);
		}
	#/
}

/*
	Name: function_c5b08bb8
	Namespace: namespace_f96f74aa
	Checksum: 0x83971EDF
	Offset: 0x60A8
	Size: 0x81
	Parameters: 1
	Flags: None
*/
function function_c5b08bb8(var_791757)
{
	/#
		var_1dbf2d26 = function_69c2f683(var_791757);
		var_74952a22 = 0;
		while(1)
		{
			var_1dbf2d26 = var_1dbf2d26 * 0.1;
			var_74952a22 = var_74952a22 + 1;
			if(var_1dbf2d26 < 1)
			{
				return var_74952a22;
			}
		}
	#/
}

/*
	Name: function_45c6ba11
	Namespace: namespace_f96f74aa
	Checksum: 0x30A54370
	Offset: 0x6138
	Size: 0x39
	Parameters: 2
	Flags: None
*/
function function_45c6ba11(var_35c84e32, var_791757)
{
	/#
		return function_b6b79a0(var_35c84e32 * var_791757) / var_791757;
	#/
}

/*
	Name: function_fc77f91e
	Namespace: namespace_f96f74aa
	Checksum: 0xA31BDEBB
	Offset: 0x6180
	Size: 0x31F
	Parameters: 2
	Flags: None
*/
function function_fc77f91e(var_8caa0808, var_51e4ce63)
{
	/#
		level notify("hash_26193531");
		level endon("hash_26193531");
		if(function_4bd0142f("Dev Block strings are not supported") > 0)
		{
			return;
		}
		if(!isdefined(var_51e4ce63))
		{
			var_51e4ce63 = 0;
		}
		var_aeb57a2e = "Dev Block strings are not supported";
		if(var_51e4ce63)
		{
			var_aeb57a2e = "Dev Block strings are not supported";
		}
		function_6c1294b8("Dev Block strings are not supported", var_8caa0808);
		var_8caa0808 = "Dev Block strings are not supported" + var_8caa0808 + var_aeb57a2e;
		if(!isdefined(level.var_a8783f28))
		{
			var_724a4794 = function_c49dde5();
			var_724a4794.var_740218b1 = "Dev Block strings are not supported";
			var_724a4794.var_b5536acc = "Dev Block strings are not supported";
			var_724a4794.var_db55e535 = "Dev Block strings are not supported";
			var_724a4794.var_79e0f792 = 1;
			var_724a4794.var_2363da9c = 1.5;
			var_724a4794.var_4d19365 = 50;
			var_724a4794.var_aabe9f43 = 1;
			var_724a4794.var_297f9d46 = 15;
			level.var_a8783f28 = var_724a4794;
		}
		if(var_51e4ce63)
		{
			level.var_a8783f28.var_d900369a = (1, 1, 0);
		}
		else
		{
			level.var_a8783f28.var_d900369a = (1, 1, 1);
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		level.var_a8783f28 function_f6181aca(var_8caa0808);
		var_b55533bc = 1;
		while(1)
		{
			var_b9844299 = 0;
			if(function_4bd0142f("Dev Block strings are not supported") < 1)
			{
				var_b9844299 = 1;
				var_b55533bc = 0;
			}
			else if(function_4bd0142f("Dev Block strings are not supported") > 0)
			{
				var_b9844299 = 1;
				var_b55533bc = 1;
			}
			if(var_b9844299 && var_b55533bc)
			{
				level.var_a8783f28.var_aabe9f43 = 1;
			}
			else if(var_b9844299)
			{
				level.var_a8783f28.var_aabe9f43 = 0;
			}
			wait(0.5);
		}
	#/
}

/*
	Name: function_7a717feb
	Namespace: namespace_f96f74aa
	Checksum: 0xE60D16C2
	Offset: 0x64A8
	Size: 0x15
	Parameters: 0
	Flags: None
*/
function function_7a717feb()
{
	/#
		return level.var_2395e945[0];
	#/
}

/*
	Name: function_d6bb5795
	Namespace: namespace_f96f74aa
	Checksum: 0xE9B3D32D
	Offset: 0x64C8
	Size: 0x12F
	Parameters: 0
	Flags: None
*/
function function_d6bb5795()
{
	/#
		level endon("hash_c10c5c42");
		var_490cbf60 = function_4bd0142f("Dev Block strings are not supported");
		while(1)
		{
			var_615e3c8f = function_4bd0142f("Dev Block strings are not supported");
			if(function_9019491d(var_615e3c8f) && !function_9019491d(var_490cbf60))
			{
				function_fbd4f508();
				thread function_38935ccb();
				thread function_c8a6c332();
				var_490cbf60 = var_615e3c8f;
			}
			else if(!function_9019491d(var_615e3c8f) && function_9019491d(var_490cbf60))
			{
				level notify("hash_6ce1482c");
				var_490cbf60 = var_615e3c8f;
			}
			wait(0.3);
		}
	#/
}

/*
	Name: function_9019491d
	Namespace: namespace_f96f74aa
	Checksum: 0x8DF10036
	Offset: 0x6600
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
	Name: function_e74609d7
	Namespace: namespace_f96f74aa
	Checksum: 0xD87D2C89
	Offset: 0x6638
	Size: 0x34B
	Parameters: 1
	Flags: None
*/
function function_e74609d7(var_5dc5e20a)
{
	/#
		level.var_2a7d7893 = function_ad13099a(var_5dc5e20a);
		level.var_2a7d7893.var_b5536acc = "Dev Block strings are not supported";
		level.var_2a7d7893.var_2363da9c = 1.5;
		level.var_2a7d7893.var_4f8217af = -50;
		level.var_2a7d7893.var_297f9d46 = 250;
		level.var_2a7d7893.var_d900369a = (1, 1, 1);
		level.var_2a7d7893 function_f6181aca("Dev Block strings are not supported");
		var_9dfd7b1b = 157;
		level.var_d1e66c79 = function_ad13099a(var_5dc5e20a);
		level.var_d1e66c79.var_b5536acc = "Dev Block strings are not supported";
		level.var_d1e66c79.var_2363da9c = 1.5;
		level.var_d1e66c79.var_4f8217af = var_9dfd7b1b;
		level.var_d1e66c79.var_297f9d46 = 250;
		level.var_d1e66c79.var_d900369a = (1, 1, 1);
		level.var_d1e66c79 function_ee69b16e(0);
		var_9dfd7b1b = var_9dfd7b1b + 37;
		level.var_c8d0e3bd = function_ad13099a(var_5dc5e20a);
		level.var_c8d0e3bd.var_b5536acc = "Dev Block strings are not supported";
		level.var_c8d0e3bd.var_2363da9c = 1.5;
		level.var_c8d0e3bd.var_4f8217af = var_9dfd7b1b;
		level.var_c8d0e3bd.var_297f9d46 = 250;
		level.var_c8d0e3bd.var_d900369a = (1, 1, 1);
		level.var_c8d0e3bd function_f6181aca("Dev Block strings are not supported");
		var_9dfd7b1b = var_9dfd7b1b + 105;
		level.var_c7552ba4 = function_ad13099a(var_5dc5e20a);
		level.var_c7552ba4.var_b5536acc = "Dev Block strings are not supported";
		level.var_c7552ba4.var_2363da9c = 1.5;
		level.var_c7552ba4.var_4f8217af = var_9dfd7b1b;
		level.var_c7552ba4.var_297f9d46 = 250;
		level.var_c7552ba4.var_d900369a = (1, 1, 1);
		level.var_c7552ba4 function_ee69b16e(0);
		var_98f769be = [];
		var_98f769be[0] = level.var_2a7d7893;
		var_98f769be[1] = level.var_d1e66c79;
		var_98f769be[2] = level.var_c8d0e3bd;
		var_98f769be[3] = level.var_c7552ba4;
		return var_98f769be;
	#/
}

/*
	Name: function_856a5846
	Namespace: namespace_f96f74aa
	Checksum: 0x64CE37D8
	Offset: 0x6990
	Size: 0x65
	Parameters: 2
	Flags: None
*/
function function_856a5846(var_1ccbf243, var_9a0f462e)
{
	/#
		level waittill(var_9a0f462e);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_1ccbf243.size; var_c957f6b6++)
		{
			var_1ccbf243[var_c957f6b6] function_89cd542d();
		}
	#/
}

/*
	Name: function_fbd4f508
	Namespace: namespace_f96f74aa
	Checksum: 0x1532F400
	Offset: 0x6A00
	Size: 0x35B
	Parameters: 0
	Flags: None
*/
function function_fbd4f508()
{
	/#
		level.var_99ea7b17 = [];
		var_dd79e895 = function_a8fb77bd();
		var_dd79e895.var_1c25fa40 = 125;
		var_dd79e895.var_550a16ca = 400;
		var_dd79e895.var_75c920cf = 100;
		var_dd79e895.var_899dd89e = 600;
		var_8ce348f8 = function_a8fb77bd();
		var_8ce348f8.var_1c25fa40 = 0;
		var_8ce348f8.var_550a16ca = 300;
		var_8ce348f8.var_75c920cf = 100;
		var_8ce348f8.var_899dd89e = 600;
		var_c5ccd013 = function_a8fb77bd();
		var_c5ccd013.var_1c25fa40 = 100;
		var_c5ccd013.var_550a16ca = 500;
		var_c5ccd013.var_75c920cf = 150;
		var_c5ccd013.var_899dd89e = 1000;
		var_9c2c264e = function_a8fb77bd();
		var_9c2c264e.var_1c25fa40 = 325;
		var_9c2c264e.var_550a16ca = 800;
		var_9c2c264e.var_75c920cf = 300;
		var_9c2c264e.var_899dd89e = 1600;
		var_2032fcd8 = function_a8fb77bd();
		var_2032fcd8.var_1c25fa40 = 500;
		var_2032fcd8.var_550a16ca = 700;
		var_2032fcd8.var_75c920cf = 300;
		var_2032fcd8.var_899dd89e = 1400;
		var_1c7b8cc1 = function_a8fb77bd();
		var_1c7b8cc1.var_1c25fa40 = 950;
		var_1c7b8cc1.var_550a16ca = 2000;
		var_1c7b8cc1.var_75c920cf = 500;
		var_1c7b8cc1.var_899dd89e = 3000;
		function_88b8378e("Dev Block strings are not supported", var_dd79e895);
		function_88b8378e("Dev Block strings are not supported", var_c5ccd013);
		function_88b8378e("Dev Block strings are not supported", var_8ce348f8);
		function_88b8378e("Dev Block strings are not supported", var_2032fcd8);
		function_88b8378e("Dev Block strings are not supported", var_9c2c264e);
		level thread function_1be47913();
	#/
}

/*
	Name: function_88b8378e
	Namespace: namespace_f96f74aa
	Checksum: 0x7B928B11
	Offset: 0x6D68
	Size: 0x29
	Parameters: 2
	Flags: None
*/
function function_88b8378e(var_e3a45b44, var_2bbca98f)
{
	/#
		level.var_99ea7b17[var_e3a45b44] = var_2bbca98f;
	#/
}

/*
	Name: function_4f30f381
	Namespace: namespace_f96f74aa
	Checksum: 0x56C43DE2
	Offset: 0x6DA0
	Size: 0x39
	Parameters: 1
	Flags: None
*/
function function_4f30f381(var_dfcc01fd)
{
	/#
		if(isdefined(level.var_99ea7b17[var_dfcc01fd]))
		{
			return level.var_99ea7b17[var_dfcc01fd];
		}
		else
		{
			return undefined;
		}
	#/
}

/*
	Name: function_1be47913
	Namespace: namespace_f96f74aa
	Checksum: 0xEB02A8AD
	Offset: 0x6DE8
	Size: 0x123
	Parameters: 0
	Flags: None
*/
function function_1be47913()
{
	/#
		level endon("hash_6ce1482c");
		level endon("hash_5e5ade6");
		while(1)
		{
			var_5dc5e20a = function_7a717feb();
			var_c727ada = var_5dc5e20a function_48c6a3a2();
			if(!isdefined(var_5dc5e20a.var_7d33cd9d))
			{
				var_5dc5e20a.var_7d33cd9d = var_c727ada;
			}
			else if(var_5dc5e20a.var_7d33cd9d == var_c727ada)
			{
				wait(0.05);
				continue;
			}
			var_2bbca98f = function_4f30f381(var_c727ada.var_f4ae8e42);
			if(isdefined(var_2bbca98f))
			{
				level.var_54d27686 = var_2bbca98f;
			}
			else
			{
				level.var_54d27686 = undefined;
			}
			var_5dc5e20a.var_7d33cd9d = var_c727ada;
			wait(0.05);
		}
	#/
}

/*
	Name: function_38935ccb
	Namespace: namespace_f96f74aa
	Checksum: 0x9D0F0847
	Offset: 0x6F18
	Size: 0x44F
	Parameters: 0
	Flags: None
*/
function function_38935ccb()
{
	/#
		level endon("hash_6ce1482c");
		level endon("hash_33deeee7");
		var_5dc5e20a = function_7a717feb();
		var_98f769be = function_e74609d7(var_5dc5e20a);
		level thread function_856a5846(var_98f769be, "Dev Block strings are not supported");
		level.var_39b7b21a = (0, 1, 0);
		while(1)
		{
			var_e50fc7c2 = (0, 0, 0);
			var_102e3d58 = var_5dc5e20a function_89c87c9c();
			var_34d7a5cf = function_bc7ce905(var_102e3d58);
			var_f8681460 = var_5dc5e20a function_501eb072();
			var_a52faa04 = function_e1dc201c(var_f8681460, var_f8681460 + VectorScale(var_34d7a5cf, 10000), 1, var_5dc5e20a);
			var_b3bb41e6 = var_a52faa04["Dev Block strings are not supported"];
			var_25393fbd = var_a52faa04["Dev Block strings are not supported"];
			var_52099e4 = function_b6b79a0(function_7d15e2f8(var_f8681460, var_b3bb41e6));
			if(var_b3bb41e6 != var_e50fc7c2)
			{
				var_e50fc7c2 = var_b3bb41e6;
				if(!isdefined(level.var_54d27686))
				{
					function_45ac76e3(var_98f769be, (1, 1, 1));
					var_98f769be function_28798e2c("Dev Block strings are not supported", var_52099e4);
				}
				else
				{
					var_1c25fa40 = level.var_54d27686.var_1c25fa40;
					var_550a16ca = level.var_54d27686.var_550a16ca;
					var_75c920cf = level.var_54d27686.var_75c920cf;
					var_899dd89e = level.var_54d27686.var_899dd89e;
					if(var_52099e4 >= var_1c25fa40 && var_52099e4 <= var_899dd89e)
					{
						if(var_52099e4 >= var_550a16ca - var_75c920cf && var_52099e4 <= var_550a16ca + var_75c920cf)
						{
							var_98f769be function_28798e2c("Dev Block strings are not supported", var_52099e4);
							function_45ac76e3(var_98f769be, (0, 1, 0));
						}
						else
						{
							var_98f769be function_28798e2c("Dev Block strings are not supported", var_52099e4);
							function_45ac76e3(var_98f769be, (1, 1, 0));
						}
					}
					else if(var_52099e4 < var_1c25fa40)
					{
						function_45ac76e3(var_98f769be, (1, 0, 0));
						var_98f769be function_28798e2c("Dev Block strings are not supported", var_52099e4);
					}
					else if(var_52099e4 > var_899dd89e)
					{
						function_45ac76e3(var_98f769be, (1, 0, 0));
						var_98f769be function_28798e2c("Dev Block strings are not supported", var_52099e4);
					}
				}
			}
			thread function_57e53630(1, 5, 0.05, level.var_39b7b21a, var_b3bb41e6, var_25393fbd);
			thread function_57e53630(1, 1, 0.05, level.var_39b7b21a, var_b3bb41e6, var_25393fbd);
			wait(0.05);
		}
	#/
}

/*
	Name: function_45ac76e3
	Namespace: namespace_f96f74aa
	Checksum: 0x2B95FE36
	Offset: 0x7370
	Size: 0x91
	Parameters: 2
	Flags: None
*/
function function_45ac76e3(var_98f769be, var_691ed79a)
{
	/#
		for(var_c957f6b6 = 0; var_c957f6b6 < var_98f769be.size; var_c957f6b6++)
		{
			var_214c6693 = var_98f769be[var_c957f6b6];
			if(var_214c6693.var_d900369a != var_691ed79a)
			{
				var_214c6693.var_d900369a = var_691ed79a;
				level.var_39b7b21a = var_691ed79a;
			}
		}
	#/
}

/*
	Name: function_28798e2c
	Namespace: namespace_f96f74aa
	Checksum: 0xE1B5E4E9
	Offset: 0x7410
	Size: 0x2EB
	Parameters: 2
	Flags: None
*/
function function_28798e2c(var_ca1dad0c, var_8c1c644e)
{
	/#
		if(!isdefined(level.var_98f69fd5))
		{
			level.var_98f69fd5 = "Dev Block strings are not supported";
		}
		if(var_ca1dad0c == "Dev Block strings are not supported")
		{
			self[1] function_ee69b16e(var_8c1c644e);
			self[2] function_f6181aca("Dev Block strings are not supported");
			self[3].var_aabe9f43 = 0;
		}
		else if(var_ca1dad0c == "Dev Block strings are not supported")
		{
			self[1] function_ee69b16e(var_8c1c644e);
			self[2] function_f6181aca("Dev Block strings are not supported");
			self[3].var_aabe9f43 = 0;
		}
		else if(var_ca1dad0c == "Dev Block strings are not supported")
		{
			var_a214385d = level.var_54d27686.var_1c25fa40 - var_8c1c644e;
			self[1] function_ee69b16e(var_8c1c644e);
			self[3] function_ee69b16e(var_a214385d);
			self[3].var_aabe9f43 = 1;
			if(level.var_98f69fd5 != var_ca1dad0c)
			{
				self[2] function_f6181aca("Dev Block strings are not supported");
			}
		}
		else if(var_ca1dad0c == "Dev Block strings are not supported")
		{
			var_7f68ce8b = var_8c1c644e - level.var_54d27686.var_899dd89e;
			self[1] function_ee69b16e(var_8c1c644e);
			self[3] function_ee69b16e(var_7f68ce8b);
			self[3].var_aabe9f43 = 1;
			if(level.var_98f69fd5 != var_ca1dad0c)
			{
				self[2] function_f6181aca("Dev Block strings are not supported");
			}
		}
		else if(var_ca1dad0c == "Dev Block strings are not supported")
		{
			self[1] function_ee69b16e(var_8c1c644e);
			self[2] function_f6181aca("Dev Block strings are not supported");
			self[3].var_aabe9f43 = 0;
		}
		level.var_98f69fd5 = var_ca1dad0c;
	#/
}

/*
	Name: function_c8a6c332
	Namespace: namespace_f96f74aa
	Checksum: 0xEFD0CE04
	Offset: 0x7708
	Size: 0x373
	Parameters: 0
	Flags: None
*/
function function_c8a6c332()
{
	/#
		level endon("hash_6ce1482c");
		level endon("hash_8db6fbd6");
		var_5dc5e20a = function_7a717feb();
		while(1)
		{
			var_c4e99d2e = function_b8494651("Dev Block strings are not supported");
			if(isdefined(var_c4e99d2e) && var_c4e99d2e.size > 0)
			{
				var_a96fe1c5 = var_5dc5e20a function_501eb072();
				for(var_c957f6b6 = 0; var_c957f6b6 < var_c4e99d2e.size; var_c957f6b6++)
				{
					var_d84e54db = var_c4e99d2e[var_c957f6b6];
					var_92f0cc22 = var_d84e54db function_501eb072();
					if(function_e7865c4b(var_a96fe1c5, var_92f0cc22, 0, var_5dc5e20a) && !function_85e4c3b3(var_d84e54db))
					{
						var_2a97d9fd = function_7d15e2f8(var_a96fe1c5, var_92f0cc22);
						var_97e53b60 = (1, 1, 1);
						var_a848cc0 = "Dev Block strings are not supported";
						var_1c25fa40 = var_d84e54db.var_bdf12110;
						var_35b17bf2 = var_d84e54db.var_c36083d6;
						var_b89cbdfc = var_d84e54db.var_c9dc91a4;
						var_899dd89e = var_d84e54db.var_a01aef5a;
						if(var_2a97d9fd >= var_1c25fa40 && var_2a97d9fd <= var_899dd89e)
						{
							var_97e53b60 = (0, 1, 0);
							var_a848cc0 = "Dev Block strings are not supported";
						}
						else if(var_2a97d9fd < var_1c25fa40 && var_2a97d9fd >= var_35b17bf2)
						{
							var_97e53b60 = (1, 1, 0);
							var_a848cc0 = "Dev Block strings are not supported";
						}
						else if(var_2a97d9fd > var_899dd89e && var_2a97d9fd <= var_b89cbdfc)
						{
							var_97e53b60 = (1, 1, 0);
							var_a848cc0 = "Dev Block strings are not supported";
						}
						else if(var_2a97d9fd > var_b89cbdfc)
						{
							var_97e53b60 = (1, 0, 0);
							var_a848cc0 = "Dev Block strings are not supported";
						}
						else if(var_2a97d9fd < var_35b17bf2)
						{
							var_97e53b60 = (1, 0, 0);
							var_a848cc0 = "Dev Block strings are not supported";
						}
						var_5c21ad3d = var_2a97d9fd / 1000;
						function_8f3e0f73(var_d84e54db.var_722885f3 + VectorScale((0, 0, 1), 67), var_a848cc0 + "Dev Block strings are not supported" + var_2a97d9fd, var_97e53b60, 1, var_5c21ad3d);
					}
				}
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_f7047618
	Namespace: namespace_f96f74aa
	Checksum: 0x46DAE5D1
	Offset: 0x7A88
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_f7047618()
{
	/#
		var_74952a22 = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(var_5dc5e20a function_26ce3b38())
			{
				var_74952a22++;
			}
		}
		return var_74952a22;
	#/
}

/*
	Name: function_6a200458
	Namespace: namespace_f96f74aa
	Checksum: 0x1F218DC0
	Offset: 0x7B40
	Size: 0xAF
	Parameters: 0
	Flags: None
*/
function function_6a200458()
{
	/#
		var_74952a22 = 0;
		foreach(var_5dc5e20a in level.var_2395e945)
		{
			if(!var_5dc5e20a function_26ce3b38())
			{
				var_74952a22++;
			}
		}
		return var_74952a22;
	#/
}

/*
	Name: function_6e62d3e3
	Namespace: namespace_f96f74aa
	Checksum: 0xD85D2E23
	Offset: 0x7BF8
	Size: 0x299
	Parameters: 0
	Flags: None
*/
function function_6e62d3e3()
{
	/#
		function_b3c0448e("Dev Block strings are not supported");
		while(!isdefined(level.var_2395e945))
		{
			wait(0.5);
		}
		var_d49b0ff = 0;
		while(1)
		{
			if(function_4bd0142f("Dev Block strings are not supported") > 0)
			{
				while(function_4bd0142f("Dev Block strings are not supported") > 0)
				{
					var_7e4baf07 = 4 - function_6a200458();
					var_c4bfb171 = function_f7047618();
					if(var_c4bfb171 > 0 && function_26299103(100) > 60)
					{
						namespace_82b91a51::function_316771cc("Dev Block strings are not supported");
						wait(2);
						function_aacf4c41("Dev Block strings are not supported" + function_f7047618());
					}
					else if(var_c4bfb171 < var_7e4baf07)
					{
						if(var_c4bfb171 < function_4bd0142f("Dev Block strings are not supported") && function_26299103(100) > 50)
						{
							var_d49b0ff = 1;
							namespace_82b91a51::function_316771cc("Dev Block strings are not supported");
							wait(2);
							function_aacf4c41("Dev Block strings are not supported" + function_f7047618());
						}
					}
					wait(function_dc99997a(1, 3));
				}
			}
			else if(var_d49b0ff)
			{
				while(function_f7047618() > 0)
				{
					namespace_82b91a51::function_316771cc("Dev Block strings are not supported");
					wait(2);
					function_aacf4c41("Dev Block strings are not supported" + function_f7047618());
				}
				var_d49b0ff = 0;
			}
			wait(1);
		}
	#/
}

/*
	Name: function_aacf4c41
	Namespace: namespace_f96f74aa
	Checksum: 0x10EC1113
	Offset: 0x7EA0
	Size: 0x6B
	Parameters: 1
	Flags: None
*/
function function_aacf4c41(var_69ae6753)
{
	/#
		/#
			function_2e4b8c78(var_69ae6753);
			if(isdefined(level.var_4be20d44))
			{
				function_895b00("Dev Block strings are not supported" + level.var_4be20d44 + "Dev Block strings are not supported" + var_69ae6753);
			}
		#/
	#/
}

/*
	Name: function_57e53630
	Namespace: namespace_f96f74aa
	Checksum: 0x9E05FF1F
	Offset: 0x7F18
	Size: 0x183
	Parameters: 6
	Flags: None
*/
function function_57e53630(var_6bc40dc, var_78c3b017, var_60db70fa, var_d900369a, var_722885f3, var_288785e8)
{
	/#
		if(!isdefined(var_d900369a))
		{
			var_d900369a = (0, 1, 0);
		}
		var_a9c99ee5 = 6;
		var_b162c457 = 360 / var_a9c99ee5;
		var_a9c99ee5++;
		var_3576b76d = [];
		var_27beaa06 = 0;
		var_f8456b37 = var_78c3b017;
		var_60359ede = function_bdcdc423(var_288785e8);
		for(var_c957f6b6 = 0; var_c957f6b6 < var_a9c99ee5; var_c957f6b6++)
		{
			var_3576b76d[var_3576b76d.size] = var_722885f3 + VectorScale(function_bc7ce905(var_60359ede + (var_27beaa06, 90, 0)), var_f8456b37);
			var_27beaa06 = var_27beaa06 + var_b162c457;
		}
		function_425d7b5a(var_3576b76d, var_d900369a[0], var_d900369a[1], var_d900369a[2], var_60db70fa);
	#/
}

/*
	Name: function_34690750
	Namespace: namespace_f96f74aa
	Checksum: 0x5849E1F1
	Offset: 0x80A8
	Size: 0xAB
	Parameters: 0
	Flags: None
*/
function function_34690750()
{
	/#
		if(!isdefined(level.var_cae1351c))
		{
			function_ac174ec6();
			level.var_cae1351c = 1;
		}
		function_3f10449f()[0] thread function_a93c315a();
		level waittill("hash_d123a0a5");
		if(isdefined(level.var_1f088176))
		{
			level.var_1f088176 function_89cd542d();
		}
		if(isdefined(level.var_f451888f))
		{
			level.var_f451888f function_dc8c8404();
		}
	#/
}

/*
	Name: function_ac174ec6
	Namespace: namespace_f96f74aa
	Checksum: 0x6710431C
	Offset: 0x8160
	Size: 0x1D7
	Parameters: 0
	Flags: None
*/
function function_ac174ec6()
{
	/#
		var_14edd77e = function_d35375b8();
		level.var_b855feb2 = [];
		level.var_6277cd5a = 0;
		var_7b3173a8 = [];
		foreach(var_2f06d687 in var_14edd77e)
		{
			if(!isdefined(var_7b3173a8[var_2f06d687.var_e6e9b8de]))
			{
				var_7b3173a8[var_2f06d687.var_e6e9b8de] = 1;
				var_14b42b8a = function_a8fb77bd();
				var_e6e9b8de = var_2f06d687.var_e6e9b8de;
				var_9d34dca7 = var_2f06d687.var_9d34dca7;
				if(function_5dbf7eca(var_e6e9b8de, "Dev Block strings are not supported"))
				{
					var_14b42b8a.var_f8456b37 = 64;
					var_14b42b8a.var_85e4c3b3 = 0;
					var_e6e9b8de = function_f45850ec(var_e6e9b8de, 6);
				}
				else
				{
					continue;
				}
				var_14b42b8a.var_e6e9b8de = var_e6e9b8de;
				level.var_b855feb2[level.var_b855feb2.size] = var_14b42b8a;
			}
		}
	#/
}

/*
	Name: function_a93c315a
	Namespace: namespace_f96f74aa
	Checksum: 0x91AE4D9F
	Offset: 0x8340
	Size: 0x63F
	Parameters: 0
	Flags: None
*/
function function_a93c315a()
{
	/#
		level endon("hash_d123a0a5");
		/#
			namespace_33b293fd::function_a7ee953(isdefined(level.var_b855feb2) && level.var_b855feb2.size > 0, "Dev Block strings are not supported");
		#/
		level.var_1f088176 = function_ad13099a(function_3f10449f()[0]);
		level.var_1f088176.var_b5536acc = "Dev Block strings are not supported";
		level.var_1f088176.var_4f8217af = 0;
		level.var_1f088176.var_297f9d46 = 245;
		level.var_1f088176.var_2363da9c = 1.5;
		level.var_1f088176 function_f6181aca("Dev Block strings are not supported");
		level.var_f451888f = function_9b7fda5e("Dev Block strings are not supported", (0, 0, 0));
		wait(0.1);
		while(1)
		{
			var_102e3d58 = self function_89c87c9c();
			var_34d7a5cf = function_bc7ce905(var_102e3d58);
			var_f8681460 = self function_501eb072();
			var_ef62fbd7 = 4000;
			var_a52faa04 = function_e1dc201c(var_f8681460, var_f8681460 + VectorScale(var_34d7a5cf, var_ef62fbd7), 0, level.var_f451888f);
			var_2a97d9fd = function_7d15e2f8(var_f8681460, var_a52faa04["Dev Block strings are not supported"]);
			var_c7b6e8e4 = var_f8681460 + VectorScale(var_34d7a5cf, var_2a97d9fd - level.var_b855feb2[level.var_6277cd5a].var_f8456b37);
			var_722885f3 = var_c7b6e8e4;
			var_6ab6f4fd = self.var_6ab6f4fd + VectorScale((0, 1, 0), 180);
			level.var_f451888f.var_722885f3 = var_c7b6e8e4;
			level.var_f451888f.var_6ab6f4fd = var_6ab6f4fd;
			level.var_1f088176 function_f6181aca("Dev Block strings are not supported" + level.var_6277cd5a + "Dev Block strings are not supported" + level.var_b855feb2.size + "Dev Block strings are not supported" + level.var_b855feb2[level.var_6277cd5a].var_e6e9b8de);
			level.var_f451888f function_e40db749();
			level.var_f451888f function_e48f905e(level.var_b855feb2[level.var_6277cd5a].var_e6e9b8de);
			level.var_f451888f function_48f26766();
			level.var_f451888f function_422037f5();
			if(self function_d5ef124())
			{
				level.var_f451888f function_50ccee8d();
				if(level.var_b855feb2[level.var_6277cd5a].var_85e4c3b3)
				{
					var_9b7fda5e = function_ee83ff72(level.var_b855feb2[level.var_6277cd5a].var_e6e9b8de, var_722885f3, var_6ab6f4fd, "Dev Block strings are not supported");
				}
				else
				{
					var_9b7fda5e = function_99d28301(level.var_b855feb2[level.var_6277cd5a].var_e6e9b8de, var_722885f3, var_6ab6f4fd, "Dev Block strings are not supported", 1);
				}
				var_9b7fda5e.var_255b9315 = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
				var_9b7fda5e.var_c584775c = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
				var_9b7fda5e.var_25bfbf8e = function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported";
				var_9b7fda5e.var_25d14901 = 0;
				wait(0.3);
			}
			else if(self function_ce2b5f5("Dev Block strings are not supported"))
			{
				level.var_f451888f function_50ccee8d();
				level.var_6277cd5a++;
				if(level.var_6277cd5a >= level.var_b855feb2.size)
				{
					level.var_6277cd5a = 0;
				}
				wait(0.3);
			}
			else if(self function_ce2b5f5("Dev Block strings are not supported"))
			{
				level.var_f451888f function_50ccee8d();
				level.var_6277cd5a--;
				if(level.var_6277cd5a < 0)
				{
					level.var_6277cd5a = level.var_b855feb2.size - 1;
				}
				wait(0.3);
			}
			else if(self function_ce2b5f5("Dev Block strings are not supported"))
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			}
			wait(0.05);
		}
	#/
}

/*
	Name: function_d73fedd2
	Namespace: namespace_f96f74aa
	Checksum: 0x535E3DB2
	Offset: 0x8988
	Size: 0x3B
	Parameters: 0
	Flags: None
*/
function function_d73fedd2()
{
	/#
		wait(1);
		function_2e4b8c78("Dev Block strings are not supported" + level.var_cd724008 + "Dev Block strings are not supported");
	#/
}

/*
	Name: function_1b48a096
	Namespace: namespace_f96f74aa
	Checksum: 0x6AF5BFD4
	Offset: 0x89D0
	Size: 0x23D
	Parameters: 0
	Flags: None
*/
function function_1b48a096()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_2f07adbd
	Namespace: namespace_f96f74aa
	Checksum: 0x54771798
	Offset: 0x8C18
	Size: 0x13B
	Parameters: 0
	Flags: None
*/
function function_2f07adbd()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_60739d4f
	Namespace: namespace_f96f74aa
	Checksum: 0x7CA263FB
	Offset: 0x8D60
	Size: 0x333
	Parameters: 0
	Flags: None
*/
function function_60739d4f()
{
System.InvalidOperationException: Stack empty.
   at System.ThrowHelper.ThrowInvalidOperationException(ExceptionResource resource)
   at System.Collections.Generic.Stack`1.Pop()
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.⁫⁮⁭‮⁮⁪‬⁮‎‌‮⁪‏‍⁬‏⁪‮‎‏‪‌‎‍‎‪⁮​‬⁪‮⁭‏⁭‌‏‎‭⁪‫‮(String , Int32 , Boolean , Boolean )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‮​⁬⁭⁮‍‏‏‫‎‭‫⁮‪‮⁭‮⁬​‌⁯‮⁭‬​‪⁭‍‏‪⁪‎⁭⁭‌⁪‌‭​⁯‮(ScriptOp , ‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮.‭⁭⁫‭⁪‫‭‮‪⁬‏‎‪⁯⁪⁬‪‏‫⁯⁯‭​‫⁯‍‮⁫‪‏⁫⁪‎‏‫‫‪⁬‌⁯‮(‫⁬⁫⁮⁯‫‪⁫‎‏‮‌‍‫‏⁭​​‪‏‍‍⁫‬⁪‎‮‏‫‫​⁪‪‮‪‏⁭​‫⁫‮ , Int32 )
   at ⁫‮‌‎⁫⁭‎‏‮‭⁭‌⁪‫‬‮​​‍‪‫‎⁫‪⁬‏‪⁭‭‌⁯‍⁭‍⁬⁬⁫‭⁬‮‮..ctor(ScriptExport , ScriptBase )
}

/*
	Name: function_3f8623e8
	Namespace: namespace_f96f74aa
	Checksum: 0x883F4570
	Offset: 0x90A0
	Size: 0x10D
	Parameters: 0
	Flags: None
*/
function function_3f8623e8()
{
	/#
		var_35ef0ec1 = function_c20c2e8();
		for(var_c957f6b6 = 0; var_c957f6b6 < var_35ef0ec1.size; var_c957f6b6++)
		{
			var_799278ce = var_35ef0ec1[var_c957f6b6].var_c36083d6 + "Dev Block strings are not supported" + var_35ef0ec1[var_c957f6b6].var_bdf12110 + "Dev Block strings are not supported" + var_35ef0ec1[var_c957f6b6].var_a01aef5a + "Dev Block strings are not supported" + var_35ef0ec1[var_c957f6b6].var_c9dc91a4;
			function_32990edc(var_799278ce, var_35ef0ec1[var_c957f6b6], level.var_f089ed[var_35ef0ec1[var_c957f6b6].var_3e94206a], "Dev Block strings are not supported");
		}
	#/
}

/*
	Name: function_172e04fa
	Namespace: namespace_f96f74aa
	Checksum: 0x28EE4120
	Offset: 0x91B8
	Size: 0xCB
	Parameters: 5
	Flags: None
*/
function function_172e04fa(var_722885f3, var_f8456b37, var_d900369a, var_aabe9f43, var_60db70fa)
{
	/#
		if(!isdefined(var_60db70fa))
		{
			var_60db70fa = 1000;
		}
		if(!isdefined(var_d900369a))
		{
			var_d900369a = (1, 1, 1);
		}
		var_22e844df = function_b6b79a0(10 * 1 + function_b6b79a0(var_f8456b37) % 100);
		function_2d3eaa0e(var_722885f3, var_f8456b37, var_d900369a, var_aabe9f43, 1, var_22e844df, var_60db70fa);
	#/
}

/*
	Name: function_f6109257
	Namespace: namespace_f96f74aa
	Checksum: 0x51464E28
	Offset: 0x9290
	Size: 0x2B3
	Parameters: 4
	Flags: None
*/
function function_f6109257(var_34fb19f, var_3fc1574, var_d900369a, var_d405a39f)
{
	/#
		level endon("hash_5af39778");
		var_bc9bbbc8 = [];
		var_6ab6f4fd = function_bdcdc423(var_34fb19f - var_3fc1574);
		var_7d6c9041 = function_298b8148(var_6ab6f4fd);
		var_1a859714 = function_bc7ce905(var_6ab6f4fd);
		var_b5f6560e = function_aba60185(var_6ab6f4fd);
		var_2a97d9fd = function_7d15e2f8(var_34fb19f, var_3fc1574);
		var_901206c4 = [];
		var_901206c4[0] = var_34fb19f;
		var_901206c4[1] = var_34fb19f + VectorScale(var_7d6c9041, var_2a97d9fd * 0.1) + VectorScale(var_1a859714, var_2a97d9fd * -0.1);
		var_901206c4[2] = var_3fc1574;
		var_901206c4[3] = var_34fb19f + VectorScale(var_7d6c9041, var_2a97d9fd * -1 * 0.1) + VectorScale(var_1a859714, var_2a97d9fd * -0.1);
		var_901206c4[4] = var_34fb19f;
		var_901206c4[5] = var_34fb19f + VectorScale(var_b5f6560e, var_2a97d9fd * 0.1) + VectorScale(var_1a859714, var_2a97d9fd * -0.1);
		var_901206c4[6] = var_3fc1574;
		var_901206c4[7] = var_34fb19f + VectorScale(var_b5f6560e, var_2a97d9fd * -1 * 0.1) + VectorScale(var_1a859714, var_2a97d9fd * -0.1);
		var_901206c4[8] = var_34fb19f;
		var_3390f625 = var_d900369a[0];
		var_155ceb88 = var_d900369a[1];
		var_d3694f95 = var_d900369a[2];
		function_425d7b5a(var_901206c4, var_3390f625, var_155ceb88, var_d3694f95, var_d405a39f);
	#/
}

/*
	Name: function_a4ff6201
	Namespace: namespace_f96f74aa
	Checksum: 0x3D3EA8EB
	Offset: 0x9550
	Size: 0x1FD
	Parameters: 3
	Flags: None
*/
function function_a4ff6201(var_34fb19f, var_3fc1574, var_d900369a)
{
	/#
		level endon("hash_5af39778");
		var_bc9bbbc8 = [];
		var_6ab6f4fd = function_bdcdc423(var_34fb19f - var_3fc1574);
		var_7d6c9041 = function_298b8148(var_6ab6f4fd);
		var_1a859714 = function_bc7ce905(var_6ab6f4fd);
		var_2a97d9fd = function_7d15e2f8(var_34fb19f, var_3fc1574);
		var_901206c4 = [];
		var_901206c4[0] = var_34fb19f;
		var_901206c4[1] = var_34fb19f + VectorScale(var_7d6c9041, var_2a97d9fd * 0.05) + VectorScale(var_1a859714, var_2a97d9fd * -0.2);
		var_901206c4[2] = var_3fc1574;
		var_901206c4[3] = var_34fb19f + VectorScale(var_7d6c9041, var_2a97d9fd * -1 * 0.05) + VectorScale(var_1a859714, var_2a97d9fd * -0.2);
		for(var_7f95eaf7 = 0; var_7f95eaf7 < 4; var_7f95eaf7++)
		{
			var_22f060 = var_7f95eaf7 + 1;
			if(var_22f060 >= 4)
			{
				var_22f060 = 0;
			}
			function_4e418837(var_901206c4[var_7f95eaf7], var_901206c4[var_22f060], var_d900369a, 1);
		}
	#/
}

/*
	Name: function_4d1ec408
	Namespace: namespace_f96f74aa
	Checksum: 0xEFD0D5C4
	Offset: 0x9758
	Size: 0x1CF
	Parameters: 0
	Flags: None
*/
function function_4d1ec408()
{
	/#
		self notify("hash_707e044");
		self endon("hash_707e044");
		self endon("hash_128f8789");
		for(;;)
		{
			var_1a859714 = function_bc7ce905(self.var_6ab6f4fd);
			var_b393f1e7 = VectorScale(var_1a859714, 30);
			var_1c4abaa0 = VectorScale(var_1a859714, 20);
			var_7d6c9041 = function_298b8148(self.var_6ab6f4fd);
			var_255826d2 = VectorScale(var_7d6c9041, -10);
			var_7d6c9041 = VectorScale(var_7d6c9041, 10);
			function_4e418837(self.var_722885f3, self.var_722885f3 + var_b393f1e7, (0.9, 0.7, 0.6), 0.9);
			function_4e418837(self.var_722885f3 + var_b393f1e7, self.var_722885f3 + var_1c4abaa0 + var_7d6c9041, (0.9, 0.7, 0.6), 0.9);
			function_4e418837(self.var_722885f3 + var_b393f1e7, self.var_722885f3 + var_1c4abaa0 + var_255826d2, (0.9, 0.7, 0.6), 0.9);
			wait(0.05);
		}
	#/
}

/*
	Name: function_425d7b5a
	Namespace: namespace_f96f74aa
	Checksum: 0x7D643086
	Offset: 0x9930
	Size: 0x105
	Parameters: 5
	Flags: None
*/
function function_425d7b5a(var_3576b76d, var_3390f625, var_155ceb88, var_d3694f95, var_6f6f10c)
{
	/#
		var_df390185 = var_3576b76d[0];
		if(!isdefined(var_3390f625))
		{
			var_3390f625 = 1;
		}
		if(!isdefined(var_155ceb88))
		{
			var_155ceb88 = 1;
		}
		if(!isdefined(var_d3694f95))
		{
			var_d3694f95 = 1;
		}
		if(!isdefined(var_6f6f10c))
		{
			var_6f6f10c = 0.05;
		}
		for(var_c957f6b6 = 1; var_c957f6b6 < var_3576b76d.size; var_c957f6b6++)
		{
			thread function_754e1810(var_df390185, var_3576b76d[var_c957f6b6], var_3390f625, var_155ceb88, var_d3694f95, var_6f6f10c);
			var_df390185 = var_3576b76d[var_c957f6b6];
		}
	#/
}

/*
	Name: function_754e1810
	Namespace: namespace_f96f74aa
	Checksum: 0x3ED2C25B
	Offset: 0x9A40
	Size: 0xB7
	Parameters: 6
	Flags: None
*/
function function_754e1810(var_cc3cca02, var_a63a4f99, var_3390f625, var_155ceb88, var_d3694f95, var_6f6f10c)
{
	/#
		var_6f6f10c = GetTime() + var_6f6f10c * 1000;
		while(GetTime() < var_6f6f10c)
		{
			function_4e418837(var_cc3cca02, var_a63a4f99, (var_3390f625, var_155ceb88, var_d3694f95), 1);
			function_8afd7e24(var_cc3cca02, var_a63a4f99, (1, 1, 1), "Dev Block strings are not supported");
			wait(0.05);
		}
	#/
}

/*
	Name: function_310be1cc
	Namespace: namespace_f96f74aa
	Checksum: 0xD41D2234
	Offset: 0x9B00
	Size: 0x11D
	Parameters: 1
	Flags: None
*/
function function_310be1cc(var_f84fbe)
{
	/#
		switch(var_f84fbe)
		{
			case "Dev Block strings are not supported":
			{
				return (1, 0, 0);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (0, 1, 0);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (0, 0, 1);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (1, 1, 0);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (1, 0.5, 0);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (0, 1, 1);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (1, 1, 1);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return VectorScale((1, 1, 1), 0.75);
				break;
			}
			case "Dev Block strings are not supported":
			{
				return (0, 0, 0);
				break;
			}
			case default:
			{
				function_895b00("Dev Block strings are not supported" + var_f84fbe + "Dev Block strings are not supported");
				return (0, 0, 0);
				break;
			}
		}
	#/
}

/*
	Name: function_8e158224
	Namespace: namespace_f96f74aa
	Checksum: 0x72B39D49
	Offset: 0x9C28
	Size: 0x799
	Parameters: 8
	Flags: None
*/
function function_8e158224(var_c6435a12, var_60db70fa, var_c0cd1c79, var_9970b520, var_2b8033ad, var_aa0d77d8, var_59fe855e, var_3988cc1d)
{
	/#
		if(!isdefined(var_60db70fa))
		{
			var_60db70fa = 3;
		}
		if(!isdefined(var_c0cd1c79))
		{
			var_c0cd1c79 = 0;
		}
		if(!isdefined(var_9970b520))
		{
			var_9970b520 = 2;
		}
		if(!isdefined(var_2b8033ad))
		{
			var_2b8033ad = 2;
		}
		if(!isdefined(var_aa0d77d8))
		{
			var_aa0d77d8 = 2;
		}
		if(!isdefined(var_59fe855e))
		{
			var_59fe855e = 2;
		}
		if(!isdefined(var_3988cc1d))
		{
			var_3988cc1d = 1;
		}
		if(var_3988cc1d)
		{
			if(function_65f192a6(self))
			{
				var_bfbec59 = namespace_724a4794::function_7acf2f62("Dev Block strings are not supported", 640, 480);
			}
			else
			{
				var_bfbec59 = namespace_724a4794::function_d945e9e7("Dev Block strings are not supported", 640, 480);
			}
			var_bfbec59.var_740218b1 = "Dev Block strings are not supported";
			var_bfbec59.var_f9134763 = "Dev Block strings are not supported";
			var_bfbec59.var_79e0f792 = 1;
			var_bfbec59.var_4d19365 = 0;
			var_bfbec59.var_4f8217af = 320;
			var_bfbec59.var_297f9d46 = 0;
			if(var_c0cd1c79 > 0)
			{
				var_bfbec59.var_aabe9f43 = 0;
				var_bfbec59 function_ba7f003e(var_c0cd1c79);
				var_bfbec59.var_aabe9f43 = 1;
				wait(var_c0cd1c79);
			}
			else
			{
				var_bfbec59.var_aabe9f43 = 1;
			}
		}
		var_58f0cd91 = [];
		var_f25deb34 = function_b6b79a0(level.var_250c7467 * var_59fe855e) + 2;
		var_d7fbe8ef = 0;
		if(function_6e2770d8(var_c6435a12))
		{
			var_d7fbe8ef = 0 - var_c6435a12.size * var_f25deb34 / 2;
			foreach(var_8caa0808 in var_c6435a12)
			{
				if(function_65f192a6(self))
				{
					var_58f0cd91[var_58f0cd91.size] = namespace_724a4794::function_1fa18f5d("Dev Block strings are not supported", var_59fe855e);
				}
				else
				{
					var_58f0cd91[var_58f0cd91.size] = namespace_724a4794::function_6aadf29c("Dev Block strings are not supported", var_59fe855e);
				}
				var_58f0cd91[var_58f0cd91.size - 1] function_f6181aca(var_8caa0808);
			}
		}
		else if(function_65f192a6(self))
		{
			var_58f0cd91[var_58f0cd91.size] = namespace_724a4794::function_1fa18f5d("Dev Block strings are not supported", var_59fe855e);
		}
		else
		{
			var_58f0cd91[var_58f0cd91.size] = namespace_724a4794::function_6aadf29c("Dev Block strings are not supported", var_59fe855e);
		}
		var_58f0cd91[var_58f0cd91.size - 1] function_f6181aca(var_8caa0808);
		var_7cb30609 = 0;
		foreach(var_cac27e6e in var_58f0cd91)
		{
			var_cac27e6e.var_740218b1 = "Dev Block strings are not supported";
			var_cac27e6e.var_f9134763 = "Dev Block strings are not supported";
			var_cac27e6e.var_4f8217af = 0;
			var_cac27e6e.var_297f9d46 = var_d7fbe8ef + var_f25deb34 * var_7cb30609;
			var_cac27e6e.var_d900369a = (1, 1, 1);
			var_cac27e6e.var_79e0f792 = 1;
			var_cac27e6e.var_4d19365 = 1;
			if(var_2b8033ad > 0)
			{
				var_cac27e6e.var_aabe9f43 = 0;
				var_cac27e6e function_ba7f003e(var_2b8033ad);
				var_cac27e6e.var_aabe9f43 = 1;
			}
			else
			{
				var_cac27e6e.var_aabe9f43 = 1;
			}
			var_7cb30609++;
		}
		if(var_2b8033ad > 0)
		{
			wait(var_2b8033ad);
		}
		wait(var_60db70fa);
		if(var_aa0d77d8 > 0)
		{
			foreach(var_cac27e6e in var_58f0cd91)
			{
				var_cac27e6e function_ba7f003e(var_aa0d77d8);
				var_cac27e6e.var_aabe9f43 = 0;
			}
			wait(var_aa0d77d8);
		}
		if(var_3988cc1d)
		{
			if(var_9970b520 > 0)
			{
				var_bfbec59 function_ba7f003e(var_9970b520);
				var_bfbec59.var_aabe9f43 = 0;
				wait(var_9970b520);
			}
			var_bfbec59 function_89cd542d();
		}
		foreach(var_cac27e6e in var_58f0cd91)
		{
			var_cac27e6e function_89cd542d();
		}
	#/
}


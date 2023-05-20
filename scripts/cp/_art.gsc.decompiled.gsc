#using scripts\shared\system_shared;
#using scripts\shared\util_shared;

#namespace namespace_3fbd273c;

/*
	Name: function_2dc19561
	Namespace: namespace_3fbd273c
	Checksum: 0x3C15D7AD
	Offset: 0xE0
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("art", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_3fbd273c
	Checksum: 0x1DD76BB5
	Offset: 0x120
	Size: 0x233
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported" || function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", 0);
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported" && isdefined(level.var_cd724008))
		{
			function_6c1294b8("Dev Block strings are not supported", level.var_cd724008);
		}
	#/
	if(!isdefined(level.var_75161acb))
	{
		level.var_75161acb["nearStart"] = 0;
		level.var_75161acb["nearEnd"] = 1;
		level.var_75161acb["farStart"] = 8000;
		level.var_75161acb["farEnd"] = 10000;
		level.var_75161acb["nearBlur"] = 6;
		level.var_75161acb["farBlur"] = 0;
	}
	level.var_c5e4e7f8 = level.var_75161acb["farStart"] - level.var_75161acb["nearEnd"] / 2;
	/#
		thread function_2156b2de();
	#/
}

/*
	Name: function_3aef23e5
	Namespace: namespace_3fbd273c
	Checksum: 0x3E51D20E
	Offset: 0x360
	Size: 0x43
	Parameters: 2
	Flags: None
*/
function function_3aef23e5(var_51166293, var_e00762ce)
{
	/#
		if(var_51166293 == -1)
		{
			return;
		}
		function_73ab5c8c(var_51166293, var_e00762ce);
	#/
}

/*
	Name: function_393e0a6f
	Namespace: namespace_3fbd273c
	Checksum: 0xD3E0C415
	Offset: 0x3B0
	Size: 0xD3
	Parameters: 2
	Flags: None
*/
function function_393e0a6f(var_e00762ce, var_29c1382b)
{
	var_52965c2 = [];
	var_78634598 = "";
	for(var_c957f6b6 = 0; var_c957f6b6 < var_e00762ce.size; var_c957f6b6++)
	{
		if(var_e00762ce[var_c957f6b6] == " ")
		{
			var_52965c2[var_52965c2.size] = var_78634598;
			var_78634598 = "";
			continue;
		}
		var_78634598 = var_78634598 + var_e00762ce[var_c957f6b6];
	}
	if(var_78634598.size)
	{
		var_52965c2[var_52965c2.size] = var_78634598;
	}
	return var_52965c2;
}

/*
	Name: function_e61ed21d
	Namespace: namespace_3fbd273c
	Checksum: 0x44A9F1DF
	Offset: 0x490
	Size: 0x1BB
	Parameters: 0
	Flags: None
*/
function function_e61ed21d()
{
	/#
		var_5da117b8 = function_393e0a6f(function_6f1ebe57("Dev Block strings are not supported"), "Dev Block strings are not supported");
		var_fd4d3e12 = var_5da117b8[0];
		var_10e5c2b2 = var_5da117b8[1];
		var_a8886e1 = var_5da117b8[2];
		var_67bc0a7c = function_6f1ebe57("Dev Block strings are not supported");
		var_4576e793 = function_6f1ebe57("Dev Block strings are not supported");
		if(!isdefined(var_fd4d3e12) || !isdefined(var_10e5c2b2) || !isdefined(var_a8886e1) || !isdefined(var_67bc0a7c))
		{
			var_fd4d3e12 = 1;
			var_10e5c2b2 = 1;
			var_a8886e1 = 1;
			var_67bc0a7c = 10000001;
			var_4576e793 = 10000000;
		}
		function_6c1294b8("Dev Block strings are not supported", var_67bc0a7c);
		function_6c1294b8("Dev Block strings are not supported", var_4576e793);
		function_6c1294b8("Dev Block strings are not supported", var_fd4d3e12 + "Dev Block strings are not supported" + var_10e5c2b2 + "Dev Block strings are not supported" + var_a8886e1);
	#/
}

/*
	Name: function_2156b2de
	Namespace: namespace_3fbd273c
	Checksum: 0xAD62DDC
	Offset: 0x658
	Size: 0x95F
	Parameters: 0
	Flags: None
*/
function function_2156b2de()
{
	/#
		if(!isdefined(level.var_e9f13d99))
		{
			level.var_e9f13d99 = 0;
		}
		if(function_6f1ebe57("Dev Block strings are not supported") == "Dev Block strings are not supported")
		{
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		var_51166293 = undefined;
		var_6741050e = undefined;
		var_baa89a82 = 1;
		while(function_4bd0142f("Dev Block strings are not supported") == 0)
		{
			var_baa89a82 = 1;
			wait(0.05);
			continue;
			if(var_baa89a82)
			{
				var_baa89a82 = 0;
				var_38f3d274 = function_6be72eea();
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[0]);
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[1]);
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[3]);
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[2]);
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[4] + "Dev Block strings are not supported" + var_38f3d274[5] + "Dev Block strings are not supported" + var_38f3d274[6]);
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[7]);
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[8] + "Dev Block strings are not supported" + var_38f3d274[9] + "Dev Block strings are not supported" + var_38f3d274[10]);
				level.var_a4def5bc = [];
				level.var_a4def5bc[0] = var_38f3d274[11];
				level.var_a4def5bc[1] = var_38f3d274[12];
				level.var_a4def5bc[2] = var_38f3d274[13];
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[14]);
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[15]);
				function_6c1294b8("Dev Block strings are not supported", var_38f3d274[16]);
			}
			level.var_aeaa3af7 = function_f3087faa("Dev Block strings are not supported");
			level.var_9d70e1ce = function_f3087faa("Dev Block strings are not supported");
			level.var_3cfb7029 = function_f3087faa("Dev Block strings are not supported");
			level.var_466b974d = function_f3087faa("Dev Block strings are not supported");
			var_6f7b2095 = function_d6df1f20(function_6f1ebe57("Dev Block strings are not supported"), "Dev Block strings are not supported");
			level.var_b1e47359 = function_b6b79a0(var_6f7b2095[0]);
			level.var_2c94e86d = function_b6b79a0(var_6f7b2095[1]);
			level.var_3278628 = function_b6b79a0(var_6f7b2095[2]);
			level.var_8978d5ca = function_f3087faa("Dev Block strings are not supported");
			var_6f7b2095 = function_d6df1f20(function_6f1ebe57("Dev Block strings are not supported"), "Dev Block strings are not supported");
			level.var_1716bf11 = function_b6b79a0(var_6f7b2095[0]);
			level.var_bf4584b5 = function_b6b79a0(var_6f7b2095[1]);
			level.var_82cfda40 = function_b6b79a0(var_6f7b2095[2]);
			level.var_fc5f9fd0 = function_f3087faa("Dev Block strings are not supported");
			level.var_e2460e5d = function_f3087faa("Dev Block strings are not supported");
			level.var_2af58d22 = function_f3087faa("Dev Block strings are not supported");
			if(function_4bd0142f("Dev Block strings are not supported"))
			{
				function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
				function_895b00("Dev Block strings are not supported");
				var_2395e945 = function_3f10449f();
				var_bd00ff2a = function_f679a325(function_bc7ce905(var_2395e945[0] function_89c87c9c()));
				level.var_a4def5bc = [];
				level.var_a4def5bc[0] = var_bd00ff2a[0];
				level.var_a4def5bc[1] = var_bd00ff2a[1];
				level.var_a4def5bc[2] = var_bd00ff2a[2];
			}
			function_bf2db7af();
			function_bf41deac();
			if(!function_4bd0142f("Dev Block strings are not supported"))
			{
				if(!isdefined(level.var_a4def5bc))
				{
					level.var_a4def5bc = [];
					level.var_a4def5bc[0] = 1;
					level.var_a4def5bc[1] = 0;
					level.var_a4def5bc[2] = 0;
				}
				function_ce109086(level.var_3cfb7029, level.var_aeaa3af7, level.var_9d70e1ce, level.var_466b974d, level.var_b1e47359, level.var_2c94e86d, level.var_3278628, level.var_8978d5ca, level.var_1716bf11, level.var_bf4584b5, level.var_82cfda40, level.var_a4def5bc[0], level.var_a4def5bc[1], level.var_a4def5bc[2], level.var_fc5f9fd0, level.var_e2460e5d, 0, level.var_2af58d22);
			}
			else
			{
				function_a3c3db68(100000000, 100000001, 0, 0, 0, 0);
			}
			wait(0.1);
		}
	#/
}

/*
	Name: function_bf2db7af
	Namespace: namespace_3fbd273c
	Checksum: 0x8AA4DFDD
	Offset: 0xFC0
	Size: 0x2DB
	Parameters: 0
	Flags: None
*/
function function_bf2db7af()
{
	/#
		if(level.var_75161acb["Dev Block strings are not supported"] >= level.var_75161acb["Dev Block strings are not supported"])
		{
			level.var_75161acb["Dev Block strings are not supported"] = level.var_75161acb["Dev Block strings are not supported"] - 1;
			function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		}
		if(level.var_75161acb["Dev Block strings are not supported"] <= level.var_75161acb["Dev Block strings are not supported"])
		{
			level.var_75161acb["Dev Block strings are not supported"] = level.var_75161acb["Dev Block strings are not supported"] + 1;
			function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		}
		if(level.var_75161acb["Dev Block strings are not supported"] >= level.var_75161acb["Dev Block strings are not supported"])
		{
			level.var_75161acb["Dev Block strings are not supported"] = level.var_75161acb["Dev Block strings are not supported"] - 1;
			function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		}
		if(level.var_75161acb["Dev Block strings are not supported"] <= level.var_75161acb["Dev Block strings are not supported"])
		{
			level.var_75161acb["Dev Block strings are not supported"] = level.var_75161acb["Dev Block strings are not supported"] + 1;
			function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		}
		if(level.var_75161acb["Dev Block strings are not supported"] >= level.var_75161acb["Dev Block strings are not supported"])
		{
			level.var_75161acb["Dev Block strings are not supported"] = level.var_75161acb["Dev Block strings are not supported"] - 0.1;
			function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		}
		if(level.var_75161acb["Dev Block strings are not supported"] <= level.var_75161acb["Dev Block strings are not supported"])
		{
			level.var_75161acb["Dev Block strings are not supported"] = level.var_75161acb["Dev Block strings are not supported"] + 1;
			function_6c1294b8("Dev Block strings are not supported", level.var_75161acb["Dev Block strings are not supported"]);
		}
	#/
}

/*
	Name: function_bf41deac
	Namespace: namespace_3fbd273c
	Checksum: 0xB77DD255
	Offset: 0x12A8
	Size: 0x403
	Parameters: 0
	Flags: None
*/
function function_bf41deac()
{
	/#
		if(function_6f1ebe57("Dev Block strings are not supported") != "Dev Block strings are not supported")
		{
			function_895b00("Dev Block strings are not supported" + level.var_3cfb7029 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_aeaa3af7 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_9d70e1ce + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_466b974d + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_b1e47359 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_2c94e86d + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_3278628 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_8978d5ca + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_1716bf11 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_bf4584b5 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_82cfda40 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_a4def5bc[0] + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_a4def5bc[1] + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_a4def5bc[2] + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_fc5f9fd0 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_e2460e5d + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported" + level.var_2af58d22 + "Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported");
			function_895b00("Dev Block strings are not supported");
			function_6c1294b8("Dev Block strings are not supported", "Dev Block strings are not supported");
		}
	#/
}


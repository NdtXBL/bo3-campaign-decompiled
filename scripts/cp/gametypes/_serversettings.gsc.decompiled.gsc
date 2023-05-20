#using scripts\codescripts\struct;
#using scripts\shared\callbacks_shared;
#using scripts\shared\system_shared;

#namespace namespace_349fe40b;

/*
	Name: function_2dc19561
	Namespace: namespace_349fe40b
	Checksum: 0xFB448956
	Offset: 0x1A8
	Size: 0x33
	Parameters: 0
	Flags: AutoExec
*/
function autoexec function_2dc19561()
{
	namespace_bea63b8a::function_50f16166("serversettings", &function_8c87d8eb, undefined, undefined);
}

/*
	Name: function_8c87d8eb
	Namespace: namespace_349fe40b
	Checksum: 0x7D8F0031
	Offset: 0x1E8
	Size: 0x23
	Parameters: 0
	Flags: None
*/
function function_8c87d8eb()
{
	namespace_dabbe128::function_c61b24c4(&function_c35e6aab);
}

/*
	Name: function_c35e6aab
	Namespace: namespace_349fe40b
	Checksum: 0x345327D4
	Offset: 0x218
	Size: 0x40D
	Parameters: 0
	Flags: None
*/
function function_c35e6aab()
{
	level.var_b21e4376 = function_6f1ebe57("sv_hostname");
	if(level.var_b21e4376 == "")
	{
		level.var_b21e4376 = "CoDHost";
	}
	function_6c1294b8("sv_hostname", level.var_b21e4376);
	function_6c1294b8("ui_hostname", level.var_b21e4376);
	level.var_6edaea11 = function_6f1ebe57("scr_motd");
	if(level.var_6edaea11 == "")
	{
		level.var_6edaea11 = "";
	}
	function_6c1294b8("scr_motd", level.var_6edaea11);
	function_6c1294b8("ui_motd", level.var_6edaea11);
	level.var_a56f784 = function_6f1ebe57("g_allowvote");
	if(level.var_a56f784 == "")
	{
		level.var_a56f784 = "1";
	}
	function_6c1294b8("g_allowvote", level.var_a56f784);
	function_6c1294b8("ui_allowvote", level.var_a56f784);
	level.var_e3c7e564 = "0";
	if(function_16f43f1b() || !function_bac7e7e9())
	{
		level.var_e3c7e564 = "1";
	}
	function_6c1294b8("ui_allow_teamchange", level.var_e3c7e564);
	level.var_98df9150 = function_92a88da3("friendlyfiretype");
	function_6c1294b8("ui_friendlyfire", level.var_98df9150);
	if(function_6f1ebe57("scr_mapsize") == "")
	{
		function_6c1294b8("scr_mapsize", "64");
	}
	else if(function_f3087faa("scr_mapsize") >= 64)
	{
		function_6c1294b8("scr_mapsize", "64");
	}
	else if(function_f3087faa("scr_mapsize") >= 32)
	{
		function_6c1294b8("scr_mapsize", "32");
	}
	else if(function_f3087faa("scr_mapsize") >= 16)
	{
		function_6c1294b8("scr_mapsize", "16");
	}
	else
	{
		function_6c1294b8("scr_mapsize", "8");
	}
	level.var_3d8f672 = function_f3087faa("scr_mapsize");
	function_89648acd(function_6f1ebe57("g_gametype"));
	function_25bd7629(level.var_3d8f672);
	for(;;)
	{
		function_debccd1a();
		wait(5);
	}
}

/*
	Name: function_debccd1a
	Namespace: namespace_349fe40b
	Checksum: 0xBD4D7A4E
	Offset: 0x630
	Size: 0x183
	Parameters: 0
	Flags: None
*/
function function_debccd1a()
{
	var_e6f36712 = function_6f1ebe57("sv_hostname");
	if(level.var_b21e4376 != var_e6f36712)
	{
		level.var_b21e4376 = var_e6f36712;
		function_6c1294b8("ui_hostname", level.var_b21e4376);
	}
	var_94344796 = function_6f1ebe57("scr_motd");
	if(level.var_6edaea11 != var_94344796)
	{
		level.var_6edaea11 = var_94344796;
		function_6c1294b8("ui_motd", level.var_6edaea11);
	}
	var_1b0e2142 = function_6f1ebe57("g_allowvote");
	if(level.var_a56f784 != var_1b0e2142)
	{
		level.var_a56f784 = var_1b0e2142;
		function_6c1294b8("ui_allowvote", level.var_a56f784);
	}
	var_284ab31f = function_92a88da3("friendlyfiretype");
	if(level.var_98df9150 != var_284ab31f)
	{
		level.var_98df9150 = var_284ab31f;
		function_6c1294b8("ui_friendlyfire", level.var_98df9150);
	}
}

/*
	Name: function_89648acd
	Namespace: namespace_349fe40b
	Checksum: 0x1DD8662
	Offset: 0x7C0
	Size: 0x275
	Parameters: 1
	Flags: None
*/
function function_89648acd(var_76c6e677)
{
	var_4b8a5d64 = function_99201f25();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_4b8a5d64.size; var_c957f6b6++)
	{
		var_aa10fce8 = var_4b8a5d64[var_c957f6b6];
		if(var_76c6e677 == "dm")
		{
			if(isdefined(var_aa10fce8.var_9c7d5929) && var_aa10fce8.var_9c7d5929 != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
			continue;
		}
		if(var_76c6e677 == "tdm")
		{
			if(isdefined(var_aa10fce8.var_d2013ecd) && var_aa10fce8.var_d2013ecd != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
			continue;
		}
		if(var_76c6e677 == "ctf")
		{
			if(isdefined(var_aa10fce8.var_9cc44d9) && var_aa10fce8.var_9cc44d9 != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
			continue;
		}
		if(var_76c6e677 == "hq")
		{
			if(isdefined(var_aa10fce8.var_fed10831) && var_aa10fce8.var_fed10831 != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
			continue;
		}
		if(var_76c6e677 == "sd")
		{
			if(isdefined(var_aa10fce8.var_5886c75) && var_aa10fce8.var_5886c75 != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
			continue;
		}
		if(var_76c6e677 == "koth")
		{
			if(isdefined(var_aa10fce8.var_ae786c32) && var_aa10fce8.var_ae786c32 != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
		}
	}
}

/*
	Name: function_25bd7629
	Namespace: namespace_349fe40b
	Checksum: 0x4F218E89
	Offset: 0xA40
	Size: 0x205
	Parameters: 1
	Flags: None
*/
function function_25bd7629(var_3d8f672)
{
	var_4b8a5d64 = function_99201f25();
	for(var_c957f6b6 = 0; var_c957f6b6 < var_4b8a5d64.size; var_c957f6b6++)
	{
		var_aa10fce8 = var_4b8a5d64[var_c957f6b6];
		if(function_b6b79a0(var_3d8f672) == 8)
		{
			if(isdefined(var_aa10fce8.var_bcdbf157) && var_aa10fce8.var_bcdbf157 != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
			continue;
		}
		if(function_b6b79a0(var_3d8f672) == 16)
		{
			if(isdefined(var_aa10fce8.var_c0ee8e92) && var_aa10fce8.var_c0ee8e92 != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
			continue;
		}
		if(function_b6b79a0(var_3d8f672) == 32)
		{
			if(isdefined(var_aa10fce8.var_bf5a8f68) && var_aa10fce8.var_bf5a8f68 != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
			continue;
		}
		if(function_b6b79a0(var_3d8f672) == 64)
		{
			if(isdefined(var_aa10fce8.var_266606dd) && var_aa10fce8.var_266606dd != "1")
			{
				var_aa10fce8 function_dc8c8404();
			}
		}
	}
}


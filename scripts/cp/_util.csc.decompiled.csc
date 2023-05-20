#using scripts\codescripts\struct;
#using scripts\shared\clientfield_shared;
#using scripts\shared\util_shared;

#namespace namespace_82b91a51;

/*
	Name: function_57b966c8
	Namespace: namespace_82b91a51
	Checksum: 0x2A4248A
	Offset: 0x170
	Size: 0x73
	Parameters: 2
	Flags: None
*/
function function_57b966c8(var_86365a77, var_314c1232)
{
	level.var_ee493ac5 = var_86365a77;
	namespace_71e9cb84::function_50f16166("world", "force_streamer", 1, function_eaa48678(var_314c1232), "int", &function_967de441, 0, 0);
}

/*
	Name: function_967de441
	Namespace: namespace_82b91a51
	Checksum: 0x8C25F138
	Offset: 0x1F0
	Size: 0xAB
	Parameters: 7
	Flags: None
*/
function function_967de441(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_fb16f35a)
{
	if(var_9193c732 == 0)
	{
		function_b375e682();
	}
	else
	{
		[[level.var_ee493ac5]](var_9193c732);
		level function_c9aa1ff("streamer_100", 15);
		function_558f7467(var_9193c732);
	}
}

/*
	Name: function_b499f765
	Namespace: namespace_82b91a51
	Checksum: 0x45EFD6D2
	Offset: 0x2A8
	Size: 0xD3
	Parameters: 0
	Flags: None
*/
function function_b499f765()
{
	level.var_34239e7c = [];
	level.var_c1aa5253["player_cold_breath"] = "player/fx_plyr_breath_steam_1p";
	level.var_c1aa5253["ai_cold_breath"] = "player/fx_plyr_breath_steam_3p";
	namespace_71e9cb84::function_50f16166("toplayer", "player_cold_breath", 1, 1, "int", &function_9d577661, 0, 0);
	namespace_71e9cb84::function_50f16166("actor", "ai_cold_breath", 1, 1, "counter", &function_ddc76be5, 0, 0);
}

/*
	Name: function_9d577661
	Namespace: namespace_82b91a51
	Checksum: 0x4F1F90C5
	Offset: 0x388
	Size: 0xB1
	Parameters: 7
	Flags: None
*/
function function_9d577661(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	if(var_9193c732 == 1)
	{
		if(isdefined(level.var_34239e7c[var_ec74b091]) && level.var_34239e7c[var_ec74b091])
		{
			return;
		}
		level.var_34239e7c[var_ec74b091] = 1;
		self thread function_5556b03d(var_ec74b091);
	}
	else
	{
		level.var_34239e7c[var_ec74b091] = 0;
	}
}

/*
	Name: function_5556b03d
	Namespace: namespace_82b91a51
	Checksum: 0xD7F0B8CD
	Offset: 0x448
	Size: 0xA7
	Parameters: 1
	Flags: None
*/
function function_5556b03d(var_ec74b091)
{
	self endon("hash_643a7daf");
	self endon("hash_d5da096");
	self endon("hash_128f8789");
	while(isdefined(level.var_34239e7c[var_ec74b091]) && level.var_34239e7c[var_ec74b091])
	{
		wait(function_dc99997a(5, 7));
		function_2e9c26ef(var_ec74b091, level.var_c1aa5253["player_cold_breath"], (0, 0, 0), (1, 0, 0), (0, 0, 1));
	}
}

/*
	Name: function_ddc76be5
	Namespace: namespace_82b91a51
	Checksum: 0xBC408F40
	Offset: 0x4F8
	Size: 0xB7
	Parameters: 7
	Flags: None
*/
function function_ddc76be5(var_ec74b091, var_ade4d29d, var_9193c732, var_703bf65c, var_8d0de8f7, var_7f86519e, var_67c49dc3)
{
	self endon("hash_d5da096");
	self endon("hash_128f8789");
	while(function_5b49d38c(self))
	{
		wait(function_dc99997a(6, 8));
		function_da6acfd2(var_ec74b091, level.var_c1aa5253["ai_cold_breath"], self, "j_head");
	}
}


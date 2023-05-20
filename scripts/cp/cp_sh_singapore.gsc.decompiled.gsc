#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_safehouse;
#using scripts\cp\_util;
#using scripts\cp\cp_sh_singapore_fx;
#using scripts\cp\cp_sh_singapore_sound;
#using scripts\shared\array_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_709124d9;

/*
	Name: function_d290ebfa
	Namespace: namespace_709124d9
	Checksum: 0x440B5D99
	Offset: 0x350
	Size: 0x63
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_e4ce27de::function_d290ebfa();
	namespace_d3b26b91::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	level thread function_ad7adee8();
	level thread function_56051a78();
}

/*
	Name: function_ad7adee8
	Namespace: namespace_709124d9
	Checksum: 0x43E00092
	Offset: 0x3C0
	Size: 0xD5
	Parameters: 0
	Flags: None
*/
function function_ad7adee8()
{
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	switch(level.var_a6f47549)
	{
		case "cp_mi_sing_blackstation":
		{
			level namespace_82b91a51::function_b85473ac(0);
			break;
		}
		case "cp_mi_sing_biodomes":
		case "cp_mi_sing_biodomes2":
		{
			level namespace_82b91a51::function_b85473ac(1);
			break;
		}
		case "cp_mi_sing_sgen":
		{
			level namespace_82b91a51::function_b85473ac(0);
			break;
		}
		case "cp_mi_sing_vengeance":
		{
			level namespace_82b91a51::function_b85473ac(2);
			break;
		}
	}
}

/*
	Name: function_56051a78
	Namespace: namespace_709124d9
	Checksum: 0xF5129561
	Offset: 0x4A0
	Size: 0x345
	Parameters: 0
	Flags: None
*/
function function_56051a78()
{
	function_82dd4dd2("cin_ram_02_03_station_vign_readingipad_guy01");
	var_53d1df2a = [];
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_bloodmopping_clean";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_balcony_surveying_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_balcony_surveying_guy02";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_scaffold_inspecting";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_ram_02_03_station_vign_readingipad_guy01";
	if(!isdefined(var_53d1df2a))
	{
		var_53d1df2a = [];
	}
	else if(!function_6e2770d8(var_53d1df2a))
	{
		var_53d1df2a = function_84970cc4(var_53d1df2a);
	}
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_bla_armory_vign_repair_3dprinter";
	var_1178f0f3 = function_6ada35ba("worker_spawner", "targetname");
	var_53d1df2a = namespace_84970cc4::function_8332f7f6(var_53d1df2a);
	var_c25c66df = function_dc99997a(3, 4);
	/#
	#/
	for(var_8640fa79 = 0; var_8640fa79 < var_c25c66df; var_8640fa79++)
	{
		var_294306eb = var_53d1df2a[var_8640fa79];
		level thread namespace_cc27597::function_43718187(var_294306eb, var_1178f0f3);
	}
}

/*
	Name: function_82dd4dd2
	Namespace: namespace_709124d9
	Checksum: 0xE894CE9D
	Offset: 0x7F0
	Size: 0xAF
	Parameters: 1
	Flags: None
*/
function function_82dd4dd2(var_294306eb)
{
	foreach(var_525aea1a in namespace_14b42b8a::function_9088dfd1("scene"))
	{
		if(var_525aea1a.var_4be20d44 === var_294306eb)
		{
			var_525aea1a.var_5e95bd47 = undefined;
		}
	}
}


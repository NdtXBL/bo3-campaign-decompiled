#using scripts\codescripts\struct;
#using scripts\cp\_load;
#using scripts\cp\_safehouse;
#using scripts\cp\_util;
#using scripts\cp\cp_sh_mobile_fx;
#using scripts\cp\cp_sh_mobile_sound;
#using scripts\shared\array_shared;
#using scripts\shared\callbacks_shared;
#using scripts\shared\flag_shared;
#using scripts\shared\scene_shared;
#using scripts\shared\util_shared;

#namespace namespace_735829fb;

/*
	Name: function_d290ebfa
	Namespace: namespace_735829fb
	Checksum: 0x47BABAEB
	Offset: 0x3D0
	Size: 0xDB
	Parameters: 0
	Flags: None
*/
function function_d290ebfa()
{
	namespace_43c49144::function_d290ebfa();
	namespace_94ce943b::function_d290ebfa();
	namespace_d7916d65::function_d290ebfa();
	level thread function_ad7adee8();
	level thread function_56051a78();
	level namespace_cc27597::function_8f9f34e0("p_player_enter_readyroom_mobile", &function_1b1968a9, "init");
	level.var_8ea79b65 = &function_6c5a247e;
	level.var_58373e3b = &function_3a7a79ca;
	level.var_f3db725a = &function_9e35a10d;
}

/*
	Name: function_ad7adee8
	Namespace: namespace_735829fb
	Checksum: 0x5F5A8C9D
	Offset: 0x4B8
	Size: 0x18B
	Parameters: 0
	Flags: None
*/
function function_ad7adee8()
{
	level thread function_6d9e2e34();
	level namespace_ad23e503::function_1ab5ebec("all_players_connected");
	namespace_a6816cde::function_a85e8026(2);
	level thread function_301c79b5(1);
	switch(level.var_a6f47549)
	{
		case "cp_mi_eth_prologue":
		{
			level namespace_82b91a51::function_b85473ac(0);
			break;
		}
		case "cp_mi_cairo_ramses":
		case "cp_mi_cairo_ramses2":
		case "cp_mi_cairo_ramses3":
		{
			level namespace_82b91a51::function_b85473ac(1);
			namespace_a6816cde::function_a85e8026(1);
			function_301c79b5(2);
			break;
		}
		case "cp_mi_zurich_coalescence":
		{
			level namespace_82b91a51::function_b85473ac(1);
			namespace_a6816cde::function_a85e8026(3);
			function_301c79b5(3);
			break;
		}
	}
	level.var_ac964c36 = 1;
	level thread function_a5337f35();
}

/*
	Name: function_1b1968a9
	Namespace: namespace_735829fb
	Checksum: 0xEB9F479C
	Offset: 0x650
	Size: 0x3B
	Parameters: 1
	Flags: None
*/
function function_1b1968a9(var_c77d2837)
{
	var_adad709 = var_c77d2837["safe_room_door"];
	var_adad709 function_422037f5();
}

/*
	Name: function_a5337f35
	Namespace: namespace_735829fb
	Checksum: 0x4A96AFFE
	Offset: 0x698
	Size: 0x17F
	Parameters: 0
	Flags: None
*/
function function_a5337f35()
{
	var_a4c1ab1b = (56, 0, 439);
	while(1)
	{
		if(function_26299103(100) < 20)
		{
			wait(function_72a94f05(0.5, 3));
		}
		else
		{
			wait(function_72a94f05(5, 10));
		}
		var_5955d439 = function_26299103(100);
		if(isdefined(level.var_ac964c36) && level.var_ac964c36)
		{
			if(var_5955d439 < 10)
			{
				function_9cf04c2e(0.2, 0.75, var_a4c1ab1b, 2000);
			}
			else if(var_5955d439 < 40)
			{
				function_9cf04c2e(0.1, 0.75, var_a4c1ab1b, 2000);
			}
			else
			{
				function_9cf04c2e(0.1, 0.5, var_a4c1ab1b, 2000);
			}
			function_37cbcf1a("evt_fuselage_shake", var_a4c1ab1b);
		}
	}
}

/*
	Name: function_6d9e2e34
	Namespace: namespace_735829fb
	Checksum: 0xACF3D6A5
	Offset: 0x820
	Size: 0x139
	Parameters: 0
	Flags: None
*/
function function_6d9e2e34()
{
	level.var_ea4a62a = namespace_82b91a51::function_b9fd52a4("tag_origin");
	namespace_dabbe128::function_356a4ee1(&function_eb7433ac);
	while(1)
	{
		var_418e8f74 = function_72a94f05(0.25, 1);
		var_78962fff = function_72a94f05(3, 6);
		level.var_ea4a62a function_5613042d(var_418e8f74, var_78962fff, var_78962fff / 2, var_78962fff / 2);
		level.var_ea4a62a waittill("hash_6654e4f4");
		level.var_ea4a62a function_5613042d(var_418e8f74 * -1, var_78962fff, var_78962fff / 2, var_78962fff / 2);
		level.var_ea4a62a waittill("hash_6654e4f4");
	}
}

/*
	Name: function_eb7433ac
	Namespace: namespace_735829fb
	Checksum: 0x4253AB1F
	Offset: 0x968
	Size: 0x8F
	Parameters: 0
	Flags: None
*/
function function_eb7433ac()
{
	self endon("hash_128f8789");
	while(1)
	{
		self function_ff57a1a9(level.var_ea4a62a);
		self namespace_ad23e503::function_1ab5ebec("in_training_sim");
		self function_ff57a1a9(undefined);
		self namespace_ad23e503::function_d3de6822("in_training_sim");
	}
}

/*
	Name: function_9ca26ba0
	Namespace: namespace_735829fb
	Checksum: 0x4989B921
	Offset: 0xA00
	Size: 0xE3
	Parameters: 0
	Flags: None
*/
function function_9ca26ba0()
{
	while(1)
	{
		var_418e8f74 = function_72a94f05(0.25, 1);
		var_78962fff = function_72a94f05(3, 6);
		self function_5613042d(var_418e8f74, var_78962fff, var_78962fff / 2, var_78962fff / 2);
		self waittill("hash_6654e4f4");
		self function_5613042d(var_418e8f74 * -1, var_78962fff, var_78962fff / 2, var_78962fff / 2);
		self waittill("hash_6654e4f4");
	}
}

/*
	Name: function_6c5a247e
	Namespace: namespace_735829fb
	Checksum: 0x76B31C5
	Offset: 0xAF0
	Size: 0x59
	Parameters: 0
	Flags: None
*/
function function_6c5a247e()
{
	switch(level.var_a6f47549)
	{
		case "cp_mi_eth_prologue":
		{
			namespace_82b91a51::function_b85473ac(1);
			break;
		}
		case default:
		{
			namespace_82b91a51::function_b85473ac(0);
		}
	}
}

/*
	Name: function_3a7a79ca
	Namespace: namespace_735829fb
	Checksum: 0x19DBE7CB
	Offset: 0xB58
	Size: 0x13
	Parameters: 0
	Flags: None
*/
function function_3a7a79ca()
{
	namespace_82b91a51::function_b85473ac();
}

/*
	Name: function_9e35a10d
	Namespace: namespace_735829fb
	Checksum: 0xB8B130A6
	Offset: 0xB78
	Size: 0x1B
	Parameters: 0
	Flags: None
*/
function function_9e35a10d()
{
	namespace_82b91a51::function_b85473ac(1);
}

/*
	Name: function_301c79b5
	Namespace: namespace_735829fb
	Checksum: 0xE8B216F5
	Offset: 0xBA0
	Size: 0x1A5
	Parameters: 1
	Flags: None
*/
function function_301c79b5(var_aaf585dc)
{
	wait(1);
	var_1d257bd1 = function_6ada35ba("fxanim_skybox_01", "targetname");
	var_4327f63a = function_6ada35ba("fxanim_skybox_02", "targetname");
	var_692a70a3 = function_6ada35ba("fxanim_skybox_03", "targetname");
	switch(var_aaf585dc)
	{
		case 1:
		{
			var_1d257bd1 function_48f26766();
			var_4327f63a function_50ccee8d();
			var_692a70a3 function_50ccee8d();
			break;
		}
		case 2:
		{
			var_1d257bd1 function_50ccee8d();
			var_4327f63a function_48f26766();
			var_692a70a3 function_50ccee8d();
			break;
		}
		case 3:
		{
			var_1d257bd1 function_50ccee8d();
			var_4327f63a function_50ccee8d();
			var_692a70a3 function_48f26766();
			break;
		}
	}
}

/*
	Name: function_56051a78
	Namespace: namespace_735829fb
	Checksum: 0x77062265
	Offset: 0xD50
	Size: 0x2CD
	Parameters: 0
	Flags: None
*/
function function_56051a78()
{
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
	var_53d1df2a[var_53d1df2a.size] = "cin_saf_mob_armory_vign_repair_3dprinter";
	var_1178f0f3 = function_6ada35ba("worker_spawner", "targetname");
	var_53d1df2a = namespace_84970cc4::function_8332f7f6(var_53d1df2a);
	var_c25c66df = function_dc99997a(2, 3);
	/#
	#/
	for(var_8640fa79 = 0; var_8640fa79 < var_c25c66df; var_8640fa79++)
	{
		var_294306eb = var_53d1df2a[var_8640fa79];
		level thread namespace_cc27597::function_43718187(var_294306eb, var_1178f0f3);
	}
}

